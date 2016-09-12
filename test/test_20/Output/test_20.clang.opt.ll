; ModuleID = 'Output/test_20.clang.opt.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%0 = type <{ void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)* }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0x1e2 = internal constant %0 <{ void (%struct.regs*)* @sub_132, void (%struct.regs*)* @sub_142, void (%struct.regs*)* @sub_152, void (%struct.regs*)* @sub_162, void (%struct.regs*)* @sub_172, void (%struct.regs*)* @sub_1d2, void (%struct.regs*)* @sub_182, void (%struct.regs*)* @sub_192, void (%struct.regs*)* @sub_1a2, void (%struct.regs*)* @sub_1b2, void (%struct.regs*)* @sub_1c2, void (%struct.regs*)* @sub_a2, void (%struct.regs*)* @sub_b2, void (%struct.regs*)* @sub_c2, void (%struct.regs*)* @sub_1d2, void (%struct.regs*)* @sub_d2, void (%struct.regs*)* @sub_1d2, void (%struct.regs*)* @sub_e2, void (%struct.regs*)* @sub_1d2, void (%struct.regs*)* @sub_1d2, void (%struct.regs*)* @sub_1d2, void (%struct.regs*)* @sub_1d2, void (%struct.regs*)* @sub_1d2, void (%struct.regs*)* @sub_f2, void (%struct.regs*)* @sub_102, void (%struct.regs*)* @sub_1d2, void (%struct.regs*)* @sub_1d2, void (%struct.regs*)* @sub_1d2, void (%struct.regs*)* @sub_1d2, void (%struct.regs*)* @sub_1d2, void (%struct.regs*)* @sub_112 }>, align 64

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_132(%struct.regs*) #0 {
entry:
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %1 = bitcast i64* %RBX to <2 x i64>*
  %2 = load <2 x i64>* %1, align 8
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %3 = bitcast i64* %RDX to <2 x i64>*
  %4 = load <2 x i64>* %3, align 8
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %5 = load i64* %RDI, align 8, !mcsema_real_eip !2
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %6 = load i64* %RSP, align 8, !mcsema_real_eip !2
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %7 = load i64* %RBP, align 8, !mcsema_real_eip !2
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %8 = bitcast i64* %R8 to <2 x i64>*
  %9 = load <2 x i64>* %8, align 8
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %10 = bitcast i64* %R10 to <2 x i64>*
  %11 = load <2 x i64>* %10, align 8
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %12 = bitcast i64* %R12 to <2 x i64>*
  %13 = load <2 x i64>* %12, align 8
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %14 = bitcast i64* %R14 to <2 x i64>*
  %15 = load <2 x i64>* %14, align 8
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %16 = load i64* %RIP, align 8, !mcsema_real_eip !2
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %17 = load i1* %DF, align 1, !mcsema_real_eip !2
  %18 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %19 = bitcast x86_fp80* %18 to i8*, !mcsema_real_eip !2
  %20 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !2
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %21 = load i1* %FPU_B, align 1, !mcsema_real_eip !2
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %22 = load i1* %FPU_C3, align 1, !mcsema_real_eip !2
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %23 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !2
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %24 = load i1* %FPU_C2, align 1, !mcsema_real_eip !2
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %25 = load i1* %FPU_C1, align 1, !mcsema_real_eip !2
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %26 = load i1* %FPU_C0, align 1, !mcsema_real_eip !2
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %27 = load i1* %FPU_ES, align 1, !mcsema_real_eip !2
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %28 = load i1* %FPU_SF, align 1, !mcsema_real_eip !2
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %29 = load i1* %FPU_PE, align 1, !mcsema_real_eip !2
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %30 = load i1* %FPU_UE, align 1, !mcsema_real_eip !2
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %31 = load i1* %FPU_OE, align 1, !mcsema_real_eip !2
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %32 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !2
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %33 = load i1* %FPU_DE, align 1, !mcsema_real_eip !2
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %34 = load i1* %FPU_IE, align 1, !mcsema_real_eip !2
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %35 = load i1* %FPU_X, align 1, !mcsema_real_eip !2
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %36 = load i2* %FPU_RC, align 1, !mcsema_real_eip !2
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %37 = load i2* %FPU_PC, align 1, !mcsema_real_eip !2
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %38 = load i1* %FPU_PM, align 1, !mcsema_real_eip !2
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %39 = load i1* %FPU_UM, align 1, !mcsema_real_eip !2
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %40 = load i1* %FPU_OM, align 1, !mcsema_real_eip !2
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %41 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !2
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %42 = load i1* %FPU_DM, align 1, !mcsema_real_eip !2
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %43 = load i1* %FPU_IM, align 1, !mcsema_real_eip !2
  %44 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %45 = bitcast i8* %44 to i64*
  %46 = load i64* %45, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %47 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !2
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %48 = load i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %49 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %50 = load i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !2
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %51 = load i128* %XMM0, align 1, !mcsema_real_eip !2
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %52 = load i128* %XMM1, align 1, !mcsema_real_eip !2
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %53 = load i128* %XMM2, align 1, !mcsema_real_eip !2
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %54 = load i128* %XMM3, align 1, !mcsema_real_eip !2
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %55 = load i128* %XMM4, align 1, !mcsema_real_eip !2
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %56 = load i128* %XMM5, align 1, !mcsema_real_eip !2
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %57 = load i128* %XMM6, align 1, !mcsema_real_eip !2
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %58 = load i128* %XMM7, align 1, !mcsema_real_eip !2
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %59 = load i128* %XMM8, align 1, !mcsema_real_eip !2
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %60 = load i128* %XMM9, align 1, !mcsema_real_eip !2
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %61 = load i128* %XMM10, align 1, !mcsema_real_eip !2
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %62 = load i128* %XMM11, align 1, !mcsema_real_eip !2
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %63 = load i128* %XMM12, align 1, !mcsema_real_eip !2
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %64 = load i128* %XMM13, align 1, !mcsema_real_eip !2
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %65 = load i128* %XMM14, align 1, !mcsema_real_eip !2
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %66 = load i128* %XMM15, align 1, !mcsema_real_eip !2
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %67 = bitcast i64* %STACK_BASE to <2 x i64>*
  %68 = load <2 x i64>* %67, align 8
  %69 = add i64 %7, -8, !mcsema_real_eip !2
  %70 = inttoptr i64 %69 to i32*
  %71 = load i32* %70, align 4, !mcsema_real_eip !2
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %71, i32 74633)
  %72 = extractvalue { i32, i1 } %uadd, 0
  %73 = xor i32 %72, %71, !mcsema_real_eip !3
  %74 = and i32 %73, 16, !mcsema_real_eip !3
  %75 = icmp ne i32 %74, 0, !mcsema_real_eip !3
  %76 = icmp slt i32 %72, 0
  %77 = icmp eq i32 %72, 0, !mcsema_real_eip !3
  %78 = xor i32 %71, -2147483648, !mcsema_real_eip !3
  %79 = and i32 %73, %78, !mcsema_real_eip !3
  %80 = icmp slt i32 %79, 0
  %81 = trunc i32 %72 to i8, !mcsema_real_eip !3
  %82 = tail call i8 @llvm.ctpop.i8(i8 %81), !mcsema_real_eip !3
  %83 = and i8 %82, 1
  %84 = icmp eq i8 %83, 0
  %85 = extractvalue { i32, i1 } %uadd, 1
  store i32 %72, i32* %70, align 4, !mcsema_real_eip !4
  %86 = zext i32 %72 to i64, !mcsema_real_eip !5
  %87 = inttoptr i64 %6 to i64*, !mcsema_real_eip !6
  %88 = load i64* %87, align 8, !mcsema_real_eip !6
  %89 = add i64 %6, 16, !mcsema_real_eip !7
  store i64 %86, i64* %RAX, align 8, !mcsema_real_eip !7
  %90 = bitcast i64* %RBX to <2 x i64>*
  store <2 x i64> %2, <2 x i64>* %90, align 8
  %91 = bitcast i64* %RDX to <2 x i64>*
  store <2 x i64> %4, <2 x i64>* %91, align 8
  store i64 %5, i64* %RDI, align 8, !mcsema_real_eip !7
  store i64 %89, i64* %RSP, align 8, !mcsema_real_eip !7
  store i64 %88, i64* %RBP, align 8, !mcsema_real_eip !7
  %92 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> %9, <2 x i64>* %92, align 8
  %93 = bitcast i64* %R10 to <2 x i64>*
  store <2 x i64> %11, <2 x i64>* %93, align 8
  %94 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> %13, <2 x i64>* %94, align 8
  %95 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> %15, <2 x i64>* %95, align 8
  store i64 %16, i64* %RIP, align 8, !mcsema_real_eip !7
  store i1 %85, i1* %CF, align 1, !mcsema_real_eip !7
  store i1 %84, i1* %PF, align 1, !mcsema_real_eip !7
  store i1 %75, i1* %AF, align 1, !mcsema_real_eip !7
  store i1 %77, i1* %ZF, align 1, !mcsema_real_eip !7
  store i1 %76, i1* %SF, align 1, !mcsema_real_eip !7
  store i1 %80, i1* %OF, align 1, !mcsema_real_eip !7
  store i1 %17, i1* %DF, align 1, !mcsema_real_eip !7
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %20, i32 128, i32 8, i1 false), !mcsema_real_eip !7
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
  store i128 %51, i128* %XMM0, align 1, !mcsema_real_eip !7
  store i128 %52, i128* %XMM1, align 1, !mcsema_real_eip !7
  store i128 %53, i128* %XMM2, align 1, !mcsema_real_eip !7
  store i128 %54, i128* %XMM3, align 1, !mcsema_real_eip !7
  store i128 %55, i128* %XMM4, align 1, !mcsema_real_eip !7
  store i128 %56, i128* %XMM5, align 1, !mcsema_real_eip !7
  store i128 %57, i128* %XMM6, align 1, !mcsema_real_eip !7
  store i128 %58, i128* %XMM7, align 1, !mcsema_real_eip !7
  store i128 %59, i128* %XMM8, align 1, !mcsema_real_eip !7
  store i128 %60, i128* %XMM9, align 1, !mcsema_real_eip !7
  store i128 %61, i128* %XMM10, align 1, !mcsema_real_eip !7
  store i128 %62, i128* %XMM11, align 1, !mcsema_real_eip !7
  store i128 %63, i128* %XMM12, align 1, !mcsema_real_eip !7
  store i128 %64, i128* %XMM13, align 1, !mcsema_real_eip !7
  store i128 %65, i128* %XMM14, align 1, !mcsema_real_eip !7
  store i128 %66, i128* %XMM15, align 1, !mcsema_real_eip !7
  %96 = bitcast i64* %STACK_BASE to <2 x i64>*
  store <2 x i64> %68, <2 x i64>* %96, align 1
  ret void, !mcsema_real_eip !7
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_142(%struct.regs*) #0 {
entry:
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !8
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !8
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !8
  %1 = bitcast i64* %RBX to <2 x i64>*
  %2 = load <2 x i64>* %1, align 8
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !8
  %3 = bitcast i64* %RDX to <2 x i64>*
  %4 = load <2 x i64>* %3, align 8
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !8
  %5 = load i64* %RDI, align 8, !mcsema_real_eip !8
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !8
  %6 = load i64* %RSP, align 8, !mcsema_real_eip !8
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !8
  %7 = load i64* %RBP, align 8, !mcsema_real_eip !8
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !8
  %8 = bitcast i64* %R8 to <2 x i64>*
  %9 = load <2 x i64>* %8, align 8
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !8
  %10 = bitcast i64* %R10 to <2 x i64>*
  %11 = load <2 x i64>* %10, align 8
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !8
  %12 = bitcast i64* %R12 to <2 x i64>*
  %13 = load <2 x i64>* %12, align 8
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !8
  %14 = bitcast i64* %R14 to <2 x i64>*
  %15 = load <2 x i64>* %14, align 8
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !8
  %16 = load i64* %RIP, align 8, !mcsema_real_eip !8
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !8
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !8
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !8
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !8
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !8
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !8
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !8
  %17 = load i1* %DF, align 1, !mcsema_real_eip !8
  %18 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !8
  %19 = bitcast x86_fp80* %18 to i8*, !mcsema_real_eip !8
  %20 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !8
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !8
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !8
  %21 = load i1* %FPU_B, align 1, !mcsema_real_eip !8
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !8
  %22 = load i1* %FPU_C3, align 1, !mcsema_real_eip !8
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !8
  %23 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !8
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !8
  %24 = load i1* %FPU_C2, align 1, !mcsema_real_eip !8
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !8
  %25 = load i1* %FPU_C1, align 1, !mcsema_real_eip !8
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !8
  %26 = load i1* %FPU_C0, align 1, !mcsema_real_eip !8
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !8
  %27 = load i1* %FPU_ES, align 1, !mcsema_real_eip !8
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !8
  %28 = load i1* %FPU_SF, align 1, !mcsema_real_eip !8
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !8
  %29 = load i1* %FPU_PE, align 1, !mcsema_real_eip !8
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !8
  %30 = load i1* %FPU_UE, align 1, !mcsema_real_eip !8
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !8
  %31 = load i1* %FPU_OE, align 1, !mcsema_real_eip !8
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !8
  %32 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !8
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !8
  %33 = load i1* %FPU_DE, align 1, !mcsema_real_eip !8
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !8
  %34 = load i1* %FPU_IE, align 1, !mcsema_real_eip !8
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !8
  %35 = load i1* %FPU_X, align 1, !mcsema_real_eip !8
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !8
  %36 = load i2* %FPU_RC, align 1, !mcsema_real_eip !8
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !8
  %37 = load i2* %FPU_PC, align 1, !mcsema_real_eip !8
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !8
  %38 = load i1* %FPU_PM, align 1, !mcsema_real_eip !8
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !8
  %39 = load i1* %FPU_UM, align 1, !mcsema_real_eip !8
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !8
  %40 = load i1* %FPU_OM, align 1, !mcsema_real_eip !8
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !8
  %41 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !8
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !8
  %42 = load i1* %FPU_DM, align 1, !mcsema_real_eip !8
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !8
  %43 = load i1* %FPU_IM, align 1, !mcsema_real_eip !8
  %44 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !8
  %45 = bitcast i8* %44 to i64*
  %46 = load i64* %45, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !8
  %47 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !8
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !8
  %48 = load i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !8
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !8
  %49 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !8
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !8
  %50 = load i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !8
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !8
  %51 = load i128* %XMM0, align 1, !mcsema_real_eip !8
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !8
  %52 = load i128* %XMM1, align 1, !mcsema_real_eip !8
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !8
  %53 = load i128* %XMM2, align 1, !mcsema_real_eip !8
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !8
  %54 = load i128* %XMM3, align 1, !mcsema_real_eip !8
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !8
  %55 = load i128* %XMM4, align 1, !mcsema_real_eip !8
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !8
  %56 = load i128* %XMM5, align 1, !mcsema_real_eip !8
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !8
  %57 = load i128* %XMM6, align 1, !mcsema_real_eip !8
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !8
  %58 = load i128* %XMM7, align 1, !mcsema_real_eip !8
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !8
  %59 = load i128* %XMM8, align 1, !mcsema_real_eip !8
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !8
  %60 = load i128* %XMM9, align 1, !mcsema_real_eip !8
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !8
  %61 = load i128* %XMM10, align 1, !mcsema_real_eip !8
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !8
  %62 = load i128* %XMM11, align 1, !mcsema_real_eip !8
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !8
  %63 = load i128* %XMM12, align 1, !mcsema_real_eip !8
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !8
  %64 = load i128* %XMM13, align 1, !mcsema_real_eip !8
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !8
  %65 = load i128* %XMM14, align 1, !mcsema_real_eip !8
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !8
  %66 = load i128* %XMM15, align 1, !mcsema_real_eip !8
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !8
  %67 = bitcast i64* %STACK_BASE to <2 x i64>*
  %68 = load <2 x i64>* %67, align 8
  %69 = add i64 %7, -8, !mcsema_real_eip !8
  %70 = inttoptr i64 %69 to i32*
  %71 = load i32* %70, align 4, !mcsema_real_eip !8
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %71, i32 74634)
  %72 = extractvalue { i32, i1 } %uadd, 0
  %73 = xor i32 %72, %71, !mcsema_real_eip !9
  %74 = and i32 %73, 16, !mcsema_real_eip !9
  %75 = icmp ne i32 %74, 0, !mcsema_real_eip !9
  %76 = icmp slt i32 %72, 0
  %77 = icmp eq i32 %72, 0, !mcsema_real_eip !9
  %78 = xor i32 %71, -2147483648, !mcsema_real_eip !9
  %79 = and i32 %73, %78, !mcsema_real_eip !9
  %80 = icmp slt i32 %79, 0
  %81 = trunc i32 %72 to i8, !mcsema_real_eip !9
  %82 = tail call i8 @llvm.ctpop.i8(i8 %81), !mcsema_real_eip !9
  %83 = and i8 %82, 1
  %84 = icmp eq i8 %83, 0
  %85 = extractvalue { i32, i1 } %uadd, 1
  store i32 %72, i32* %70, align 4, !mcsema_real_eip !10
  %86 = zext i32 %72 to i64, !mcsema_real_eip !5
  %87 = inttoptr i64 %6 to i64*, !mcsema_real_eip !6
  %88 = load i64* %87, align 8, !mcsema_real_eip !6
  %89 = add i64 %6, 16, !mcsema_real_eip !7
  store i64 %86, i64* %RAX, align 8, !mcsema_real_eip !7
  %90 = bitcast i64* %RBX to <2 x i64>*
  store <2 x i64> %2, <2 x i64>* %90, align 8
  %91 = bitcast i64* %RDX to <2 x i64>*
  store <2 x i64> %4, <2 x i64>* %91, align 8
  store i64 %5, i64* %RDI, align 8, !mcsema_real_eip !7
  store i64 %89, i64* %RSP, align 8, !mcsema_real_eip !7
  store i64 %88, i64* %RBP, align 8, !mcsema_real_eip !7
  %92 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> %9, <2 x i64>* %92, align 8
  %93 = bitcast i64* %R10 to <2 x i64>*
  store <2 x i64> %11, <2 x i64>* %93, align 8
  %94 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> %13, <2 x i64>* %94, align 8
  %95 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> %15, <2 x i64>* %95, align 8
  store i64 %16, i64* %RIP, align 8, !mcsema_real_eip !7
  store i1 %85, i1* %CF, align 1, !mcsema_real_eip !7
  store i1 %84, i1* %PF, align 1, !mcsema_real_eip !7
  store i1 %75, i1* %AF, align 1, !mcsema_real_eip !7
  store i1 %77, i1* %ZF, align 1, !mcsema_real_eip !7
  store i1 %76, i1* %SF, align 1, !mcsema_real_eip !7
  store i1 %80, i1* %OF, align 1, !mcsema_real_eip !7
  store i1 %17, i1* %DF, align 1, !mcsema_real_eip !7
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %20, i32 128, i32 8, i1 false), !mcsema_real_eip !7
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
  store i128 %51, i128* %XMM0, align 1, !mcsema_real_eip !7
  store i128 %52, i128* %XMM1, align 1, !mcsema_real_eip !7
  store i128 %53, i128* %XMM2, align 1, !mcsema_real_eip !7
  store i128 %54, i128* %XMM3, align 1, !mcsema_real_eip !7
  store i128 %55, i128* %XMM4, align 1, !mcsema_real_eip !7
  store i128 %56, i128* %XMM5, align 1, !mcsema_real_eip !7
  store i128 %57, i128* %XMM6, align 1, !mcsema_real_eip !7
  store i128 %58, i128* %XMM7, align 1, !mcsema_real_eip !7
  store i128 %59, i128* %XMM8, align 1, !mcsema_real_eip !7
  store i128 %60, i128* %XMM9, align 1, !mcsema_real_eip !7
  store i128 %61, i128* %XMM10, align 1, !mcsema_real_eip !7
  store i128 %62, i128* %XMM11, align 1, !mcsema_real_eip !7
  store i128 %63, i128* %XMM12, align 1, !mcsema_real_eip !7
  store i128 %64, i128* %XMM13, align 1, !mcsema_real_eip !7
  store i128 %65, i128* %XMM14, align 1, !mcsema_real_eip !7
  store i128 %66, i128* %XMM15, align 1, !mcsema_real_eip !7
  %96 = bitcast i64* %STACK_BASE to <2 x i64>*
  store <2 x i64> %68, <2 x i64>* %96, align 1
  ret void, !mcsema_real_eip !7
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_152(%struct.regs*) #0 {
entry:
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !11
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !11
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !11
  %1 = bitcast i64* %RBX to <2 x i64>*
  %2 = load <2 x i64>* %1, align 8
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !11
  %3 = bitcast i64* %RDX to <2 x i64>*
  %4 = load <2 x i64>* %3, align 8
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !11
  %5 = load i64* %RDI, align 8, !mcsema_real_eip !11
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !11
  %6 = load i64* %RSP, align 8, !mcsema_real_eip !11
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !11
  %7 = load i64* %RBP, align 8, !mcsema_real_eip !11
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !11
  %8 = bitcast i64* %R8 to <2 x i64>*
  %9 = load <2 x i64>* %8, align 8
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !11
  %10 = bitcast i64* %R10 to <2 x i64>*
  %11 = load <2 x i64>* %10, align 8
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !11
  %12 = bitcast i64* %R12 to <2 x i64>*
  %13 = load <2 x i64>* %12, align 8
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !11
  %14 = bitcast i64* %R14 to <2 x i64>*
  %15 = load <2 x i64>* %14, align 8
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !11
  %16 = load i64* %RIP, align 8, !mcsema_real_eip !11
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !11
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !11
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !11
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !11
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !11
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !11
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !11
  %17 = load i1* %DF, align 1, !mcsema_real_eip !11
  %18 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !11
  %19 = bitcast x86_fp80* %18 to i8*, !mcsema_real_eip !11
  %20 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !11
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !11
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !11
  %21 = load i1* %FPU_B, align 1, !mcsema_real_eip !11
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !11
  %22 = load i1* %FPU_C3, align 1, !mcsema_real_eip !11
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !11
  %23 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !11
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !11
  %24 = load i1* %FPU_C2, align 1, !mcsema_real_eip !11
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !11
  %25 = load i1* %FPU_C1, align 1, !mcsema_real_eip !11
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !11
  %26 = load i1* %FPU_C0, align 1, !mcsema_real_eip !11
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !11
  %27 = load i1* %FPU_ES, align 1, !mcsema_real_eip !11
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !11
  %28 = load i1* %FPU_SF, align 1, !mcsema_real_eip !11
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !11
  %29 = load i1* %FPU_PE, align 1, !mcsema_real_eip !11
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !11
  %30 = load i1* %FPU_UE, align 1, !mcsema_real_eip !11
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !11
  %31 = load i1* %FPU_OE, align 1, !mcsema_real_eip !11
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !11
  %32 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !11
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !11
  %33 = load i1* %FPU_DE, align 1, !mcsema_real_eip !11
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !11
  %34 = load i1* %FPU_IE, align 1, !mcsema_real_eip !11
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !11
  %35 = load i1* %FPU_X, align 1, !mcsema_real_eip !11
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !11
  %36 = load i2* %FPU_RC, align 1, !mcsema_real_eip !11
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !11
  %37 = load i2* %FPU_PC, align 1, !mcsema_real_eip !11
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !11
  %38 = load i1* %FPU_PM, align 1, !mcsema_real_eip !11
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !11
  %39 = load i1* %FPU_UM, align 1, !mcsema_real_eip !11
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !11
  %40 = load i1* %FPU_OM, align 1, !mcsema_real_eip !11
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !11
  %41 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !11
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !11
  %42 = load i1* %FPU_DM, align 1, !mcsema_real_eip !11
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !11
  %43 = load i1* %FPU_IM, align 1, !mcsema_real_eip !11
  %44 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !11
  %45 = bitcast i8* %44 to i64*
  %46 = load i64* %45, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !11
  %47 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !11
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !11
  %48 = load i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !11
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !11
  %49 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !11
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !11
  %50 = load i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !11
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !11
  %51 = load i128* %XMM0, align 1, !mcsema_real_eip !11
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !11
  %52 = load i128* %XMM1, align 1, !mcsema_real_eip !11
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !11
  %53 = load i128* %XMM2, align 1, !mcsema_real_eip !11
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !11
  %54 = load i128* %XMM3, align 1, !mcsema_real_eip !11
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !11
  %55 = load i128* %XMM4, align 1, !mcsema_real_eip !11
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !11
  %56 = load i128* %XMM5, align 1, !mcsema_real_eip !11
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !11
  %57 = load i128* %XMM6, align 1, !mcsema_real_eip !11
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !11
  %58 = load i128* %XMM7, align 1, !mcsema_real_eip !11
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !11
  %59 = load i128* %XMM8, align 1, !mcsema_real_eip !11
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !11
  %60 = load i128* %XMM9, align 1, !mcsema_real_eip !11
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !11
  %61 = load i128* %XMM10, align 1, !mcsema_real_eip !11
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !11
  %62 = load i128* %XMM11, align 1, !mcsema_real_eip !11
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !11
  %63 = load i128* %XMM12, align 1, !mcsema_real_eip !11
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !11
  %64 = load i128* %XMM13, align 1, !mcsema_real_eip !11
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !11
  %65 = load i128* %XMM14, align 1, !mcsema_real_eip !11
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !11
  %66 = load i128* %XMM15, align 1, !mcsema_real_eip !11
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !11
  %67 = bitcast i64* %STACK_BASE to <2 x i64>*
  %68 = load <2 x i64>* %67, align 8
  %69 = add i64 %7, -8, !mcsema_real_eip !11
  %70 = inttoptr i64 %69 to i32*
  %71 = load i32* %70, align 4, !mcsema_real_eip !11
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %71, i32 74635)
  %72 = extractvalue { i32, i1 } %uadd, 0
  %73 = xor i32 %72, %71, !mcsema_real_eip !12
  %74 = and i32 %73, 16, !mcsema_real_eip !12
  %75 = icmp ne i32 %74, 0, !mcsema_real_eip !12
  %76 = icmp slt i32 %72, 0
  %77 = icmp eq i32 %72, 0, !mcsema_real_eip !12
  %78 = xor i32 %71, -2147483648, !mcsema_real_eip !12
  %79 = and i32 %73, %78, !mcsema_real_eip !12
  %80 = icmp slt i32 %79, 0
  %81 = trunc i32 %72 to i8, !mcsema_real_eip !12
  %82 = tail call i8 @llvm.ctpop.i8(i8 %81), !mcsema_real_eip !12
  %83 = and i8 %82, 1
  %84 = icmp eq i8 %83, 0
  %85 = extractvalue { i32, i1 } %uadd, 1
  store i32 %72, i32* %70, align 4, !mcsema_real_eip !13
  %86 = zext i32 %72 to i64, !mcsema_real_eip !5
  %87 = inttoptr i64 %6 to i64*, !mcsema_real_eip !6
  %88 = load i64* %87, align 8, !mcsema_real_eip !6
  %89 = add i64 %6, 16, !mcsema_real_eip !7
  store i64 %86, i64* %RAX, align 8, !mcsema_real_eip !7
  %90 = bitcast i64* %RBX to <2 x i64>*
  store <2 x i64> %2, <2 x i64>* %90, align 8
  %91 = bitcast i64* %RDX to <2 x i64>*
  store <2 x i64> %4, <2 x i64>* %91, align 8
  store i64 %5, i64* %RDI, align 8, !mcsema_real_eip !7
  store i64 %89, i64* %RSP, align 8, !mcsema_real_eip !7
  store i64 %88, i64* %RBP, align 8, !mcsema_real_eip !7
  %92 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> %9, <2 x i64>* %92, align 8
  %93 = bitcast i64* %R10 to <2 x i64>*
  store <2 x i64> %11, <2 x i64>* %93, align 8
  %94 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> %13, <2 x i64>* %94, align 8
  %95 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> %15, <2 x i64>* %95, align 8
  store i64 %16, i64* %RIP, align 8, !mcsema_real_eip !7
  store i1 %85, i1* %CF, align 1, !mcsema_real_eip !7
  store i1 %84, i1* %PF, align 1, !mcsema_real_eip !7
  store i1 %75, i1* %AF, align 1, !mcsema_real_eip !7
  store i1 %77, i1* %ZF, align 1, !mcsema_real_eip !7
  store i1 %76, i1* %SF, align 1, !mcsema_real_eip !7
  store i1 %80, i1* %OF, align 1, !mcsema_real_eip !7
  store i1 %17, i1* %DF, align 1, !mcsema_real_eip !7
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %20, i32 128, i32 8, i1 false), !mcsema_real_eip !7
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
  store i128 %51, i128* %XMM0, align 1, !mcsema_real_eip !7
  store i128 %52, i128* %XMM1, align 1, !mcsema_real_eip !7
  store i128 %53, i128* %XMM2, align 1, !mcsema_real_eip !7
  store i128 %54, i128* %XMM3, align 1, !mcsema_real_eip !7
  store i128 %55, i128* %XMM4, align 1, !mcsema_real_eip !7
  store i128 %56, i128* %XMM5, align 1, !mcsema_real_eip !7
  store i128 %57, i128* %XMM6, align 1, !mcsema_real_eip !7
  store i128 %58, i128* %XMM7, align 1, !mcsema_real_eip !7
  store i128 %59, i128* %XMM8, align 1, !mcsema_real_eip !7
  store i128 %60, i128* %XMM9, align 1, !mcsema_real_eip !7
  store i128 %61, i128* %XMM10, align 1, !mcsema_real_eip !7
  store i128 %62, i128* %XMM11, align 1, !mcsema_real_eip !7
  store i128 %63, i128* %XMM12, align 1, !mcsema_real_eip !7
  store i128 %64, i128* %XMM13, align 1, !mcsema_real_eip !7
  store i128 %65, i128* %XMM14, align 1, !mcsema_real_eip !7
  store i128 %66, i128* %XMM15, align 1, !mcsema_real_eip !7
  %96 = bitcast i64* %STACK_BASE to <2 x i64>*
  store <2 x i64> %68, <2 x i64>* %96, align 1
  ret void, !mcsema_real_eip !7
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_162(%struct.regs*) #0 {
entry:
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !14
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !14
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !14
  %1 = bitcast i64* %RBX to <2 x i64>*
  %2 = load <2 x i64>* %1, align 8
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !14
  %3 = bitcast i64* %RDX to <2 x i64>*
  %4 = load <2 x i64>* %3, align 8
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !14
  %5 = load i64* %RDI, align 8, !mcsema_real_eip !14
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !14
  %6 = load i64* %RSP, align 8, !mcsema_real_eip !14
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !14
  %7 = load i64* %RBP, align 8, !mcsema_real_eip !14
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !14
  %8 = bitcast i64* %R8 to <2 x i64>*
  %9 = load <2 x i64>* %8, align 8
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !14
  %10 = bitcast i64* %R10 to <2 x i64>*
  %11 = load <2 x i64>* %10, align 8
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !14
  %12 = bitcast i64* %R12 to <2 x i64>*
  %13 = load <2 x i64>* %12, align 8
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !14
  %14 = bitcast i64* %R14 to <2 x i64>*
  %15 = load <2 x i64>* %14, align 8
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !14
  %16 = load i64* %RIP, align 8, !mcsema_real_eip !14
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !14
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !14
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !14
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !14
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !14
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !14
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !14
  %17 = load i1* %DF, align 1, !mcsema_real_eip !14
  %18 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !14
  %19 = bitcast x86_fp80* %18 to i8*, !mcsema_real_eip !14
  %20 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !14
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !14
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !14
  %21 = load i1* %FPU_B, align 1, !mcsema_real_eip !14
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !14
  %22 = load i1* %FPU_C3, align 1, !mcsema_real_eip !14
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !14
  %23 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !14
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !14
  %24 = load i1* %FPU_C2, align 1, !mcsema_real_eip !14
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !14
  %25 = load i1* %FPU_C1, align 1, !mcsema_real_eip !14
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !14
  %26 = load i1* %FPU_C0, align 1, !mcsema_real_eip !14
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !14
  %27 = load i1* %FPU_ES, align 1, !mcsema_real_eip !14
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !14
  %28 = load i1* %FPU_SF, align 1, !mcsema_real_eip !14
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !14
  %29 = load i1* %FPU_PE, align 1, !mcsema_real_eip !14
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !14
  %30 = load i1* %FPU_UE, align 1, !mcsema_real_eip !14
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !14
  %31 = load i1* %FPU_OE, align 1, !mcsema_real_eip !14
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !14
  %32 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !14
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !14
  %33 = load i1* %FPU_DE, align 1, !mcsema_real_eip !14
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !14
  %34 = load i1* %FPU_IE, align 1, !mcsema_real_eip !14
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !14
  %35 = load i1* %FPU_X, align 1, !mcsema_real_eip !14
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !14
  %36 = load i2* %FPU_RC, align 1, !mcsema_real_eip !14
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !14
  %37 = load i2* %FPU_PC, align 1, !mcsema_real_eip !14
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !14
  %38 = load i1* %FPU_PM, align 1, !mcsema_real_eip !14
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !14
  %39 = load i1* %FPU_UM, align 1, !mcsema_real_eip !14
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !14
  %40 = load i1* %FPU_OM, align 1, !mcsema_real_eip !14
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !14
  %41 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !14
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !14
  %42 = load i1* %FPU_DM, align 1, !mcsema_real_eip !14
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !14
  %43 = load i1* %FPU_IM, align 1, !mcsema_real_eip !14
  %44 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !14
  %45 = bitcast i8* %44 to i64*
  %46 = load i64* %45, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !14
  %47 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !14
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !14
  %48 = load i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !14
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !14
  %49 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !14
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !14
  %50 = load i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !14
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !14
  %51 = load i128* %XMM0, align 1, !mcsema_real_eip !14
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !14
  %52 = load i128* %XMM1, align 1, !mcsema_real_eip !14
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !14
  %53 = load i128* %XMM2, align 1, !mcsema_real_eip !14
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !14
  %54 = load i128* %XMM3, align 1, !mcsema_real_eip !14
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !14
  %55 = load i128* %XMM4, align 1, !mcsema_real_eip !14
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !14
  %56 = load i128* %XMM5, align 1, !mcsema_real_eip !14
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !14
  %57 = load i128* %XMM6, align 1, !mcsema_real_eip !14
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !14
  %58 = load i128* %XMM7, align 1, !mcsema_real_eip !14
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !14
  %59 = load i128* %XMM8, align 1, !mcsema_real_eip !14
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !14
  %60 = load i128* %XMM9, align 1, !mcsema_real_eip !14
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !14
  %61 = load i128* %XMM10, align 1, !mcsema_real_eip !14
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !14
  %62 = load i128* %XMM11, align 1, !mcsema_real_eip !14
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !14
  %63 = load i128* %XMM12, align 1, !mcsema_real_eip !14
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !14
  %64 = load i128* %XMM13, align 1, !mcsema_real_eip !14
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !14
  %65 = load i128* %XMM14, align 1, !mcsema_real_eip !14
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !14
  %66 = load i128* %XMM15, align 1, !mcsema_real_eip !14
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !14
  %67 = bitcast i64* %STACK_BASE to <2 x i64>*
  %68 = load <2 x i64>* %67, align 8
  %69 = add i64 %7, -8, !mcsema_real_eip !14
  %70 = inttoptr i64 %69 to i32*
  %71 = load i32* %70, align 4, !mcsema_real_eip !14
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %71, i32 74636)
  %72 = extractvalue { i32, i1 } %uadd, 0
  %73 = xor i32 %72, %71, !mcsema_real_eip !15
  %74 = and i32 %73, 16, !mcsema_real_eip !15
  %75 = icmp ne i32 %74, 0, !mcsema_real_eip !15
  %76 = icmp slt i32 %72, 0
  %77 = icmp eq i32 %72, 0, !mcsema_real_eip !15
  %78 = xor i32 %71, -2147483648, !mcsema_real_eip !15
  %79 = and i32 %73, %78, !mcsema_real_eip !15
  %80 = icmp slt i32 %79, 0
  %81 = trunc i32 %72 to i8, !mcsema_real_eip !15
  %82 = tail call i8 @llvm.ctpop.i8(i8 %81), !mcsema_real_eip !15
  %83 = and i8 %82, 1
  %84 = icmp eq i8 %83, 0
  %85 = extractvalue { i32, i1 } %uadd, 1
  store i32 %72, i32* %70, align 4, !mcsema_real_eip !16
  %86 = zext i32 %72 to i64, !mcsema_real_eip !5
  %87 = inttoptr i64 %6 to i64*, !mcsema_real_eip !6
  %88 = load i64* %87, align 8, !mcsema_real_eip !6
  %89 = add i64 %6, 16, !mcsema_real_eip !7
  store i64 %86, i64* %RAX, align 8, !mcsema_real_eip !7
  %90 = bitcast i64* %RBX to <2 x i64>*
  store <2 x i64> %2, <2 x i64>* %90, align 8
  %91 = bitcast i64* %RDX to <2 x i64>*
  store <2 x i64> %4, <2 x i64>* %91, align 8
  store i64 %5, i64* %RDI, align 8, !mcsema_real_eip !7
  store i64 %89, i64* %RSP, align 8, !mcsema_real_eip !7
  store i64 %88, i64* %RBP, align 8, !mcsema_real_eip !7
  %92 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> %9, <2 x i64>* %92, align 8
  %93 = bitcast i64* %R10 to <2 x i64>*
  store <2 x i64> %11, <2 x i64>* %93, align 8
  %94 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> %13, <2 x i64>* %94, align 8
  %95 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> %15, <2 x i64>* %95, align 8
  store i64 %16, i64* %RIP, align 8, !mcsema_real_eip !7
  store i1 %85, i1* %CF, align 1, !mcsema_real_eip !7
  store i1 %84, i1* %PF, align 1, !mcsema_real_eip !7
  store i1 %75, i1* %AF, align 1, !mcsema_real_eip !7
  store i1 %77, i1* %ZF, align 1, !mcsema_real_eip !7
  store i1 %76, i1* %SF, align 1, !mcsema_real_eip !7
  store i1 %80, i1* %OF, align 1, !mcsema_real_eip !7
  store i1 %17, i1* %DF, align 1, !mcsema_real_eip !7
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %20, i32 128, i32 8, i1 false), !mcsema_real_eip !7
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
  store i128 %51, i128* %XMM0, align 1, !mcsema_real_eip !7
  store i128 %52, i128* %XMM1, align 1, !mcsema_real_eip !7
  store i128 %53, i128* %XMM2, align 1, !mcsema_real_eip !7
  store i128 %54, i128* %XMM3, align 1, !mcsema_real_eip !7
  store i128 %55, i128* %XMM4, align 1, !mcsema_real_eip !7
  store i128 %56, i128* %XMM5, align 1, !mcsema_real_eip !7
  store i128 %57, i128* %XMM6, align 1, !mcsema_real_eip !7
  store i128 %58, i128* %XMM7, align 1, !mcsema_real_eip !7
  store i128 %59, i128* %XMM8, align 1, !mcsema_real_eip !7
  store i128 %60, i128* %XMM9, align 1, !mcsema_real_eip !7
  store i128 %61, i128* %XMM10, align 1, !mcsema_real_eip !7
  store i128 %62, i128* %XMM11, align 1, !mcsema_real_eip !7
  store i128 %63, i128* %XMM12, align 1, !mcsema_real_eip !7
  store i128 %64, i128* %XMM13, align 1, !mcsema_real_eip !7
  store i128 %65, i128* %XMM14, align 1, !mcsema_real_eip !7
  store i128 %66, i128* %XMM15, align 1, !mcsema_real_eip !7
  %96 = bitcast i64* %STACK_BASE to <2 x i64>*
  store <2 x i64> %68, <2 x i64>* %96, align 1
  ret void, !mcsema_real_eip !7
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_172(%struct.regs*) #0 {
entry:
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !17
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !17
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !17
  %1 = bitcast i64* %RBX to <2 x i64>*
  %2 = load <2 x i64>* %1, align 8
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !17
  %3 = bitcast i64* %RDX to <2 x i64>*
  %4 = load <2 x i64>* %3, align 8
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !17
  %5 = load i64* %RDI, align 8, !mcsema_real_eip !17
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !17
  %6 = load i64* %RSP, align 8, !mcsema_real_eip !17
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !17
  %7 = load i64* %RBP, align 8, !mcsema_real_eip !17
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !17
  %8 = bitcast i64* %R8 to <2 x i64>*
  %9 = load <2 x i64>* %8, align 8
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !17
  %10 = bitcast i64* %R10 to <2 x i64>*
  %11 = load <2 x i64>* %10, align 8
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !17
  %12 = bitcast i64* %R12 to <2 x i64>*
  %13 = load <2 x i64>* %12, align 8
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !17
  %14 = bitcast i64* %R14 to <2 x i64>*
  %15 = load <2 x i64>* %14, align 8
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !17
  %16 = load i64* %RIP, align 8, !mcsema_real_eip !17
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !17
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !17
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !17
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !17
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !17
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !17
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !17
  %17 = load i1* %DF, align 1, !mcsema_real_eip !17
  %18 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !17
  %19 = bitcast x86_fp80* %18 to i8*, !mcsema_real_eip !17
  %20 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !17
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !17
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !17
  %21 = load i1* %FPU_B, align 1, !mcsema_real_eip !17
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !17
  %22 = load i1* %FPU_C3, align 1, !mcsema_real_eip !17
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !17
  %23 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !17
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !17
  %24 = load i1* %FPU_C2, align 1, !mcsema_real_eip !17
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !17
  %25 = load i1* %FPU_C1, align 1, !mcsema_real_eip !17
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !17
  %26 = load i1* %FPU_C0, align 1, !mcsema_real_eip !17
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !17
  %27 = load i1* %FPU_ES, align 1, !mcsema_real_eip !17
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !17
  %28 = load i1* %FPU_SF, align 1, !mcsema_real_eip !17
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !17
  %29 = load i1* %FPU_PE, align 1, !mcsema_real_eip !17
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !17
  %30 = load i1* %FPU_UE, align 1, !mcsema_real_eip !17
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !17
  %31 = load i1* %FPU_OE, align 1, !mcsema_real_eip !17
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !17
  %32 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !17
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !17
  %33 = load i1* %FPU_DE, align 1, !mcsema_real_eip !17
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !17
  %34 = load i1* %FPU_IE, align 1, !mcsema_real_eip !17
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !17
  %35 = load i1* %FPU_X, align 1, !mcsema_real_eip !17
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !17
  %36 = load i2* %FPU_RC, align 1, !mcsema_real_eip !17
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !17
  %37 = load i2* %FPU_PC, align 1, !mcsema_real_eip !17
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !17
  %38 = load i1* %FPU_PM, align 1, !mcsema_real_eip !17
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !17
  %39 = load i1* %FPU_UM, align 1, !mcsema_real_eip !17
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !17
  %40 = load i1* %FPU_OM, align 1, !mcsema_real_eip !17
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !17
  %41 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !17
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !17
  %42 = load i1* %FPU_DM, align 1, !mcsema_real_eip !17
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !17
  %43 = load i1* %FPU_IM, align 1, !mcsema_real_eip !17
  %44 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !17
  %45 = bitcast i8* %44 to i64*
  %46 = load i64* %45, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !17
  %47 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !17
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !17
  %48 = load i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !17
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !17
  %49 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !17
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !17
  %50 = load i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !17
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !17
  %51 = load i128* %XMM0, align 1, !mcsema_real_eip !17
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !17
  %52 = load i128* %XMM1, align 1, !mcsema_real_eip !17
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !17
  %53 = load i128* %XMM2, align 1, !mcsema_real_eip !17
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !17
  %54 = load i128* %XMM3, align 1, !mcsema_real_eip !17
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !17
  %55 = load i128* %XMM4, align 1, !mcsema_real_eip !17
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !17
  %56 = load i128* %XMM5, align 1, !mcsema_real_eip !17
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !17
  %57 = load i128* %XMM6, align 1, !mcsema_real_eip !17
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !17
  %58 = load i128* %XMM7, align 1, !mcsema_real_eip !17
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !17
  %59 = load i128* %XMM8, align 1, !mcsema_real_eip !17
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !17
  %60 = load i128* %XMM9, align 1, !mcsema_real_eip !17
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !17
  %61 = load i128* %XMM10, align 1, !mcsema_real_eip !17
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !17
  %62 = load i128* %XMM11, align 1, !mcsema_real_eip !17
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !17
  %63 = load i128* %XMM12, align 1, !mcsema_real_eip !17
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !17
  %64 = load i128* %XMM13, align 1, !mcsema_real_eip !17
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !17
  %65 = load i128* %XMM14, align 1, !mcsema_real_eip !17
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !17
  %66 = load i128* %XMM15, align 1, !mcsema_real_eip !17
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !17
  %67 = bitcast i64* %STACK_BASE to <2 x i64>*
  %68 = load <2 x i64>* %67, align 8
  %69 = add i64 %7, -8, !mcsema_real_eip !17
  %70 = inttoptr i64 %69 to i32*
  %71 = load i32* %70, align 4, !mcsema_real_eip !17
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %71, i32 74637)
  %72 = extractvalue { i32, i1 } %uadd, 0
  %73 = xor i32 %72, %71, !mcsema_real_eip !18
  %74 = and i32 %73, 16, !mcsema_real_eip !18
  %75 = icmp ne i32 %74, 0, !mcsema_real_eip !18
  %76 = icmp slt i32 %72, 0
  %77 = icmp eq i32 %72, 0, !mcsema_real_eip !18
  %78 = xor i32 %71, -2147483648, !mcsema_real_eip !18
  %79 = and i32 %73, %78, !mcsema_real_eip !18
  %80 = icmp slt i32 %79, 0
  %81 = trunc i32 %72 to i8, !mcsema_real_eip !18
  %82 = tail call i8 @llvm.ctpop.i8(i8 %81), !mcsema_real_eip !18
  %83 = and i8 %82, 1
  %84 = icmp eq i8 %83, 0
  %85 = extractvalue { i32, i1 } %uadd, 1
  store i32 %72, i32* %70, align 4, !mcsema_real_eip !19
  %86 = zext i32 %72 to i64, !mcsema_real_eip !5
  %87 = inttoptr i64 %6 to i64*, !mcsema_real_eip !6
  %88 = load i64* %87, align 8, !mcsema_real_eip !6
  %89 = add i64 %6, 16, !mcsema_real_eip !7
  store i64 %86, i64* %RAX, align 8, !mcsema_real_eip !7
  %90 = bitcast i64* %RBX to <2 x i64>*
  store <2 x i64> %2, <2 x i64>* %90, align 8
  %91 = bitcast i64* %RDX to <2 x i64>*
  store <2 x i64> %4, <2 x i64>* %91, align 8
  store i64 %5, i64* %RDI, align 8, !mcsema_real_eip !7
  store i64 %89, i64* %RSP, align 8, !mcsema_real_eip !7
  store i64 %88, i64* %RBP, align 8, !mcsema_real_eip !7
  %92 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> %9, <2 x i64>* %92, align 8
  %93 = bitcast i64* %R10 to <2 x i64>*
  store <2 x i64> %11, <2 x i64>* %93, align 8
  %94 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> %13, <2 x i64>* %94, align 8
  %95 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> %15, <2 x i64>* %95, align 8
  store i64 %16, i64* %RIP, align 8, !mcsema_real_eip !7
  store i1 %85, i1* %CF, align 1, !mcsema_real_eip !7
  store i1 %84, i1* %PF, align 1, !mcsema_real_eip !7
  store i1 %75, i1* %AF, align 1, !mcsema_real_eip !7
  store i1 %77, i1* %ZF, align 1, !mcsema_real_eip !7
  store i1 %76, i1* %SF, align 1, !mcsema_real_eip !7
  store i1 %80, i1* %OF, align 1, !mcsema_real_eip !7
  store i1 %17, i1* %DF, align 1, !mcsema_real_eip !7
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %20, i32 128, i32 8, i1 false), !mcsema_real_eip !7
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
  store i128 %51, i128* %XMM0, align 1, !mcsema_real_eip !7
  store i128 %52, i128* %XMM1, align 1, !mcsema_real_eip !7
  store i128 %53, i128* %XMM2, align 1, !mcsema_real_eip !7
  store i128 %54, i128* %XMM3, align 1, !mcsema_real_eip !7
  store i128 %55, i128* %XMM4, align 1, !mcsema_real_eip !7
  store i128 %56, i128* %XMM5, align 1, !mcsema_real_eip !7
  store i128 %57, i128* %XMM6, align 1, !mcsema_real_eip !7
  store i128 %58, i128* %XMM7, align 1, !mcsema_real_eip !7
  store i128 %59, i128* %XMM8, align 1, !mcsema_real_eip !7
  store i128 %60, i128* %XMM9, align 1, !mcsema_real_eip !7
  store i128 %61, i128* %XMM10, align 1, !mcsema_real_eip !7
  store i128 %62, i128* %XMM11, align 1, !mcsema_real_eip !7
  store i128 %63, i128* %XMM12, align 1, !mcsema_real_eip !7
  store i128 %64, i128* %XMM13, align 1, !mcsema_real_eip !7
  store i128 %65, i128* %XMM14, align 1, !mcsema_real_eip !7
  store i128 %66, i128* %XMM15, align 1, !mcsema_real_eip !7
  %96 = bitcast i64* %STACK_BASE to <2 x i64>*
  store <2 x i64> %68, <2 x i64>* %96, align 1
  ret void, !mcsema_real_eip !7
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_1d2(%struct.regs*) #0 {
entry:
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !20
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !20
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !20
  %1 = bitcast i64* %RBX to <2 x i64>*
  %2 = load <2 x i64>* %1, align 8
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !20
  %3 = bitcast i64* %RDX to <2 x i64>*
  %4 = load <2 x i64>* %3, align 8
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !20
  %5 = load i64* %RDI, align 8, !mcsema_real_eip !20
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !20
  %6 = load i64* %RSP, align 8, !mcsema_real_eip !20
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !20
  %7 = load i64* %RBP, align 8, !mcsema_real_eip !20
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !20
  %8 = bitcast i64* %R8 to <2 x i64>*
  %9 = load <2 x i64>* %8, align 8
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !20
  %10 = bitcast i64* %R10 to <2 x i64>*
  %11 = load <2 x i64>* %10, align 8
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !20
  %12 = bitcast i64* %R12 to <2 x i64>*
  %13 = load <2 x i64>* %12, align 8
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !20
  %14 = bitcast i64* %R14 to <2 x i64>*
  %15 = load <2 x i64>* %14, align 8
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !20
  %16 = load i64* %RIP, align 8, !mcsema_real_eip !20
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !20
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !20
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !20
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !20
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !20
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !20
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !20
  %17 = load i1* %DF, align 1, !mcsema_real_eip !20
  %18 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !20
  %19 = bitcast x86_fp80* %18 to i8*, !mcsema_real_eip !20
  %20 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !20
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !20
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !20
  %21 = load i1* %FPU_B, align 1, !mcsema_real_eip !20
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !20
  %22 = load i1* %FPU_C3, align 1, !mcsema_real_eip !20
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !20
  %23 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !20
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !20
  %24 = load i1* %FPU_C2, align 1, !mcsema_real_eip !20
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !20
  %25 = load i1* %FPU_C1, align 1, !mcsema_real_eip !20
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !20
  %26 = load i1* %FPU_C0, align 1, !mcsema_real_eip !20
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !20
  %27 = load i1* %FPU_ES, align 1, !mcsema_real_eip !20
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !20
  %28 = load i1* %FPU_SF, align 1, !mcsema_real_eip !20
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !20
  %29 = load i1* %FPU_PE, align 1, !mcsema_real_eip !20
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !20
  %30 = load i1* %FPU_UE, align 1, !mcsema_real_eip !20
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !20
  %31 = load i1* %FPU_OE, align 1, !mcsema_real_eip !20
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !20
  %32 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !20
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !20
  %33 = load i1* %FPU_DE, align 1, !mcsema_real_eip !20
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !20
  %34 = load i1* %FPU_IE, align 1, !mcsema_real_eip !20
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !20
  %35 = load i1* %FPU_X, align 1, !mcsema_real_eip !20
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !20
  %36 = load i2* %FPU_RC, align 1, !mcsema_real_eip !20
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !20
  %37 = load i2* %FPU_PC, align 1, !mcsema_real_eip !20
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !20
  %38 = load i1* %FPU_PM, align 1, !mcsema_real_eip !20
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !20
  %39 = load i1* %FPU_UM, align 1, !mcsema_real_eip !20
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !20
  %40 = load i1* %FPU_OM, align 1, !mcsema_real_eip !20
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !20
  %41 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !20
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !20
  %42 = load i1* %FPU_DM, align 1, !mcsema_real_eip !20
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !20
  %43 = load i1* %FPU_IM, align 1, !mcsema_real_eip !20
  %44 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !20
  %45 = bitcast i8* %44 to i64*
  %46 = load i64* %45, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !20
  %47 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !20
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !20
  %48 = load i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !20
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !20
  %49 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !20
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !20
  %50 = load i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !20
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !20
  %51 = load i128* %XMM0, align 1, !mcsema_real_eip !20
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !20
  %52 = load i128* %XMM1, align 1, !mcsema_real_eip !20
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !20
  %53 = load i128* %XMM2, align 1, !mcsema_real_eip !20
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !20
  %54 = load i128* %XMM3, align 1, !mcsema_real_eip !20
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !20
  %55 = load i128* %XMM4, align 1, !mcsema_real_eip !20
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !20
  %56 = load i128* %XMM5, align 1, !mcsema_real_eip !20
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !20
  %57 = load i128* %XMM6, align 1, !mcsema_real_eip !20
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !20
  %58 = load i128* %XMM7, align 1, !mcsema_real_eip !20
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !20
  %59 = load i128* %XMM8, align 1, !mcsema_real_eip !20
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !20
  %60 = load i128* %XMM9, align 1, !mcsema_real_eip !20
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !20
  %61 = load i128* %XMM10, align 1, !mcsema_real_eip !20
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !20
  %62 = load i128* %XMM11, align 1, !mcsema_real_eip !20
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !20
  %63 = load i128* %XMM12, align 1, !mcsema_real_eip !20
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !20
  %64 = load i128* %XMM13, align 1, !mcsema_real_eip !20
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !20
  %65 = load i128* %XMM14, align 1, !mcsema_real_eip !20
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !20
  %66 = load i128* %XMM15, align 1, !mcsema_real_eip !20
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !20
  %67 = bitcast i64* %STACK_BASE to <2 x i64>*
  %68 = load <2 x i64>* %67, align 8
  %69 = add i64 %7, -8, !mcsema_real_eip !20
  %70 = inttoptr i64 %69 to i32*
  %71 = load i32* %70, align 4, !mcsema_real_eip !20
  %72 = icmp slt i32 %71, 0
  %73 = icmp eq i32 %71, 0, !mcsema_real_eip !21
  %74 = trunc i32 %71 to i8, !mcsema_real_eip !21
  %75 = tail call i8 @llvm.ctpop.i8(i8 %74), !mcsema_real_eip !21
  %76 = and i8 %75, 1
  %77 = icmp eq i8 %76, 0
  %78 = zext i32 %71 to i64, !mcsema_real_eip !5
  %79 = inttoptr i64 %6 to i64*, !mcsema_real_eip !6
  %80 = load i64* %79, align 8, !mcsema_real_eip !6
  %81 = add i64 %6, 16, !mcsema_real_eip !7
  store i64 %78, i64* %RAX, align 8, !mcsema_real_eip !7
  %82 = bitcast i64* %RBX to <2 x i64>*
  store <2 x i64> %2, <2 x i64>* %82, align 8
  %83 = bitcast i64* %RDX to <2 x i64>*
  store <2 x i64> %4, <2 x i64>* %83, align 8
  store i64 %5, i64* %RDI, align 8, !mcsema_real_eip !7
  store i64 %81, i64* %RSP, align 8, !mcsema_real_eip !7
  store i64 %80, i64* %RBP, align 8, !mcsema_real_eip !7
  %84 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> %9, <2 x i64>* %84, align 8
  %85 = bitcast i64* %R10 to <2 x i64>*
  store <2 x i64> %11, <2 x i64>* %85, align 8
  %86 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> %13, <2 x i64>* %86, align 8
  %87 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> %15, <2 x i64>* %87, align 8
  store i64 %16, i64* %RIP, align 8, !mcsema_real_eip !7
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !7
  store i1 %77, i1* %PF, align 1, !mcsema_real_eip !7
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !7
  store i1 %73, i1* %ZF, align 1, !mcsema_real_eip !7
  store i1 %72, i1* %SF, align 1, !mcsema_real_eip !7
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !7
  store i1 %17, i1* %DF, align 1, !mcsema_real_eip !7
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %20, i32 128, i32 8, i1 false), !mcsema_real_eip !7
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
  store i128 %51, i128* %XMM0, align 1, !mcsema_real_eip !7
  store i128 %52, i128* %XMM1, align 1, !mcsema_real_eip !7
  store i128 %53, i128* %XMM2, align 1, !mcsema_real_eip !7
  store i128 %54, i128* %XMM3, align 1, !mcsema_real_eip !7
  store i128 %55, i128* %XMM4, align 1, !mcsema_real_eip !7
  store i128 %56, i128* %XMM5, align 1, !mcsema_real_eip !7
  store i128 %57, i128* %XMM6, align 1, !mcsema_real_eip !7
  store i128 %58, i128* %XMM7, align 1, !mcsema_real_eip !7
  store i128 %59, i128* %XMM8, align 1, !mcsema_real_eip !7
  store i128 %60, i128* %XMM9, align 1, !mcsema_real_eip !7
  store i128 %61, i128* %XMM10, align 1, !mcsema_real_eip !7
  store i128 %62, i128* %XMM11, align 1, !mcsema_real_eip !7
  store i128 %63, i128* %XMM12, align 1, !mcsema_real_eip !7
  store i128 %64, i128* %XMM13, align 1, !mcsema_real_eip !7
  store i128 %65, i128* %XMM14, align 1, !mcsema_real_eip !7
  store i128 %66, i128* %XMM15, align 1, !mcsema_real_eip !7
  %88 = bitcast i64* %STACK_BASE to <2 x i64>*
  store <2 x i64> %68, <2 x i64>* %88, align 1
  ret void, !mcsema_real_eip !7
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_182(%struct.regs*) #0 {
entry:
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !22
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !22
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !22
  %1 = bitcast i64* %RBX to <2 x i64>*
  %2 = load <2 x i64>* %1, align 8
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !22
  %3 = bitcast i64* %RDX to <2 x i64>*
  %4 = load <2 x i64>* %3, align 8
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !22
  %5 = load i64* %RDI, align 8, !mcsema_real_eip !22
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !22
  %6 = load i64* %RSP, align 8, !mcsema_real_eip !22
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !22
  %7 = load i64* %RBP, align 8, !mcsema_real_eip !22
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !22
  %8 = bitcast i64* %R8 to <2 x i64>*
  %9 = load <2 x i64>* %8, align 8
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !22
  %10 = bitcast i64* %R10 to <2 x i64>*
  %11 = load <2 x i64>* %10, align 8
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !22
  %12 = bitcast i64* %R12 to <2 x i64>*
  %13 = load <2 x i64>* %12, align 8
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !22
  %14 = bitcast i64* %R14 to <2 x i64>*
  %15 = load <2 x i64>* %14, align 8
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !22
  %16 = load i64* %RIP, align 8, !mcsema_real_eip !22
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !22
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !22
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !22
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !22
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !22
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !22
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !22
  %17 = load i1* %DF, align 1, !mcsema_real_eip !22
  %18 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !22
  %19 = bitcast x86_fp80* %18 to i8*, !mcsema_real_eip !22
  %20 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !22
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !22
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !22
  %21 = load i1* %FPU_B, align 1, !mcsema_real_eip !22
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !22
  %22 = load i1* %FPU_C3, align 1, !mcsema_real_eip !22
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !22
  %23 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !22
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !22
  %24 = load i1* %FPU_C2, align 1, !mcsema_real_eip !22
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !22
  %25 = load i1* %FPU_C1, align 1, !mcsema_real_eip !22
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !22
  %26 = load i1* %FPU_C0, align 1, !mcsema_real_eip !22
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !22
  %27 = load i1* %FPU_ES, align 1, !mcsema_real_eip !22
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !22
  %28 = load i1* %FPU_SF, align 1, !mcsema_real_eip !22
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !22
  %29 = load i1* %FPU_PE, align 1, !mcsema_real_eip !22
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !22
  %30 = load i1* %FPU_UE, align 1, !mcsema_real_eip !22
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !22
  %31 = load i1* %FPU_OE, align 1, !mcsema_real_eip !22
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !22
  %32 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !22
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !22
  %33 = load i1* %FPU_DE, align 1, !mcsema_real_eip !22
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !22
  %34 = load i1* %FPU_IE, align 1, !mcsema_real_eip !22
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !22
  %35 = load i1* %FPU_X, align 1, !mcsema_real_eip !22
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !22
  %36 = load i2* %FPU_RC, align 1, !mcsema_real_eip !22
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !22
  %37 = load i2* %FPU_PC, align 1, !mcsema_real_eip !22
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !22
  %38 = load i1* %FPU_PM, align 1, !mcsema_real_eip !22
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !22
  %39 = load i1* %FPU_UM, align 1, !mcsema_real_eip !22
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !22
  %40 = load i1* %FPU_OM, align 1, !mcsema_real_eip !22
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !22
  %41 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !22
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !22
  %42 = load i1* %FPU_DM, align 1, !mcsema_real_eip !22
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !22
  %43 = load i1* %FPU_IM, align 1, !mcsema_real_eip !22
  %44 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !22
  %45 = bitcast i8* %44 to i64*
  %46 = load i64* %45, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !22
  %47 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !22
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !22
  %48 = load i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !22
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !22
  %49 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !22
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !22
  %50 = load i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !22
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !22
  %51 = load i128* %XMM0, align 1, !mcsema_real_eip !22
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !22
  %52 = load i128* %XMM1, align 1, !mcsema_real_eip !22
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !22
  %53 = load i128* %XMM2, align 1, !mcsema_real_eip !22
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !22
  %54 = load i128* %XMM3, align 1, !mcsema_real_eip !22
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !22
  %55 = load i128* %XMM4, align 1, !mcsema_real_eip !22
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !22
  %56 = load i128* %XMM5, align 1, !mcsema_real_eip !22
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !22
  %57 = load i128* %XMM6, align 1, !mcsema_real_eip !22
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !22
  %58 = load i128* %XMM7, align 1, !mcsema_real_eip !22
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !22
  %59 = load i128* %XMM8, align 1, !mcsema_real_eip !22
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !22
  %60 = load i128* %XMM9, align 1, !mcsema_real_eip !22
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !22
  %61 = load i128* %XMM10, align 1, !mcsema_real_eip !22
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !22
  %62 = load i128* %XMM11, align 1, !mcsema_real_eip !22
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !22
  %63 = load i128* %XMM12, align 1, !mcsema_real_eip !22
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !22
  %64 = load i128* %XMM13, align 1, !mcsema_real_eip !22
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !22
  %65 = load i128* %XMM14, align 1, !mcsema_real_eip !22
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !22
  %66 = load i128* %XMM15, align 1, !mcsema_real_eip !22
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !22
  %67 = bitcast i64* %STACK_BASE to <2 x i64>*
  %68 = load <2 x i64>* %67, align 8
  %69 = add i64 %7, -8, !mcsema_real_eip !22
  %70 = inttoptr i64 %69 to i32*
  %71 = load i32* %70, align 4, !mcsema_real_eip !22
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %71, i32 74639)
  %72 = extractvalue { i32, i1 } %uadd, 0
  %73 = xor i32 %72, %71, !mcsema_real_eip !23
  %74 = and i32 %73, 16, !mcsema_real_eip !23
  %75 = icmp ne i32 %74, 0, !mcsema_real_eip !23
  %76 = icmp slt i32 %72, 0
  %77 = icmp eq i32 %72, 0, !mcsema_real_eip !23
  %78 = xor i32 %71, -2147483648, !mcsema_real_eip !23
  %79 = and i32 %73, %78, !mcsema_real_eip !23
  %80 = icmp slt i32 %79, 0
  %81 = trunc i32 %72 to i8, !mcsema_real_eip !23
  %82 = tail call i8 @llvm.ctpop.i8(i8 %81), !mcsema_real_eip !23
  %83 = and i8 %82, 1
  %84 = icmp eq i8 %83, 0
  %85 = extractvalue { i32, i1 } %uadd, 1
  store i32 %72, i32* %70, align 4, !mcsema_real_eip !24
  %86 = zext i32 %72 to i64, !mcsema_real_eip !5
  %87 = inttoptr i64 %6 to i64*, !mcsema_real_eip !6
  %88 = load i64* %87, align 8, !mcsema_real_eip !6
  %89 = add i64 %6, 16, !mcsema_real_eip !7
  store i64 %86, i64* %RAX, align 8, !mcsema_real_eip !7
  %90 = bitcast i64* %RBX to <2 x i64>*
  store <2 x i64> %2, <2 x i64>* %90, align 8
  %91 = bitcast i64* %RDX to <2 x i64>*
  store <2 x i64> %4, <2 x i64>* %91, align 8
  store i64 %5, i64* %RDI, align 8, !mcsema_real_eip !7
  store i64 %89, i64* %RSP, align 8, !mcsema_real_eip !7
  store i64 %88, i64* %RBP, align 8, !mcsema_real_eip !7
  %92 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> %9, <2 x i64>* %92, align 8
  %93 = bitcast i64* %R10 to <2 x i64>*
  store <2 x i64> %11, <2 x i64>* %93, align 8
  %94 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> %13, <2 x i64>* %94, align 8
  %95 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> %15, <2 x i64>* %95, align 8
  store i64 %16, i64* %RIP, align 8, !mcsema_real_eip !7
  store i1 %85, i1* %CF, align 1, !mcsema_real_eip !7
  store i1 %84, i1* %PF, align 1, !mcsema_real_eip !7
  store i1 %75, i1* %AF, align 1, !mcsema_real_eip !7
  store i1 %77, i1* %ZF, align 1, !mcsema_real_eip !7
  store i1 %76, i1* %SF, align 1, !mcsema_real_eip !7
  store i1 %80, i1* %OF, align 1, !mcsema_real_eip !7
  store i1 %17, i1* %DF, align 1, !mcsema_real_eip !7
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %20, i32 128, i32 8, i1 false), !mcsema_real_eip !7
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
  store i128 %51, i128* %XMM0, align 1, !mcsema_real_eip !7
  store i128 %52, i128* %XMM1, align 1, !mcsema_real_eip !7
  store i128 %53, i128* %XMM2, align 1, !mcsema_real_eip !7
  store i128 %54, i128* %XMM3, align 1, !mcsema_real_eip !7
  store i128 %55, i128* %XMM4, align 1, !mcsema_real_eip !7
  store i128 %56, i128* %XMM5, align 1, !mcsema_real_eip !7
  store i128 %57, i128* %XMM6, align 1, !mcsema_real_eip !7
  store i128 %58, i128* %XMM7, align 1, !mcsema_real_eip !7
  store i128 %59, i128* %XMM8, align 1, !mcsema_real_eip !7
  store i128 %60, i128* %XMM9, align 1, !mcsema_real_eip !7
  store i128 %61, i128* %XMM10, align 1, !mcsema_real_eip !7
  store i128 %62, i128* %XMM11, align 1, !mcsema_real_eip !7
  store i128 %63, i128* %XMM12, align 1, !mcsema_real_eip !7
  store i128 %64, i128* %XMM13, align 1, !mcsema_real_eip !7
  store i128 %65, i128* %XMM14, align 1, !mcsema_real_eip !7
  store i128 %66, i128* %XMM15, align 1, !mcsema_real_eip !7
  %96 = bitcast i64* %STACK_BASE to <2 x i64>*
  store <2 x i64> %68, <2 x i64>* %96, align 1
  ret void, !mcsema_real_eip !7
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_192(%struct.regs*) #0 {
entry:
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !25
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !25
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !25
  %1 = bitcast i64* %RBX to <2 x i64>*
  %2 = load <2 x i64>* %1, align 8
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !25
  %3 = bitcast i64* %RDX to <2 x i64>*
  %4 = load <2 x i64>* %3, align 8
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !25
  %5 = load i64* %RDI, align 8, !mcsema_real_eip !25
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !25
  %6 = load i64* %RSP, align 8, !mcsema_real_eip !25
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !25
  %7 = load i64* %RBP, align 8, !mcsema_real_eip !25
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !25
  %8 = bitcast i64* %R8 to <2 x i64>*
  %9 = load <2 x i64>* %8, align 8
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !25
  %10 = bitcast i64* %R10 to <2 x i64>*
  %11 = load <2 x i64>* %10, align 8
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !25
  %12 = bitcast i64* %R12 to <2 x i64>*
  %13 = load <2 x i64>* %12, align 8
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !25
  %14 = bitcast i64* %R14 to <2 x i64>*
  %15 = load <2 x i64>* %14, align 8
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !25
  %16 = load i64* %RIP, align 8, !mcsema_real_eip !25
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !25
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !25
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !25
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !25
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !25
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !25
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !25
  %17 = load i1* %DF, align 1, !mcsema_real_eip !25
  %18 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !25
  %19 = bitcast x86_fp80* %18 to i8*, !mcsema_real_eip !25
  %20 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !25
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !25
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !25
  %21 = load i1* %FPU_B, align 1, !mcsema_real_eip !25
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !25
  %22 = load i1* %FPU_C3, align 1, !mcsema_real_eip !25
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !25
  %23 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !25
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !25
  %24 = load i1* %FPU_C2, align 1, !mcsema_real_eip !25
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !25
  %25 = load i1* %FPU_C1, align 1, !mcsema_real_eip !25
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !25
  %26 = load i1* %FPU_C0, align 1, !mcsema_real_eip !25
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !25
  %27 = load i1* %FPU_ES, align 1, !mcsema_real_eip !25
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !25
  %28 = load i1* %FPU_SF, align 1, !mcsema_real_eip !25
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !25
  %29 = load i1* %FPU_PE, align 1, !mcsema_real_eip !25
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !25
  %30 = load i1* %FPU_UE, align 1, !mcsema_real_eip !25
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !25
  %31 = load i1* %FPU_OE, align 1, !mcsema_real_eip !25
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !25
  %32 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !25
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !25
  %33 = load i1* %FPU_DE, align 1, !mcsema_real_eip !25
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !25
  %34 = load i1* %FPU_IE, align 1, !mcsema_real_eip !25
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !25
  %35 = load i1* %FPU_X, align 1, !mcsema_real_eip !25
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !25
  %36 = load i2* %FPU_RC, align 1, !mcsema_real_eip !25
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !25
  %37 = load i2* %FPU_PC, align 1, !mcsema_real_eip !25
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !25
  %38 = load i1* %FPU_PM, align 1, !mcsema_real_eip !25
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !25
  %39 = load i1* %FPU_UM, align 1, !mcsema_real_eip !25
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !25
  %40 = load i1* %FPU_OM, align 1, !mcsema_real_eip !25
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !25
  %41 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !25
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !25
  %42 = load i1* %FPU_DM, align 1, !mcsema_real_eip !25
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !25
  %43 = load i1* %FPU_IM, align 1, !mcsema_real_eip !25
  %44 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !25
  %45 = bitcast i8* %44 to i64*
  %46 = load i64* %45, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !25
  %47 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !25
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !25
  %48 = load i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !25
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !25
  %49 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !25
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !25
  %50 = load i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !25
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !25
  %51 = load i128* %XMM0, align 1, !mcsema_real_eip !25
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !25
  %52 = load i128* %XMM1, align 1, !mcsema_real_eip !25
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !25
  %53 = load i128* %XMM2, align 1, !mcsema_real_eip !25
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !25
  %54 = load i128* %XMM3, align 1, !mcsema_real_eip !25
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !25
  %55 = load i128* %XMM4, align 1, !mcsema_real_eip !25
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !25
  %56 = load i128* %XMM5, align 1, !mcsema_real_eip !25
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !25
  %57 = load i128* %XMM6, align 1, !mcsema_real_eip !25
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !25
  %58 = load i128* %XMM7, align 1, !mcsema_real_eip !25
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !25
  %59 = load i128* %XMM8, align 1, !mcsema_real_eip !25
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !25
  %60 = load i128* %XMM9, align 1, !mcsema_real_eip !25
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !25
  %61 = load i128* %XMM10, align 1, !mcsema_real_eip !25
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !25
  %62 = load i128* %XMM11, align 1, !mcsema_real_eip !25
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !25
  %63 = load i128* %XMM12, align 1, !mcsema_real_eip !25
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !25
  %64 = load i128* %XMM13, align 1, !mcsema_real_eip !25
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !25
  %65 = load i128* %XMM14, align 1, !mcsema_real_eip !25
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !25
  %66 = load i128* %XMM15, align 1, !mcsema_real_eip !25
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !25
  %67 = bitcast i64* %STACK_BASE to <2 x i64>*
  %68 = load <2 x i64>* %67, align 8
  %69 = add i64 %7, -8, !mcsema_real_eip !25
  %70 = inttoptr i64 %69 to i32*
  %71 = load i32* %70, align 4, !mcsema_real_eip !25
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %71, i32 74640)
  %72 = extractvalue { i32, i1 } %uadd, 0
  %73 = xor i32 %72, %71, !mcsema_real_eip !26
  %74 = and i32 %73, 16
  %75 = icmp eq i32 %74, 0
  %76 = icmp slt i32 %72, 0
  %77 = icmp eq i32 %72, 0, !mcsema_real_eip !26
  %78 = xor i32 %71, -2147483648, !mcsema_real_eip !26
  %79 = and i32 %73, %78, !mcsema_real_eip !26
  %80 = icmp slt i32 %79, 0
  %81 = trunc i32 %72 to i8, !mcsema_real_eip !26
  %82 = tail call i8 @llvm.ctpop.i8(i8 %81), !mcsema_real_eip !26
  %83 = and i8 %82, 1
  %84 = icmp eq i8 %83, 0
  %85 = extractvalue { i32, i1 } %uadd, 1
  store i32 %72, i32* %70, align 4, !mcsema_real_eip !27
  %86 = zext i32 %72 to i64, !mcsema_real_eip !5
  %87 = inttoptr i64 %6 to i64*, !mcsema_real_eip !6
  %88 = load i64* %87, align 8, !mcsema_real_eip !6
  %89 = add i64 %6, 16, !mcsema_real_eip !7
  store i64 %86, i64* %RAX, align 8, !mcsema_real_eip !7
  %90 = bitcast i64* %RBX to <2 x i64>*
  store <2 x i64> %2, <2 x i64>* %90, align 8
  %91 = bitcast i64* %RDX to <2 x i64>*
  store <2 x i64> %4, <2 x i64>* %91, align 8
  store i64 %5, i64* %RDI, align 8, !mcsema_real_eip !7
  store i64 %89, i64* %RSP, align 8, !mcsema_real_eip !7
  store i64 %88, i64* %RBP, align 8, !mcsema_real_eip !7
  %92 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> %9, <2 x i64>* %92, align 8
  %93 = bitcast i64* %R10 to <2 x i64>*
  store <2 x i64> %11, <2 x i64>* %93, align 8
  %94 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> %13, <2 x i64>* %94, align 8
  %95 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> %15, <2 x i64>* %95, align 8
  store i64 %16, i64* %RIP, align 8, !mcsema_real_eip !7
  store i1 %85, i1* %CF, align 1, !mcsema_real_eip !7
  store i1 %84, i1* %PF, align 1, !mcsema_real_eip !7
  store i1 %75, i1* %AF, align 1, !mcsema_real_eip !7
  store i1 %77, i1* %ZF, align 1, !mcsema_real_eip !7
  store i1 %76, i1* %SF, align 1, !mcsema_real_eip !7
  store i1 %80, i1* %OF, align 1, !mcsema_real_eip !7
  store i1 %17, i1* %DF, align 1, !mcsema_real_eip !7
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %20, i32 128, i32 8, i1 false), !mcsema_real_eip !7
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
  store i128 %51, i128* %XMM0, align 1, !mcsema_real_eip !7
  store i128 %52, i128* %XMM1, align 1, !mcsema_real_eip !7
  store i128 %53, i128* %XMM2, align 1, !mcsema_real_eip !7
  store i128 %54, i128* %XMM3, align 1, !mcsema_real_eip !7
  store i128 %55, i128* %XMM4, align 1, !mcsema_real_eip !7
  store i128 %56, i128* %XMM5, align 1, !mcsema_real_eip !7
  store i128 %57, i128* %XMM6, align 1, !mcsema_real_eip !7
  store i128 %58, i128* %XMM7, align 1, !mcsema_real_eip !7
  store i128 %59, i128* %XMM8, align 1, !mcsema_real_eip !7
  store i128 %60, i128* %XMM9, align 1, !mcsema_real_eip !7
  store i128 %61, i128* %XMM10, align 1, !mcsema_real_eip !7
  store i128 %62, i128* %XMM11, align 1, !mcsema_real_eip !7
  store i128 %63, i128* %XMM12, align 1, !mcsema_real_eip !7
  store i128 %64, i128* %XMM13, align 1, !mcsema_real_eip !7
  store i128 %65, i128* %XMM14, align 1, !mcsema_real_eip !7
  store i128 %66, i128* %XMM15, align 1, !mcsema_real_eip !7
  %96 = bitcast i64* %STACK_BASE to <2 x i64>*
  store <2 x i64> %68, <2 x i64>* %96, align 1
  ret void, !mcsema_real_eip !7
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_1a2(%struct.regs*) #0 {
entry:
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !28
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !28
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !28
  %1 = bitcast i64* %RBX to <2 x i64>*
  %2 = load <2 x i64>* %1, align 8
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !28
  %3 = bitcast i64* %RDX to <2 x i64>*
  %4 = load <2 x i64>* %3, align 8
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !28
  %5 = load i64* %RDI, align 8, !mcsema_real_eip !28
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !28
  %6 = load i64* %RSP, align 8, !mcsema_real_eip !28
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !28
  %7 = load i64* %RBP, align 8, !mcsema_real_eip !28
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !28
  %8 = bitcast i64* %R8 to <2 x i64>*
  %9 = load <2 x i64>* %8, align 8
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !28
  %10 = bitcast i64* %R10 to <2 x i64>*
  %11 = load <2 x i64>* %10, align 8
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !28
  %12 = bitcast i64* %R12 to <2 x i64>*
  %13 = load <2 x i64>* %12, align 8
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !28
  %14 = bitcast i64* %R14 to <2 x i64>*
  %15 = load <2 x i64>* %14, align 8
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !28
  %16 = load i64* %RIP, align 8, !mcsema_real_eip !28
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !28
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !28
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !28
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !28
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !28
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !28
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !28
  %17 = load i1* %DF, align 1, !mcsema_real_eip !28
  %18 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !28
  %19 = bitcast x86_fp80* %18 to i8*, !mcsema_real_eip !28
  %20 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !28
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !28
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !28
  %21 = load i1* %FPU_B, align 1, !mcsema_real_eip !28
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !28
  %22 = load i1* %FPU_C3, align 1, !mcsema_real_eip !28
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !28
  %23 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !28
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !28
  %24 = load i1* %FPU_C2, align 1, !mcsema_real_eip !28
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !28
  %25 = load i1* %FPU_C1, align 1, !mcsema_real_eip !28
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !28
  %26 = load i1* %FPU_C0, align 1, !mcsema_real_eip !28
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !28
  %27 = load i1* %FPU_ES, align 1, !mcsema_real_eip !28
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !28
  %28 = load i1* %FPU_SF, align 1, !mcsema_real_eip !28
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !28
  %29 = load i1* %FPU_PE, align 1, !mcsema_real_eip !28
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !28
  %30 = load i1* %FPU_UE, align 1, !mcsema_real_eip !28
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !28
  %31 = load i1* %FPU_OE, align 1, !mcsema_real_eip !28
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !28
  %32 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !28
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !28
  %33 = load i1* %FPU_DE, align 1, !mcsema_real_eip !28
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !28
  %34 = load i1* %FPU_IE, align 1, !mcsema_real_eip !28
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !28
  %35 = load i1* %FPU_X, align 1, !mcsema_real_eip !28
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !28
  %36 = load i2* %FPU_RC, align 1, !mcsema_real_eip !28
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !28
  %37 = load i2* %FPU_PC, align 1, !mcsema_real_eip !28
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !28
  %38 = load i1* %FPU_PM, align 1, !mcsema_real_eip !28
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !28
  %39 = load i1* %FPU_UM, align 1, !mcsema_real_eip !28
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !28
  %40 = load i1* %FPU_OM, align 1, !mcsema_real_eip !28
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !28
  %41 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !28
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !28
  %42 = load i1* %FPU_DM, align 1, !mcsema_real_eip !28
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !28
  %43 = load i1* %FPU_IM, align 1, !mcsema_real_eip !28
  %44 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !28
  %45 = bitcast i8* %44 to i64*
  %46 = load i64* %45, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !28
  %47 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !28
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !28
  %48 = load i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !28
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !28
  %49 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !28
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !28
  %50 = load i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !28
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !28
  %51 = load i128* %XMM0, align 1, !mcsema_real_eip !28
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !28
  %52 = load i128* %XMM1, align 1, !mcsema_real_eip !28
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !28
  %53 = load i128* %XMM2, align 1, !mcsema_real_eip !28
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !28
  %54 = load i128* %XMM3, align 1, !mcsema_real_eip !28
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !28
  %55 = load i128* %XMM4, align 1, !mcsema_real_eip !28
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !28
  %56 = load i128* %XMM5, align 1, !mcsema_real_eip !28
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !28
  %57 = load i128* %XMM6, align 1, !mcsema_real_eip !28
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !28
  %58 = load i128* %XMM7, align 1, !mcsema_real_eip !28
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !28
  %59 = load i128* %XMM8, align 1, !mcsema_real_eip !28
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !28
  %60 = load i128* %XMM9, align 1, !mcsema_real_eip !28
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !28
  %61 = load i128* %XMM10, align 1, !mcsema_real_eip !28
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !28
  %62 = load i128* %XMM11, align 1, !mcsema_real_eip !28
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !28
  %63 = load i128* %XMM12, align 1, !mcsema_real_eip !28
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !28
  %64 = load i128* %XMM13, align 1, !mcsema_real_eip !28
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !28
  %65 = load i128* %XMM14, align 1, !mcsema_real_eip !28
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !28
  %66 = load i128* %XMM15, align 1, !mcsema_real_eip !28
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !28
  %67 = bitcast i64* %STACK_BASE to <2 x i64>*
  %68 = load <2 x i64>* %67, align 8
  %69 = add i64 %7, -8, !mcsema_real_eip !28
  %70 = inttoptr i64 %69 to i32*
  %71 = load i32* %70, align 4, !mcsema_real_eip !28
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %71, i32 74641)
  %72 = extractvalue { i32, i1 } %uadd, 0
  %73 = xor i32 %72, %71, !mcsema_real_eip !29
  %74 = and i32 %73, 16
  %75 = icmp eq i32 %74, 0
  %76 = icmp slt i32 %72, 0
  %77 = icmp eq i32 %72, 0, !mcsema_real_eip !29
  %78 = xor i32 %71, -2147483648, !mcsema_real_eip !29
  %79 = and i32 %73, %78, !mcsema_real_eip !29
  %80 = icmp slt i32 %79, 0
  %81 = trunc i32 %72 to i8, !mcsema_real_eip !29
  %82 = tail call i8 @llvm.ctpop.i8(i8 %81), !mcsema_real_eip !29
  %83 = and i8 %82, 1
  %84 = icmp eq i8 %83, 0
  %85 = extractvalue { i32, i1 } %uadd, 1
  store i32 %72, i32* %70, align 4, !mcsema_real_eip !30
  %86 = zext i32 %72 to i64, !mcsema_real_eip !5
  %87 = inttoptr i64 %6 to i64*, !mcsema_real_eip !6
  %88 = load i64* %87, align 8, !mcsema_real_eip !6
  %89 = add i64 %6, 16, !mcsema_real_eip !7
  store i64 %86, i64* %RAX, align 8, !mcsema_real_eip !7
  %90 = bitcast i64* %RBX to <2 x i64>*
  store <2 x i64> %2, <2 x i64>* %90, align 8
  %91 = bitcast i64* %RDX to <2 x i64>*
  store <2 x i64> %4, <2 x i64>* %91, align 8
  store i64 %5, i64* %RDI, align 8, !mcsema_real_eip !7
  store i64 %89, i64* %RSP, align 8, !mcsema_real_eip !7
  store i64 %88, i64* %RBP, align 8, !mcsema_real_eip !7
  %92 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> %9, <2 x i64>* %92, align 8
  %93 = bitcast i64* %R10 to <2 x i64>*
  store <2 x i64> %11, <2 x i64>* %93, align 8
  %94 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> %13, <2 x i64>* %94, align 8
  %95 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> %15, <2 x i64>* %95, align 8
  store i64 %16, i64* %RIP, align 8, !mcsema_real_eip !7
  store i1 %85, i1* %CF, align 1, !mcsema_real_eip !7
  store i1 %84, i1* %PF, align 1, !mcsema_real_eip !7
  store i1 %75, i1* %AF, align 1, !mcsema_real_eip !7
  store i1 %77, i1* %ZF, align 1, !mcsema_real_eip !7
  store i1 %76, i1* %SF, align 1, !mcsema_real_eip !7
  store i1 %80, i1* %OF, align 1, !mcsema_real_eip !7
  store i1 %17, i1* %DF, align 1, !mcsema_real_eip !7
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %20, i32 128, i32 8, i1 false), !mcsema_real_eip !7
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
  store i128 %51, i128* %XMM0, align 1, !mcsema_real_eip !7
  store i128 %52, i128* %XMM1, align 1, !mcsema_real_eip !7
  store i128 %53, i128* %XMM2, align 1, !mcsema_real_eip !7
  store i128 %54, i128* %XMM3, align 1, !mcsema_real_eip !7
  store i128 %55, i128* %XMM4, align 1, !mcsema_real_eip !7
  store i128 %56, i128* %XMM5, align 1, !mcsema_real_eip !7
  store i128 %57, i128* %XMM6, align 1, !mcsema_real_eip !7
  store i128 %58, i128* %XMM7, align 1, !mcsema_real_eip !7
  store i128 %59, i128* %XMM8, align 1, !mcsema_real_eip !7
  store i128 %60, i128* %XMM9, align 1, !mcsema_real_eip !7
  store i128 %61, i128* %XMM10, align 1, !mcsema_real_eip !7
  store i128 %62, i128* %XMM11, align 1, !mcsema_real_eip !7
  store i128 %63, i128* %XMM12, align 1, !mcsema_real_eip !7
  store i128 %64, i128* %XMM13, align 1, !mcsema_real_eip !7
  store i128 %65, i128* %XMM14, align 1, !mcsema_real_eip !7
  store i128 %66, i128* %XMM15, align 1, !mcsema_real_eip !7
  %96 = bitcast i64* %STACK_BASE to <2 x i64>*
  store <2 x i64> %68, <2 x i64>* %96, align 1
  ret void, !mcsema_real_eip !7
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_1b2(%struct.regs*) #0 {
entry:
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !31
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !31
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !31
  %1 = bitcast i64* %RBX to <2 x i64>*
  %2 = load <2 x i64>* %1, align 8
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !31
  %3 = bitcast i64* %RDX to <2 x i64>*
  %4 = load <2 x i64>* %3, align 8
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !31
  %5 = load i64* %RDI, align 8, !mcsema_real_eip !31
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !31
  %6 = load i64* %RSP, align 8, !mcsema_real_eip !31
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !31
  %7 = load i64* %RBP, align 8, !mcsema_real_eip !31
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !31
  %8 = bitcast i64* %R8 to <2 x i64>*
  %9 = load <2 x i64>* %8, align 8
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !31
  %10 = bitcast i64* %R10 to <2 x i64>*
  %11 = load <2 x i64>* %10, align 8
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !31
  %12 = bitcast i64* %R12 to <2 x i64>*
  %13 = load <2 x i64>* %12, align 8
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !31
  %14 = bitcast i64* %R14 to <2 x i64>*
  %15 = load <2 x i64>* %14, align 8
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !31
  %16 = load i64* %RIP, align 8, !mcsema_real_eip !31
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !31
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !31
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !31
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !31
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !31
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !31
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !31
  %17 = load i1* %DF, align 1, !mcsema_real_eip !31
  %18 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !31
  %19 = bitcast x86_fp80* %18 to i8*, !mcsema_real_eip !31
  %20 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !31
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !31
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !31
  %21 = load i1* %FPU_B, align 1, !mcsema_real_eip !31
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !31
  %22 = load i1* %FPU_C3, align 1, !mcsema_real_eip !31
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !31
  %23 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !31
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !31
  %24 = load i1* %FPU_C2, align 1, !mcsema_real_eip !31
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !31
  %25 = load i1* %FPU_C1, align 1, !mcsema_real_eip !31
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !31
  %26 = load i1* %FPU_C0, align 1, !mcsema_real_eip !31
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !31
  %27 = load i1* %FPU_ES, align 1, !mcsema_real_eip !31
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !31
  %28 = load i1* %FPU_SF, align 1, !mcsema_real_eip !31
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !31
  %29 = load i1* %FPU_PE, align 1, !mcsema_real_eip !31
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !31
  %30 = load i1* %FPU_UE, align 1, !mcsema_real_eip !31
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !31
  %31 = load i1* %FPU_OE, align 1, !mcsema_real_eip !31
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !31
  %32 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !31
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !31
  %33 = load i1* %FPU_DE, align 1, !mcsema_real_eip !31
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !31
  %34 = load i1* %FPU_IE, align 1, !mcsema_real_eip !31
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !31
  %35 = load i1* %FPU_X, align 1, !mcsema_real_eip !31
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !31
  %36 = load i2* %FPU_RC, align 1, !mcsema_real_eip !31
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !31
  %37 = load i2* %FPU_PC, align 1, !mcsema_real_eip !31
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !31
  %38 = load i1* %FPU_PM, align 1, !mcsema_real_eip !31
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !31
  %39 = load i1* %FPU_UM, align 1, !mcsema_real_eip !31
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !31
  %40 = load i1* %FPU_OM, align 1, !mcsema_real_eip !31
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !31
  %41 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !31
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !31
  %42 = load i1* %FPU_DM, align 1, !mcsema_real_eip !31
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !31
  %43 = load i1* %FPU_IM, align 1, !mcsema_real_eip !31
  %44 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !31
  %45 = bitcast i8* %44 to i64*
  %46 = load i64* %45, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !31
  %47 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !31
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !31
  %48 = load i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !31
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !31
  %49 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !31
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !31
  %50 = load i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !31
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !31
  %51 = load i128* %XMM0, align 1, !mcsema_real_eip !31
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !31
  %52 = load i128* %XMM1, align 1, !mcsema_real_eip !31
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !31
  %53 = load i128* %XMM2, align 1, !mcsema_real_eip !31
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !31
  %54 = load i128* %XMM3, align 1, !mcsema_real_eip !31
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !31
  %55 = load i128* %XMM4, align 1, !mcsema_real_eip !31
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !31
  %56 = load i128* %XMM5, align 1, !mcsema_real_eip !31
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !31
  %57 = load i128* %XMM6, align 1, !mcsema_real_eip !31
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !31
  %58 = load i128* %XMM7, align 1, !mcsema_real_eip !31
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !31
  %59 = load i128* %XMM8, align 1, !mcsema_real_eip !31
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !31
  %60 = load i128* %XMM9, align 1, !mcsema_real_eip !31
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !31
  %61 = load i128* %XMM10, align 1, !mcsema_real_eip !31
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !31
  %62 = load i128* %XMM11, align 1, !mcsema_real_eip !31
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !31
  %63 = load i128* %XMM12, align 1, !mcsema_real_eip !31
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !31
  %64 = load i128* %XMM13, align 1, !mcsema_real_eip !31
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !31
  %65 = load i128* %XMM14, align 1, !mcsema_real_eip !31
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !31
  %66 = load i128* %XMM15, align 1, !mcsema_real_eip !31
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !31
  %67 = bitcast i64* %STACK_BASE to <2 x i64>*
  %68 = load <2 x i64>* %67, align 8
  %69 = add i64 %7, -8, !mcsema_real_eip !31
  %70 = inttoptr i64 %69 to i32*
  %71 = load i32* %70, align 4, !mcsema_real_eip !31
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %71, i32 74642)
  %72 = extractvalue { i32, i1 } %uadd, 0
  %73 = xor i32 %72, %71, !mcsema_real_eip !32
  %74 = and i32 %73, 16
  %75 = icmp eq i32 %74, 0
  %76 = icmp slt i32 %72, 0
  %77 = icmp eq i32 %72, 0, !mcsema_real_eip !32
  %78 = xor i32 %71, -2147483648, !mcsema_real_eip !32
  %79 = and i32 %73, %78, !mcsema_real_eip !32
  %80 = icmp slt i32 %79, 0
  %81 = trunc i32 %72 to i8, !mcsema_real_eip !32
  %82 = tail call i8 @llvm.ctpop.i8(i8 %81), !mcsema_real_eip !32
  %83 = and i8 %82, 1
  %84 = icmp eq i8 %83, 0
  %85 = extractvalue { i32, i1 } %uadd, 1
  store i32 %72, i32* %70, align 4, !mcsema_real_eip !33
  %86 = zext i32 %72 to i64, !mcsema_real_eip !5
  %87 = inttoptr i64 %6 to i64*, !mcsema_real_eip !6
  %88 = load i64* %87, align 8, !mcsema_real_eip !6
  %89 = add i64 %6, 16, !mcsema_real_eip !7
  store i64 %86, i64* %RAX, align 8, !mcsema_real_eip !7
  %90 = bitcast i64* %RBX to <2 x i64>*
  store <2 x i64> %2, <2 x i64>* %90, align 8
  %91 = bitcast i64* %RDX to <2 x i64>*
  store <2 x i64> %4, <2 x i64>* %91, align 8
  store i64 %5, i64* %RDI, align 8, !mcsema_real_eip !7
  store i64 %89, i64* %RSP, align 8, !mcsema_real_eip !7
  store i64 %88, i64* %RBP, align 8, !mcsema_real_eip !7
  %92 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> %9, <2 x i64>* %92, align 8
  %93 = bitcast i64* %R10 to <2 x i64>*
  store <2 x i64> %11, <2 x i64>* %93, align 8
  %94 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> %13, <2 x i64>* %94, align 8
  %95 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> %15, <2 x i64>* %95, align 8
  store i64 %16, i64* %RIP, align 8, !mcsema_real_eip !7
  store i1 %85, i1* %CF, align 1, !mcsema_real_eip !7
  store i1 %84, i1* %PF, align 1, !mcsema_real_eip !7
  store i1 %75, i1* %AF, align 1, !mcsema_real_eip !7
  store i1 %77, i1* %ZF, align 1, !mcsema_real_eip !7
  store i1 %76, i1* %SF, align 1, !mcsema_real_eip !7
  store i1 %80, i1* %OF, align 1, !mcsema_real_eip !7
  store i1 %17, i1* %DF, align 1, !mcsema_real_eip !7
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %20, i32 128, i32 8, i1 false), !mcsema_real_eip !7
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
  store i128 %51, i128* %XMM0, align 1, !mcsema_real_eip !7
  store i128 %52, i128* %XMM1, align 1, !mcsema_real_eip !7
  store i128 %53, i128* %XMM2, align 1, !mcsema_real_eip !7
  store i128 %54, i128* %XMM3, align 1, !mcsema_real_eip !7
  store i128 %55, i128* %XMM4, align 1, !mcsema_real_eip !7
  store i128 %56, i128* %XMM5, align 1, !mcsema_real_eip !7
  store i128 %57, i128* %XMM6, align 1, !mcsema_real_eip !7
  store i128 %58, i128* %XMM7, align 1, !mcsema_real_eip !7
  store i128 %59, i128* %XMM8, align 1, !mcsema_real_eip !7
  store i128 %60, i128* %XMM9, align 1, !mcsema_real_eip !7
  store i128 %61, i128* %XMM10, align 1, !mcsema_real_eip !7
  store i128 %62, i128* %XMM11, align 1, !mcsema_real_eip !7
  store i128 %63, i128* %XMM12, align 1, !mcsema_real_eip !7
  store i128 %64, i128* %XMM13, align 1, !mcsema_real_eip !7
  store i128 %65, i128* %XMM14, align 1, !mcsema_real_eip !7
  store i128 %66, i128* %XMM15, align 1, !mcsema_real_eip !7
  %96 = bitcast i64* %STACK_BASE to <2 x i64>*
  store <2 x i64> %68, <2 x i64>* %96, align 1
  ret void, !mcsema_real_eip !7
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_1c2(%struct.regs*) #0 {
entry:
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !34
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !34
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !34
  %1 = bitcast i64* %RBX to <2 x i64>*
  %2 = load <2 x i64>* %1, align 8
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !34
  %3 = bitcast i64* %RDX to <2 x i64>*
  %4 = load <2 x i64>* %3, align 8
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !34
  %5 = load i64* %RDI, align 8, !mcsema_real_eip !34
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !34
  %6 = load i64* %RSP, align 8, !mcsema_real_eip !34
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !34
  %7 = load i64* %RBP, align 8, !mcsema_real_eip !34
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !34
  %8 = bitcast i64* %R8 to <2 x i64>*
  %9 = load <2 x i64>* %8, align 8
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !34
  %10 = bitcast i64* %R10 to <2 x i64>*
  %11 = load <2 x i64>* %10, align 8
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !34
  %12 = bitcast i64* %R12 to <2 x i64>*
  %13 = load <2 x i64>* %12, align 8
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !34
  %14 = bitcast i64* %R14 to <2 x i64>*
  %15 = load <2 x i64>* %14, align 8
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !34
  %16 = load i64* %RIP, align 8, !mcsema_real_eip !34
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !34
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !34
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !34
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !34
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !34
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !34
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !34
  %17 = load i1* %DF, align 1, !mcsema_real_eip !34
  %18 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !34
  %19 = bitcast x86_fp80* %18 to i8*, !mcsema_real_eip !34
  %20 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !34
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !34
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !34
  %21 = load i1* %FPU_B, align 1, !mcsema_real_eip !34
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !34
  %22 = load i1* %FPU_C3, align 1, !mcsema_real_eip !34
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !34
  %23 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !34
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !34
  %24 = load i1* %FPU_C2, align 1, !mcsema_real_eip !34
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !34
  %25 = load i1* %FPU_C1, align 1, !mcsema_real_eip !34
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !34
  %26 = load i1* %FPU_C0, align 1, !mcsema_real_eip !34
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !34
  %27 = load i1* %FPU_ES, align 1, !mcsema_real_eip !34
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !34
  %28 = load i1* %FPU_SF, align 1, !mcsema_real_eip !34
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !34
  %29 = load i1* %FPU_PE, align 1, !mcsema_real_eip !34
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !34
  %30 = load i1* %FPU_UE, align 1, !mcsema_real_eip !34
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !34
  %31 = load i1* %FPU_OE, align 1, !mcsema_real_eip !34
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !34
  %32 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !34
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !34
  %33 = load i1* %FPU_DE, align 1, !mcsema_real_eip !34
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !34
  %34 = load i1* %FPU_IE, align 1, !mcsema_real_eip !34
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !34
  %35 = load i1* %FPU_X, align 1, !mcsema_real_eip !34
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !34
  %36 = load i2* %FPU_RC, align 1, !mcsema_real_eip !34
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !34
  %37 = load i2* %FPU_PC, align 1, !mcsema_real_eip !34
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !34
  %38 = load i1* %FPU_PM, align 1, !mcsema_real_eip !34
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !34
  %39 = load i1* %FPU_UM, align 1, !mcsema_real_eip !34
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !34
  %40 = load i1* %FPU_OM, align 1, !mcsema_real_eip !34
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !34
  %41 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !34
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !34
  %42 = load i1* %FPU_DM, align 1, !mcsema_real_eip !34
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !34
  %43 = load i1* %FPU_IM, align 1, !mcsema_real_eip !34
  %44 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !34
  %45 = bitcast i8* %44 to i64*
  %46 = load i64* %45, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !34
  %47 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !34
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !34
  %48 = load i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !34
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !34
  %49 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !34
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !34
  %50 = load i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !34
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !34
  %51 = load i128* %XMM0, align 1, !mcsema_real_eip !34
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !34
  %52 = load i128* %XMM1, align 1, !mcsema_real_eip !34
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !34
  %53 = load i128* %XMM2, align 1, !mcsema_real_eip !34
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !34
  %54 = load i128* %XMM3, align 1, !mcsema_real_eip !34
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !34
  %55 = load i128* %XMM4, align 1, !mcsema_real_eip !34
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !34
  %56 = load i128* %XMM5, align 1, !mcsema_real_eip !34
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !34
  %57 = load i128* %XMM6, align 1, !mcsema_real_eip !34
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !34
  %58 = load i128* %XMM7, align 1, !mcsema_real_eip !34
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !34
  %59 = load i128* %XMM8, align 1, !mcsema_real_eip !34
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !34
  %60 = load i128* %XMM9, align 1, !mcsema_real_eip !34
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !34
  %61 = load i128* %XMM10, align 1, !mcsema_real_eip !34
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !34
  %62 = load i128* %XMM11, align 1, !mcsema_real_eip !34
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !34
  %63 = load i128* %XMM12, align 1, !mcsema_real_eip !34
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !34
  %64 = load i128* %XMM13, align 1, !mcsema_real_eip !34
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !34
  %65 = load i128* %XMM14, align 1, !mcsema_real_eip !34
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !34
  %66 = load i128* %XMM15, align 1, !mcsema_real_eip !34
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !34
  %67 = bitcast i64* %STACK_BASE to <2 x i64>*
  %68 = load <2 x i64>* %67, align 8
  %69 = add i64 %7, -8, !mcsema_real_eip !34
  %70 = inttoptr i64 %69 to i32*
  %71 = load i32* %70, align 4, !mcsema_real_eip !34
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %71, i32 74643)
  %72 = extractvalue { i32, i1 } %uadd, 0
  %73 = xor i32 %72, %71, !mcsema_real_eip !35
  %74 = and i32 %73, 16
  %75 = icmp eq i32 %74, 0
  %76 = icmp slt i32 %72, 0
  %77 = icmp eq i32 %72, 0, !mcsema_real_eip !35
  %78 = xor i32 %71, -2147483648, !mcsema_real_eip !35
  %79 = and i32 %73, %78, !mcsema_real_eip !35
  %80 = icmp slt i32 %79, 0
  %81 = trunc i32 %72 to i8, !mcsema_real_eip !35
  %82 = tail call i8 @llvm.ctpop.i8(i8 %81), !mcsema_real_eip !35
  %83 = and i8 %82, 1
  %84 = icmp eq i8 %83, 0
  %85 = extractvalue { i32, i1 } %uadd, 1
  store i32 %72, i32* %70, align 4, !mcsema_real_eip !36
  %86 = zext i32 %72 to i64, !mcsema_real_eip !5
  %87 = inttoptr i64 %6 to i64*, !mcsema_real_eip !6
  %88 = load i64* %87, align 8, !mcsema_real_eip !6
  %89 = add i64 %6, 16, !mcsema_real_eip !7
  store i64 %86, i64* %RAX, align 8, !mcsema_real_eip !7
  %90 = bitcast i64* %RBX to <2 x i64>*
  store <2 x i64> %2, <2 x i64>* %90, align 8
  %91 = bitcast i64* %RDX to <2 x i64>*
  store <2 x i64> %4, <2 x i64>* %91, align 8
  store i64 %5, i64* %RDI, align 8, !mcsema_real_eip !7
  store i64 %89, i64* %RSP, align 8, !mcsema_real_eip !7
  store i64 %88, i64* %RBP, align 8, !mcsema_real_eip !7
  %92 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> %9, <2 x i64>* %92, align 8
  %93 = bitcast i64* %R10 to <2 x i64>*
  store <2 x i64> %11, <2 x i64>* %93, align 8
  %94 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> %13, <2 x i64>* %94, align 8
  %95 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> %15, <2 x i64>* %95, align 8
  store i64 %16, i64* %RIP, align 8, !mcsema_real_eip !7
  store i1 %85, i1* %CF, align 1, !mcsema_real_eip !7
  store i1 %84, i1* %PF, align 1, !mcsema_real_eip !7
  store i1 %75, i1* %AF, align 1, !mcsema_real_eip !7
  store i1 %77, i1* %ZF, align 1, !mcsema_real_eip !7
  store i1 %76, i1* %SF, align 1, !mcsema_real_eip !7
  store i1 %80, i1* %OF, align 1, !mcsema_real_eip !7
  store i1 %17, i1* %DF, align 1, !mcsema_real_eip !7
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %20, i32 128, i32 8, i1 false), !mcsema_real_eip !7
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
  store i128 %51, i128* %XMM0, align 1, !mcsema_real_eip !7
  store i128 %52, i128* %XMM1, align 1, !mcsema_real_eip !7
  store i128 %53, i128* %XMM2, align 1, !mcsema_real_eip !7
  store i128 %54, i128* %XMM3, align 1, !mcsema_real_eip !7
  store i128 %55, i128* %XMM4, align 1, !mcsema_real_eip !7
  store i128 %56, i128* %XMM5, align 1, !mcsema_real_eip !7
  store i128 %57, i128* %XMM6, align 1, !mcsema_real_eip !7
  store i128 %58, i128* %XMM7, align 1, !mcsema_real_eip !7
  store i128 %59, i128* %XMM8, align 1, !mcsema_real_eip !7
  store i128 %60, i128* %XMM9, align 1, !mcsema_real_eip !7
  store i128 %61, i128* %XMM10, align 1, !mcsema_real_eip !7
  store i128 %62, i128* %XMM11, align 1, !mcsema_real_eip !7
  store i128 %63, i128* %XMM12, align 1, !mcsema_real_eip !7
  store i128 %64, i128* %XMM13, align 1, !mcsema_real_eip !7
  store i128 %65, i128* %XMM14, align 1, !mcsema_real_eip !7
  store i128 %66, i128* %XMM15, align 1, !mcsema_real_eip !7
  %96 = bitcast i64* %STACK_BASE to <2 x i64>*
  store <2 x i64> %68, <2 x i64>* %96, align 1
  ret void, !mcsema_real_eip !7
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_a2(%struct.regs*) #0 {
entry:
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !37
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !37
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !37
  %1 = bitcast i64* %RBX to <2 x i64>*
  %2 = load <2 x i64>* %1, align 8
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !37
  %3 = bitcast i64* %RDX to <2 x i64>*
  %4 = load <2 x i64>* %3, align 8
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !37
  %5 = load i64* %RDI, align 8, !mcsema_real_eip !37
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !37
  %6 = load i64* %RSP, align 8, !mcsema_real_eip !37
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !37
  %7 = load i64* %RBP, align 8, !mcsema_real_eip !37
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !37
  %8 = bitcast i64* %R8 to <2 x i64>*
  %9 = load <2 x i64>* %8, align 8
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !37
  %10 = bitcast i64* %R10 to <2 x i64>*
  %11 = load <2 x i64>* %10, align 8
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !37
  %12 = bitcast i64* %R12 to <2 x i64>*
  %13 = load <2 x i64>* %12, align 8
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !37
  %14 = bitcast i64* %R14 to <2 x i64>*
  %15 = load <2 x i64>* %14, align 8
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !37
  %16 = load i64* %RIP, align 8, !mcsema_real_eip !37
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !37
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !37
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !37
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !37
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !37
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !37
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !37
  %17 = load i1* %DF, align 1, !mcsema_real_eip !37
  %18 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !37
  %19 = bitcast x86_fp80* %18 to i8*, !mcsema_real_eip !37
  %20 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !37
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !37
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !37
  %21 = load i1* %FPU_B, align 1, !mcsema_real_eip !37
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !37
  %22 = load i1* %FPU_C3, align 1, !mcsema_real_eip !37
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !37
  %23 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !37
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !37
  %24 = load i1* %FPU_C2, align 1, !mcsema_real_eip !37
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !37
  %25 = load i1* %FPU_C1, align 1, !mcsema_real_eip !37
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !37
  %26 = load i1* %FPU_C0, align 1, !mcsema_real_eip !37
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !37
  %27 = load i1* %FPU_ES, align 1, !mcsema_real_eip !37
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !37
  %28 = load i1* %FPU_SF, align 1, !mcsema_real_eip !37
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !37
  %29 = load i1* %FPU_PE, align 1, !mcsema_real_eip !37
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !37
  %30 = load i1* %FPU_UE, align 1, !mcsema_real_eip !37
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !37
  %31 = load i1* %FPU_OE, align 1, !mcsema_real_eip !37
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !37
  %32 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !37
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !37
  %33 = load i1* %FPU_DE, align 1, !mcsema_real_eip !37
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !37
  %34 = load i1* %FPU_IE, align 1, !mcsema_real_eip !37
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !37
  %35 = load i1* %FPU_X, align 1, !mcsema_real_eip !37
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !37
  %36 = load i2* %FPU_RC, align 1, !mcsema_real_eip !37
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !37
  %37 = load i2* %FPU_PC, align 1, !mcsema_real_eip !37
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !37
  %38 = load i1* %FPU_PM, align 1, !mcsema_real_eip !37
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !37
  %39 = load i1* %FPU_UM, align 1, !mcsema_real_eip !37
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !37
  %40 = load i1* %FPU_OM, align 1, !mcsema_real_eip !37
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !37
  %41 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !37
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !37
  %42 = load i1* %FPU_DM, align 1, !mcsema_real_eip !37
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !37
  %43 = load i1* %FPU_IM, align 1, !mcsema_real_eip !37
  %44 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !37
  %45 = bitcast i8* %44 to i64*
  %46 = load i64* %45, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !37
  %47 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !37
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !37
  %48 = load i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !37
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !37
  %49 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !37
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !37
  %50 = load i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !37
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !37
  %51 = load i128* %XMM0, align 1, !mcsema_real_eip !37
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !37
  %52 = load i128* %XMM1, align 1, !mcsema_real_eip !37
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !37
  %53 = load i128* %XMM2, align 1, !mcsema_real_eip !37
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !37
  %54 = load i128* %XMM3, align 1, !mcsema_real_eip !37
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !37
  %55 = load i128* %XMM4, align 1, !mcsema_real_eip !37
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !37
  %56 = load i128* %XMM5, align 1, !mcsema_real_eip !37
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !37
  %57 = load i128* %XMM6, align 1, !mcsema_real_eip !37
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !37
  %58 = load i128* %XMM7, align 1, !mcsema_real_eip !37
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !37
  %59 = load i128* %XMM8, align 1, !mcsema_real_eip !37
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !37
  %60 = load i128* %XMM9, align 1, !mcsema_real_eip !37
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !37
  %61 = load i128* %XMM10, align 1, !mcsema_real_eip !37
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !37
  %62 = load i128* %XMM11, align 1, !mcsema_real_eip !37
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !37
  %63 = load i128* %XMM12, align 1, !mcsema_real_eip !37
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !37
  %64 = load i128* %XMM13, align 1, !mcsema_real_eip !37
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !37
  %65 = load i128* %XMM14, align 1, !mcsema_real_eip !37
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !37
  %66 = load i128* %XMM15, align 1, !mcsema_real_eip !37
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !37
  %67 = bitcast i64* %STACK_BASE to <2 x i64>*
  %68 = load <2 x i64>* %67, align 8
  %69 = add i64 %7, -8, !mcsema_real_eip !37
  %70 = inttoptr i64 %69 to i32*
  %71 = load i32* %70, align 4, !mcsema_real_eip !37
  %72 = icmp slt i32 %71, 0
  %73 = icmp eq i32 %71, 0, !mcsema_real_eip !38
  %74 = trunc i32 %71 to i8, !mcsema_real_eip !38
  %75 = tail call i8 @llvm.ctpop.i8(i8 %74), !mcsema_real_eip !38
  %76 = and i8 %75, 1
  %77 = icmp eq i8 %76, 0
  %78 = zext i32 %71 to i64, !mcsema_real_eip !5
  %79 = inttoptr i64 %6 to i64*, !mcsema_real_eip !6
  %80 = load i64* %79, align 8, !mcsema_real_eip !6
  %81 = add i64 %6, 16, !mcsema_real_eip !7
  store i64 %78, i64* %RAX, align 8, !mcsema_real_eip !7
  %82 = bitcast i64* %RBX to <2 x i64>*
  store <2 x i64> %2, <2 x i64>* %82, align 8
  %83 = bitcast i64* %RDX to <2 x i64>*
  store <2 x i64> %4, <2 x i64>* %83, align 8
  store i64 %5, i64* %RDI, align 8, !mcsema_real_eip !7
  store i64 %81, i64* %RSP, align 8, !mcsema_real_eip !7
  store i64 %80, i64* %RBP, align 8, !mcsema_real_eip !7
  %84 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> %9, <2 x i64>* %84, align 8
  %85 = bitcast i64* %R10 to <2 x i64>*
  store <2 x i64> %11, <2 x i64>* %85, align 8
  %86 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> %13, <2 x i64>* %86, align 8
  %87 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> %15, <2 x i64>* %87, align 8
  store i64 %16, i64* %RIP, align 8, !mcsema_real_eip !7
  store i1 false, i1* %CF, align 1, !mcsema_real_eip !7
  store i1 %77, i1* %PF, align 1, !mcsema_real_eip !7
  store i1 false, i1* %AF, align 1, !mcsema_real_eip !7
  store i1 %73, i1* %ZF, align 1, !mcsema_real_eip !7
  store i1 %72, i1* %SF, align 1, !mcsema_real_eip !7
  store i1 false, i1* %OF, align 1, !mcsema_real_eip !7
  store i1 %17, i1* %DF, align 1, !mcsema_real_eip !7
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %20, i32 128, i32 8, i1 false), !mcsema_real_eip !7
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
  store i128 %51, i128* %XMM0, align 1, !mcsema_real_eip !7
  store i128 %52, i128* %XMM1, align 1, !mcsema_real_eip !7
  store i128 %53, i128* %XMM2, align 1, !mcsema_real_eip !7
  store i128 %54, i128* %XMM3, align 1, !mcsema_real_eip !7
  store i128 %55, i128* %XMM4, align 1, !mcsema_real_eip !7
  store i128 %56, i128* %XMM5, align 1, !mcsema_real_eip !7
  store i128 %57, i128* %XMM6, align 1, !mcsema_real_eip !7
  store i128 %58, i128* %XMM7, align 1, !mcsema_real_eip !7
  store i128 %59, i128* %XMM8, align 1, !mcsema_real_eip !7
  store i128 %60, i128* %XMM9, align 1, !mcsema_real_eip !7
  store i128 %61, i128* %XMM10, align 1, !mcsema_real_eip !7
  store i128 %62, i128* %XMM11, align 1, !mcsema_real_eip !7
  store i128 %63, i128* %XMM12, align 1, !mcsema_real_eip !7
  store i128 %64, i128* %XMM13, align 1, !mcsema_real_eip !7
  store i128 %65, i128* %XMM14, align 1, !mcsema_real_eip !7
  store i128 %66, i128* %XMM15, align 1, !mcsema_real_eip !7
  %88 = bitcast i64* %STACK_BASE to <2 x i64>*
  store <2 x i64> %68, <2 x i64>* %88, align 1
  ret void, !mcsema_real_eip !7
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_b2(%struct.regs*) #0 {
entry:
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !39
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !39
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !39
  %1 = bitcast i64* %RBX to <2 x i64>*
  %2 = load <2 x i64>* %1, align 8
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !39
  %3 = bitcast i64* %RDX to <2 x i64>*
  %4 = load <2 x i64>* %3, align 8
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !39
  %5 = load i64* %RDI, align 8, !mcsema_real_eip !39
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !39
  %6 = load i64* %RSP, align 8, !mcsema_real_eip !39
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !39
  %7 = load i64* %RBP, align 8, !mcsema_real_eip !39
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !39
  %8 = bitcast i64* %R8 to <2 x i64>*
  %9 = load <2 x i64>* %8, align 8
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !39
  %10 = bitcast i64* %R10 to <2 x i64>*
  %11 = load <2 x i64>* %10, align 8
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !39
  %12 = bitcast i64* %R12 to <2 x i64>*
  %13 = load <2 x i64>* %12, align 8
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !39
  %14 = bitcast i64* %R14 to <2 x i64>*
  %15 = load <2 x i64>* %14, align 8
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !39
  %16 = load i64* %RIP, align 8, !mcsema_real_eip !39
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !39
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !39
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !39
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !39
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !39
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !39
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !39
  %17 = load i1* %DF, align 1, !mcsema_real_eip !39
  %18 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !39
  %19 = bitcast x86_fp80* %18 to i8*, !mcsema_real_eip !39
  %20 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !39
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !39
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !39
  %21 = load i1* %FPU_B, align 1, !mcsema_real_eip !39
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !39
  %22 = load i1* %FPU_C3, align 1, !mcsema_real_eip !39
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !39
  %23 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !39
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !39
  %24 = load i1* %FPU_C2, align 1, !mcsema_real_eip !39
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !39
  %25 = load i1* %FPU_C1, align 1, !mcsema_real_eip !39
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !39
  %26 = load i1* %FPU_C0, align 1, !mcsema_real_eip !39
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !39
  %27 = load i1* %FPU_ES, align 1, !mcsema_real_eip !39
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !39
  %28 = load i1* %FPU_SF, align 1, !mcsema_real_eip !39
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !39
  %29 = load i1* %FPU_PE, align 1, !mcsema_real_eip !39
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !39
  %30 = load i1* %FPU_UE, align 1, !mcsema_real_eip !39
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !39
  %31 = load i1* %FPU_OE, align 1, !mcsema_real_eip !39
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !39
  %32 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !39
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !39
  %33 = load i1* %FPU_DE, align 1, !mcsema_real_eip !39
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !39
  %34 = load i1* %FPU_IE, align 1, !mcsema_real_eip !39
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !39
  %35 = load i1* %FPU_X, align 1, !mcsema_real_eip !39
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !39
  %36 = load i2* %FPU_RC, align 1, !mcsema_real_eip !39
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !39
  %37 = load i2* %FPU_PC, align 1, !mcsema_real_eip !39
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !39
  %38 = load i1* %FPU_PM, align 1, !mcsema_real_eip !39
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !39
  %39 = load i1* %FPU_UM, align 1, !mcsema_real_eip !39
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !39
  %40 = load i1* %FPU_OM, align 1, !mcsema_real_eip !39
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !39
  %41 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !39
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !39
  %42 = load i1* %FPU_DM, align 1, !mcsema_real_eip !39
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !39
  %43 = load i1* %FPU_IM, align 1, !mcsema_real_eip !39
  %44 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !39
  %45 = bitcast i8* %44 to i64*
  %46 = load i64* %45, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !39
  %47 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !39
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !39
  %48 = load i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !39
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !39
  %49 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !39
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !39
  %50 = load i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !39
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !39
  %51 = load i128* %XMM0, align 1, !mcsema_real_eip !39
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !39
  %52 = load i128* %XMM1, align 1, !mcsema_real_eip !39
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !39
  %53 = load i128* %XMM2, align 1, !mcsema_real_eip !39
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !39
  %54 = load i128* %XMM3, align 1, !mcsema_real_eip !39
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !39
  %55 = load i128* %XMM4, align 1, !mcsema_real_eip !39
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !39
  %56 = load i128* %XMM5, align 1, !mcsema_real_eip !39
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !39
  %57 = load i128* %XMM6, align 1, !mcsema_real_eip !39
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !39
  %58 = load i128* %XMM7, align 1, !mcsema_real_eip !39
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !39
  %59 = load i128* %XMM8, align 1, !mcsema_real_eip !39
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !39
  %60 = load i128* %XMM9, align 1, !mcsema_real_eip !39
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !39
  %61 = load i128* %XMM10, align 1, !mcsema_real_eip !39
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !39
  %62 = load i128* %XMM11, align 1, !mcsema_real_eip !39
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !39
  %63 = load i128* %XMM12, align 1, !mcsema_real_eip !39
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !39
  %64 = load i128* %XMM13, align 1, !mcsema_real_eip !39
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !39
  %65 = load i128* %XMM14, align 1, !mcsema_real_eip !39
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !39
  %66 = load i128* %XMM15, align 1, !mcsema_real_eip !39
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !39
  %67 = bitcast i64* %STACK_BASE to <2 x i64>*
  %68 = load <2 x i64>* %67, align 8
  %69 = add i64 %7, -8, !mcsema_real_eip !39
  %70 = inttoptr i64 %69 to i32*
  %71 = load i32* %70, align 4, !mcsema_real_eip !39
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %71, i32 1)
  %72 = extractvalue { i32, i1 } %uadd, 0
  %73 = xor i32 %72, %71, !mcsema_real_eip !40
  %74 = and i32 %73, 16, !mcsema_real_eip !40
  %75 = icmp ne i32 %74, 0, !mcsema_real_eip !40
  %76 = icmp slt i32 %72, 0
  %77 = icmp eq i32 %72, 0, !mcsema_real_eip !40
  %78 = xor i32 %71, -2147483648, !mcsema_real_eip !40
  %79 = and i32 %73, %78, !mcsema_real_eip !40
  %80 = icmp slt i32 %79, 0
  %81 = trunc i32 %72 to i8, !mcsema_real_eip !40
  %82 = tail call i8 @llvm.ctpop.i8(i8 %81), !mcsema_real_eip !40
  %83 = and i8 %82, 1
  %84 = icmp eq i8 %83, 0
  %85 = extractvalue { i32, i1 } %uadd, 1
  store i32 %72, i32* %70, align 4, !mcsema_real_eip !41
  %86 = zext i32 %72 to i64, !mcsema_real_eip !5
  %87 = inttoptr i64 %6 to i64*, !mcsema_real_eip !6
  %88 = load i64* %87, align 8, !mcsema_real_eip !6
  %89 = add i64 %6, 16, !mcsema_real_eip !7
  store i64 %86, i64* %RAX, align 8, !mcsema_real_eip !7
  %90 = bitcast i64* %RBX to <2 x i64>*
  store <2 x i64> %2, <2 x i64>* %90, align 8
  %91 = bitcast i64* %RDX to <2 x i64>*
  store <2 x i64> %4, <2 x i64>* %91, align 8
  store i64 %5, i64* %RDI, align 8, !mcsema_real_eip !7
  store i64 %89, i64* %RSP, align 8, !mcsema_real_eip !7
  store i64 %88, i64* %RBP, align 8, !mcsema_real_eip !7
  %92 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> %9, <2 x i64>* %92, align 8
  %93 = bitcast i64* %R10 to <2 x i64>*
  store <2 x i64> %11, <2 x i64>* %93, align 8
  %94 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> %13, <2 x i64>* %94, align 8
  %95 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> %15, <2 x i64>* %95, align 8
  store i64 %16, i64* %RIP, align 8, !mcsema_real_eip !7
  store i1 %85, i1* %CF, align 1, !mcsema_real_eip !7
  store i1 %84, i1* %PF, align 1, !mcsema_real_eip !7
  store i1 %75, i1* %AF, align 1, !mcsema_real_eip !7
  store i1 %77, i1* %ZF, align 1, !mcsema_real_eip !7
  store i1 %76, i1* %SF, align 1, !mcsema_real_eip !7
  store i1 %80, i1* %OF, align 1, !mcsema_real_eip !7
  store i1 %17, i1* %DF, align 1, !mcsema_real_eip !7
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %20, i32 128, i32 8, i1 false), !mcsema_real_eip !7
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
  store i128 %51, i128* %XMM0, align 1, !mcsema_real_eip !7
  store i128 %52, i128* %XMM1, align 1, !mcsema_real_eip !7
  store i128 %53, i128* %XMM2, align 1, !mcsema_real_eip !7
  store i128 %54, i128* %XMM3, align 1, !mcsema_real_eip !7
  store i128 %55, i128* %XMM4, align 1, !mcsema_real_eip !7
  store i128 %56, i128* %XMM5, align 1, !mcsema_real_eip !7
  store i128 %57, i128* %XMM6, align 1, !mcsema_real_eip !7
  store i128 %58, i128* %XMM7, align 1, !mcsema_real_eip !7
  store i128 %59, i128* %XMM8, align 1, !mcsema_real_eip !7
  store i128 %60, i128* %XMM9, align 1, !mcsema_real_eip !7
  store i128 %61, i128* %XMM10, align 1, !mcsema_real_eip !7
  store i128 %62, i128* %XMM11, align 1, !mcsema_real_eip !7
  store i128 %63, i128* %XMM12, align 1, !mcsema_real_eip !7
  store i128 %64, i128* %XMM13, align 1, !mcsema_real_eip !7
  store i128 %65, i128* %XMM14, align 1, !mcsema_real_eip !7
  store i128 %66, i128* %XMM15, align 1, !mcsema_real_eip !7
  %96 = bitcast i64* %STACK_BASE to <2 x i64>*
  store <2 x i64> %68, <2 x i64>* %96, align 1
  ret void, !mcsema_real_eip !7
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_c2(%struct.regs*) #0 {
entry:
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !42
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !42
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !42
  %1 = bitcast i64* %RBX to <2 x i64>*
  %2 = load <2 x i64>* %1, align 8
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !42
  %3 = bitcast i64* %RDX to <2 x i64>*
  %4 = load <2 x i64>* %3, align 8
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !42
  %5 = load i64* %RDI, align 8, !mcsema_real_eip !42
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !42
  %6 = load i64* %RSP, align 8, !mcsema_real_eip !42
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !42
  %7 = load i64* %RBP, align 8, !mcsema_real_eip !42
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !42
  %8 = bitcast i64* %R8 to <2 x i64>*
  %9 = load <2 x i64>* %8, align 8
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !42
  %10 = bitcast i64* %R10 to <2 x i64>*
  %11 = load <2 x i64>* %10, align 8
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !42
  %12 = bitcast i64* %R12 to <2 x i64>*
  %13 = load <2 x i64>* %12, align 8
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !42
  %14 = bitcast i64* %R14 to <2 x i64>*
  %15 = load <2 x i64>* %14, align 8
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !42
  %16 = load i64* %RIP, align 8, !mcsema_real_eip !42
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !42
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !42
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !42
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !42
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !42
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !42
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !42
  %17 = load i1* %DF, align 1, !mcsema_real_eip !42
  %18 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !42
  %19 = bitcast x86_fp80* %18 to i8*, !mcsema_real_eip !42
  %20 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !42
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !42
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !42
  %21 = load i1* %FPU_B, align 1, !mcsema_real_eip !42
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !42
  %22 = load i1* %FPU_C3, align 1, !mcsema_real_eip !42
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !42
  %23 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !42
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !42
  %24 = load i1* %FPU_C2, align 1, !mcsema_real_eip !42
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !42
  %25 = load i1* %FPU_C1, align 1, !mcsema_real_eip !42
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !42
  %26 = load i1* %FPU_C0, align 1, !mcsema_real_eip !42
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !42
  %27 = load i1* %FPU_ES, align 1, !mcsema_real_eip !42
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !42
  %28 = load i1* %FPU_SF, align 1, !mcsema_real_eip !42
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !42
  %29 = load i1* %FPU_PE, align 1, !mcsema_real_eip !42
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !42
  %30 = load i1* %FPU_UE, align 1, !mcsema_real_eip !42
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !42
  %31 = load i1* %FPU_OE, align 1, !mcsema_real_eip !42
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !42
  %32 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !42
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !42
  %33 = load i1* %FPU_DE, align 1, !mcsema_real_eip !42
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !42
  %34 = load i1* %FPU_IE, align 1, !mcsema_real_eip !42
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !42
  %35 = load i1* %FPU_X, align 1, !mcsema_real_eip !42
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !42
  %36 = load i2* %FPU_RC, align 1, !mcsema_real_eip !42
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !42
  %37 = load i2* %FPU_PC, align 1, !mcsema_real_eip !42
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !42
  %38 = load i1* %FPU_PM, align 1, !mcsema_real_eip !42
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !42
  %39 = load i1* %FPU_UM, align 1, !mcsema_real_eip !42
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !42
  %40 = load i1* %FPU_OM, align 1, !mcsema_real_eip !42
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !42
  %41 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !42
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !42
  %42 = load i1* %FPU_DM, align 1, !mcsema_real_eip !42
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !42
  %43 = load i1* %FPU_IM, align 1, !mcsema_real_eip !42
  %44 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !42
  %45 = bitcast i8* %44 to i64*
  %46 = load i64* %45, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !42
  %47 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !42
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !42
  %48 = load i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !42
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !42
  %49 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !42
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !42
  %50 = load i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !42
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !42
  %51 = load i128* %XMM0, align 1, !mcsema_real_eip !42
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !42
  %52 = load i128* %XMM1, align 1, !mcsema_real_eip !42
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !42
  %53 = load i128* %XMM2, align 1, !mcsema_real_eip !42
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !42
  %54 = load i128* %XMM3, align 1, !mcsema_real_eip !42
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !42
  %55 = load i128* %XMM4, align 1, !mcsema_real_eip !42
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !42
  %56 = load i128* %XMM5, align 1, !mcsema_real_eip !42
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !42
  %57 = load i128* %XMM6, align 1, !mcsema_real_eip !42
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !42
  %58 = load i128* %XMM7, align 1, !mcsema_real_eip !42
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !42
  %59 = load i128* %XMM8, align 1, !mcsema_real_eip !42
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !42
  %60 = load i128* %XMM9, align 1, !mcsema_real_eip !42
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !42
  %61 = load i128* %XMM10, align 1, !mcsema_real_eip !42
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !42
  %62 = load i128* %XMM11, align 1, !mcsema_real_eip !42
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !42
  %63 = load i128* %XMM12, align 1, !mcsema_real_eip !42
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !42
  %64 = load i128* %XMM13, align 1, !mcsema_real_eip !42
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !42
  %65 = load i128* %XMM14, align 1, !mcsema_real_eip !42
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !42
  %66 = load i128* %XMM15, align 1, !mcsema_real_eip !42
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !42
  %67 = bitcast i64* %STACK_BASE to <2 x i64>*
  %68 = load <2 x i64>* %67, align 8
  %69 = add i64 %7, -8, !mcsema_real_eip !42
  %70 = inttoptr i64 %69 to i32*
  %71 = load i32* %70, align 4, !mcsema_real_eip !42
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %71, i32 2)
  %72 = extractvalue { i32, i1 } %uadd, 0
  %73 = xor i32 %72, %71, !mcsema_real_eip !43
  %74 = and i32 %73, 16, !mcsema_real_eip !43
  %75 = icmp ne i32 %74, 0, !mcsema_real_eip !43
  %76 = icmp slt i32 %72, 0
  %77 = icmp eq i32 %72, 0, !mcsema_real_eip !43
  %78 = xor i32 %71, -2147483648, !mcsema_real_eip !43
  %79 = and i32 %73, %78, !mcsema_real_eip !43
  %80 = icmp slt i32 %79, 0
  %81 = trunc i32 %72 to i8, !mcsema_real_eip !43
  %82 = tail call i8 @llvm.ctpop.i8(i8 %81), !mcsema_real_eip !43
  %83 = and i8 %82, 1
  %84 = icmp eq i8 %83, 0
  %85 = extractvalue { i32, i1 } %uadd, 1
  store i32 %72, i32* %70, align 4, !mcsema_real_eip !44
  %86 = zext i32 %72 to i64, !mcsema_real_eip !5
  %87 = inttoptr i64 %6 to i64*, !mcsema_real_eip !6
  %88 = load i64* %87, align 8, !mcsema_real_eip !6
  %89 = add i64 %6, 16, !mcsema_real_eip !7
  store i64 %86, i64* %RAX, align 8, !mcsema_real_eip !7
  %90 = bitcast i64* %RBX to <2 x i64>*
  store <2 x i64> %2, <2 x i64>* %90, align 8
  %91 = bitcast i64* %RDX to <2 x i64>*
  store <2 x i64> %4, <2 x i64>* %91, align 8
  store i64 %5, i64* %RDI, align 8, !mcsema_real_eip !7
  store i64 %89, i64* %RSP, align 8, !mcsema_real_eip !7
  store i64 %88, i64* %RBP, align 8, !mcsema_real_eip !7
  %92 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> %9, <2 x i64>* %92, align 8
  %93 = bitcast i64* %R10 to <2 x i64>*
  store <2 x i64> %11, <2 x i64>* %93, align 8
  %94 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> %13, <2 x i64>* %94, align 8
  %95 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> %15, <2 x i64>* %95, align 8
  store i64 %16, i64* %RIP, align 8, !mcsema_real_eip !7
  store i1 %85, i1* %CF, align 1, !mcsema_real_eip !7
  store i1 %84, i1* %PF, align 1, !mcsema_real_eip !7
  store i1 %75, i1* %AF, align 1, !mcsema_real_eip !7
  store i1 %77, i1* %ZF, align 1, !mcsema_real_eip !7
  store i1 %76, i1* %SF, align 1, !mcsema_real_eip !7
  store i1 %80, i1* %OF, align 1, !mcsema_real_eip !7
  store i1 %17, i1* %DF, align 1, !mcsema_real_eip !7
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %20, i32 128, i32 8, i1 false), !mcsema_real_eip !7
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
  store i128 %51, i128* %XMM0, align 1, !mcsema_real_eip !7
  store i128 %52, i128* %XMM1, align 1, !mcsema_real_eip !7
  store i128 %53, i128* %XMM2, align 1, !mcsema_real_eip !7
  store i128 %54, i128* %XMM3, align 1, !mcsema_real_eip !7
  store i128 %55, i128* %XMM4, align 1, !mcsema_real_eip !7
  store i128 %56, i128* %XMM5, align 1, !mcsema_real_eip !7
  store i128 %57, i128* %XMM6, align 1, !mcsema_real_eip !7
  store i128 %58, i128* %XMM7, align 1, !mcsema_real_eip !7
  store i128 %59, i128* %XMM8, align 1, !mcsema_real_eip !7
  store i128 %60, i128* %XMM9, align 1, !mcsema_real_eip !7
  store i128 %61, i128* %XMM10, align 1, !mcsema_real_eip !7
  store i128 %62, i128* %XMM11, align 1, !mcsema_real_eip !7
  store i128 %63, i128* %XMM12, align 1, !mcsema_real_eip !7
  store i128 %64, i128* %XMM13, align 1, !mcsema_real_eip !7
  store i128 %65, i128* %XMM14, align 1, !mcsema_real_eip !7
  store i128 %66, i128* %XMM15, align 1, !mcsema_real_eip !7
  %96 = bitcast i64* %STACK_BASE to <2 x i64>*
  store <2 x i64> %68, <2 x i64>* %96, align 1
  ret void, !mcsema_real_eip !7
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_d2(%struct.regs*) #0 {
entry:
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !45
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !45
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !45
  %1 = bitcast i64* %RBX to <2 x i64>*
  %2 = load <2 x i64>* %1, align 8
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !45
  %3 = bitcast i64* %RDX to <2 x i64>*
  %4 = load <2 x i64>* %3, align 8
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !45
  %5 = load i64* %RDI, align 8, !mcsema_real_eip !45
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !45
  %6 = load i64* %RSP, align 8, !mcsema_real_eip !45
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !45
  %7 = load i64* %RBP, align 8, !mcsema_real_eip !45
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !45
  %8 = bitcast i64* %R8 to <2 x i64>*
  %9 = load <2 x i64>* %8, align 8
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !45
  %10 = bitcast i64* %R10 to <2 x i64>*
  %11 = load <2 x i64>* %10, align 8
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !45
  %12 = bitcast i64* %R12 to <2 x i64>*
  %13 = load <2 x i64>* %12, align 8
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !45
  %14 = bitcast i64* %R14 to <2 x i64>*
  %15 = load <2 x i64>* %14, align 8
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !45
  %16 = load i64* %RIP, align 8, !mcsema_real_eip !45
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !45
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !45
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !45
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !45
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !45
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !45
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !45
  %17 = load i1* %DF, align 1, !mcsema_real_eip !45
  %18 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !45
  %19 = bitcast x86_fp80* %18 to i8*, !mcsema_real_eip !45
  %20 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !45
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !45
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !45
  %21 = load i1* %FPU_B, align 1, !mcsema_real_eip !45
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !45
  %22 = load i1* %FPU_C3, align 1, !mcsema_real_eip !45
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !45
  %23 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !45
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !45
  %24 = load i1* %FPU_C2, align 1, !mcsema_real_eip !45
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !45
  %25 = load i1* %FPU_C1, align 1, !mcsema_real_eip !45
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !45
  %26 = load i1* %FPU_C0, align 1, !mcsema_real_eip !45
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !45
  %27 = load i1* %FPU_ES, align 1, !mcsema_real_eip !45
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !45
  %28 = load i1* %FPU_SF, align 1, !mcsema_real_eip !45
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !45
  %29 = load i1* %FPU_PE, align 1, !mcsema_real_eip !45
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !45
  %30 = load i1* %FPU_UE, align 1, !mcsema_real_eip !45
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !45
  %31 = load i1* %FPU_OE, align 1, !mcsema_real_eip !45
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !45
  %32 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !45
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !45
  %33 = load i1* %FPU_DE, align 1, !mcsema_real_eip !45
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !45
  %34 = load i1* %FPU_IE, align 1, !mcsema_real_eip !45
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !45
  %35 = load i1* %FPU_X, align 1, !mcsema_real_eip !45
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !45
  %36 = load i2* %FPU_RC, align 1, !mcsema_real_eip !45
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !45
  %37 = load i2* %FPU_PC, align 1, !mcsema_real_eip !45
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !45
  %38 = load i1* %FPU_PM, align 1, !mcsema_real_eip !45
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !45
  %39 = load i1* %FPU_UM, align 1, !mcsema_real_eip !45
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !45
  %40 = load i1* %FPU_OM, align 1, !mcsema_real_eip !45
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !45
  %41 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !45
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !45
  %42 = load i1* %FPU_DM, align 1, !mcsema_real_eip !45
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !45
  %43 = load i1* %FPU_IM, align 1, !mcsema_real_eip !45
  %44 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !45
  %45 = bitcast i8* %44 to i64*
  %46 = load i64* %45, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !45
  %47 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !45
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !45
  %48 = load i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !45
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !45
  %49 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !45
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !45
  %50 = load i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !45
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !45
  %51 = load i128* %XMM0, align 1, !mcsema_real_eip !45
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !45
  %52 = load i128* %XMM1, align 1, !mcsema_real_eip !45
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !45
  %53 = load i128* %XMM2, align 1, !mcsema_real_eip !45
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !45
  %54 = load i128* %XMM3, align 1, !mcsema_real_eip !45
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !45
  %55 = load i128* %XMM4, align 1, !mcsema_real_eip !45
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !45
  %56 = load i128* %XMM5, align 1, !mcsema_real_eip !45
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !45
  %57 = load i128* %XMM6, align 1, !mcsema_real_eip !45
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !45
  %58 = load i128* %XMM7, align 1, !mcsema_real_eip !45
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !45
  %59 = load i128* %XMM8, align 1, !mcsema_real_eip !45
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !45
  %60 = load i128* %XMM9, align 1, !mcsema_real_eip !45
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !45
  %61 = load i128* %XMM10, align 1, !mcsema_real_eip !45
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !45
  %62 = load i128* %XMM11, align 1, !mcsema_real_eip !45
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !45
  %63 = load i128* %XMM12, align 1, !mcsema_real_eip !45
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !45
  %64 = load i128* %XMM13, align 1, !mcsema_real_eip !45
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !45
  %65 = load i128* %XMM14, align 1, !mcsema_real_eip !45
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !45
  %66 = load i128* %XMM15, align 1, !mcsema_real_eip !45
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !45
  %67 = bitcast i64* %STACK_BASE to <2 x i64>*
  %68 = load <2 x i64>* %67, align 8
  %69 = add i64 %7, -8, !mcsema_real_eip !45
  %70 = inttoptr i64 %69 to i32*
  %71 = load i32* %70, align 4, !mcsema_real_eip !45
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %71, i32 4)
  %72 = extractvalue { i32, i1 } %uadd, 0
  %73 = xor i32 %72, %71, !mcsema_real_eip !46
  %74 = and i32 %73, 16, !mcsema_real_eip !46
  %75 = icmp ne i32 %74, 0, !mcsema_real_eip !46
  %76 = icmp slt i32 %72, 0
  %77 = icmp eq i32 %72, 0, !mcsema_real_eip !46
  %78 = xor i32 %71, -2147483648, !mcsema_real_eip !46
  %79 = and i32 %73, %78, !mcsema_real_eip !46
  %80 = icmp slt i32 %79, 0
  %81 = trunc i32 %72 to i8, !mcsema_real_eip !46
  %82 = tail call i8 @llvm.ctpop.i8(i8 %81), !mcsema_real_eip !46
  %83 = and i8 %82, 1
  %84 = icmp eq i8 %83, 0
  %85 = extractvalue { i32, i1 } %uadd, 1
  store i32 %72, i32* %70, align 4, !mcsema_real_eip !47
  %86 = zext i32 %72 to i64, !mcsema_real_eip !5
  %87 = inttoptr i64 %6 to i64*, !mcsema_real_eip !6
  %88 = load i64* %87, align 8, !mcsema_real_eip !6
  %89 = add i64 %6, 16, !mcsema_real_eip !7
  store i64 %86, i64* %RAX, align 8, !mcsema_real_eip !7
  %90 = bitcast i64* %RBX to <2 x i64>*
  store <2 x i64> %2, <2 x i64>* %90, align 8
  %91 = bitcast i64* %RDX to <2 x i64>*
  store <2 x i64> %4, <2 x i64>* %91, align 8
  store i64 %5, i64* %RDI, align 8, !mcsema_real_eip !7
  store i64 %89, i64* %RSP, align 8, !mcsema_real_eip !7
  store i64 %88, i64* %RBP, align 8, !mcsema_real_eip !7
  %92 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> %9, <2 x i64>* %92, align 8
  %93 = bitcast i64* %R10 to <2 x i64>*
  store <2 x i64> %11, <2 x i64>* %93, align 8
  %94 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> %13, <2 x i64>* %94, align 8
  %95 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> %15, <2 x i64>* %95, align 8
  store i64 %16, i64* %RIP, align 8, !mcsema_real_eip !7
  store i1 %85, i1* %CF, align 1, !mcsema_real_eip !7
  store i1 %84, i1* %PF, align 1, !mcsema_real_eip !7
  store i1 %75, i1* %AF, align 1, !mcsema_real_eip !7
  store i1 %77, i1* %ZF, align 1, !mcsema_real_eip !7
  store i1 %76, i1* %SF, align 1, !mcsema_real_eip !7
  store i1 %80, i1* %OF, align 1, !mcsema_real_eip !7
  store i1 %17, i1* %DF, align 1, !mcsema_real_eip !7
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %20, i32 128, i32 8, i1 false), !mcsema_real_eip !7
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
  store i128 %51, i128* %XMM0, align 1, !mcsema_real_eip !7
  store i128 %52, i128* %XMM1, align 1, !mcsema_real_eip !7
  store i128 %53, i128* %XMM2, align 1, !mcsema_real_eip !7
  store i128 %54, i128* %XMM3, align 1, !mcsema_real_eip !7
  store i128 %55, i128* %XMM4, align 1, !mcsema_real_eip !7
  store i128 %56, i128* %XMM5, align 1, !mcsema_real_eip !7
  store i128 %57, i128* %XMM6, align 1, !mcsema_real_eip !7
  store i128 %58, i128* %XMM7, align 1, !mcsema_real_eip !7
  store i128 %59, i128* %XMM8, align 1, !mcsema_real_eip !7
  store i128 %60, i128* %XMM9, align 1, !mcsema_real_eip !7
  store i128 %61, i128* %XMM10, align 1, !mcsema_real_eip !7
  store i128 %62, i128* %XMM11, align 1, !mcsema_real_eip !7
  store i128 %63, i128* %XMM12, align 1, !mcsema_real_eip !7
  store i128 %64, i128* %XMM13, align 1, !mcsema_real_eip !7
  store i128 %65, i128* %XMM14, align 1, !mcsema_real_eip !7
  store i128 %66, i128* %XMM15, align 1, !mcsema_real_eip !7
  %96 = bitcast i64* %STACK_BASE to <2 x i64>*
  store <2 x i64> %68, <2 x i64>* %96, align 1
  ret void, !mcsema_real_eip !7
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_e2(%struct.regs*) #0 {
entry:
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !48
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !48
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !48
  %1 = bitcast i64* %RBX to <2 x i64>*
  %2 = load <2 x i64>* %1, align 8
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !48
  %3 = bitcast i64* %RDX to <2 x i64>*
  %4 = load <2 x i64>* %3, align 8
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !48
  %5 = load i64* %RDI, align 8, !mcsema_real_eip !48
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !48
  %6 = load i64* %RSP, align 8, !mcsema_real_eip !48
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !48
  %7 = load i64* %RBP, align 8, !mcsema_real_eip !48
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !48
  %8 = bitcast i64* %R8 to <2 x i64>*
  %9 = load <2 x i64>* %8, align 8
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !48
  %10 = bitcast i64* %R10 to <2 x i64>*
  %11 = load <2 x i64>* %10, align 8
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !48
  %12 = bitcast i64* %R12 to <2 x i64>*
  %13 = load <2 x i64>* %12, align 8
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !48
  %14 = bitcast i64* %R14 to <2 x i64>*
  %15 = load <2 x i64>* %14, align 8
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !48
  %16 = load i64* %RIP, align 8, !mcsema_real_eip !48
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !48
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !48
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !48
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !48
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !48
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !48
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !48
  %17 = load i1* %DF, align 1, !mcsema_real_eip !48
  %18 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !48
  %19 = bitcast x86_fp80* %18 to i8*, !mcsema_real_eip !48
  %20 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !48
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !48
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !48
  %21 = load i1* %FPU_B, align 1, !mcsema_real_eip !48
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !48
  %22 = load i1* %FPU_C3, align 1, !mcsema_real_eip !48
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !48
  %23 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !48
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !48
  %24 = load i1* %FPU_C2, align 1, !mcsema_real_eip !48
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !48
  %25 = load i1* %FPU_C1, align 1, !mcsema_real_eip !48
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !48
  %26 = load i1* %FPU_C0, align 1, !mcsema_real_eip !48
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !48
  %27 = load i1* %FPU_ES, align 1, !mcsema_real_eip !48
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !48
  %28 = load i1* %FPU_SF, align 1, !mcsema_real_eip !48
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !48
  %29 = load i1* %FPU_PE, align 1, !mcsema_real_eip !48
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !48
  %30 = load i1* %FPU_UE, align 1, !mcsema_real_eip !48
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !48
  %31 = load i1* %FPU_OE, align 1, !mcsema_real_eip !48
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !48
  %32 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !48
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !48
  %33 = load i1* %FPU_DE, align 1, !mcsema_real_eip !48
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !48
  %34 = load i1* %FPU_IE, align 1, !mcsema_real_eip !48
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !48
  %35 = load i1* %FPU_X, align 1, !mcsema_real_eip !48
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !48
  %36 = load i2* %FPU_RC, align 1, !mcsema_real_eip !48
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !48
  %37 = load i2* %FPU_PC, align 1, !mcsema_real_eip !48
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !48
  %38 = load i1* %FPU_PM, align 1, !mcsema_real_eip !48
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !48
  %39 = load i1* %FPU_UM, align 1, !mcsema_real_eip !48
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !48
  %40 = load i1* %FPU_OM, align 1, !mcsema_real_eip !48
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !48
  %41 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !48
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !48
  %42 = load i1* %FPU_DM, align 1, !mcsema_real_eip !48
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !48
  %43 = load i1* %FPU_IM, align 1, !mcsema_real_eip !48
  %44 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !48
  %45 = bitcast i8* %44 to i64*
  %46 = load i64* %45, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !48
  %47 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !48
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !48
  %48 = load i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !48
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !48
  %49 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !48
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !48
  %50 = load i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !48
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !48
  %51 = load i128* %XMM0, align 1, !mcsema_real_eip !48
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !48
  %52 = load i128* %XMM1, align 1, !mcsema_real_eip !48
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !48
  %53 = load i128* %XMM2, align 1, !mcsema_real_eip !48
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !48
  %54 = load i128* %XMM3, align 1, !mcsema_real_eip !48
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !48
  %55 = load i128* %XMM4, align 1, !mcsema_real_eip !48
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !48
  %56 = load i128* %XMM5, align 1, !mcsema_real_eip !48
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !48
  %57 = load i128* %XMM6, align 1, !mcsema_real_eip !48
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !48
  %58 = load i128* %XMM7, align 1, !mcsema_real_eip !48
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !48
  %59 = load i128* %XMM8, align 1, !mcsema_real_eip !48
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !48
  %60 = load i128* %XMM9, align 1, !mcsema_real_eip !48
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !48
  %61 = load i128* %XMM10, align 1, !mcsema_real_eip !48
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !48
  %62 = load i128* %XMM11, align 1, !mcsema_real_eip !48
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !48
  %63 = load i128* %XMM12, align 1, !mcsema_real_eip !48
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !48
  %64 = load i128* %XMM13, align 1, !mcsema_real_eip !48
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !48
  %65 = load i128* %XMM14, align 1, !mcsema_real_eip !48
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !48
  %66 = load i128* %XMM15, align 1, !mcsema_real_eip !48
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !48
  %67 = bitcast i64* %STACK_BASE to <2 x i64>*
  %68 = load <2 x i64>* %67, align 8
  %69 = add i64 %7, -8, !mcsema_real_eip !48
  %70 = inttoptr i64 %69 to i32*
  %71 = load i32* %70, align 4, !mcsema_real_eip !48
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %71, i32 6)
  %72 = extractvalue { i32, i1 } %uadd, 0
  %73 = xor i32 %72, %71, !mcsema_real_eip !49
  %74 = and i32 %73, 16, !mcsema_real_eip !49
  %75 = icmp ne i32 %74, 0, !mcsema_real_eip !49
  %76 = icmp slt i32 %72, 0
  %77 = icmp eq i32 %72, 0, !mcsema_real_eip !49
  %78 = xor i32 %71, -2147483648, !mcsema_real_eip !49
  %79 = and i32 %73, %78, !mcsema_real_eip !49
  %80 = icmp slt i32 %79, 0
  %81 = trunc i32 %72 to i8, !mcsema_real_eip !49
  %82 = tail call i8 @llvm.ctpop.i8(i8 %81), !mcsema_real_eip !49
  %83 = and i8 %82, 1
  %84 = icmp eq i8 %83, 0
  %85 = extractvalue { i32, i1 } %uadd, 1
  store i32 %72, i32* %70, align 4, !mcsema_real_eip !50
  %86 = zext i32 %72 to i64, !mcsema_real_eip !5
  %87 = inttoptr i64 %6 to i64*, !mcsema_real_eip !6
  %88 = load i64* %87, align 8, !mcsema_real_eip !6
  %89 = add i64 %6, 16, !mcsema_real_eip !7
  store i64 %86, i64* %RAX, align 8, !mcsema_real_eip !7
  %90 = bitcast i64* %RBX to <2 x i64>*
  store <2 x i64> %2, <2 x i64>* %90, align 8
  %91 = bitcast i64* %RDX to <2 x i64>*
  store <2 x i64> %4, <2 x i64>* %91, align 8
  store i64 %5, i64* %RDI, align 8, !mcsema_real_eip !7
  store i64 %89, i64* %RSP, align 8, !mcsema_real_eip !7
  store i64 %88, i64* %RBP, align 8, !mcsema_real_eip !7
  %92 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> %9, <2 x i64>* %92, align 8
  %93 = bitcast i64* %R10 to <2 x i64>*
  store <2 x i64> %11, <2 x i64>* %93, align 8
  %94 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> %13, <2 x i64>* %94, align 8
  %95 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> %15, <2 x i64>* %95, align 8
  store i64 %16, i64* %RIP, align 8, !mcsema_real_eip !7
  store i1 %85, i1* %CF, align 1, !mcsema_real_eip !7
  store i1 %84, i1* %PF, align 1, !mcsema_real_eip !7
  store i1 %75, i1* %AF, align 1, !mcsema_real_eip !7
  store i1 %77, i1* %ZF, align 1, !mcsema_real_eip !7
  store i1 %76, i1* %SF, align 1, !mcsema_real_eip !7
  store i1 %80, i1* %OF, align 1, !mcsema_real_eip !7
  store i1 %17, i1* %DF, align 1, !mcsema_real_eip !7
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %20, i32 128, i32 8, i1 false), !mcsema_real_eip !7
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
  store i128 %51, i128* %XMM0, align 1, !mcsema_real_eip !7
  store i128 %52, i128* %XMM1, align 1, !mcsema_real_eip !7
  store i128 %53, i128* %XMM2, align 1, !mcsema_real_eip !7
  store i128 %54, i128* %XMM3, align 1, !mcsema_real_eip !7
  store i128 %55, i128* %XMM4, align 1, !mcsema_real_eip !7
  store i128 %56, i128* %XMM5, align 1, !mcsema_real_eip !7
  store i128 %57, i128* %XMM6, align 1, !mcsema_real_eip !7
  store i128 %58, i128* %XMM7, align 1, !mcsema_real_eip !7
  store i128 %59, i128* %XMM8, align 1, !mcsema_real_eip !7
  store i128 %60, i128* %XMM9, align 1, !mcsema_real_eip !7
  store i128 %61, i128* %XMM10, align 1, !mcsema_real_eip !7
  store i128 %62, i128* %XMM11, align 1, !mcsema_real_eip !7
  store i128 %63, i128* %XMM12, align 1, !mcsema_real_eip !7
  store i128 %64, i128* %XMM13, align 1, !mcsema_real_eip !7
  store i128 %65, i128* %XMM14, align 1, !mcsema_real_eip !7
  store i128 %66, i128* %XMM15, align 1, !mcsema_real_eip !7
  %96 = bitcast i64* %STACK_BASE to <2 x i64>*
  store <2 x i64> %68, <2 x i64>* %96, align 1
  ret void, !mcsema_real_eip !7
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_f2(%struct.regs*) #0 {
entry:
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !51
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !51
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !51
  %1 = bitcast i64* %RBX to <2 x i64>*
  %2 = load <2 x i64>* %1, align 8
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !51
  %3 = bitcast i64* %RDX to <2 x i64>*
  %4 = load <2 x i64>* %3, align 8
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !51
  %5 = load i64* %RDI, align 8, !mcsema_real_eip !51
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !51
  %6 = load i64* %RSP, align 8, !mcsema_real_eip !51
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !51
  %7 = load i64* %RBP, align 8, !mcsema_real_eip !51
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !51
  %8 = bitcast i64* %R8 to <2 x i64>*
  %9 = load <2 x i64>* %8, align 8
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !51
  %10 = bitcast i64* %R10 to <2 x i64>*
  %11 = load <2 x i64>* %10, align 8
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !51
  %12 = bitcast i64* %R12 to <2 x i64>*
  %13 = load <2 x i64>* %12, align 8
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !51
  %14 = bitcast i64* %R14 to <2 x i64>*
  %15 = load <2 x i64>* %14, align 8
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !51
  %16 = load i64* %RIP, align 8, !mcsema_real_eip !51
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !51
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !51
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !51
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !51
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !51
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !51
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !51
  %17 = load i1* %DF, align 1, !mcsema_real_eip !51
  %18 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !51
  %19 = bitcast x86_fp80* %18 to i8*, !mcsema_real_eip !51
  %20 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !51
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !51
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !51
  %21 = load i1* %FPU_B, align 1, !mcsema_real_eip !51
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !51
  %22 = load i1* %FPU_C3, align 1, !mcsema_real_eip !51
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !51
  %23 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !51
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !51
  %24 = load i1* %FPU_C2, align 1, !mcsema_real_eip !51
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !51
  %25 = load i1* %FPU_C1, align 1, !mcsema_real_eip !51
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !51
  %26 = load i1* %FPU_C0, align 1, !mcsema_real_eip !51
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !51
  %27 = load i1* %FPU_ES, align 1, !mcsema_real_eip !51
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !51
  %28 = load i1* %FPU_SF, align 1, !mcsema_real_eip !51
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !51
  %29 = load i1* %FPU_PE, align 1, !mcsema_real_eip !51
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !51
  %30 = load i1* %FPU_UE, align 1, !mcsema_real_eip !51
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !51
  %31 = load i1* %FPU_OE, align 1, !mcsema_real_eip !51
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !51
  %32 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !51
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !51
  %33 = load i1* %FPU_DE, align 1, !mcsema_real_eip !51
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !51
  %34 = load i1* %FPU_IE, align 1, !mcsema_real_eip !51
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !51
  %35 = load i1* %FPU_X, align 1, !mcsema_real_eip !51
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !51
  %36 = load i2* %FPU_RC, align 1, !mcsema_real_eip !51
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !51
  %37 = load i2* %FPU_PC, align 1, !mcsema_real_eip !51
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !51
  %38 = load i1* %FPU_PM, align 1, !mcsema_real_eip !51
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !51
  %39 = load i1* %FPU_UM, align 1, !mcsema_real_eip !51
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !51
  %40 = load i1* %FPU_OM, align 1, !mcsema_real_eip !51
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !51
  %41 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !51
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !51
  %42 = load i1* %FPU_DM, align 1, !mcsema_real_eip !51
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !51
  %43 = load i1* %FPU_IM, align 1, !mcsema_real_eip !51
  %44 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !51
  %45 = bitcast i8* %44 to i64*
  %46 = load i64* %45, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !51
  %47 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !51
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !51
  %48 = load i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !51
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !51
  %49 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !51
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !51
  %50 = load i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !51
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !51
  %51 = load i128* %XMM0, align 1, !mcsema_real_eip !51
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !51
  %52 = load i128* %XMM1, align 1, !mcsema_real_eip !51
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !51
  %53 = load i128* %XMM2, align 1, !mcsema_real_eip !51
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !51
  %54 = load i128* %XMM3, align 1, !mcsema_real_eip !51
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !51
  %55 = load i128* %XMM4, align 1, !mcsema_real_eip !51
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !51
  %56 = load i128* %XMM5, align 1, !mcsema_real_eip !51
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !51
  %57 = load i128* %XMM6, align 1, !mcsema_real_eip !51
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !51
  %58 = load i128* %XMM7, align 1, !mcsema_real_eip !51
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !51
  %59 = load i128* %XMM8, align 1, !mcsema_real_eip !51
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !51
  %60 = load i128* %XMM9, align 1, !mcsema_real_eip !51
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !51
  %61 = load i128* %XMM10, align 1, !mcsema_real_eip !51
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !51
  %62 = load i128* %XMM11, align 1, !mcsema_real_eip !51
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !51
  %63 = load i128* %XMM12, align 1, !mcsema_real_eip !51
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !51
  %64 = load i128* %XMM13, align 1, !mcsema_real_eip !51
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !51
  %65 = load i128* %XMM14, align 1, !mcsema_real_eip !51
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !51
  %66 = load i128* %XMM15, align 1, !mcsema_real_eip !51
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !51
  %67 = bitcast i64* %STACK_BASE to <2 x i64>*
  %68 = load <2 x i64>* %67, align 8
  %69 = add i64 %7, -8, !mcsema_real_eip !51
  %70 = inttoptr i64 %69 to i32*
  %71 = load i32* %70, align 4, !mcsema_real_eip !51
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %71, i32 12)
  %72 = extractvalue { i32, i1 } %uadd, 0
  %73 = xor i32 %72, %71, !mcsema_real_eip !52
  %74 = and i32 %73, 16, !mcsema_real_eip !52
  %75 = icmp ne i32 %74, 0, !mcsema_real_eip !52
  %76 = icmp slt i32 %72, 0
  %77 = icmp eq i32 %72, 0, !mcsema_real_eip !52
  %78 = xor i32 %71, -2147483648, !mcsema_real_eip !52
  %79 = and i32 %73, %78, !mcsema_real_eip !52
  %80 = icmp slt i32 %79, 0
  %81 = trunc i32 %72 to i8, !mcsema_real_eip !52
  %82 = tail call i8 @llvm.ctpop.i8(i8 %81), !mcsema_real_eip !52
  %83 = and i8 %82, 1
  %84 = icmp eq i8 %83, 0
  %85 = extractvalue { i32, i1 } %uadd, 1
  store i32 %72, i32* %70, align 4, !mcsema_real_eip !53
  %86 = zext i32 %72 to i64, !mcsema_real_eip !5
  %87 = inttoptr i64 %6 to i64*, !mcsema_real_eip !6
  %88 = load i64* %87, align 8, !mcsema_real_eip !6
  %89 = add i64 %6, 16, !mcsema_real_eip !7
  store i64 %86, i64* %RAX, align 8, !mcsema_real_eip !7
  %90 = bitcast i64* %RBX to <2 x i64>*
  store <2 x i64> %2, <2 x i64>* %90, align 8
  %91 = bitcast i64* %RDX to <2 x i64>*
  store <2 x i64> %4, <2 x i64>* %91, align 8
  store i64 %5, i64* %RDI, align 8, !mcsema_real_eip !7
  store i64 %89, i64* %RSP, align 8, !mcsema_real_eip !7
  store i64 %88, i64* %RBP, align 8, !mcsema_real_eip !7
  %92 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> %9, <2 x i64>* %92, align 8
  %93 = bitcast i64* %R10 to <2 x i64>*
  store <2 x i64> %11, <2 x i64>* %93, align 8
  %94 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> %13, <2 x i64>* %94, align 8
  %95 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> %15, <2 x i64>* %95, align 8
  store i64 %16, i64* %RIP, align 8, !mcsema_real_eip !7
  store i1 %85, i1* %CF, align 1, !mcsema_real_eip !7
  store i1 %84, i1* %PF, align 1, !mcsema_real_eip !7
  store i1 %75, i1* %AF, align 1, !mcsema_real_eip !7
  store i1 %77, i1* %ZF, align 1, !mcsema_real_eip !7
  store i1 %76, i1* %SF, align 1, !mcsema_real_eip !7
  store i1 %80, i1* %OF, align 1, !mcsema_real_eip !7
  store i1 %17, i1* %DF, align 1, !mcsema_real_eip !7
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %20, i32 128, i32 8, i1 false), !mcsema_real_eip !7
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
  store i128 %51, i128* %XMM0, align 1, !mcsema_real_eip !7
  store i128 %52, i128* %XMM1, align 1, !mcsema_real_eip !7
  store i128 %53, i128* %XMM2, align 1, !mcsema_real_eip !7
  store i128 %54, i128* %XMM3, align 1, !mcsema_real_eip !7
  store i128 %55, i128* %XMM4, align 1, !mcsema_real_eip !7
  store i128 %56, i128* %XMM5, align 1, !mcsema_real_eip !7
  store i128 %57, i128* %XMM6, align 1, !mcsema_real_eip !7
  store i128 %58, i128* %XMM7, align 1, !mcsema_real_eip !7
  store i128 %59, i128* %XMM8, align 1, !mcsema_real_eip !7
  store i128 %60, i128* %XMM9, align 1, !mcsema_real_eip !7
  store i128 %61, i128* %XMM10, align 1, !mcsema_real_eip !7
  store i128 %62, i128* %XMM11, align 1, !mcsema_real_eip !7
  store i128 %63, i128* %XMM12, align 1, !mcsema_real_eip !7
  store i128 %64, i128* %XMM13, align 1, !mcsema_real_eip !7
  store i128 %65, i128* %XMM14, align 1, !mcsema_real_eip !7
  store i128 %66, i128* %XMM15, align 1, !mcsema_real_eip !7
  %96 = bitcast i64* %STACK_BASE to <2 x i64>*
  store <2 x i64> %68, <2 x i64>* %96, align 1
  ret void, !mcsema_real_eip !7
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_102(%struct.regs*) #0 {
entry:
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !54
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !54
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !54
  %1 = bitcast i64* %RBX to <2 x i64>*
  %2 = load <2 x i64>* %1, align 8
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !54
  %3 = bitcast i64* %RDX to <2 x i64>*
  %4 = load <2 x i64>* %3, align 8
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !54
  %5 = load i64* %RDI, align 8, !mcsema_real_eip !54
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !54
  %6 = load i64* %RSP, align 8, !mcsema_real_eip !54
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !54
  %7 = load i64* %RBP, align 8, !mcsema_real_eip !54
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !54
  %8 = bitcast i64* %R8 to <2 x i64>*
  %9 = load <2 x i64>* %8, align 8
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !54
  %10 = bitcast i64* %R10 to <2 x i64>*
  %11 = load <2 x i64>* %10, align 8
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !54
  %12 = bitcast i64* %R12 to <2 x i64>*
  %13 = load <2 x i64>* %12, align 8
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !54
  %14 = bitcast i64* %R14 to <2 x i64>*
  %15 = load <2 x i64>* %14, align 8
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !54
  %16 = load i64* %RIP, align 8, !mcsema_real_eip !54
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !54
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !54
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !54
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !54
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !54
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !54
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !54
  %17 = load i1* %DF, align 1, !mcsema_real_eip !54
  %18 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !54
  %19 = bitcast x86_fp80* %18 to i8*, !mcsema_real_eip !54
  %20 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !54
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !54
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !54
  %21 = load i1* %FPU_B, align 1, !mcsema_real_eip !54
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !54
  %22 = load i1* %FPU_C3, align 1, !mcsema_real_eip !54
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !54
  %23 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !54
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !54
  %24 = load i1* %FPU_C2, align 1, !mcsema_real_eip !54
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !54
  %25 = load i1* %FPU_C1, align 1, !mcsema_real_eip !54
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !54
  %26 = load i1* %FPU_C0, align 1, !mcsema_real_eip !54
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !54
  %27 = load i1* %FPU_ES, align 1, !mcsema_real_eip !54
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !54
  %28 = load i1* %FPU_SF, align 1, !mcsema_real_eip !54
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !54
  %29 = load i1* %FPU_PE, align 1, !mcsema_real_eip !54
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !54
  %30 = load i1* %FPU_UE, align 1, !mcsema_real_eip !54
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !54
  %31 = load i1* %FPU_OE, align 1, !mcsema_real_eip !54
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !54
  %32 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !54
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !54
  %33 = load i1* %FPU_DE, align 1, !mcsema_real_eip !54
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !54
  %34 = load i1* %FPU_IE, align 1, !mcsema_real_eip !54
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !54
  %35 = load i1* %FPU_X, align 1, !mcsema_real_eip !54
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !54
  %36 = load i2* %FPU_RC, align 1, !mcsema_real_eip !54
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !54
  %37 = load i2* %FPU_PC, align 1, !mcsema_real_eip !54
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !54
  %38 = load i1* %FPU_PM, align 1, !mcsema_real_eip !54
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !54
  %39 = load i1* %FPU_UM, align 1, !mcsema_real_eip !54
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !54
  %40 = load i1* %FPU_OM, align 1, !mcsema_real_eip !54
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !54
  %41 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !54
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !54
  %42 = load i1* %FPU_DM, align 1, !mcsema_real_eip !54
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !54
  %43 = load i1* %FPU_IM, align 1, !mcsema_real_eip !54
  %44 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !54
  %45 = bitcast i8* %44 to i64*
  %46 = load i64* %45, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !54
  %47 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !54
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !54
  %48 = load i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !54
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !54
  %49 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !54
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !54
  %50 = load i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !54
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !54
  %51 = load i128* %XMM0, align 1, !mcsema_real_eip !54
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !54
  %52 = load i128* %XMM1, align 1, !mcsema_real_eip !54
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !54
  %53 = load i128* %XMM2, align 1, !mcsema_real_eip !54
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !54
  %54 = load i128* %XMM3, align 1, !mcsema_real_eip !54
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !54
  %55 = load i128* %XMM4, align 1, !mcsema_real_eip !54
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !54
  %56 = load i128* %XMM5, align 1, !mcsema_real_eip !54
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !54
  %57 = load i128* %XMM6, align 1, !mcsema_real_eip !54
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !54
  %58 = load i128* %XMM7, align 1, !mcsema_real_eip !54
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !54
  %59 = load i128* %XMM8, align 1, !mcsema_real_eip !54
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !54
  %60 = load i128* %XMM9, align 1, !mcsema_real_eip !54
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !54
  %61 = load i128* %XMM10, align 1, !mcsema_real_eip !54
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !54
  %62 = load i128* %XMM11, align 1, !mcsema_real_eip !54
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !54
  %63 = load i128* %XMM12, align 1, !mcsema_real_eip !54
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !54
  %64 = load i128* %XMM13, align 1, !mcsema_real_eip !54
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !54
  %65 = load i128* %XMM14, align 1, !mcsema_real_eip !54
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !54
  %66 = load i128* %XMM15, align 1, !mcsema_real_eip !54
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !54
  %67 = bitcast i64* %STACK_BASE to <2 x i64>*
  %68 = load <2 x i64>* %67, align 8
  %69 = add i64 %7, -8, !mcsema_real_eip !54
  %70 = inttoptr i64 %69 to i32*
  %71 = load i32* %70, align 4, !mcsema_real_eip !54
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %71, i32 13)
  %72 = extractvalue { i32, i1 } %uadd, 0
  %73 = xor i32 %72, %71, !mcsema_real_eip !55
  %74 = and i32 %73, 16, !mcsema_real_eip !55
  %75 = icmp ne i32 %74, 0, !mcsema_real_eip !55
  %76 = icmp slt i32 %72, 0
  %77 = icmp eq i32 %72, 0, !mcsema_real_eip !55
  %78 = xor i32 %71, -2147483648, !mcsema_real_eip !55
  %79 = and i32 %73, %78, !mcsema_real_eip !55
  %80 = icmp slt i32 %79, 0
  %81 = trunc i32 %72 to i8, !mcsema_real_eip !55
  %82 = tail call i8 @llvm.ctpop.i8(i8 %81), !mcsema_real_eip !55
  %83 = and i8 %82, 1
  %84 = icmp eq i8 %83, 0
  %85 = extractvalue { i32, i1 } %uadd, 1
  store i32 %72, i32* %70, align 4, !mcsema_real_eip !56
  %86 = zext i32 %72 to i64, !mcsema_real_eip !5
  %87 = inttoptr i64 %6 to i64*, !mcsema_real_eip !6
  %88 = load i64* %87, align 8, !mcsema_real_eip !6
  %89 = add i64 %6, 16, !mcsema_real_eip !7
  store i64 %86, i64* %RAX, align 8, !mcsema_real_eip !7
  %90 = bitcast i64* %RBX to <2 x i64>*
  store <2 x i64> %2, <2 x i64>* %90, align 8
  %91 = bitcast i64* %RDX to <2 x i64>*
  store <2 x i64> %4, <2 x i64>* %91, align 8
  store i64 %5, i64* %RDI, align 8, !mcsema_real_eip !7
  store i64 %89, i64* %RSP, align 8, !mcsema_real_eip !7
  store i64 %88, i64* %RBP, align 8, !mcsema_real_eip !7
  %92 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> %9, <2 x i64>* %92, align 8
  %93 = bitcast i64* %R10 to <2 x i64>*
  store <2 x i64> %11, <2 x i64>* %93, align 8
  %94 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> %13, <2 x i64>* %94, align 8
  %95 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> %15, <2 x i64>* %95, align 8
  store i64 %16, i64* %RIP, align 8, !mcsema_real_eip !7
  store i1 %85, i1* %CF, align 1, !mcsema_real_eip !7
  store i1 %84, i1* %PF, align 1, !mcsema_real_eip !7
  store i1 %75, i1* %AF, align 1, !mcsema_real_eip !7
  store i1 %77, i1* %ZF, align 1, !mcsema_real_eip !7
  store i1 %76, i1* %SF, align 1, !mcsema_real_eip !7
  store i1 %80, i1* %OF, align 1, !mcsema_real_eip !7
  store i1 %17, i1* %DF, align 1, !mcsema_real_eip !7
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %20, i32 128, i32 8, i1 false), !mcsema_real_eip !7
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
  store i128 %51, i128* %XMM0, align 1, !mcsema_real_eip !7
  store i128 %52, i128* %XMM1, align 1, !mcsema_real_eip !7
  store i128 %53, i128* %XMM2, align 1, !mcsema_real_eip !7
  store i128 %54, i128* %XMM3, align 1, !mcsema_real_eip !7
  store i128 %55, i128* %XMM4, align 1, !mcsema_real_eip !7
  store i128 %56, i128* %XMM5, align 1, !mcsema_real_eip !7
  store i128 %57, i128* %XMM6, align 1, !mcsema_real_eip !7
  store i128 %58, i128* %XMM7, align 1, !mcsema_real_eip !7
  store i128 %59, i128* %XMM8, align 1, !mcsema_real_eip !7
  store i128 %60, i128* %XMM9, align 1, !mcsema_real_eip !7
  store i128 %61, i128* %XMM10, align 1, !mcsema_real_eip !7
  store i128 %62, i128* %XMM11, align 1, !mcsema_real_eip !7
  store i128 %63, i128* %XMM12, align 1, !mcsema_real_eip !7
  store i128 %64, i128* %XMM13, align 1, !mcsema_real_eip !7
  store i128 %65, i128* %XMM14, align 1, !mcsema_real_eip !7
  store i128 %66, i128* %XMM15, align 1, !mcsema_real_eip !7
  %96 = bitcast i64* %STACK_BASE to <2 x i64>*
  store <2 x i64> %68, <2 x i64>* %96, align 1
  ret void, !mcsema_real_eip !7
}

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_112(%struct.regs*) #0 {
entry:
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !57
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !57
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !57
  %1 = bitcast i64* %RBX to <2 x i64>*
  %2 = load <2 x i64>* %1, align 8
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !57
  %3 = bitcast i64* %RDX to <2 x i64>*
  %4 = load <2 x i64>* %3, align 8
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !57
  %5 = load i64* %RDI, align 8, !mcsema_real_eip !57
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !57
  %6 = load i64* %RSP, align 8, !mcsema_real_eip !57
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !57
  %7 = load i64* %RBP, align 8, !mcsema_real_eip !57
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !57
  %8 = bitcast i64* %R8 to <2 x i64>*
  %9 = load <2 x i64>* %8, align 8
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !57
  %10 = bitcast i64* %R10 to <2 x i64>*
  %11 = load <2 x i64>* %10, align 8
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !57
  %12 = bitcast i64* %R12 to <2 x i64>*
  %13 = load <2 x i64>* %12, align 8
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !57
  %14 = bitcast i64* %R14 to <2 x i64>*
  %15 = load <2 x i64>* %14, align 8
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !57
  %16 = load i64* %RIP, align 8, !mcsema_real_eip !57
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !57
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !57
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !57
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !57
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !57
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !57
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !57
  %17 = load i1* %DF, align 1, !mcsema_real_eip !57
  %18 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !57
  %19 = bitcast x86_fp80* %18 to i8*, !mcsema_real_eip !57
  %20 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !57
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !57
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !57
  %21 = load i1* %FPU_B, align 1, !mcsema_real_eip !57
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !57
  %22 = load i1* %FPU_C3, align 1, !mcsema_real_eip !57
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !57
  %23 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !57
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !57
  %24 = load i1* %FPU_C2, align 1, !mcsema_real_eip !57
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !57
  %25 = load i1* %FPU_C1, align 1, !mcsema_real_eip !57
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !57
  %26 = load i1* %FPU_C0, align 1, !mcsema_real_eip !57
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !57
  %27 = load i1* %FPU_ES, align 1, !mcsema_real_eip !57
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !57
  %28 = load i1* %FPU_SF, align 1, !mcsema_real_eip !57
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !57
  %29 = load i1* %FPU_PE, align 1, !mcsema_real_eip !57
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !57
  %30 = load i1* %FPU_UE, align 1, !mcsema_real_eip !57
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !57
  %31 = load i1* %FPU_OE, align 1, !mcsema_real_eip !57
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !57
  %32 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !57
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !57
  %33 = load i1* %FPU_DE, align 1, !mcsema_real_eip !57
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !57
  %34 = load i1* %FPU_IE, align 1, !mcsema_real_eip !57
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !57
  %35 = load i1* %FPU_X, align 1, !mcsema_real_eip !57
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !57
  %36 = load i2* %FPU_RC, align 1, !mcsema_real_eip !57
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !57
  %37 = load i2* %FPU_PC, align 1, !mcsema_real_eip !57
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !57
  %38 = load i1* %FPU_PM, align 1, !mcsema_real_eip !57
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !57
  %39 = load i1* %FPU_UM, align 1, !mcsema_real_eip !57
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !57
  %40 = load i1* %FPU_OM, align 1, !mcsema_real_eip !57
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !57
  %41 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !57
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !57
  %42 = load i1* %FPU_DM, align 1, !mcsema_real_eip !57
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !57
  %43 = load i1* %FPU_IM, align 1, !mcsema_real_eip !57
  %44 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !57
  %45 = bitcast i8* %44 to i64*
  %46 = load i64* %45, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !57
  %47 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !57
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !57
  %48 = load i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !57
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !57
  %49 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !57
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !57
  %50 = load i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !57
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !57
  %51 = load i128* %XMM0, align 1, !mcsema_real_eip !57
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !57
  %52 = load i128* %XMM1, align 1, !mcsema_real_eip !57
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !57
  %53 = load i128* %XMM2, align 1, !mcsema_real_eip !57
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !57
  %54 = load i128* %XMM3, align 1, !mcsema_real_eip !57
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !57
  %55 = load i128* %XMM4, align 1, !mcsema_real_eip !57
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !57
  %56 = load i128* %XMM5, align 1, !mcsema_real_eip !57
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !57
  %57 = load i128* %XMM6, align 1, !mcsema_real_eip !57
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !57
  %58 = load i128* %XMM7, align 1, !mcsema_real_eip !57
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !57
  %59 = load i128* %XMM8, align 1, !mcsema_real_eip !57
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !57
  %60 = load i128* %XMM9, align 1, !mcsema_real_eip !57
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !57
  %61 = load i128* %XMM10, align 1, !mcsema_real_eip !57
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !57
  %62 = load i128* %XMM11, align 1, !mcsema_real_eip !57
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !57
  %63 = load i128* %XMM12, align 1, !mcsema_real_eip !57
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !57
  %64 = load i128* %XMM13, align 1, !mcsema_real_eip !57
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !57
  %65 = load i128* %XMM14, align 1, !mcsema_real_eip !57
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !57
  %66 = load i128* %XMM15, align 1, !mcsema_real_eip !57
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !57
  %67 = bitcast i64* %STACK_BASE to <2 x i64>*
  %68 = load <2 x i64>* %67, align 8
  %69 = add i64 %7, -8, !mcsema_real_eip !57
  %70 = inttoptr i64 %69 to i32*
  %71 = load i32* %70, align 4, !mcsema_real_eip !57
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %71, i32 19)
  %72 = extractvalue { i32, i1 } %uadd, 0
  %73 = xor i32 %72, %71, !mcsema_real_eip !58
  %74 = and i32 %73, 16
  %75 = icmp eq i32 %74, 0
  %76 = icmp slt i32 %72, 0
  %77 = icmp eq i32 %72, 0, !mcsema_real_eip !58
  %78 = xor i32 %71, -2147483648, !mcsema_real_eip !58
  %79 = and i32 %73, %78, !mcsema_real_eip !58
  %80 = icmp slt i32 %79, 0
  %81 = trunc i32 %72 to i8, !mcsema_real_eip !58
  %82 = tail call i8 @llvm.ctpop.i8(i8 %81), !mcsema_real_eip !58
  %83 = and i8 %82, 1
  %84 = icmp eq i8 %83, 0
  %85 = extractvalue { i32, i1 } %uadd, 1
  store i32 %72, i32* %70, align 4, !mcsema_real_eip !59
  %86 = zext i32 %72 to i64, !mcsema_real_eip !5
  %87 = inttoptr i64 %6 to i64*, !mcsema_real_eip !6
  %88 = load i64* %87, align 8, !mcsema_real_eip !6
  %89 = add i64 %6, 16, !mcsema_real_eip !7
  store i64 %86, i64* %RAX, align 8, !mcsema_real_eip !7
  %90 = bitcast i64* %RBX to <2 x i64>*
  store <2 x i64> %2, <2 x i64>* %90, align 8
  %91 = bitcast i64* %RDX to <2 x i64>*
  store <2 x i64> %4, <2 x i64>* %91, align 8
  store i64 %5, i64* %RDI, align 8, !mcsema_real_eip !7
  store i64 %89, i64* %RSP, align 8, !mcsema_real_eip !7
  store i64 %88, i64* %RBP, align 8, !mcsema_real_eip !7
  %92 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> %9, <2 x i64>* %92, align 8
  %93 = bitcast i64* %R10 to <2 x i64>*
  store <2 x i64> %11, <2 x i64>* %93, align 8
  %94 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> %13, <2 x i64>* %94, align 8
  %95 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> %15, <2 x i64>* %95, align 8
  store i64 %16, i64* %RIP, align 8, !mcsema_real_eip !7
  store i1 %85, i1* %CF, align 1, !mcsema_real_eip !7
  store i1 %84, i1* %PF, align 1, !mcsema_real_eip !7
  store i1 %75, i1* %AF, align 1, !mcsema_real_eip !7
  store i1 %77, i1* %ZF, align 1, !mcsema_real_eip !7
  store i1 %76, i1* %SF, align 1, !mcsema_real_eip !7
  store i1 %80, i1* %OF, align 1, !mcsema_real_eip !7
  store i1 %17, i1* %DF, align 1, !mcsema_real_eip !7
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %20, i32 128, i32 8, i1 false), !mcsema_real_eip !7
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
  store i128 %51, i128* %XMM0, align 1, !mcsema_real_eip !7
  store i128 %52, i128* %XMM1, align 1, !mcsema_real_eip !7
  store i128 %53, i128* %XMM2, align 1, !mcsema_real_eip !7
  store i128 %54, i128* %XMM3, align 1, !mcsema_real_eip !7
  store i128 %55, i128* %XMM4, align 1, !mcsema_real_eip !7
  store i128 %56, i128* %XMM5, align 1, !mcsema_real_eip !7
  store i128 %57, i128* %XMM6, align 1, !mcsema_real_eip !7
  store i128 %58, i128* %XMM7, align 1, !mcsema_real_eip !7
  store i128 %59, i128* %XMM8, align 1, !mcsema_real_eip !7
  store i128 %60, i128* %XMM9, align 1, !mcsema_real_eip !7
  store i128 %61, i128* %XMM10, align 1, !mcsema_real_eip !7
  store i128 %62, i128* %XMM11, align 1, !mcsema_real_eip !7
  store i128 %63, i128* %XMM12, align 1, !mcsema_real_eip !7
  store i128 %64, i128* %XMM13, align 1, !mcsema_real_eip !7
  store i128 %65, i128* %XMM14, align 1, !mcsema_real_eip !7
  store i128 %66, i128* %XMM15, align 1, !mcsema_real_eip !7
  %96 = bitcast i64* %STACK_BASE to <2 x i64>*
  store <2 x i64> %68, <2 x i64>* %96, align 1
  ret void, !mcsema_real_eip !7
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !60
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* %STi_val.i.0..sroa_cast)
  %RAX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !60
  %RBX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !60
  %1 = load i64* %RBX.i, align 8, !mcsema_real_eip !60
  %RCX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !60
  %2 = load i64* %RCX.i, align 8, !mcsema_real_eip !60
  %RDX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !60
  %3 = load i64* %RDX.i, align 8, !mcsema_real_eip !60
  %RSI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !60
  %4 = load i64* %RSI.i, align 8, !mcsema_real_eip !60
  %RDI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !60
  %5 = load i64* %RDI.i, align 8, !mcsema_real_eip !60
  %RSP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !60
  %6 = load i64* %RSP.i, align 8, !mcsema_real_eip !60
  %RBP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !60
  %7 = load i64* %RBP.i, align 8, !mcsema_real_eip !60
  %R8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !60
  %8 = load i64* %R8.i, align 8, !mcsema_real_eip !60
  %R9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !60
  %9 = load i64* %R9.i, align 8, !mcsema_real_eip !60
  %R10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !60
  %10 = load i64* %R10.i, align 8, !mcsema_real_eip !60
  %R11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !60
  %11 = load i64* %R11.i, align 8, !mcsema_real_eip !60
  %R12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !60
  %12 = load i64* %R12.i, align 8, !mcsema_real_eip !60
  %R13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !60
  %13 = load i64* %R13.i, align 8, !mcsema_real_eip !60
  %R14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !60
  %14 = load i64* %R14.i, align 8, !mcsema_real_eip !60
  %R15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !60
  %15 = load i64* %R15.i, align 8, !mcsema_real_eip !60
  %RIP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !60
  %16 = load i64* %RIP.i, align 8, !mcsema_real_eip !60
  %CF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !60
  %PF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !60
  %AF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !60
  %ZF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !60
  %SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !60
  %OF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !60
  %DF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !60
  %17 = load i1* %DF.i, align 1, !mcsema_real_eip !60
  %18 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !60
  %19 = bitcast x86_fp80* %18 to i8*, !mcsema_real_eip !60
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %STi_val.i.0..sroa_cast, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !60
  %FPU_B.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !60
  %20 = load i1* %FPU_B.i, align 1, !mcsema_real_eip !60
  %FPU_C3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !60
  %21 = load i1* %FPU_C3.i, align 1, !mcsema_real_eip !60
  %FPU_TOP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !60
  %22 = load i3* %FPU_TOP.i, align 1, !mcsema_real_eip !60
  %FPU_C2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !60
  %23 = load i1* %FPU_C2.i, align 1, !mcsema_real_eip !60
  %FPU_C1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !60
  %24 = load i1* %FPU_C1.i, align 1, !mcsema_real_eip !60
  %FPU_C0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !60
  %25 = load i1* %FPU_C0.i, align 1, !mcsema_real_eip !60
  %FPU_ES.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !60
  %26 = load i1* %FPU_ES.i, align 1, !mcsema_real_eip !60
  %FPU_SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !60
  %27 = load i1* %FPU_SF.i, align 1, !mcsema_real_eip !60
  %FPU_PE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !60
  %28 = load i1* %FPU_PE.i, align 1, !mcsema_real_eip !60
  %FPU_UE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !60
  %29 = load i1* %FPU_UE.i, align 1, !mcsema_real_eip !60
  %FPU_OE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !60
  %30 = load i1* %FPU_OE.i, align 1, !mcsema_real_eip !60
  %FPU_ZE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !60
  %31 = load i1* %FPU_ZE.i, align 1, !mcsema_real_eip !60
  %FPU_DE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !60
  %32 = load i1* %FPU_DE.i, align 1, !mcsema_real_eip !60
  %FPU_IE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !60
  %33 = load i1* %FPU_IE.i, align 1, !mcsema_real_eip !60
  %FPU_X.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !60
  %34 = load i1* %FPU_X.i, align 1, !mcsema_real_eip !60
  %FPU_RC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !60
  %35 = load i2* %FPU_RC.i, align 1, !mcsema_real_eip !60
  %FPU_PC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !60
  %36 = load i2* %FPU_PC.i, align 1, !mcsema_real_eip !60
  %FPU_PM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !60
  %37 = load i1* %FPU_PM.i, align 1, !mcsema_real_eip !60
  %FPU_UM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !60
  %38 = load i1* %FPU_UM.i, align 1, !mcsema_real_eip !60
  %FPU_OM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !60
  %39 = load i1* %FPU_OM.i, align 1, !mcsema_real_eip !60
  %FPU_ZM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !60
  %40 = load i1* %FPU_ZM.i, align 1, !mcsema_real_eip !60
  %FPU_DM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !60
  %41 = load i1* %FPU_DM.i, align 1, !mcsema_real_eip !60
  %FPU_IM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !60
  %42 = load i1* %FPU_IM.i, align 1, !mcsema_real_eip !60
  %43 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !60
  %44 = bitcast i8* %43 to i64*
  %45 = load i64* %44, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !60
  %46 = load i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !60
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !60
  %47 = load i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !60
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !60
  %48 = load i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !60
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !60
  %49 = load i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !60
  %XMM0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !60
  %50 = load i128* %XMM0.i, align 1, !mcsema_real_eip !60
  %XMM1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !60
  %51 = load i128* %XMM1.i, align 1, !mcsema_real_eip !60
  %XMM2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !60
  %52 = load i128* %XMM2.i, align 1, !mcsema_real_eip !60
  %XMM3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !60
  %53 = load i128* %XMM3.i, align 1, !mcsema_real_eip !60
  %XMM4.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !60
  %54 = load i128* %XMM4.i, align 1, !mcsema_real_eip !60
  %XMM5.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !60
  %55 = load i128* %XMM5.i, align 1, !mcsema_real_eip !60
  %XMM6.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !60
  %56 = load i128* %XMM6.i, align 1, !mcsema_real_eip !60
  %XMM7.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !60
  %57 = load i128* %XMM7.i, align 1, !mcsema_real_eip !60
  %XMM8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !60
  %58 = load i128* %XMM8.i, align 1, !mcsema_real_eip !60
  %XMM9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !60
  %59 = load i128* %XMM9.i, align 1, !mcsema_real_eip !60
  %XMM10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !60
  %60 = load i128* %XMM10.i, align 1, !mcsema_real_eip !60
  %XMM11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !60
  %61 = load i128* %XMM11.i, align 1, !mcsema_real_eip !60
  %XMM12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !60
  %62 = load i128* %XMM12.i, align 1, !mcsema_real_eip !60
  %XMM13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !60
  %63 = load i128* %XMM13.i, align 1, !mcsema_real_eip !60
  %XMM14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !60
  %64 = load i128* %XMM14.i, align 1, !mcsema_real_eip !60
  %XMM15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !60
  %65 = load i128* %XMM15.i, align 1, !mcsema_real_eip !60
  %STACK_BASE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !60
  %66 = load i64* %STACK_BASE.i, align 8, !mcsema_real_eip !60
  %STACK_LIMIT.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !60
  %67 = load i64* %STACK_LIMIT.i, align 8, !mcsema_real_eip !60
  %68 = add i64 %6, -8
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !60
  store i64 %7, i64* %69, align 8, !mcsema_real_eip !60
  %70 = add i64 %6, -12, !mcsema_real_eip !61
  %71 = trunc i64 %5 to i32, !mcsema_real_eip !61
  %72 = inttoptr i64 %70 to i32*
  store i32 %71, i32* %72, align 4, !mcsema_real_eip !61
  %73 = add i64 %6, -16, !mcsema_real_eip !62
  %74 = inttoptr i64 %73 to i32*
  store i32 0, i32* %74, align 4, !mcsema_real_eip !62
  %75 = load i32* %72, align 4, !mcsema_real_eip !63
  %76 = zext i32 %75 to i64, !mcsema_real_eip !63
  %77 = add i32 %75, -74632
  %78 = icmp eq i32 %77, 0, !mcsema_real_eip !64
  %79 = icmp slt i32 %77, 0
  %80 = sub i32 74631, %75
  %81 = and i32 %80, %75
  %82 = icmp slt i32 %81, 0
  %83 = add i64 %6, -20, !mcsema_real_eip !65
  %84 = inttoptr i64 %83 to i32*
  store i32 %75, i32* %84, align 4, !mcsema_real_eip !65
  %85 = add i64 %6, -24, !mcsema_real_eip !66
  %86 = inttoptr i64 %85 to i32*
  store i32 %77, i32* %86, align 4, !mcsema_real_eip !66
  %tmp.i = xor i1 %79, %82
  %.demorgan.i = or i1 %78, %tmp.i
  %87 = load i32* %84, align 4, !mcsema_real_eip !67
  br i1 %.demorgan.i, label %block_0x29.i, label %block_0x7a.i, !mcsema_real_eip !68

block_0x7a.i:                                     ; preds = %driverBlockRaw
  %88 = add i32 %87, -74633
  %89 = zext i32 %88 to i64, !mcsema_real_eip !69
  %90 = add i32 %87, -74643
  %91 = xor i32 %90, %88, !mcsema_real_eip !70
  %92 = icmp eq i32 %90, 0, !mcsema_real_eip !70
  %93 = icmp ult i32 %88, 10, !mcsema_real_eip !70
  %94 = add i64 %6, -56, !mcsema_real_eip !71
  %95 = inttoptr i64 %94 to i64*, !mcsema_real_eip !71
  store i64 %89, i64* %95, align 8, !mcsema_real_eip !71
  %96 = add i64 %6, -60, !mcsema_real_eip !72
  %97 = inttoptr i64 %96 to i32*
  store i32 %90, i32* %97, align 4, !mcsema_real_eip !72
  %.demorgan565.i = or i1 %93, %92
  br i1 %.demorgan565.i, label %block_0x94.i, label %block_0x1d2.i, !mcsema_real_eip !73

block_0x29.i:                                     ; preds = %driverBlockRaw
  %98 = add i32 %87, -254
  %99 = icmp eq i32 %98, 0, !mcsema_real_eip !74
  %100 = icmp slt i32 %98, 0
  %101 = sub i32 253, %87
  %102 = and i32 %101, %87
  %103 = icmp slt i32 %102, 0
  %104 = add i64 %6, -28, !mcsema_real_eip !75
  %105 = inttoptr i64 %104 to i32*
  store i32 %98, i32* %105, align 4, !mcsema_real_eip !75
  %tmp556.i = xor i1 %100, %103
  %.demorgan558.i = or i1 %99, %tmp556.i
  %106 = load i32* %84, align 4, !mcsema_real_eip !76
  %107 = zext i32 %106 to i64, !mcsema_real_eip !76
  br i1 %.demorgan558.i, label %block_0x3f.i, label %block_0x64.i, !mcsema_real_eip !77

block_0x1d2.i:                                    ; preds = %block_0x3f.i, %block_0x64.i, %block_0x7a.i
  %RDX_val.0.i = phi i64 [ %107, %block_0x3f.i ], [ %3, %block_0x64.i ], [ %3, %block_0x7a.i ]
  %RCX_val.0.i = phi i64 [ %107, %block_0x3f.i ], [ %2, %block_0x64.i ], [ %89, %block_0x7a.i ]
  %108 = load i32* %74, align 4, !mcsema_real_eip !20
  %109 = icmp slt i32 %108, 0
  %110 = icmp eq i32 %108, 0, !mcsema_real_eip !21
  %111 = trunc i32 %108 to i8, !mcsema_real_eip !21
  %112 = tail call i8 @llvm.ctpop.i8(i8 %111), !mcsema_real_eip !21
  %113 = and i8 %112, 1
  %114 = icmp eq i8 %113, 0
  %115 = zext i32 %108 to i64, !mcsema_real_eip !5
  %116 = load i64* %69, align 8, !mcsema_real_eip !6
  %117 = add i64 %6, 8, !mcsema_real_eip !7
  store i64 %115, i64* %RAX.i, align 8, !mcsema_real_eip !7
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !7
  store i64 %RCX_val.0.i, i64* %RCX.i, align 8, !mcsema_real_eip !7
  store i64 %RDX_val.0.i, i64* %RDX.i, align 8, !mcsema_real_eip !7
  store i64 %4, i64* %RSI.i, align 8, !mcsema_real_eip !7
  store i64 %76, i64* %RDI.i, align 8, !mcsema_real_eip !7
  store i64 %117, i64* %RSP.i, align 8, !mcsema_real_eip !7
  store i64 %116, i64* %RBP.i, align 8, !mcsema_real_eip !7
  store i64 %8, i64* %R8.i, align 8, !mcsema_real_eip !7
  store i64 %9, i64* %R9.i, align 8, !mcsema_real_eip !7
  store i64 %10, i64* %R10.i, align 8, !mcsema_real_eip !7
  store i64 %11, i64* %R11.i, align 8, !mcsema_real_eip !7
  store i64 %12, i64* %R12.i, align 8, !mcsema_real_eip !7
  store i64 %13, i64* %R13.i, align 8, !mcsema_real_eip !7
  store i64 %14, i64* %R14.i, align 8, !mcsema_real_eip !7
  store i64 %15, i64* %R15.i, align 8, !mcsema_real_eip !7
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !7
  store i1 false, i1* %CF.i, align 1, !mcsema_real_eip !7
  store i1 %114, i1* %PF.i, align 1, !mcsema_real_eip !7
  store i1 false, i1* %AF.i, align 1, !mcsema_real_eip !7
  store i1 %110, i1* %ZF.i, align 1, !mcsema_real_eip !7
  store i1 %109, i1* %SF.i, align 1, !mcsema_real_eip !7
  store i1 false, i1* %OF.i, align 1, !mcsema_real_eip !7
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !7
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !7
  store i1 %20, i1* %FPU_B.i, align 1, !mcsema_real_eip !7
  store i1 %21, i1* %FPU_C3.i, align 1, !mcsema_real_eip !7
  store i3 %22, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !7
  store i1 %23, i1* %FPU_C2.i, align 1, !mcsema_real_eip !7
  store i1 %24, i1* %FPU_C1.i, align 1, !mcsema_real_eip !7
  store i1 %25, i1* %FPU_C0.i, align 1, !mcsema_real_eip !7
  store i1 %26, i1* %FPU_ES.i, align 1, !mcsema_real_eip !7
  store i1 %27, i1* %FPU_SF.i, align 1, !mcsema_real_eip !7
  store i1 %28, i1* %FPU_PE.i, align 1, !mcsema_real_eip !7
  store i1 %29, i1* %FPU_UE.i, align 1, !mcsema_real_eip !7
  store i1 %30, i1* %FPU_OE.i, align 1, !mcsema_real_eip !7
  store i1 %31, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !7
  store i1 %32, i1* %FPU_DE.i, align 1, !mcsema_real_eip !7
  store i1 %33, i1* %FPU_IE.i, align 1, !mcsema_real_eip !7
  store i1 %34, i1* %FPU_X.i, align 1, !mcsema_real_eip !7
  store i2 %35, i2* %FPU_RC.i, align 1, !mcsema_real_eip !7
  store i2 %36, i2* %FPU_PC.i, align 1, !mcsema_real_eip !7
  store i1 %37, i1* %FPU_PM.i, align 1, !mcsema_real_eip !7
  store i1 %38, i1* %FPU_UM.i, align 1, !mcsema_real_eip !7
  store i1 %39, i1* %FPU_OM.i, align 1, !mcsema_real_eip !7
  store i1 %40, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !7
  store i1 %41, i1* %FPU_DM.i, align 1, !mcsema_real_eip !7
  store i1 %42, i1* %FPU_IM.i, align 1, !mcsema_real_eip !7
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !7
  store i64 %47, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !7
  store i16 %48, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !7
  store i64 %49, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !7
  store i128 %50, i128* %XMM0.i, align 1, !mcsema_real_eip !7
  store i128 %51, i128* %XMM1.i, align 1, !mcsema_real_eip !7
  store i128 %52, i128* %XMM2.i, align 1, !mcsema_real_eip !7
  store i128 %53, i128* %XMM3.i, align 1, !mcsema_real_eip !7
  store i128 %54, i128* %XMM4.i, align 1, !mcsema_real_eip !7
  store i128 %55, i128* %XMM5.i, align 1, !mcsema_real_eip !7
  store i128 %56, i128* %XMM6.i, align 1, !mcsema_real_eip !7
  store i128 %57, i128* %XMM7.i, align 1, !mcsema_real_eip !7
  store i128 %58, i128* %XMM8.i, align 1, !mcsema_real_eip !7
  store i128 %59, i128* %XMM9.i, align 1, !mcsema_real_eip !7
  store i128 %60, i128* %XMM10.i, align 1, !mcsema_real_eip !7
  store i128 %61, i128* %XMM11.i, align 1, !mcsema_real_eip !7
  store i128 %62, i128* %XMM12.i, align 1, !mcsema_real_eip !7
  store i128 %63, i128* %XMM13.i, align 1, !mcsema_real_eip !7
  store i128 %64, i128* %XMM14.i, align 1, !mcsema_real_eip !7
  store i128 %65, i128* %XMM15.i, align 1, !mcsema_real_eip !7
  store i64 %66, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !7
  store i64 %67, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !7
  call void @llvm.lifetime.end(i64 128, i8* %STi_val.i.0..sroa_cast)
  br label %sub_0.exit

block_0x94.i:                                     ; preds = %block_0x7a.i
  %118 = and i32 %91, %88, !mcsema_real_eip !70
  %119 = icmp slt i32 %118, 0
  %120 = icmp slt i32 %90, 0
  %121 = trunc i32 %90 to i8, !mcsema_real_eip !70
  %122 = tail call i8 @llvm.ctpop.i8(i8 %121), !mcsema_real_eip !70
  %123 = and i8 %122, 1
  %124 = icmp eq i8 %123, 0
  %125 = and i32 %91, 16, !mcsema_real_eip !70
  %126 = icmp ne i32 %125, 0, !mcsema_real_eip !70
  %127 = load i64* %95, align 8, !mcsema_real_eip !78
  %128 = shl i64 %127, 3
  %129 = add i64 %128, ptrtoint (%0* @data_0x1e2 to i64), !mcsema_real_eip !79
  %130 = inttoptr i64 %129 to i64*, !mcsema_real_eip !79
  %131 = load i64* %130, align 8, !mcsema_real_eip !79
  store i64 %127, i64* %RAX.i, align 8, !mcsema_real_eip !80
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !80
  store i64 %131, i64* %RCX.i, align 8, !mcsema_real_eip !80
  store i64 %3, i64* %RDX.i, align 8, !mcsema_real_eip !80
  store i64 %4, i64* %RSI.i, align 8, !mcsema_real_eip !80
  store i64 %76, i64* %RDI.i, align 8, !mcsema_real_eip !80
  store i64 %68, i64* %RSP.i, align 8, !mcsema_real_eip !80
  store i64 %68, i64* %RBP.i, align 8, !mcsema_real_eip !80
  store i64 %8, i64* %R8.i, align 8, !mcsema_real_eip !80
  store i64 %9, i64* %R9.i, align 8, !mcsema_real_eip !80
  store i64 %10, i64* %R10.i, align 8, !mcsema_real_eip !80
  store i64 %11, i64* %R11.i, align 8, !mcsema_real_eip !80
  store i64 %12, i64* %R12.i, align 8, !mcsema_real_eip !80
  store i64 %13, i64* %R13.i, align 8, !mcsema_real_eip !80
  store i64 %14, i64* %R14.i, align 8, !mcsema_real_eip !80
  store i64 %15, i64* %R15.i, align 8, !mcsema_real_eip !80
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !80
  store i1 %93, i1* %CF.i, align 1, !mcsema_real_eip !80
  store i1 %124, i1* %PF.i, align 1, !mcsema_real_eip !80
  store i1 %126, i1* %AF.i, align 1, !mcsema_real_eip !80
  store i1 %92, i1* %ZF.i, align 1, !mcsema_real_eip !80
  store i1 %120, i1* %SF.i, align 1, !mcsema_real_eip !80
  store i1 %119, i1* %OF.i, align 1, !mcsema_real_eip !80
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !80
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !80
  store i1 %20, i1* %FPU_B.i, align 1, !mcsema_real_eip !80
  store i1 %21, i1* %FPU_C3.i, align 1, !mcsema_real_eip !80
  store i3 %22, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !80
  store i1 %23, i1* %FPU_C2.i, align 1, !mcsema_real_eip !80
  store i1 %24, i1* %FPU_C1.i, align 1, !mcsema_real_eip !80
  store i1 %25, i1* %FPU_C0.i, align 1, !mcsema_real_eip !80
  store i1 %26, i1* %FPU_ES.i, align 1, !mcsema_real_eip !80
  store i1 %27, i1* %FPU_SF.i, align 1, !mcsema_real_eip !80
  store i1 %28, i1* %FPU_PE.i, align 1, !mcsema_real_eip !80
  store i1 %29, i1* %FPU_UE.i, align 1, !mcsema_real_eip !80
  store i1 %30, i1* %FPU_OE.i, align 1, !mcsema_real_eip !80
  store i1 %31, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !80
  store i1 %32, i1* %FPU_DE.i, align 1, !mcsema_real_eip !80
  store i1 %33, i1* %FPU_IE.i, align 1, !mcsema_real_eip !80
  store i1 %34, i1* %FPU_X.i, align 1, !mcsema_real_eip !80
  store i2 %35, i2* %FPU_RC.i, align 1, !mcsema_real_eip !80
  store i2 %36, i2* %FPU_PC.i, align 1, !mcsema_real_eip !80
  store i1 %37, i1* %FPU_PM.i, align 1, !mcsema_real_eip !80
  store i1 %38, i1* %FPU_UM.i, align 1, !mcsema_real_eip !80
  store i1 %39, i1* %FPU_OM.i, align 1, !mcsema_real_eip !80
  store i1 %40, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !80
  store i1 %41, i1* %FPU_DM.i, align 1, !mcsema_real_eip !80
  store i1 %42, i1* %FPU_IM.i, align 1, !mcsema_real_eip !80
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !80
  store i64 %47, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !80
  store i16 %48, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !80
  store i64 %49, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !80
  store i128 %50, i128* %XMM0.i, align 1, !mcsema_real_eip !80
  store i128 %51, i128* %XMM1.i, align 1, !mcsema_real_eip !80
  store i128 %52, i128* %XMM2.i, align 1, !mcsema_real_eip !80
  store i128 %53, i128* %XMM3.i, align 1, !mcsema_real_eip !80
  store i128 %54, i128* %XMM4.i, align 1, !mcsema_real_eip !80
  store i128 %55, i128* %XMM5.i, align 1, !mcsema_real_eip !80
  store i128 %56, i128* %XMM6.i, align 1, !mcsema_real_eip !80
  store i128 %57, i128* %XMM7.i, align 1, !mcsema_real_eip !80
  store i128 %58, i128* %XMM8.i, align 1, !mcsema_real_eip !80
  store i128 %59, i128* %XMM9.i, align 1, !mcsema_real_eip !80
  store i128 %60, i128* %XMM10.i, align 1, !mcsema_real_eip !80
  store i128 %61, i128* %XMM11.i, align 1, !mcsema_real_eip !80
  store i128 %62, i128* %XMM12.i, align 1, !mcsema_real_eip !80
  store i128 %63, i128* %XMM13.i, align 1, !mcsema_real_eip !80
  store i128 %64, i128* %XMM14.i, align 1, !mcsema_real_eip !80
  store i128 %65, i128* %XMM15.i, align 1, !mcsema_real_eip !80
  store i64 %66, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !80
  store i64 %67, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !80
  %132 = inttoptr i64 %131 to void (%struct.regs*)*
  tail call x86_64_sysvcc void %132(%struct.regs* %0)
  %133 = load i64* %RSP.i, align 8, !mcsema_real_eip !80
  %134 = add i64 %133, 8, !mcsema_real_eip !80
  store i64 %134, i64* %RSP.i, align 8, !mcsema_real_eip !80
  call void @llvm.lifetime.end(i64 128, i8* %STi_val.i.0..sroa_cast)
  br label %sub_0.exit

block_0x64.i:                                     ; preds = %block_0x29.i
  %135 = add i32 %106, -255
  %136 = icmp eq i32 %135, 0, !mcsema_real_eip !81
  %137 = add i64 %6, -44, !mcsema_real_eip !82
  %138 = inttoptr i64 %137 to i32*
  store i32 %135, i32* %138, align 4, !mcsema_real_eip !82
  br i1 %136, label %block_0x122.i, label %block_0x1d2.i, !mcsema_real_eip !83

block_0x3f.i:                                     ; preds = %block_0x29.i
  %139 = add i32 %106, -19
  %140 = xor i32 %139, %106, !mcsema_real_eip !84
  %141 = icmp eq i32 %139, 0, !mcsema_real_eip !84
  %142 = icmp ult i32 %106, 19, !mcsema_real_eip !84
  %143 = add i64 %6, -32, !mcsema_real_eip !85
  %144 = inttoptr i64 %143 to i32*
  store i32 %139, i32* %144, align 4, !mcsema_real_eip !85
  %145 = add i64 %6, -40, !mcsema_real_eip !86
  %146 = inttoptr i64 %145 to i64*, !mcsema_real_eip !86
  store i64 %107, i64* %146, align 8, !mcsema_real_eip !86
  %.demorgan561.i = or i1 %142, %141
  br i1 %.demorgan561.i, label %block_0x56.i, label %block_0x1d2.i, !mcsema_real_eip !87

block_0x122.i:                                    ; preds = %block_0x64.i
  %147 = load i32* %74, align 4, !mcsema_real_eip !88
  %uadd.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %147, i32 255)
  %148 = extractvalue { i32, i1 } %uadd.i, 0
  %149 = xor i32 %148, %147, !mcsema_real_eip !89
  %150 = and i32 %149, 16
  %151 = icmp eq i32 %150, 0
  %152 = icmp slt i32 %148, 0
  %153 = icmp eq i32 %148, 0, !mcsema_real_eip !89
  %154 = xor i32 %147, -2147483648, !mcsema_real_eip !89
  %155 = and i32 %149, %154, !mcsema_real_eip !89
  %156 = icmp slt i32 %155, 0
  %157 = trunc i32 %148 to i8, !mcsema_real_eip !89
  %158 = tail call i8 @llvm.ctpop.i8(i8 %157), !mcsema_real_eip !89
  %159 = and i8 %158, 1
  %160 = icmp eq i8 %159, 0
  %161 = extractvalue { i32, i1 } %uadd.i, 1
  store i32 %148, i32* %74, align 4, !mcsema_real_eip !90
  %162 = zext i32 %148 to i64, !mcsema_real_eip !5
  %163 = load i64* %69, align 8, !mcsema_real_eip !6
  %164 = add i64 %6, 8, !mcsema_real_eip !7
  store i64 %162, i64* %RAX.i, align 8, !mcsema_real_eip !7
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !7
  store i64 %2, i64* %RCX.i, align 8, !mcsema_real_eip !7
  store i64 %3, i64* %RDX.i, align 8, !mcsema_real_eip !7
  store i64 %4, i64* %RSI.i, align 8, !mcsema_real_eip !7
  store i64 %76, i64* %RDI.i, align 8, !mcsema_real_eip !7
  store i64 %164, i64* %RSP.i, align 8, !mcsema_real_eip !7
  store i64 %163, i64* %RBP.i, align 8, !mcsema_real_eip !7
  store i64 %8, i64* %R8.i, align 8, !mcsema_real_eip !7
  store i64 %9, i64* %R9.i, align 8, !mcsema_real_eip !7
  store i64 %10, i64* %R10.i, align 8, !mcsema_real_eip !7
  store i64 %11, i64* %R11.i, align 8, !mcsema_real_eip !7
  store i64 %12, i64* %R12.i, align 8, !mcsema_real_eip !7
  store i64 %13, i64* %R13.i, align 8, !mcsema_real_eip !7
  store i64 %14, i64* %R14.i, align 8, !mcsema_real_eip !7
  store i64 %15, i64* %R15.i, align 8, !mcsema_real_eip !7
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !7
  store i1 %161, i1* %CF.i, align 1, !mcsema_real_eip !7
  store i1 %160, i1* %PF.i, align 1, !mcsema_real_eip !7
  store i1 %151, i1* %AF.i, align 1, !mcsema_real_eip !7
  store i1 %153, i1* %ZF.i, align 1, !mcsema_real_eip !7
  store i1 %152, i1* %SF.i, align 1, !mcsema_real_eip !7
  store i1 %156, i1* %OF.i, align 1, !mcsema_real_eip !7
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !7
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !7
  store i1 %20, i1* %FPU_B.i, align 1, !mcsema_real_eip !7
  store i1 %21, i1* %FPU_C3.i, align 1, !mcsema_real_eip !7
  store i3 %22, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !7
  store i1 %23, i1* %FPU_C2.i, align 1, !mcsema_real_eip !7
  store i1 %24, i1* %FPU_C1.i, align 1, !mcsema_real_eip !7
  store i1 %25, i1* %FPU_C0.i, align 1, !mcsema_real_eip !7
  store i1 %26, i1* %FPU_ES.i, align 1, !mcsema_real_eip !7
  store i1 %27, i1* %FPU_SF.i, align 1, !mcsema_real_eip !7
  store i1 %28, i1* %FPU_PE.i, align 1, !mcsema_real_eip !7
  store i1 %29, i1* %FPU_UE.i, align 1, !mcsema_real_eip !7
  store i1 %30, i1* %FPU_OE.i, align 1, !mcsema_real_eip !7
  store i1 %31, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !7
  store i1 %32, i1* %FPU_DE.i, align 1, !mcsema_real_eip !7
  store i1 %33, i1* %FPU_IE.i, align 1, !mcsema_real_eip !7
  store i1 %34, i1* %FPU_X.i, align 1, !mcsema_real_eip !7
  store i2 %35, i2* %FPU_RC.i, align 1, !mcsema_real_eip !7
  store i2 %36, i2* %FPU_PC.i, align 1, !mcsema_real_eip !7
  store i1 %37, i1* %FPU_PM.i, align 1, !mcsema_real_eip !7
  store i1 %38, i1* %FPU_UM.i, align 1, !mcsema_real_eip !7
  store i1 %39, i1* %FPU_OM.i, align 1, !mcsema_real_eip !7
  store i1 %40, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !7
  store i1 %41, i1* %FPU_DM.i, align 1, !mcsema_real_eip !7
  store i1 %42, i1* %FPU_IM.i, align 1, !mcsema_real_eip !7
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !7
  store i64 %47, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !7
  store i16 %48, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !7
  store i64 %49, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !7
  store i128 %50, i128* %XMM0.i, align 1, !mcsema_real_eip !7
  store i128 %51, i128* %XMM1.i, align 1, !mcsema_real_eip !7
  store i128 %52, i128* %XMM2.i, align 1, !mcsema_real_eip !7
  store i128 %53, i128* %XMM3.i, align 1, !mcsema_real_eip !7
  store i128 %54, i128* %XMM4.i, align 1, !mcsema_real_eip !7
  store i128 %55, i128* %XMM5.i, align 1, !mcsema_real_eip !7
  store i128 %56, i128* %XMM6.i, align 1, !mcsema_real_eip !7
  store i128 %57, i128* %XMM7.i, align 1, !mcsema_real_eip !7
  store i128 %58, i128* %XMM8.i, align 1, !mcsema_real_eip !7
  store i128 %59, i128* %XMM9.i, align 1, !mcsema_real_eip !7
  store i128 %60, i128* %XMM10.i, align 1, !mcsema_real_eip !7
  store i128 %61, i128* %XMM11.i, align 1, !mcsema_real_eip !7
  store i128 %62, i128* %XMM12.i, align 1, !mcsema_real_eip !7
  store i128 %63, i128* %XMM13.i, align 1, !mcsema_real_eip !7
  store i128 %64, i128* %XMM14.i, align 1, !mcsema_real_eip !7
  store i128 %65, i128* %XMM15.i, align 1, !mcsema_real_eip !7
  store i64 %66, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !7
  store i64 %67, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !7
  call void @llvm.lifetime.end(i64 128, i8* %STi_val.i.0..sroa_cast)
  br label %sub_0.exit

block_0x56.i:                                     ; preds = %block_0x3f.i
  %165 = and i32 %140, %106, !mcsema_real_eip !84
  %166 = icmp slt i32 %165, 0
  %167 = icmp slt i32 %139, 0
  %168 = trunc i32 %139 to i8, !mcsema_real_eip !84
  %169 = tail call i8 @llvm.ctpop.i8(i8 %168), !mcsema_real_eip !84
  %170 = and i8 %169, 1
  %171 = icmp eq i8 %170, 0
  %172 = and i32 %140, 16
  %173 = icmp eq i32 %172, 0
  %174 = shl nuw nsw i64 %107, 3
  %175 = add i64 %174, add (i64 ptrtoint (%0* @data_0x1e2 to i64), i64 88), !mcsema_real_eip !91
  %176 = inttoptr i64 %175 to i64*, !mcsema_real_eip !91
  %177 = load i64* %176, align 8, !mcsema_real_eip !91
  store i64 %107, i64* %RAX.i, align 8, !mcsema_real_eip !92
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !92
  store i64 %177, i64* %RCX.i, align 8, !mcsema_real_eip !92
  store i64 %107, i64* %RDX.i, align 8, !mcsema_real_eip !92
  store i64 %4, i64* %RSI.i, align 8, !mcsema_real_eip !92
  store i64 %76, i64* %RDI.i, align 8, !mcsema_real_eip !92
  store i64 %68, i64* %RSP.i, align 8, !mcsema_real_eip !92
  store i64 %68, i64* %RBP.i, align 8, !mcsema_real_eip !92
  store i64 %8, i64* %R8.i, align 8, !mcsema_real_eip !92
  store i64 %9, i64* %R9.i, align 8, !mcsema_real_eip !92
  store i64 %10, i64* %R10.i, align 8, !mcsema_real_eip !92
  store i64 %11, i64* %R11.i, align 8, !mcsema_real_eip !92
  store i64 %12, i64* %R12.i, align 8, !mcsema_real_eip !92
  store i64 %13, i64* %R13.i, align 8, !mcsema_real_eip !92
  store i64 %14, i64* %R14.i, align 8, !mcsema_real_eip !92
  store i64 %15, i64* %R15.i, align 8, !mcsema_real_eip !92
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !92
  store i1 %142, i1* %CF.i, align 1, !mcsema_real_eip !92
  store i1 %171, i1* %PF.i, align 1, !mcsema_real_eip !92
  store i1 %173, i1* %AF.i, align 1, !mcsema_real_eip !92
  store i1 %141, i1* %ZF.i, align 1, !mcsema_real_eip !92
  store i1 %167, i1* %SF.i, align 1, !mcsema_real_eip !92
  store i1 %166, i1* %OF.i, align 1, !mcsema_real_eip !92
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !92
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !92
  store i1 %20, i1* %FPU_B.i, align 1, !mcsema_real_eip !92
  store i1 %21, i1* %FPU_C3.i, align 1, !mcsema_real_eip !92
  store i3 %22, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !92
  store i1 %23, i1* %FPU_C2.i, align 1, !mcsema_real_eip !92
  store i1 %24, i1* %FPU_C1.i, align 1, !mcsema_real_eip !92
  store i1 %25, i1* %FPU_C0.i, align 1, !mcsema_real_eip !92
  store i1 %26, i1* %FPU_ES.i, align 1, !mcsema_real_eip !92
  store i1 %27, i1* %FPU_SF.i, align 1, !mcsema_real_eip !92
  store i1 %28, i1* %FPU_PE.i, align 1, !mcsema_real_eip !92
  store i1 %29, i1* %FPU_UE.i, align 1, !mcsema_real_eip !92
  store i1 %30, i1* %FPU_OE.i, align 1, !mcsema_real_eip !92
  store i1 %31, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !92
  store i1 %32, i1* %FPU_DE.i, align 1, !mcsema_real_eip !92
  store i1 %33, i1* %FPU_IE.i, align 1, !mcsema_real_eip !92
  store i1 %34, i1* %FPU_X.i, align 1, !mcsema_real_eip !92
  store i2 %35, i2* %FPU_RC.i, align 1, !mcsema_real_eip !92
  store i2 %36, i2* %FPU_PC.i, align 1, !mcsema_real_eip !92
  store i1 %37, i1* %FPU_PM.i, align 1, !mcsema_real_eip !92
  store i1 %38, i1* %FPU_UM.i, align 1, !mcsema_real_eip !92
  store i1 %39, i1* %FPU_OM.i, align 1, !mcsema_real_eip !92
  store i1 %40, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !92
  store i1 %41, i1* %FPU_DM.i, align 1, !mcsema_real_eip !92
  store i1 %42, i1* %FPU_IM.i, align 1, !mcsema_real_eip !92
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !92
  store i64 %47, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !92
  store i16 %48, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !92
  store i64 %49, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !92
  store i128 %50, i128* %XMM0.i, align 1, !mcsema_real_eip !92
  store i128 %51, i128* %XMM1.i, align 1, !mcsema_real_eip !92
  store i128 %52, i128* %XMM2.i, align 1, !mcsema_real_eip !92
  store i128 %53, i128* %XMM3.i, align 1, !mcsema_real_eip !92
  store i128 %54, i128* %XMM4.i, align 1, !mcsema_real_eip !92
  store i128 %55, i128* %XMM5.i, align 1, !mcsema_real_eip !92
  store i128 %56, i128* %XMM6.i, align 1, !mcsema_real_eip !92
  store i128 %57, i128* %XMM7.i, align 1, !mcsema_real_eip !92
  store i128 %58, i128* %XMM8.i, align 1, !mcsema_real_eip !92
  store i128 %59, i128* %XMM9.i, align 1, !mcsema_real_eip !92
  store i128 %60, i128* %XMM10.i, align 1, !mcsema_real_eip !92
  store i128 %61, i128* %XMM11.i, align 1, !mcsema_real_eip !92
  store i128 %62, i128* %XMM12.i, align 1, !mcsema_real_eip !92
  store i128 %63, i128* %XMM13.i, align 1, !mcsema_real_eip !92
  store i128 %64, i128* %XMM14.i, align 1, !mcsema_real_eip !92
  store i128 %65, i128* %XMM15.i, align 1, !mcsema_real_eip !92
  store i64 %66, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !92
  store i64 %67, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !92
  %178 = inttoptr i64 %177 to void (%struct.regs*)*
  tail call x86_64_sysvcc void %178(%struct.regs* %0)
  %179 = load i64* %RSP.i, align 8, !mcsema_real_eip !92
  %180 = add i64 %179, 8, !mcsema_real_eip !92
  store i64 %180, i64* %RSP.i, align 8, !mcsema_real_eip !92
  call void @llvm.lifetime.end(i64 128, i8* %STi_val.i.0..sroa_cast)
  br label %sub_0.exit

sub_0.exit:                                       ; preds = %block_0x56.i, %block_0x122.i, %block_0x94.i, %block_0x1d2.i
  ret void
}

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #0

attributes #0 = { nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!1 = metadata !{i32 1, metadata !"Dwarf Version", i32 3}
!2 = metadata !{i64 306, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!3 = metadata !{i64 309, [19 x i8] c"\09addl\09$74633, %eax\00"}
!4 = metadata !{i64 314, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!5 = metadata !{i64 477, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!6 = metadata !{i64 480, [11 x i8] c"\09popq\09%rbp\00"}
!7 = metadata !{i64 481, [6 x i8] c"\09retq\00"}
!8 = metadata !{i64 322, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!9 = metadata !{i64 325, [19 x i8] c"\09addl\09$74634, %eax\00"}
!10 = metadata !{i64 330, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!11 = metadata !{i64 338, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!12 = metadata !{i64 341, [19 x i8] c"\09addl\09$74635, %eax\00"}
!13 = metadata !{i64 346, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!14 = metadata !{i64 354, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!15 = metadata !{i64 357, [19 x i8] c"\09addl\09$74636, %eax\00"}
!16 = metadata !{i64 362, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!17 = metadata !{i64 370, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!18 = metadata !{i64 373, [19 x i8] c"\09addl\09$74637, %eax\00"}
!19 = metadata !{i64 378, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!20 = metadata !{i64 466, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!21 = metadata !{i64 469, [15 x i8] c"\09addl\09$0, %eax\00"}
!22 = metadata !{i64 386, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!23 = metadata !{i64 389, [19 x i8] c"\09addl\09$74639, %eax\00"}
!24 = metadata !{i64 394, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!25 = metadata !{i64 402, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!26 = metadata !{i64 405, [19 x i8] c"\09addl\09$74640, %eax\00"}
!27 = metadata !{i64 410, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!28 = metadata !{i64 418, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!29 = metadata !{i64 421, [19 x i8] c"\09addl\09$74641, %eax\00"}
!30 = metadata !{i64 426, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!31 = metadata !{i64 434, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!32 = metadata !{i64 437, [19 x i8] c"\09addl\09$74642, %eax\00"}
!33 = metadata !{i64 442, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!34 = metadata !{i64 450, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!35 = metadata !{i64 453, [19 x i8] c"\09addl\09$74643, %eax\00"}
!36 = metadata !{i64 458, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!37 = metadata !{i64 162, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!38 = metadata !{i64 165, [15 x i8] c"\09addl\09$0, %eax\00"}
!39 = metadata !{i64 178, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!40 = metadata !{i64 181, [15 x i8] c"\09addl\09$1, %eax\00"}
!41 = metadata !{i64 186, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!42 = metadata !{i64 194, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!43 = metadata !{i64 197, [15 x i8] c"\09addl\09$2, %eax\00"}
!44 = metadata !{i64 202, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!45 = metadata !{i64 210, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!46 = metadata !{i64 213, [15 x i8] c"\09addl\09$4, %eax\00"}
!47 = metadata !{i64 218, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!48 = metadata !{i64 226, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!49 = metadata !{i64 229, [15 x i8] c"\09addl\09$6, %eax\00"}
!50 = metadata !{i64 234, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!51 = metadata !{i64 242, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!52 = metadata !{i64 245, [16 x i8] c"\09addl\09$12, %eax\00"}
!53 = metadata !{i64 250, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!54 = metadata !{i64 258, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!55 = metadata !{i64 261, [16 x i8] c"\09addl\09$13, %eax\00"}
!56 = metadata !{i64 266, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!57 = metadata !{i64 274, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!58 = metadata !{i64 277, [16 x i8] c"\09addl\09$19, %eax\00"}
!59 = metadata !{i64 282, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!60 = metadata !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!61 = metadata !{i64 4, [21 x i8] c"\09movl\09%edi, -4(%rbp)\00"}
!62 = metadata !{i64 7, [19 x i8] c"\09movl\09$0, -8(%rbp)\00"}
!63 = metadata !{i64 14, [21 x i8] c"\09movl\09-4(%rbp), %edi\00"}
!64 = metadata !{i64 19, [19 x i8] c"\09subl\09$74632, %eax\00"}
!65 = metadata !{i64 24, [22 x i8] c"\09movl\09%edi, -12(%rbp)\00"}
!66 = metadata !{i64 27, [22 x i8] c"\09movl\09%eax, -16(%rbp)\00"}
!67 = metadata !{i64 122, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!68 = metadata !{i64 30, [7 x i8] c"\09jg\0986\00"}
!69 = metadata !{i64 125, [24 x i8] c"\09addl\09$4294892663, %eax\00"}
!70 = metadata !{i64 132, [16 x i8] c"\09subl\09$10, %eax\00"}
!71 = metadata !{i64 135, [22 x i8] c"\09movq\09%rcx, -48(%rbp)\00"}
!72 = metadata !{i64 139, [22 x i8] c"\09movl\09%eax, -52(%rbp)\00"}
!73 = metadata !{i64 142, [8 x i8] c"\09ja\09318\00"}
!74 = metadata !{i64 44, [17 x i8] c"\09subl\09$254, %eax\00"}
!75 = metadata !{i64 49, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!76 = metadata !{i64 100, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!77 = metadata !{i64 52, [7 x i8] c"\09jg\0942\00"}
!78 = metadata !{i64 148, [22 x i8] c"\09movq\09-48(%rbp), %rax\00"}
!79 = metadata !{i64 152, [22 x i8] c"\09movq\09(,%rax,8), %rcx\00"}
!80 = metadata !{i64 160, [12 x i8] c"\09jmpq\09*%rcx\00"}
!81 = metadata !{i64 103, [17 x i8] c"\09subl\09$255, %eax\00"}
!82 = metadata !{i64 108, [22 x i8] c"\09movl\09%eax, -36(%rbp)\00"}
!83 = metadata !{i64 111, [8 x i8] c"\09je\09173\00"}
!84 = metadata !{i64 70, [16 x i8] c"\09subl\09$19, %eax\00"}
!85 = metadata !{i64 73, [22 x i8] c"\09movl\09%eax, -24(%rbp)\00"}
!86 = metadata !{i64 76, [22 x i8] c"\09movq\09%rdx, -32(%rbp)\00"}
!87 = metadata !{i64 80, [8 x i8] c"\09ja\09380\00"}
!88 = metadata !{i64 290, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!89 = metadata !{i64 293, [17 x i8] c"\09addl\09$255, %eax\00"}
!90 = metadata !{i64 298, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!91 = metadata !{i64 90, [22 x i8] c"\09movq\09(,%rax,8), %rcx\00"}
!92 = metadata !{i64 98, [12 x i8] c"\09jmpq\09*%rcx\00"}
