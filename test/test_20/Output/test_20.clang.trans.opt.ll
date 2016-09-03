; ModuleID = 'Output/test_20.clang.trans.opt.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%0 = type <{ void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)*, void (%struct.regs*)* }>
%1 = type <{ [468 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0x2a3 = internal constant %0 <{ void (%struct.regs*)* @sub_181, void (%struct.regs*)* @sub_19a, void (%struct.regs*)* @sub_1b3, void (%struct.regs*)* @sub_1cc, void (%struct.regs*)* @sub_1e5, void (%struct.regs*)* @sub_27b, void (%struct.regs*)* @sub_1fe, void (%struct.regs*)* @sub_217, void (%struct.regs*)* @sub_230, void (%struct.regs*)* @sub_249, void (%struct.regs*)* @sub_262, void (%struct.regs*)* @sub_a0, void (%struct.regs*)* @sub_b9, void (%struct.regs*)* @sub_d2, void (%struct.regs*)* @sub_27b, void (%struct.regs*)* @sub_eb, void (%struct.regs*)* @sub_27b, void (%struct.regs*)* @sub_104, void (%struct.regs*)* @sub_27b, void (%struct.regs*)* @sub_27b, void (%struct.regs*)* @sub_27b, void (%struct.regs*)* @sub_27b, void (%struct.regs*)* @sub_27b, void (%struct.regs*)* @sub_11d, void (%struct.regs*)* @sub_136, void (%struct.regs*)* @sub_27b, void (%struct.regs*)* @sub_27b, void (%struct.regs*)* @sub_27b, void (%struct.regs*)* @sub_27b, void (%struct.regs*)* @sub_27b, void (%struct.regs*)* @sub_14f }>, align 64
@data_0x39b = internal constant %1 <{ [468 x i8] c"Input was zero\0A\00Input was one\0A\00Input was two\0A\00Input was four\0A\00Input was six\0A\00Input was twelve\0A\00Input was thirteen\0A\00Input was nineteen\0A\00Input was two hundred fifty-five\0A\00Really big input:  0x12389\0A\00Really big input:  0x1238A\0A\00Really big input:  0x1238B\0A\00Really big input:  0x1238C\0A\00Really big input:  0x1238D\0A\00Really big input:  0x1238F\0A\00Really big input:  0x12390\0A\00Really big input:  0x12391\0A\00Really big input:  0x12392\0A\00Really big input:  0x12393\0A\00Unknown input: %d\0A\00" }>, align 64

define internal x86_64_sysvcc void @sub_181(%struct.regs*) {
entry:
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %1 = bitcast i64* %RBX to <2 x i64>*
  %2 = load <2 x i64>* %1, align 8
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %3 = load i64* %RDX, align 8, !mcsema_real_eip !2
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %4 = load i64* %RSI, align 8, !mcsema_real_eip !2
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %5 = load i64* %RSP, align 8, !mcsema_real_eip !2
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %6 = load i64* %RBP, align 8, !mcsema_real_eip !2
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %7 = bitcast i64* %R8 to <2 x i64>*
  %8 = load <2 x i64>* %7, align 8
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %9 = bitcast i64* %R10 to <2 x i64>*
  %10 = load <2 x i64>* %9, align 8
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %11 = bitcast i64* %R12 to <2 x i64>*
  %12 = load <2 x i64>* %11, align 8
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %13 = bitcast i64* %R14 to <2 x i64>*
  %14 = load <2 x i64>* %13, align 8
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %15 = load i64* %RIP, align 8, !mcsema_real_eip !2
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %16 = load i1* %DF, align 1, !mcsema_real_eip !2
  %17 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %18 = bitcast x86_fp80* %17 to i8*, !mcsema_real_eip !2
  %19 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %18, i32 128, i32 4, i1 false), !mcsema_real_eip !2
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %20 = load i1* %FPU_B, align 1, !mcsema_real_eip !2
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %21 = load i1* %FPU_C3, align 1, !mcsema_real_eip !2
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %22 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !2
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %23 = load i1* %FPU_C2, align 1, !mcsema_real_eip !2
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %24 = load i1* %FPU_C1, align 1, !mcsema_real_eip !2
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %25 = load i1* %FPU_C0, align 1, !mcsema_real_eip !2
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %26 = load i1* %FPU_ES, align 1, !mcsema_real_eip !2
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %27 = load i1* %FPU_SF, align 1, !mcsema_real_eip !2
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %28 = load i1* %FPU_PE, align 1, !mcsema_real_eip !2
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %29 = load i1* %FPU_UE, align 1, !mcsema_real_eip !2
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %30 = load i1* %FPU_OE, align 1, !mcsema_real_eip !2
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %31 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !2
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %32 = load i1* %FPU_DE, align 1, !mcsema_real_eip !2
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %33 = load i1* %FPU_IE, align 1, !mcsema_real_eip !2
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %34 = load i1* %FPU_X, align 1, !mcsema_real_eip !2
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %35 = load i2* %FPU_RC, align 1, !mcsema_real_eip !2
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %36 = load i2* %FPU_PC, align 1, !mcsema_real_eip !2
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %37 = load i1* %FPU_PM, align 1, !mcsema_real_eip !2
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %38 = load i1* %FPU_UM, align 1, !mcsema_real_eip !2
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %39 = load i1* %FPU_OM, align 1, !mcsema_real_eip !2
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %40 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !2
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %41 = load i1* %FPU_DM, align 1, !mcsema_real_eip !2
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %42 = load i1* %FPU_IM, align 1, !mcsema_real_eip !2
  %43 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %44 = bitcast i8* %43 to i64*
  %45 = load i64* %44, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %46 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !2
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %47 = load i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %48 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %49 = load i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !2
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %50 = load i128* %XMM0, align 1, !mcsema_real_eip !2
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %51 = load i128* %XMM1, align 1, !mcsema_real_eip !2
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %52 = load i128* %XMM2, align 1, !mcsema_real_eip !2
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %53 = load i128* %XMM3, align 1, !mcsema_real_eip !2
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %54 = load i128* %XMM4, align 1, !mcsema_real_eip !2
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %55 = load i128* %XMM5, align 1, !mcsema_real_eip !2
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %56 = load i128* %XMM6, align 1, !mcsema_real_eip !2
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %57 = load i128* %XMM7, align 1, !mcsema_real_eip !2
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %58 = load i128* %XMM8, align 1, !mcsema_real_eip !2
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %59 = load i128* %XMM9, align 1, !mcsema_real_eip !2
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %60 = load i128* %XMM10, align 1, !mcsema_real_eip !2
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %61 = load i128* %XMM11, align 1, !mcsema_real_eip !2
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %62 = load i128* %XMM12, align 1, !mcsema_real_eip !2
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %63 = load i128* %XMM13, align 1, !mcsema_real_eip !2
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %64 = load i128* %XMM14, align 1, !mcsema_real_eip !2
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %65 = load i128* %XMM15, align 1, !mcsema_real_eip !2
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %66 = bitcast i64* %STACK_BASE to <2 x i64>*
  %67 = load <2 x i64>* %66, align 8
  %68 = extractelement <2 x i64> %2, i32 1
  %69 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 169), i64 %4, i64 %3, i64 %68), !mcsema_real_eip !3
  %70 = add i64 %6, -92, !mcsema_real_eip !4
  %71 = trunc i64 %69 to i32, !mcsema_real_eip !4
  %72 = inttoptr i64 %70 to i32*
  store i32 %71, i32* %72, align 4, !mcsema_real_eip !4
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %5, i64 144)
  %73 = extractvalue { i64, i1 } %uadd, 0
  %74 = xor i64 %73, %5, !mcsema_real_eip !5
  %75 = and i64 %74, 16
  %76 = icmp eq i64 %75, 0
  %77 = icmp slt i64 %73, 0
  %78 = icmp eq i64 %73, 0, !mcsema_real_eip !5
  %79 = xor i64 %5, -9223372036854775808, !mcsema_real_eip !5
  %80 = and i64 %74, %79, !mcsema_real_eip !5
  %81 = icmp slt i64 %80, 0
  %82 = trunc i64 %73 to i8, !mcsema_real_eip !5
  %83 = tail call i8 @llvm.ctpop.i8(i8 %82), !mcsema_real_eip !5
  %84 = and i8 %83, 1
  %85 = icmp eq i8 %84, 0
  %86 = extractvalue { i64, i1 } %uadd, 1
  %87 = inttoptr i64 %73 to i64*, !mcsema_real_eip !6
  %88 = load i64* %87, align 8, !mcsema_real_eip !6
  %89 = add i64 %73, 16, !mcsema_real_eip !7
  store i64 0, i64* %RAX, align 8, !mcsema_real_eip !7
  %90 = bitcast i64* %RBX to <2 x i64>*
  store <2 x i64> %2, <2 x i64>* %90, align 8
  store i64 %3, i64* %RDX, align 8, !mcsema_real_eip !7
  store i64 %4, i64* %RSI, align 8, !mcsema_real_eip !7
  store i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 169), i64* %RDI, align 8, !mcsema_real_eip !7
  store i64 %89, i64* %RSP, align 8, !mcsema_real_eip !7
  store i64 %88, i64* %RBP, align 8, !mcsema_real_eip !7
  %91 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> %8, <2 x i64>* %91, align 8
  %92 = bitcast i64* %R10 to <2 x i64>*
  store <2 x i64> %10, <2 x i64>* %92, align 8
  %93 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> %12, <2 x i64>* %93, align 8
  %94 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> %14, <2 x i64>* %94, align 8
  store i64 %15, i64* %RIP, align 8, !mcsema_real_eip !7
  store i1 %86, i1* %CF, align 1, !mcsema_real_eip !7
  store i1 %85, i1* %PF, align 1, !mcsema_real_eip !7
  store i1 %76, i1* %AF, align 1, !mcsema_real_eip !7
  store i1 %78, i1* %ZF, align 1, !mcsema_real_eip !7
  store i1 %77, i1* %SF, align 1, !mcsema_real_eip !7
  store i1 %81, i1* %OF, align 1, !mcsema_real_eip !7
  store i1 %16, i1* %DF, align 1, !mcsema_real_eip !7
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %19, i32 128, i32 8, i1 false), !mcsema_real_eip !7
  store i1 %20, i1* %FPU_B, align 1, !mcsema_real_eip !7
  store i1 %21, i1* %FPU_C3, align 1, !mcsema_real_eip !7
  store i3 %22, i3* %FPU_TOP, align 1, !mcsema_real_eip !7
  store i1 %23, i1* %FPU_C2, align 1, !mcsema_real_eip !7
  store i1 %24, i1* %FPU_C1, align 1, !mcsema_real_eip !7
  store i1 %25, i1* %FPU_C0, align 1, !mcsema_real_eip !7
  store i1 %26, i1* %FPU_ES, align 1, !mcsema_real_eip !7
  store i1 %27, i1* %FPU_SF, align 1, !mcsema_real_eip !7
  store i1 %28, i1* %FPU_PE, align 1, !mcsema_real_eip !7
  store i1 %29, i1* %FPU_UE, align 1, !mcsema_real_eip !7
  store i1 %30, i1* %FPU_OE, align 1, !mcsema_real_eip !7
  store i1 %31, i1* %FPU_ZE, align 1, !mcsema_real_eip !7
  store i1 %32, i1* %FPU_DE, align 1, !mcsema_real_eip !7
  store i1 %33, i1* %FPU_IE, align 1, !mcsema_real_eip !7
  store i1 %34, i1* %FPU_X, align 1, !mcsema_real_eip !7
  store i2 %35, i2* %FPU_RC, align 1, !mcsema_real_eip !7
  store i2 %36, i2* %FPU_PC, align 1, !mcsema_real_eip !7
  store i1 %37, i1* %FPU_PM, align 1, !mcsema_real_eip !7
  store i1 %38, i1* %FPU_UM, align 1, !mcsema_real_eip !7
  store i1 %39, i1* %FPU_OM, align 1, !mcsema_real_eip !7
  store i1 %40, i1* %FPU_ZM, align 1, !mcsema_real_eip !7
  store i1 %41, i1* %FPU_DM, align 1, !mcsema_real_eip !7
  store i1 %42, i1* %FPU_IM, align 1, !mcsema_real_eip !7
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !7
  store i64 %47, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !7
  store i16 %48, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !7
  store i64 %49, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !7
  store i128 %50, i128* %XMM0, align 1, !mcsema_real_eip !7
  store i128 %51, i128* %XMM1, align 1, !mcsema_real_eip !7
  store i128 %52, i128* %XMM2, align 1, !mcsema_real_eip !7
  store i128 %53, i128* %XMM3, align 1, !mcsema_real_eip !7
  store i128 %54, i128* %XMM4, align 1, !mcsema_real_eip !7
  store i128 %55, i128* %XMM5, align 1, !mcsema_real_eip !7
  store i128 %56, i128* %XMM6, align 1, !mcsema_real_eip !7
  store i128 %57, i128* %XMM7, align 1, !mcsema_real_eip !7
  store i128 %58, i128* %XMM8, align 1, !mcsema_real_eip !7
  store i128 %59, i128* %XMM9, align 1, !mcsema_real_eip !7
  store i128 %60, i128* %XMM10, align 1, !mcsema_real_eip !7
  store i128 %61, i128* %XMM11, align 1, !mcsema_real_eip !7
  store i128 %62, i128* %XMM12, align 1, !mcsema_real_eip !7
  store i128 %63, i128* %XMM13, align 1, !mcsema_real_eip !7
  store i128 %64, i128* %XMM14, align 1, !mcsema_real_eip !7
  store i128 %65, i128* %XMM15, align 1, !mcsema_real_eip !7
  %95 = bitcast i64* %STACK_BASE to <2 x i64>*
  store <2 x i64> %67, <2 x i64>* %95, align 1
  ret void, !mcsema_real_eip !7
}

define internal x86_64_sysvcc void @sub_19a(%struct.regs*) {
entry:
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !8
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !8
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !8
  %1 = bitcast i64* %RBX to <2 x i64>*
  %2 = load <2 x i64>* %1, align 8
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !8
  %3 = load i64* %RDX, align 8, !mcsema_real_eip !8
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !8
  %4 = load i64* %RSI, align 8, !mcsema_real_eip !8
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !8
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !8
  %5 = load i64* %RSP, align 8, !mcsema_real_eip !8
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !8
  %6 = load i64* %RBP, align 8, !mcsema_real_eip !8
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !8
  %7 = bitcast i64* %R8 to <2 x i64>*
  %8 = load <2 x i64>* %7, align 8
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !8
  %9 = bitcast i64* %R10 to <2 x i64>*
  %10 = load <2 x i64>* %9, align 8
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !8
  %11 = bitcast i64* %R12 to <2 x i64>*
  %12 = load <2 x i64>* %11, align 8
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !8
  %13 = bitcast i64* %R14 to <2 x i64>*
  %14 = load <2 x i64>* %13, align 8
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !8
  %15 = load i64* %RIP, align 8, !mcsema_real_eip !8
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !8
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !8
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !8
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !8
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !8
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !8
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !8
  %16 = load i1* %DF, align 1, !mcsema_real_eip !8
  %17 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !8
  %18 = bitcast x86_fp80* %17 to i8*, !mcsema_real_eip !8
  %19 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !8
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %18, i32 128, i32 4, i1 false), !mcsema_real_eip !8
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !8
  %20 = load i1* %FPU_B, align 1, !mcsema_real_eip !8
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !8
  %21 = load i1* %FPU_C3, align 1, !mcsema_real_eip !8
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !8
  %22 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !8
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !8
  %23 = load i1* %FPU_C2, align 1, !mcsema_real_eip !8
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !8
  %24 = load i1* %FPU_C1, align 1, !mcsema_real_eip !8
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !8
  %25 = load i1* %FPU_C0, align 1, !mcsema_real_eip !8
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !8
  %26 = load i1* %FPU_ES, align 1, !mcsema_real_eip !8
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !8
  %27 = load i1* %FPU_SF, align 1, !mcsema_real_eip !8
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !8
  %28 = load i1* %FPU_PE, align 1, !mcsema_real_eip !8
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !8
  %29 = load i1* %FPU_UE, align 1, !mcsema_real_eip !8
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !8
  %30 = load i1* %FPU_OE, align 1, !mcsema_real_eip !8
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !8
  %31 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !8
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !8
  %32 = load i1* %FPU_DE, align 1, !mcsema_real_eip !8
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !8
  %33 = load i1* %FPU_IE, align 1, !mcsema_real_eip !8
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !8
  %34 = load i1* %FPU_X, align 1, !mcsema_real_eip !8
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !8
  %35 = load i2* %FPU_RC, align 1, !mcsema_real_eip !8
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !8
  %36 = load i2* %FPU_PC, align 1, !mcsema_real_eip !8
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !8
  %37 = load i1* %FPU_PM, align 1, !mcsema_real_eip !8
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !8
  %38 = load i1* %FPU_UM, align 1, !mcsema_real_eip !8
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !8
  %39 = load i1* %FPU_OM, align 1, !mcsema_real_eip !8
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !8
  %40 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !8
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !8
  %41 = load i1* %FPU_DM, align 1, !mcsema_real_eip !8
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !8
  %42 = load i1* %FPU_IM, align 1, !mcsema_real_eip !8
  %43 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !8
  %44 = bitcast i8* %43 to i64*
  %45 = load i64* %44, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !8
  %46 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !8
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !8
  %47 = load i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !8
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !8
  %48 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !8
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !8
  %49 = load i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !8
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !8
  %50 = load i128* %XMM0, align 1, !mcsema_real_eip !8
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !8
  %51 = load i128* %XMM1, align 1, !mcsema_real_eip !8
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !8
  %52 = load i128* %XMM2, align 1, !mcsema_real_eip !8
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !8
  %53 = load i128* %XMM3, align 1, !mcsema_real_eip !8
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !8
  %54 = load i128* %XMM4, align 1, !mcsema_real_eip !8
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !8
  %55 = load i128* %XMM5, align 1, !mcsema_real_eip !8
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !8
  %56 = load i128* %XMM6, align 1, !mcsema_real_eip !8
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !8
  %57 = load i128* %XMM7, align 1, !mcsema_real_eip !8
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !8
  %58 = load i128* %XMM8, align 1, !mcsema_real_eip !8
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !8
  %59 = load i128* %XMM9, align 1, !mcsema_real_eip !8
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !8
  %60 = load i128* %XMM10, align 1, !mcsema_real_eip !8
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !8
  %61 = load i128* %XMM11, align 1, !mcsema_real_eip !8
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !8
  %62 = load i128* %XMM12, align 1, !mcsema_real_eip !8
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !8
  %63 = load i128* %XMM13, align 1, !mcsema_real_eip !8
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !8
  %64 = load i128* %XMM14, align 1, !mcsema_real_eip !8
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !8
  %65 = load i128* %XMM15, align 1, !mcsema_real_eip !8
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !8
  %66 = bitcast i64* %STACK_BASE to <2 x i64>*
  %67 = load <2 x i64>* %66, align 8
  %68 = extractelement <2 x i64> %2, i32 1
  %69 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 197), i64 %4, i64 %3, i64 %68), !mcsema_real_eip !9
  %70 = add i64 %6, -96, !mcsema_real_eip !10
  %71 = trunc i64 %69 to i32, !mcsema_real_eip !10
  %72 = inttoptr i64 %70 to i32*
  store i32 %71, i32* %72, align 4, !mcsema_real_eip !10
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %5, i64 144)
  %73 = extractvalue { i64, i1 } %uadd, 0
  %74 = xor i64 %73, %5, !mcsema_real_eip !5
  %75 = and i64 %74, 16
  %76 = icmp eq i64 %75, 0
  %77 = icmp slt i64 %73, 0
  %78 = icmp eq i64 %73, 0, !mcsema_real_eip !5
  %79 = xor i64 %5, -9223372036854775808, !mcsema_real_eip !5
  %80 = and i64 %74, %79, !mcsema_real_eip !5
  %81 = icmp slt i64 %80, 0
  %82 = trunc i64 %73 to i8, !mcsema_real_eip !5
  %83 = tail call i8 @llvm.ctpop.i8(i8 %82), !mcsema_real_eip !5
  %84 = and i8 %83, 1
  %85 = icmp eq i8 %84, 0
  %86 = extractvalue { i64, i1 } %uadd, 1
  %87 = inttoptr i64 %73 to i64*, !mcsema_real_eip !6
  %88 = load i64* %87, align 8, !mcsema_real_eip !6
  %89 = add i64 %73, 16, !mcsema_real_eip !7
  store i64 0, i64* %RAX, align 8, !mcsema_real_eip !7
  %90 = bitcast i64* %RBX to <2 x i64>*
  store <2 x i64> %2, <2 x i64>* %90, align 8
  store i64 %3, i64* %RDX, align 8, !mcsema_real_eip !7
  store i64 %4, i64* %RSI, align 8, !mcsema_real_eip !7
  store i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 197), i64* %RDI, align 8, !mcsema_real_eip !7
  store i64 %89, i64* %RSP, align 8, !mcsema_real_eip !7
  store i64 %88, i64* %RBP, align 8, !mcsema_real_eip !7
  %91 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> %8, <2 x i64>* %91, align 8
  %92 = bitcast i64* %R10 to <2 x i64>*
  store <2 x i64> %10, <2 x i64>* %92, align 8
  %93 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> %12, <2 x i64>* %93, align 8
  %94 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> %14, <2 x i64>* %94, align 8
  store i64 %15, i64* %RIP, align 8, !mcsema_real_eip !7
  store i1 %86, i1* %CF, align 1, !mcsema_real_eip !7
  store i1 %85, i1* %PF, align 1, !mcsema_real_eip !7
  store i1 %76, i1* %AF, align 1, !mcsema_real_eip !7
  store i1 %78, i1* %ZF, align 1, !mcsema_real_eip !7
  store i1 %77, i1* %SF, align 1, !mcsema_real_eip !7
  store i1 %81, i1* %OF, align 1, !mcsema_real_eip !7
  store i1 %16, i1* %DF, align 1, !mcsema_real_eip !7
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %19, i32 128, i32 8, i1 false), !mcsema_real_eip !7
  store i1 %20, i1* %FPU_B, align 1, !mcsema_real_eip !7
  store i1 %21, i1* %FPU_C3, align 1, !mcsema_real_eip !7
  store i3 %22, i3* %FPU_TOP, align 1, !mcsema_real_eip !7
  store i1 %23, i1* %FPU_C2, align 1, !mcsema_real_eip !7
  store i1 %24, i1* %FPU_C1, align 1, !mcsema_real_eip !7
  store i1 %25, i1* %FPU_C0, align 1, !mcsema_real_eip !7
  store i1 %26, i1* %FPU_ES, align 1, !mcsema_real_eip !7
  store i1 %27, i1* %FPU_SF, align 1, !mcsema_real_eip !7
  store i1 %28, i1* %FPU_PE, align 1, !mcsema_real_eip !7
  store i1 %29, i1* %FPU_UE, align 1, !mcsema_real_eip !7
  store i1 %30, i1* %FPU_OE, align 1, !mcsema_real_eip !7
  store i1 %31, i1* %FPU_ZE, align 1, !mcsema_real_eip !7
  store i1 %32, i1* %FPU_DE, align 1, !mcsema_real_eip !7
  store i1 %33, i1* %FPU_IE, align 1, !mcsema_real_eip !7
  store i1 %34, i1* %FPU_X, align 1, !mcsema_real_eip !7
  store i2 %35, i2* %FPU_RC, align 1, !mcsema_real_eip !7
  store i2 %36, i2* %FPU_PC, align 1, !mcsema_real_eip !7
  store i1 %37, i1* %FPU_PM, align 1, !mcsema_real_eip !7
  store i1 %38, i1* %FPU_UM, align 1, !mcsema_real_eip !7
  store i1 %39, i1* %FPU_OM, align 1, !mcsema_real_eip !7
  store i1 %40, i1* %FPU_ZM, align 1, !mcsema_real_eip !7
  store i1 %41, i1* %FPU_DM, align 1, !mcsema_real_eip !7
  store i1 %42, i1* %FPU_IM, align 1, !mcsema_real_eip !7
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !7
  store i64 %47, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !7
  store i16 %48, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !7
  store i64 %49, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !7
  store i128 %50, i128* %XMM0, align 1, !mcsema_real_eip !7
  store i128 %51, i128* %XMM1, align 1, !mcsema_real_eip !7
  store i128 %52, i128* %XMM2, align 1, !mcsema_real_eip !7
  store i128 %53, i128* %XMM3, align 1, !mcsema_real_eip !7
  store i128 %54, i128* %XMM4, align 1, !mcsema_real_eip !7
  store i128 %55, i128* %XMM5, align 1, !mcsema_real_eip !7
  store i128 %56, i128* %XMM6, align 1, !mcsema_real_eip !7
  store i128 %57, i128* %XMM7, align 1, !mcsema_real_eip !7
  store i128 %58, i128* %XMM8, align 1, !mcsema_real_eip !7
  store i128 %59, i128* %XMM9, align 1, !mcsema_real_eip !7
  store i128 %60, i128* %XMM10, align 1, !mcsema_real_eip !7
  store i128 %61, i128* %XMM11, align 1, !mcsema_real_eip !7
  store i128 %62, i128* %XMM12, align 1, !mcsema_real_eip !7
  store i128 %63, i128* %XMM13, align 1, !mcsema_real_eip !7
  store i128 %64, i128* %XMM14, align 1, !mcsema_real_eip !7
  store i128 %65, i128* %XMM15, align 1, !mcsema_real_eip !7
  %95 = bitcast i64* %STACK_BASE to <2 x i64>*
  store <2 x i64> %67, <2 x i64>* %95, align 1
  ret void, !mcsema_real_eip !7
}

define internal x86_64_sysvcc void @sub_1b3(%struct.regs*) {
entry:
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !11
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !11
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !11
  %1 = bitcast i64* %RBX to <2 x i64>*
  %2 = load <2 x i64>* %1, align 8
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !11
  %3 = load i64* %RDX, align 8, !mcsema_real_eip !11
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !11
  %4 = load i64* %RSI, align 8, !mcsema_real_eip !11
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !11
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !11
  %5 = load i64* %RSP, align 8, !mcsema_real_eip !11
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !11
  %6 = load i64* %RBP, align 8, !mcsema_real_eip !11
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !11
  %7 = bitcast i64* %R8 to <2 x i64>*
  %8 = load <2 x i64>* %7, align 8
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !11
  %9 = bitcast i64* %R10 to <2 x i64>*
  %10 = load <2 x i64>* %9, align 8
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !11
  %11 = bitcast i64* %R12 to <2 x i64>*
  %12 = load <2 x i64>* %11, align 8
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !11
  %13 = bitcast i64* %R14 to <2 x i64>*
  %14 = load <2 x i64>* %13, align 8
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !11
  %15 = load i64* %RIP, align 8, !mcsema_real_eip !11
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !11
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !11
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !11
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !11
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !11
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !11
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !11
  %16 = load i1* %DF, align 1, !mcsema_real_eip !11
  %17 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !11
  %18 = bitcast x86_fp80* %17 to i8*, !mcsema_real_eip !11
  %19 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !11
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %18, i32 128, i32 4, i1 false), !mcsema_real_eip !11
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !11
  %20 = load i1* %FPU_B, align 1, !mcsema_real_eip !11
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !11
  %21 = load i1* %FPU_C3, align 1, !mcsema_real_eip !11
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !11
  %22 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !11
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !11
  %23 = load i1* %FPU_C2, align 1, !mcsema_real_eip !11
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !11
  %24 = load i1* %FPU_C1, align 1, !mcsema_real_eip !11
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !11
  %25 = load i1* %FPU_C0, align 1, !mcsema_real_eip !11
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !11
  %26 = load i1* %FPU_ES, align 1, !mcsema_real_eip !11
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !11
  %27 = load i1* %FPU_SF, align 1, !mcsema_real_eip !11
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !11
  %28 = load i1* %FPU_PE, align 1, !mcsema_real_eip !11
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !11
  %29 = load i1* %FPU_UE, align 1, !mcsema_real_eip !11
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !11
  %30 = load i1* %FPU_OE, align 1, !mcsema_real_eip !11
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !11
  %31 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !11
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !11
  %32 = load i1* %FPU_DE, align 1, !mcsema_real_eip !11
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !11
  %33 = load i1* %FPU_IE, align 1, !mcsema_real_eip !11
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !11
  %34 = load i1* %FPU_X, align 1, !mcsema_real_eip !11
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !11
  %35 = load i2* %FPU_RC, align 1, !mcsema_real_eip !11
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !11
  %36 = load i2* %FPU_PC, align 1, !mcsema_real_eip !11
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !11
  %37 = load i1* %FPU_PM, align 1, !mcsema_real_eip !11
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !11
  %38 = load i1* %FPU_UM, align 1, !mcsema_real_eip !11
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !11
  %39 = load i1* %FPU_OM, align 1, !mcsema_real_eip !11
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !11
  %40 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !11
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !11
  %41 = load i1* %FPU_DM, align 1, !mcsema_real_eip !11
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !11
  %42 = load i1* %FPU_IM, align 1, !mcsema_real_eip !11
  %43 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !11
  %44 = bitcast i8* %43 to i64*
  %45 = load i64* %44, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !11
  %46 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !11
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !11
  %47 = load i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !11
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !11
  %48 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !11
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !11
  %49 = load i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !11
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !11
  %50 = load i128* %XMM0, align 1, !mcsema_real_eip !11
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !11
  %51 = load i128* %XMM1, align 1, !mcsema_real_eip !11
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !11
  %52 = load i128* %XMM2, align 1, !mcsema_real_eip !11
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !11
  %53 = load i128* %XMM3, align 1, !mcsema_real_eip !11
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !11
  %54 = load i128* %XMM4, align 1, !mcsema_real_eip !11
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !11
  %55 = load i128* %XMM5, align 1, !mcsema_real_eip !11
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !11
  %56 = load i128* %XMM6, align 1, !mcsema_real_eip !11
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !11
  %57 = load i128* %XMM7, align 1, !mcsema_real_eip !11
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !11
  %58 = load i128* %XMM8, align 1, !mcsema_real_eip !11
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !11
  %59 = load i128* %XMM9, align 1, !mcsema_real_eip !11
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !11
  %60 = load i128* %XMM10, align 1, !mcsema_real_eip !11
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !11
  %61 = load i128* %XMM11, align 1, !mcsema_real_eip !11
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !11
  %62 = load i128* %XMM12, align 1, !mcsema_real_eip !11
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !11
  %63 = load i128* %XMM13, align 1, !mcsema_real_eip !11
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !11
  %64 = load i128* %XMM14, align 1, !mcsema_real_eip !11
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !11
  %65 = load i128* %XMM15, align 1, !mcsema_real_eip !11
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !11
  %66 = bitcast i64* %STACK_BASE to <2 x i64>*
  %67 = load <2 x i64>* %66, align 8
  %68 = extractelement <2 x i64> %2, i32 1
  %69 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 225), i64 %4, i64 %3, i64 %68), !mcsema_real_eip !12
  %70 = add i64 %6, -100, !mcsema_real_eip !13
  %71 = trunc i64 %69 to i32, !mcsema_real_eip !13
  %72 = inttoptr i64 %70 to i32*
  store i32 %71, i32* %72, align 4, !mcsema_real_eip !13
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %5, i64 144)
  %73 = extractvalue { i64, i1 } %uadd, 0
  %74 = xor i64 %73, %5, !mcsema_real_eip !5
  %75 = and i64 %74, 16
  %76 = icmp eq i64 %75, 0
  %77 = icmp slt i64 %73, 0
  %78 = icmp eq i64 %73, 0, !mcsema_real_eip !5
  %79 = xor i64 %5, -9223372036854775808, !mcsema_real_eip !5
  %80 = and i64 %74, %79, !mcsema_real_eip !5
  %81 = icmp slt i64 %80, 0
  %82 = trunc i64 %73 to i8, !mcsema_real_eip !5
  %83 = tail call i8 @llvm.ctpop.i8(i8 %82), !mcsema_real_eip !5
  %84 = and i8 %83, 1
  %85 = icmp eq i8 %84, 0
  %86 = extractvalue { i64, i1 } %uadd, 1
  %87 = inttoptr i64 %73 to i64*, !mcsema_real_eip !6
  %88 = load i64* %87, align 8, !mcsema_real_eip !6
  %89 = add i64 %73, 16, !mcsema_real_eip !7
  store i64 0, i64* %RAX, align 8, !mcsema_real_eip !7
  %90 = bitcast i64* %RBX to <2 x i64>*
  store <2 x i64> %2, <2 x i64>* %90, align 8
  store i64 %3, i64* %RDX, align 8, !mcsema_real_eip !7
  store i64 %4, i64* %RSI, align 8, !mcsema_real_eip !7
  store i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 225), i64* %RDI, align 8, !mcsema_real_eip !7
  store i64 %89, i64* %RSP, align 8, !mcsema_real_eip !7
  store i64 %88, i64* %RBP, align 8, !mcsema_real_eip !7
  %91 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> %8, <2 x i64>* %91, align 8
  %92 = bitcast i64* %R10 to <2 x i64>*
  store <2 x i64> %10, <2 x i64>* %92, align 8
  %93 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> %12, <2 x i64>* %93, align 8
  %94 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> %14, <2 x i64>* %94, align 8
  store i64 %15, i64* %RIP, align 8, !mcsema_real_eip !7
  store i1 %86, i1* %CF, align 1, !mcsema_real_eip !7
  store i1 %85, i1* %PF, align 1, !mcsema_real_eip !7
  store i1 %76, i1* %AF, align 1, !mcsema_real_eip !7
  store i1 %78, i1* %ZF, align 1, !mcsema_real_eip !7
  store i1 %77, i1* %SF, align 1, !mcsema_real_eip !7
  store i1 %81, i1* %OF, align 1, !mcsema_real_eip !7
  store i1 %16, i1* %DF, align 1, !mcsema_real_eip !7
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %19, i32 128, i32 8, i1 false), !mcsema_real_eip !7
  store i1 %20, i1* %FPU_B, align 1, !mcsema_real_eip !7
  store i1 %21, i1* %FPU_C3, align 1, !mcsema_real_eip !7
  store i3 %22, i3* %FPU_TOP, align 1, !mcsema_real_eip !7
  store i1 %23, i1* %FPU_C2, align 1, !mcsema_real_eip !7
  store i1 %24, i1* %FPU_C1, align 1, !mcsema_real_eip !7
  store i1 %25, i1* %FPU_C0, align 1, !mcsema_real_eip !7
  store i1 %26, i1* %FPU_ES, align 1, !mcsema_real_eip !7
  store i1 %27, i1* %FPU_SF, align 1, !mcsema_real_eip !7
  store i1 %28, i1* %FPU_PE, align 1, !mcsema_real_eip !7
  store i1 %29, i1* %FPU_UE, align 1, !mcsema_real_eip !7
  store i1 %30, i1* %FPU_OE, align 1, !mcsema_real_eip !7
  store i1 %31, i1* %FPU_ZE, align 1, !mcsema_real_eip !7
  store i1 %32, i1* %FPU_DE, align 1, !mcsema_real_eip !7
  store i1 %33, i1* %FPU_IE, align 1, !mcsema_real_eip !7
  store i1 %34, i1* %FPU_X, align 1, !mcsema_real_eip !7
  store i2 %35, i2* %FPU_RC, align 1, !mcsema_real_eip !7
  store i2 %36, i2* %FPU_PC, align 1, !mcsema_real_eip !7
  store i1 %37, i1* %FPU_PM, align 1, !mcsema_real_eip !7
  store i1 %38, i1* %FPU_UM, align 1, !mcsema_real_eip !7
  store i1 %39, i1* %FPU_OM, align 1, !mcsema_real_eip !7
  store i1 %40, i1* %FPU_ZM, align 1, !mcsema_real_eip !7
  store i1 %41, i1* %FPU_DM, align 1, !mcsema_real_eip !7
  store i1 %42, i1* %FPU_IM, align 1, !mcsema_real_eip !7
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !7
  store i64 %47, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !7
  store i16 %48, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !7
  store i64 %49, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !7
  store i128 %50, i128* %XMM0, align 1, !mcsema_real_eip !7
  store i128 %51, i128* %XMM1, align 1, !mcsema_real_eip !7
  store i128 %52, i128* %XMM2, align 1, !mcsema_real_eip !7
  store i128 %53, i128* %XMM3, align 1, !mcsema_real_eip !7
  store i128 %54, i128* %XMM4, align 1, !mcsema_real_eip !7
  store i128 %55, i128* %XMM5, align 1, !mcsema_real_eip !7
  store i128 %56, i128* %XMM6, align 1, !mcsema_real_eip !7
  store i128 %57, i128* %XMM7, align 1, !mcsema_real_eip !7
  store i128 %58, i128* %XMM8, align 1, !mcsema_real_eip !7
  store i128 %59, i128* %XMM9, align 1, !mcsema_real_eip !7
  store i128 %60, i128* %XMM10, align 1, !mcsema_real_eip !7
  store i128 %61, i128* %XMM11, align 1, !mcsema_real_eip !7
  store i128 %62, i128* %XMM12, align 1, !mcsema_real_eip !7
  store i128 %63, i128* %XMM13, align 1, !mcsema_real_eip !7
  store i128 %64, i128* %XMM14, align 1, !mcsema_real_eip !7
  store i128 %65, i128* %XMM15, align 1, !mcsema_real_eip !7
  %95 = bitcast i64* %STACK_BASE to <2 x i64>*
  store <2 x i64> %67, <2 x i64>* %95, align 1
  ret void, !mcsema_real_eip !7
}

define internal x86_64_sysvcc void @sub_1cc(%struct.regs*) {
entry:
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !14
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !14
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !14
  %1 = bitcast i64* %RBX to <2 x i64>*
  %2 = load <2 x i64>* %1, align 8
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !14
  %3 = load i64* %RDX, align 8, !mcsema_real_eip !14
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !14
  %4 = load i64* %RSI, align 8, !mcsema_real_eip !14
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !14
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !14
  %5 = load i64* %RSP, align 8, !mcsema_real_eip !14
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !14
  %6 = load i64* %RBP, align 8, !mcsema_real_eip !14
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !14
  %7 = bitcast i64* %R8 to <2 x i64>*
  %8 = load <2 x i64>* %7, align 8
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !14
  %9 = bitcast i64* %R10 to <2 x i64>*
  %10 = load <2 x i64>* %9, align 8
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !14
  %11 = bitcast i64* %R12 to <2 x i64>*
  %12 = load <2 x i64>* %11, align 8
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !14
  %13 = bitcast i64* %R14 to <2 x i64>*
  %14 = load <2 x i64>* %13, align 8
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !14
  %15 = load i64* %RIP, align 8, !mcsema_real_eip !14
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !14
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !14
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !14
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !14
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !14
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !14
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !14
  %16 = load i1* %DF, align 1, !mcsema_real_eip !14
  %17 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !14
  %18 = bitcast x86_fp80* %17 to i8*, !mcsema_real_eip !14
  %19 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !14
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %18, i32 128, i32 4, i1 false), !mcsema_real_eip !14
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !14
  %20 = load i1* %FPU_B, align 1, !mcsema_real_eip !14
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !14
  %21 = load i1* %FPU_C3, align 1, !mcsema_real_eip !14
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !14
  %22 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !14
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !14
  %23 = load i1* %FPU_C2, align 1, !mcsema_real_eip !14
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !14
  %24 = load i1* %FPU_C1, align 1, !mcsema_real_eip !14
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !14
  %25 = load i1* %FPU_C0, align 1, !mcsema_real_eip !14
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !14
  %26 = load i1* %FPU_ES, align 1, !mcsema_real_eip !14
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !14
  %27 = load i1* %FPU_SF, align 1, !mcsema_real_eip !14
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !14
  %28 = load i1* %FPU_PE, align 1, !mcsema_real_eip !14
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !14
  %29 = load i1* %FPU_UE, align 1, !mcsema_real_eip !14
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !14
  %30 = load i1* %FPU_OE, align 1, !mcsema_real_eip !14
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !14
  %31 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !14
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !14
  %32 = load i1* %FPU_DE, align 1, !mcsema_real_eip !14
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !14
  %33 = load i1* %FPU_IE, align 1, !mcsema_real_eip !14
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !14
  %34 = load i1* %FPU_X, align 1, !mcsema_real_eip !14
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !14
  %35 = load i2* %FPU_RC, align 1, !mcsema_real_eip !14
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !14
  %36 = load i2* %FPU_PC, align 1, !mcsema_real_eip !14
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !14
  %37 = load i1* %FPU_PM, align 1, !mcsema_real_eip !14
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !14
  %38 = load i1* %FPU_UM, align 1, !mcsema_real_eip !14
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !14
  %39 = load i1* %FPU_OM, align 1, !mcsema_real_eip !14
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !14
  %40 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !14
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !14
  %41 = load i1* %FPU_DM, align 1, !mcsema_real_eip !14
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !14
  %42 = load i1* %FPU_IM, align 1, !mcsema_real_eip !14
  %43 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !14
  %44 = bitcast i8* %43 to i64*
  %45 = load i64* %44, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !14
  %46 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !14
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !14
  %47 = load i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !14
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !14
  %48 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !14
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !14
  %49 = load i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !14
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !14
  %50 = load i128* %XMM0, align 1, !mcsema_real_eip !14
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !14
  %51 = load i128* %XMM1, align 1, !mcsema_real_eip !14
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !14
  %52 = load i128* %XMM2, align 1, !mcsema_real_eip !14
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !14
  %53 = load i128* %XMM3, align 1, !mcsema_real_eip !14
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !14
  %54 = load i128* %XMM4, align 1, !mcsema_real_eip !14
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !14
  %55 = load i128* %XMM5, align 1, !mcsema_real_eip !14
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !14
  %56 = load i128* %XMM6, align 1, !mcsema_real_eip !14
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !14
  %57 = load i128* %XMM7, align 1, !mcsema_real_eip !14
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !14
  %58 = load i128* %XMM8, align 1, !mcsema_real_eip !14
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !14
  %59 = load i128* %XMM9, align 1, !mcsema_real_eip !14
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !14
  %60 = load i128* %XMM10, align 1, !mcsema_real_eip !14
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !14
  %61 = load i128* %XMM11, align 1, !mcsema_real_eip !14
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !14
  %62 = load i128* %XMM12, align 1, !mcsema_real_eip !14
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !14
  %63 = load i128* %XMM13, align 1, !mcsema_real_eip !14
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !14
  %64 = load i128* %XMM14, align 1, !mcsema_real_eip !14
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !14
  %65 = load i128* %XMM15, align 1, !mcsema_real_eip !14
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !14
  %66 = bitcast i64* %STACK_BASE to <2 x i64>*
  %67 = load <2 x i64>* %66, align 8
  %68 = extractelement <2 x i64> %2, i32 1
  %69 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 253), i64 %4, i64 %3, i64 %68), !mcsema_real_eip !15
  %70 = add i64 %6, -104, !mcsema_real_eip !16
  %71 = trunc i64 %69 to i32, !mcsema_real_eip !16
  %72 = inttoptr i64 %70 to i32*
  store i32 %71, i32* %72, align 4, !mcsema_real_eip !16
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %5, i64 144)
  %73 = extractvalue { i64, i1 } %uadd, 0
  %74 = xor i64 %73, %5, !mcsema_real_eip !5
  %75 = and i64 %74, 16
  %76 = icmp eq i64 %75, 0
  %77 = icmp slt i64 %73, 0
  %78 = icmp eq i64 %73, 0, !mcsema_real_eip !5
  %79 = xor i64 %5, -9223372036854775808, !mcsema_real_eip !5
  %80 = and i64 %74, %79, !mcsema_real_eip !5
  %81 = icmp slt i64 %80, 0
  %82 = trunc i64 %73 to i8, !mcsema_real_eip !5
  %83 = tail call i8 @llvm.ctpop.i8(i8 %82), !mcsema_real_eip !5
  %84 = and i8 %83, 1
  %85 = icmp eq i8 %84, 0
  %86 = extractvalue { i64, i1 } %uadd, 1
  %87 = inttoptr i64 %73 to i64*, !mcsema_real_eip !6
  %88 = load i64* %87, align 8, !mcsema_real_eip !6
  %89 = add i64 %73, 16, !mcsema_real_eip !7
  store i64 0, i64* %RAX, align 8, !mcsema_real_eip !7
  %90 = bitcast i64* %RBX to <2 x i64>*
  store <2 x i64> %2, <2 x i64>* %90, align 8
  store i64 %3, i64* %RDX, align 8, !mcsema_real_eip !7
  store i64 %4, i64* %RSI, align 8, !mcsema_real_eip !7
  store i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 253), i64* %RDI, align 8, !mcsema_real_eip !7
  store i64 %89, i64* %RSP, align 8, !mcsema_real_eip !7
  store i64 %88, i64* %RBP, align 8, !mcsema_real_eip !7
  %91 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> %8, <2 x i64>* %91, align 8
  %92 = bitcast i64* %R10 to <2 x i64>*
  store <2 x i64> %10, <2 x i64>* %92, align 8
  %93 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> %12, <2 x i64>* %93, align 8
  %94 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> %14, <2 x i64>* %94, align 8
  store i64 %15, i64* %RIP, align 8, !mcsema_real_eip !7
  store i1 %86, i1* %CF, align 1, !mcsema_real_eip !7
  store i1 %85, i1* %PF, align 1, !mcsema_real_eip !7
  store i1 %76, i1* %AF, align 1, !mcsema_real_eip !7
  store i1 %78, i1* %ZF, align 1, !mcsema_real_eip !7
  store i1 %77, i1* %SF, align 1, !mcsema_real_eip !7
  store i1 %81, i1* %OF, align 1, !mcsema_real_eip !7
  store i1 %16, i1* %DF, align 1, !mcsema_real_eip !7
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %19, i32 128, i32 8, i1 false), !mcsema_real_eip !7
  store i1 %20, i1* %FPU_B, align 1, !mcsema_real_eip !7
  store i1 %21, i1* %FPU_C3, align 1, !mcsema_real_eip !7
  store i3 %22, i3* %FPU_TOP, align 1, !mcsema_real_eip !7
  store i1 %23, i1* %FPU_C2, align 1, !mcsema_real_eip !7
  store i1 %24, i1* %FPU_C1, align 1, !mcsema_real_eip !7
  store i1 %25, i1* %FPU_C0, align 1, !mcsema_real_eip !7
  store i1 %26, i1* %FPU_ES, align 1, !mcsema_real_eip !7
  store i1 %27, i1* %FPU_SF, align 1, !mcsema_real_eip !7
  store i1 %28, i1* %FPU_PE, align 1, !mcsema_real_eip !7
  store i1 %29, i1* %FPU_UE, align 1, !mcsema_real_eip !7
  store i1 %30, i1* %FPU_OE, align 1, !mcsema_real_eip !7
  store i1 %31, i1* %FPU_ZE, align 1, !mcsema_real_eip !7
  store i1 %32, i1* %FPU_DE, align 1, !mcsema_real_eip !7
  store i1 %33, i1* %FPU_IE, align 1, !mcsema_real_eip !7
  store i1 %34, i1* %FPU_X, align 1, !mcsema_real_eip !7
  store i2 %35, i2* %FPU_RC, align 1, !mcsema_real_eip !7
  store i2 %36, i2* %FPU_PC, align 1, !mcsema_real_eip !7
  store i1 %37, i1* %FPU_PM, align 1, !mcsema_real_eip !7
  store i1 %38, i1* %FPU_UM, align 1, !mcsema_real_eip !7
  store i1 %39, i1* %FPU_OM, align 1, !mcsema_real_eip !7
  store i1 %40, i1* %FPU_ZM, align 1, !mcsema_real_eip !7
  store i1 %41, i1* %FPU_DM, align 1, !mcsema_real_eip !7
  store i1 %42, i1* %FPU_IM, align 1, !mcsema_real_eip !7
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !7
  store i64 %47, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !7
  store i16 %48, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !7
  store i64 %49, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !7
  store i128 %50, i128* %XMM0, align 1, !mcsema_real_eip !7
  store i128 %51, i128* %XMM1, align 1, !mcsema_real_eip !7
  store i128 %52, i128* %XMM2, align 1, !mcsema_real_eip !7
  store i128 %53, i128* %XMM3, align 1, !mcsema_real_eip !7
  store i128 %54, i128* %XMM4, align 1, !mcsema_real_eip !7
  store i128 %55, i128* %XMM5, align 1, !mcsema_real_eip !7
  store i128 %56, i128* %XMM6, align 1, !mcsema_real_eip !7
  store i128 %57, i128* %XMM7, align 1, !mcsema_real_eip !7
  store i128 %58, i128* %XMM8, align 1, !mcsema_real_eip !7
  store i128 %59, i128* %XMM9, align 1, !mcsema_real_eip !7
  store i128 %60, i128* %XMM10, align 1, !mcsema_real_eip !7
  store i128 %61, i128* %XMM11, align 1, !mcsema_real_eip !7
  store i128 %62, i128* %XMM12, align 1, !mcsema_real_eip !7
  store i128 %63, i128* %XMM13, align 1, !mcsema_real_eip !7
  store i128 %64, i128* %XMM14, align 1, !mcsema_real_eip !7
  store i128 %65, i128* %XMM15, align 1, !mcsema_real_eip !7
  %95 = bitcast i64* %STACK_BASE to <2 x i64>*
  store <2 x i64> %67, <2 x i64>* %95, align 1
  ret void, !mcsema_real_eip !7
}

define internal x86_64_sysvcc void @sub_1e5(%struct.regs*) {
entry:
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !17
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !17
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !17
  %1 = bitcast i64* %RBX to <2 x i64>*
  %2 = load <2 x i64>* %1, align 8
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !17
  %3 = load i64* %RDX, align 8, !mcsema_real_eip !17
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !17
  %4 = load i64* %RSI, align 8, !mcsema_real_eip !17
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !17
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !17
  %5 = load i64* %RSP, align 8, !mcsema_real_eip !17
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !17
  %6 = load i64* %RBP, align 8, !mcsema_real_eip !17
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !17
  %7 = bitcast i64* %R8 to <2 x i64>*
  %8 = load <2 x i64>* %7, align 8
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !17
  %9 = bitcast i64* %R10 to <2 x i64>*
  %10 = load <2 x i64>* %9, align 8
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !17
  %11 = bitcast i64* %R12 to <2 x i64>*
  %12 = load <2 x i64>* %11, align 8
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !17
  %13 = bitcast i64* %R14 to <2 x i64>*
  %14 = load <2 x i64>* %13, align 8
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !17
  %15 = load i64* %RIP, align 8, !mcsema_real_eip !17
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !17
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !17
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !17
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !17
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !17
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !17
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !17
  %16 = load i1* %DF, align 1, !mcsema_real_eip !17
  %17 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !17
  %18 = bitcast x86_fp80* %17 to i8*, !mcsema_real_eip !17
  %19 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !17
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %18, i32 128, i32 4, i1 false), !mcsema_real_eip !17
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !17
  %20 = load i1* %FPU_B, align 1, !mcsema_real_eip !17
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !17
  %21 = load i1* %FPU_C3, align 1, !mcsema_real_eip !17
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !17
  %22 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !17
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !17
  %23 = load i1* %FPU_C2, align 1, !mcsema_real_eip !17
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !17
  %24 = load i1* %FPU_C1, align 1, !mcsema_real_eip !17
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !17
  %25 = load i1* %FPU_C0, align 1, !mcsema_real_eip !17
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !17
  %26 = load i1* %FPU_ES, align 1, !mcsema_real_eip !17
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !17
  %27 = load i1* %FPU_SF, align 1, !mcsema_real_eip !17
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !17
  %28 = load i1* %FPU_PE, align 1, !mcsema_real_eip !17
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !17
  %29 = load i1* %FPU_UE, align 1, !mcsema_real_eip !17
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !17
  %30 = load i1* %FPU_OE, align 1, !mcsema_real_eip !17
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !17
  %31 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !17
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !17
  %32 = load i1* %FPU_DE, align 1, !mcsema_real_eip !17
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !17
  %33 = load i1* %FPU_IE, align 1, !mcsema_real_eip !17
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !17
  %34 = load i1* %FPU_X, align 1, !mcsema_real_eip !17
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !17
  %35 = load i2* %FPU_RC, align 1, !mcsema_real_eip !17
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !17
  %36 = load i2* %FPU_PC, align 1, !mcsema_real_eip !17
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !17
  %37 = load i1* %FPU_PM, align 1, !mcsema_real_eip !17
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !17
  %38 = load i1* %FPU_UM, align 1, !mcsema_real_eip !17
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !17
  %39 = load i1* %FPU_OM, align 1, !mcsema_real_eip !17
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !17
  %40 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !17
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !17
  %41 = load i1* %FPU_DM, align 1, !mcsema_real_eip !17
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !17
  %42 = load i1* %FPU_IM, align 1, !mcsema_real_eip !17
  %43 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !17
  %44 = bitcast i8* %43 to i64*
  %45 = load i64* %44, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !17
  %46 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !17
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !17
  %47 = load i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !17
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !17
  %48 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !17
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !17
  %49 = load i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !17
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !17
  %50 = load i128* %XMM0, align 1, !mcsema_real_eip !17
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !17
  %51 = load i128* %XMM1, align 1, !mcsema_real_eip !17
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !17
  %52 = load i128* %XMM2, align 1, !mcsema_real_eip !17
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !17
  %53 = load i128* %XMM3, align 1, !mcsema_real_eip !17
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !17
  %54 = load i128* %XMM4, align 1, !mcsema_real_eip !17
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !17
  %55 = load i128* %XMM5, align 1, !mcsema_real_eip !17
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !17
  %56 = load i128* %XMM6, align 1, !mcsema_real_eip !17
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !17
  %57 = load i128* %XMM7, align 1, !mcsema_real_eip !17
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !17
  %58 = load i128* %XMM8, align 1, !mcsema_real_eip !17
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !17
  %59 = load i128* %XMM9, align 1, !mcsema_real_eip !17
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !17
  %60 = load i128* %XMM10, align 1, !mcsema_real_eip !17
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !17
  %61 = load i128* %XMM11, align 1, !mcsema_real_eip !17
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !17
  %62 = load i128* %XMM12, align 1, !mcsema_real_eip !17
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !17
  %63 = load i128* %XMM13, align 1, !mcsema_real_eip !17
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !17
  %64 = load i128* %XMM14, align 1, !mcsema_real_eip !17
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !17
  %65 = load i128* %XMM15, align 1, !mcsema_real_eip !17
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !17
  %66 = bitcast i64* %STACK_BASE to <2 x i64>*
  %67 = load <2 x i64>* %66, align 8
  %68 = extractelement <2 x i64> %2, i32 1
  %69 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 281), i64 %4, i64 %3, i64 %68), !mcsema_real_eip !18
  %70 = add i64 %6, -108, !mcsema_real_eip !19
  %71 = trunc i64 %69 to i32, !mcsema_real_eip !19
  %72 = inttoptr i64 %70 to i32*
  store i32 %71, i32* %72, align 4, !mcsema_real_eip !19
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %5, i64 144)
  %73 = extractvalue { i64, i1 } %uadd, 0
  %74 = xor i64 %73, %5, !mcsema_real_eip !5
  %75 = and i64 %74, 16
  %76 = icmp eq i64 %75, 0
  %77 = icmp slt i64 %73, 0
  %78 = icmp eq i64 %73, 0, !mcsema_real_eip !5
  %79 = xor i64 %5, -9223372036854775808, !mcsema_real_eip !5
  %80 = and i64 %74, %79, !mcsema_real_eip !5
  %81 = icmp slt i64 %80, 0
  %82 = trunc i64 %73 to i8, !mcsema_real_eip !5
  %83 = tail call i8 @llvm.ctpop.i8(i8 %82), !mcsema_real_eip !5
  %84 = and i8 %83, 1
  %85 = icmp eq i8 %84, 0
  %86 = extractvalue { i64, i1 } %uadd, 1
  %87 = inttoptr i64 %73 to i64*, !mcsema_real_eip !6
  %88 = load i64* %87, align 8, !mcsema_real_eip !6
  %89 = add i64 %73, 16, !mcsema_real_eip !7
  store i64 0, i64* %RAX, align 8, !mcsema_real_eip !7
  %90 = bitcast i64* %RBX to <2 x i64>*
  store <2 x i64> %2, <2 x i64>* %90, align 8
  store i64 %3, i64* %RDX, align 8, !mcsema_real_eip !7
  store i64 %4, i64* %RSI, align 8, !mcsema_real_eip !7
  store i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 281), i64* %RDI, align 8, !mcsema_real_eip !7
  store i64 %89, i64* %RSP, align 8, !mcsema_real_eip !7
  store i64 %88, i64* %RBP, align 8, !mcsema_real_eip !7
  %91 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> %8, <2 x i64>* %91, align 8
  %92 = bitcast i64* %R10 to <2 x i64>*
  store <2 x i64> %10, <2 x i64>* %92, align 8
  %93 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> %12, <2 x i64>* %93, align 8
  %94 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> %14, <2 x i64>* %94, align 8
  store i64 %15, i64* %RIP, align 8, !mcsema_real_eip !7
  store i1 %86, i1* %CF, align 1, !mcsema_real_eip !7
  store i1 %85, i1* %PF, align 1, !mcsema_real_eip !7
  store i1 %76, i1* %AF, align 1, !mcsema_real_eip !7
  store i1 %78, i1* %ZF, align 1, !mcsema_real_eip !7
  store i1 %77, i1* %SF, align 1, !mcsema_real_eip !7
  store i1 %81, i1* %OF, align 1, !mcsema_real_eip !7
  store i1 %16, i1* %DF, align 1, !mcsema_real_eip !7
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %19, i32 128, i32 8, i1 false), !mcsema_real_eip !7
  store i1 %20, i1* %FPU_B, align 1, !mcsema_real_eip !7
  store i1 %21, i1* %FPU_C3, align 1, !mcsema_real_eip !7
  store i3 %22, i3* %FPU_TOP, align 1, !mcsema_real_eip !7
  store i1 %23, i1* %FPU_C2, align 1, !mcsema_real_eip !7
  store i1 %24, i1* %FPU_C1, align 1, !mcsema_real_eip !7
  store i1 %25, i1* %FPU_C0, align 1, !mcsema_real_eip !7
  store i1 %26, i1* %FPU_ES, align 1, !mcsema_real_eip !7
  store i1 %27, i1* %FPU_SF, align 1, !mcsema_real_eip !7
  store i1 %28, i1* %FPU_PE, align 1, !mcsema_real_eip !7
  store i1 %29, i1* %FPU_UE, align 1, !mcsema_real_eip !7
  store i1 %30, i1* %FPU_OE, align 1, !mcsema_real_eip !7
  store i1 %31, i1* %FPU_ZE, align 1, !mcsema_real_eip !7
  store i1 %32, i1* %FPU_DE, align 1, !mcsema_real_eip !7
  store i1 %33, i1* %FPU_IE, align 1, !mcsema_real_eip !7
  store i1 %34, i1* %FPU_X, align 1, !mcsema_real_eip !7
  store i2 %35, i2* %FPU_RC, align 1, !mcsema_real_eip !7
  store i2 %36, i2* %FPU_PC, align 1, !mcsema_real_eip !7
  store i1 %37, i1* %FPU_PM, align 1, !mcsema_real_eip !7
  store i1 %38, i1* %FPU_UM, align 1, !mcsema_real_eip !7
  store i1 %39, i1* %FPU_OM, align 1, !mcsema_real_eip !7
  store i1 %40, i1* %FPU_ZM, align 1, !mcsema_real_eip !7
  store i1 %41, i1* %FPU_DM, align 1, !mcsema_real_eip !7
  store i1 %42, i1* %FPU_IM, align 1, !mcsema_real_eip !7
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !7
  store i64 %47, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !7
  store i16 %48, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !7
  store i64 %49, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !7
  store i128 %50, i128* %XMM0, align 1, !mcsema_real_eip !7
  store i128 %51, i128* %XMM1, align 1, !mcsema_real_eip !7
  store i128 %52, i128* %XMM2, align 1, !mcsema_real_eip !7
  store i128 %53, i128* %XMM3, align 1, !mcsema_real_eip !7
  store i128 %54, i128* %XMM4, align 1, !mcsema_real_eip !7
  store i128 %55, i128* %XMM5, align 1, !mcsema_real_eip !7
  store i128 %56, i128* %XMM6, align 1, !mcsema_real_eip !7
  store i128 %57, i128* %XMM7, align 1, !mcsema_real_eip !7
  store i128 %58, i128* %XMM8, align 1, !mcsema_real_eip !7
  store i128 %59, i128* %XMM9, align 1, !mcsema_real_eip !7
  store i128 %60, i128* %XMM10, align 1, !mcsema_real_eip !7
  store i128 %61, i128* %XMM11, align 1, !mcsema_real_eip !7
  store i128 %62, i128* %XMM12, align 1, !mcsema_real_eip !7
  store i128 %63, i128* %XMM13, align 1, !mcsema_real_eip !7
  store i128 %64, i128* %XMM14, align 1, !mcsema_real_eip !7
  store i128 %65, i128* %XMM15, align 1, !mcsema_real_eip !7
  %95 = bitcast i64* %STACK_BASE to <2 x i64>*
  store <2 x i64> %67, <2 x i64>* %95, align 1
  ret void, !mcsema_real_eip !7
}

define internal x86_64_sysvcc void @sub_27b(%struct.regs*) {
entry:
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !20
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !20
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !20
  %1 = bitcast i64* %RBX to <2 x i64>*
  %2 = load <2 x i64>* %1, align 8
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !20
  %3 = load i64* %RDX, align 8, !mcsema_real_eip !20
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !20
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !20
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !20
  %4 = load i64* %RSP, align 8, !mcsema_real_eip !20
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !20
  %5 = load i64* %RBP, align 8, !mcsema_real_eip !20
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !20
  %6 = bitcast i64* %R8 to <2 x i64>*
  %7 = load <2 x i64>* %6, align 8
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !20
  %8 = bitcast i64* %R10 to <2 x i64>*
  %9 = load <2 x i64>* %8, align 8
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !20
  %10 = bitcast i64* %R12 to <2 x i64>*
  %11 = load <2 x i64>* %10, align 8
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !20
  %12 = bitcast i64* %R14 to <2 x i64>*
  %13 = load <2 x i64>* %12, align 8
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !20
  %14 = load i64* %RIP, align 8, !mcsema_real_eip !20
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !20
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !20
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !20
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !20
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !20
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !20
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !20
  %15 = load i1* %DF, align 1, !mcsema_real_eip !20
  %16 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !20
  %17 = bitcast x86_fp80* %16 to i8*, !mcsema_real_eip !20
  %18 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !20
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %17, i32 128, i32 4, i1 false), !mcsema_real_eip !20
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !20
  %19 = load i1* %FPU_B, align 1, !mcsema_real_eip !20
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !20
  %20 = load i1* %FPU_C3, align 1, !mcsema_real_eip !20
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !20
  %21 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !20
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !20
  %22 = load i1* %FPU_C2, align 1, !mcsema_real_eip !20
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !20
  %23 = load i1* %FPU_C1, align 1, !mcsema_real_eip !20
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !20
  %24 = load i1* %FPU_C0, align 1, !mcsema_real_eip !20
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !20
  %25 = load i1* %FPU_ES, align 1, !mcsema_real_eip !20
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !20
  %26 = load i1* %FPU_SF, align 1, !mcsema_real_eip !20
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !20
  %27 = load i1* %FPU_PE, align 1, !mcsema_real_eip !20
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !20
  %28 = load i1* %FPU_UE, align 1, !mcsema_real_eip !20
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !20
  %29 = load i1* %FPU_OE, align 1, !mcsema_real_eip !20
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !20
  %30 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !20
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !20
  %31 = load i1* %FPU_DE, align 1, !mcsema_real_eip !20
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !20
  %32 = load i1* %FPU_IE, align 1, !mcsema_real_eip !20
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !20
  %33 = load i1* %FPU_X, align 1, !mcsema_real_eip !20
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !20
  %34 = load i2* %FPU_RC, align 1, !mcsema_real_eip !20
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !20
  %35 = load i2* %FPU_PC, align 1, !mcsema_real_eip !20
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !20
  %36 = load i1* %FPU_PM, align 1, !mcsema_real_eip !20
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !20
  %37 = load i1* %FPU_UM, align 1, !mcsema_real_eip !20
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !20
  %38 = load i1* %FPU_OM, align 1, !mcsema_real_eip !20
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !20
  %39 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !20
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !20
  %40 = load i1* %FPU_DM, align 1, !mcsema_real_eip !20
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !20
  %41 = load i1* %FPU_IM, align 1, !mcsema_real_eip !20
  %42 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !20
  %43 = bitcast i8* %42 to i64*
  %44 = load i64* %43, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !20
  %45 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !20
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !20
  %46 = load i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !20
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !20
  %47 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !20
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !20
  %48 = load i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !20
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !20
  %49 = load i128* %XMM0, align 1, !mcsema_real_eip !20
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !20
  %50 = load i128* %XMM1, align 1, !mcsema_real_eip !20
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !20
  %51 = load i128* %XMM2, align 1, !mcsema_real_eip !20
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !20
  %52 = load i128* %XMM3, align 1, !mcsema_real_eip !20
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !20
  %53 = load i128* %XMM4, align 1, !mcsema_real_eip !20
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !20
  %54 = load i128* %XMM5, align 1, !mcsema_real_eip !20
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !20
  %55 = load i128* %XMM6, align 1, !mcsema_real_eip !20
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !20
  %56 = load i128* %XMM7, align 1, !mcsema_real_eip !20
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !20
  %57 = load i128* %XMM8, align 1, !mcsema_real_eip !20
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !20
  %58 = load i128* %XMM9, align 1, !mcsema_real_eip !20
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !20
  %59 = load i128* %XMM10, align 1, !mcsema_real_eip !20
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !20
  %60 = load i128* %XMM11, align 1, !mcsema_real_eip !20
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !20
  %61 = load i128* %XMM12, align 1, !mcsema_real_eip !20
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !20
  %62 = load i128* %XMM13, align 1, !mcsema_real_eip !20
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !20
  %63 = load i128* %XMM14, align 1, !mcsema_real_eip !20
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !20
  %64 = load i128* %XMM15, align 1, !mcsema_real_eip !20
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !20
  %65 = bitcast i64* %STACK_BASE to <2 x i64>*
  %66 = load <2 x i64>* %65, align 8
  %67 = add i64 %5, -4, !mcsema_real_eip !21
  %68 = inttoptr i64 %67 to i32*
  %69 = load i32* %68, align 4, !mcsema_real_eip !21
  %70 = zext i32 %69 to i64, !mcsema_real_eip !21
  %71 = extractelement <2 x i64> %2, i32 1
  %72 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 449), i64 %70, i64 %3, i64 %71), !mcsema_real_eip !22
  %73 = add i64 %5, -132, !mcsema_real_eip !23
  %74 = trunc i64 %72 to i32, !mcsema_real_eip !23
  %75 = inttoptr i64 %73 to i32*
  store i32 %74, i32* %75, align 4, !mcsema_real_eip !23
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 144)
  %76 = extractvalue { i64, i1 } %uadd, 0
  %77 = xor i64 %76, %4, !mcsema_real_eip !5
  %78 = and i64 %77, 16
  %79 = icmp eq i64 %78, 0
  %80 = icmp slt i64 %76, 0
  %81 = icmp eq i64 %76, 0, !mcsema_real_eip !5
  %82 = xor i64 %4, -9223372036854775808, !mcsema_real_eip !5
  %83 = and i64 %77, %82, !mcsema_real_eip !5
  %84 = icmp slt i64 %83, 0
  %85 = trunc i64 %76 to i8, !mcsema_real_eip !5
  %86 = tail call i8 @llvm.ctpop.i8(i8 %85), !mcsema_real_eip !5
  %87 = and i8 %86, 1
  %88 = icmp eq i8 %87, 0
  %89 = extractvalue { i64, i1 } %uadd, 1
  %90 = inttoptr i64 %76 to i64*, !mcsema_real_eip !6
  %91 = load i64* %90, align 8, !mcsema_real_eip !6
  %92 = add i64 %76, 16, !mcsema_real_eip !7
  store i64 0, i64* %RAX, align 8, !mcsema_real_eip !7
  %93 = bitcast i64* %RBX to <2 x i64>*
  store <2 x i64> %2, <2 x i64>* %93, align 8
  store i64 %3, i64* %RDX, align 8, !mcsema_real_eip !7
  store i64 %70, i64* %RSI, align 8, !mcsema_real_eip !7
  store i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 449), i64* %RDI, align 8, !mcsema_real_eip !7
  store i64 %92, i64* %RSP, align 8, !mcsema_real_eip !7
  store i64 %91, i64* %RBP, align 8, !mcsema_real_eip !7
  %94 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> %7, <2 x i64>* %94, align 8
  %95 = bitcast i64* %R10 to <2 x i64>*
  store <2 x i64> %9, <2 x i64>* %95, align 8
  %96 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> %11, <2 x i64>* %96, align 8
  %97 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> %13, <2 x i64>* %97, align 8
  store i64 %14, i64* %RIP, align 8, !mcsema_real_eip !7
  store i1 %89, i1* %CF, align 1, !mcsema_real_eip !7
  store i1 %88, i1* %PF, align 1, !mcsema_real_eip !7
  store i1 %79, i1* %AF, align 1, !mcsema_real_eip !7
  store i1 %81, i1* %ZF, align 1, !mcsema_real_eip !7
  store i1 %80, i1* %SF, align 1, !mcsema_real_eip !7
  store i1 %84, i1* %OF, align 1, !mcsema_real_eip !7
  store i1 %15, i1* %DF, align 1, !mcsema_real_eip !7
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* %18, i32 128, i32 8, i1 false), !mcsema_real_eip !7
  store i1 %19, i1* %FPU_B, align 1, !mcsema_real_eip !7
  store i1 %20, i1* %FPU_C3, align 1, !mcsema_real_eip !7
  store i3 %21, i3* %FPU_TOP, align 1, !mcsema_real_eip !7
  store i1 %22, i1* %FPU_C2, align 1, !mcsema_real_eip !7
  store i1 %23, i1* %FPU_C1, align 1, !mcsema_real_eip !7
  store i1 %24, i1* %FPU_C0, align 1, !mcsema_real_eip !7
  store i1 %25, i1* %FPU_ES, align 1, !mcsema_real_eip !7
  store i1 %26, i1* %FPU_SF, align 1, !mcsema_real_eip !7
  store i1 %27, i1* %FPU_PE, align 1, !mcsema_real_eip !7
  store i1 %28, i1* %FPU_UE, align 1, !mcsema_real_eip !7
  store i1 %29, i1* %FPU_OE, align 1, !mcsema_real_eip !7
  store i1 %30, i1* %FPU_ZE, align 1, !mcsema_real_eip !7
  store i1 %31, i1* %FPU_DE, align 1, !mcsema_real_eip !7
  store i1 %32, i1* %FPU_IE, align 1, !mcsema_real_eip !7
  store i1 %33, i1* %FPU_X, align 1, !mcsema_real_eip !7
  store i2 %34, i2* %FPU_RC, align 1, !mcsema_real_eip !7
  store i2 %35, i2* %FPU_PC, align 1, !mcsema_real_eip !7
  store i1 %36, i1* %FPU_PM, align 1, !mcsema_real_eip !7
  store i1 %37, i1* %FPU_UM, align 1, !mcsema_real_eip !7
  store i1 %38, i1* %FPU_OM, align 1, !mcsema_real_eip !7
  store i1 %39, i1* %FPU_ZM, align 1, !mcsema_real_eip !7
  store i1 %40, i1* %FPU_DM, align 1, !mcsema_real_eip !7
  store i1 %41, i1* %FPU_IM, align 1, !mcsema_real_eip !7
  store i64 %44, i64* %43, align 4
  store i16 %45, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !7
  store i64 %46, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !7
  store i16 %47, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !7
  store i64 %48, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !7
  store i128 %49, i128* %XMM0, align 1, !mcsema_real_eip !7
  store i128 %50, i128* %XMM1, align 1, !mcsema_real_eip !7
  store i128 %51, i128* %XMM2, align 1, !mcsema_real_eip !7
  store i128 %52, i128* %XMM3, align 1, !mcsema_real_eip !7
  store i128 %53, i128* %XMM4, align 1, !mcsema_real_eip !7
  store i128 %54, i128* %XMM5, align 1, !mcsema_real_eip !7
  store i128 %55, i128* %XMM6, align 1, !mcsema_real_eip !7
  store i128 %56, i128* %XMM7, align 1, !mcsema_real_eip !7
  store i128 %57, i128* %XMM8, align 1, !mcsema_real_eip !7
  store i128 %58, i128* %XMM9, align 1, !mcsema_real_eip !7
  store i128 %59, i128* %XMM10, align 1, !mcsema_real_eip !7
  store i128 %60, i128* %XMM11, align 1, !mcsema_real_eip !7
  store i128 %61, i128* %XMM12, align 1, !mcsema_real_eip !7
  store i128 %62, i128* %XMM13, align 1, !mcsema_real_eip !7
  store i128 %63, i128* %XMM14, align 1, !mcsema_real_eip !7
  store i128 %64, i128* %XMM15, align 1, !mcsema_real_eip !7
  %98 = bitcast i64* %STACK_BASE to <2 x i64>*
  store <2 x i64> %66, <2 x i64>* %98, align 1
  ret void, !mcsema_real_eip !7
}

define internal x86_64_sysvcc void @sub_1fe(%struct.regs*) {
entry:
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !24
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !24
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !24
  %1 = bitcast i64* %RBX to <2 x i64>*
  %2 = load <2 x i64>* %1, align 8
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !24
  %3 = load i64* %RDX, align 8, !mcsema_real_eip !24
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !24
  %4 = load i64* %RSI, align 8, !mcsema_real_eip !24
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !24
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !24
  %5 = load i64* %RSP, align 8, !mcsema_real_eip !24
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !24
  %6 = load i64* %RBP, align 8, !mcsema_real_eip !24
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !24
  %7 = bitcast i64* %R8 to <2 x i64>*
  %8 = load <2 x i64>* %7, align 8
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !24
  %9 = bitcast i64* %R10 to <2 x i64>*
  %10 = load <2 x i64>* %9, align 8
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !24
  %11 = bitcast i64* %R12 to <2 x i64>*
  %12 = load <2 x i64>* %11, align 8
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !24
  %13 = bitcast i64* %R14 to <2 x i64>*
  %14 = load <2 x i64>* %13, align 8
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !24
  %15 = load i64* %RIP, align 8, !mcsema_real_eip !24
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !24
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !24
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !24
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !24
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !24
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !24
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !24
  %16 = load i1* %DF, align 1, !mcsema_real_eip !24
  %17 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !24
  %18 = bitcast x86_fp80* %17 to i8*, !mcsema_real_eip !24
  %19 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !24
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %18, i32 128, i32 4, i1 false), !mcsema_real_eip !24
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !24
  %20 = load i1* %FPU_B, align 1, !mcsema_real_eip !24
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !24
  %21 = load i1* %FPU_C3, align 1, !mcsema_real_eip !24
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !24
  %22 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !24
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !24
  %23 = load i1* %FPU_C2, align 1, !mcsema_real_eip !24
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !24
  %24 = load i1* %FPU_C1, align 1, !mcsema_real_eip !24
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !24
  %25 = load i1* %FPU_C0, align 1, !mcsema_real_eip !24
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !24
  %26 = load i1* %FPU_ES, align 1, !mcsema_real_eip !24
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !24
  %27 = load i1* %FPU_SF, align 1, !mcsema_real_eip !24
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !24
  %28 = load i1* %FPU_PE, align 1, !mcsema_real_eip !24
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !24
  %29 = load i1* %FPU_UE, align 1, !mcsema_real_eip !24
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !24
  %30 = load i1* %FPU_OE, align 1, !mcsema_real_eip !24
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !24
  %31 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !24
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !24
  %32 = load i1* %FPU_DE, align 1, !mcsema_real_eip !24
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !24
  %33 = load i1* %FPU_IE, align 1, !mcsema_real_eip !24
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !24
  %34 = load i1* %FPU_X, align 1, !mcsema_real_eip !24
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !24
  %35 = load i2* %FPU_RC, align 1, !mcsema_real_eip !24
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !24
  %36 = load i2* %FPU_PC, align 1, !mcsema_real_eip !24
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !24
  %37 = load i1* %FPU_PM, align 1, !mcsema_real_eip !24
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !24
  %38 = load i1* %FPU_UM, align 1, !mcsema_real_eip !24
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !24
  %39 = load i1* %FPU_OM, align 1, !mcsema_real_eip !24
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !24
  %40 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !24
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !24
  %41 = load i1* %FPU_DM, align 1, !mcsema_real_eip !24
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !24
  %42 = load i1* %FPU_IM, align 1, !mcsema_real_eip !24
  %43 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !24
  %44 = bitcast i8* %43 to i64*
  %45 = load i64* %44, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !24
  %46 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !24
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !24
  %47 = load i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !24
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !24
  %48 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !24
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !24
  %49 = load i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !24
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !24
  %50 = load i128* %XMM0, align 1, !mcsema_real_eip !24
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !24
  %51 = load i128* %XMM1, align 1, !mcsema_real_eip !24
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !24
  %52 = load i128* %XMM2, align 1, !mcsema_real_eip !24
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !24
  %53 = load i128* %XMM3, align 1, !mcsema_real_eip !24
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !24
  %54 = load i128* %XMM4, align 1, !mcsema_real_eip !24
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !24
  %55 = load i128* %XMM5, align 1, !mcsema_real_eip !24
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !24
  %56 = load i128* %XMM6, align 1, !mcsema_real_eip !24
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !24
  %57 = load i128* %XMM7, align 1, !mcsema_real_eip !24
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !24
  %58 = load i128* %XMM8, align 1, !mcsema_real_eip !24
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !24
  %59 = load i128* %XMM9, align 1, !mcsema_real_eip !24
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !24
  %60 = load i128* %XMM10, align 1, !mcsema_real_eip !24
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !24
  %61 = load i128* %XMM11, align 1, !mcsema_real_eip !24
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !24
  %62 = load i128* %XMM12, align 1, !mcsema_real_eip !24
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !24
  %63 = load i128* %XMM13, align 1, !mcsema_real_eip !24
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !24
  %64 = load i128* %XMM14, align 1, !mcsema_real_eip !24
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !24
  %65 = load i128* %XMM15, align 1, !mcsema_real_eip !24
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !24
  %66 = bitcast i64* %STACK_BASE to <2 x i64>*
  %67 = load <2 x i64>* %66, align 8
  %68 = extractelement <2 x i64> %2, i32 1
  %69 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 309), i64 %4, i64 %3, i64 %68), !mcsema_real_eip !25
  %70 = add i64 %6, -112, !mcsema_real_eip !26
  %71 = trunc i64 %69 to i32, !mcsema_real_eip !26
  %72 = inttoptr i64 %70 to i32*
  store i32 %71, i32* %72, align 4, !mcsema_real_eip !26
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %5, i64 144)
  %73 = extractvalue { i64, i1 } %uadd, 0
  %74 = xor i64 %73, %5, !mcsema_real_eip !5
  %75 = and i64 %74, 16
  %76 = icmp eq i64 %75, 0
  %77 = icmp slt i64 %73, 0
  %78 = icmp eq i64 %73, 0, !mcsema_real_eip !5
  %79 = xor i64 %5, -9223372036854775808, !mcsema_real_eip !5
  %80 = and i64 %74, %79, !mcsema_real_eip !5
  %81 = icmp slt i64 %80, 0
  %82 = trunc i64 %73 to i8, !mcsema_real_eip !5
  %83 = tail call i8 @llvm.ctpop.i8(i8 %82), !mcsema_real_eip !5
  %84 = and i8 %83, 1
  %85 = icmp eq i8 %84, 0
  %86 = extractvalue { i64, i1 } %uadd, 1
  %87 = inttoptr i64 %73 to i64*, !mcsema_real_eip !6
  %88 = load i64* %87, align 8, !mcsema_real_eip !6
  %89 = add i64 %73, 16, !mcsema_real_eip !7
  store i64 0, i64* %RAX, align 8, !mcsema_real_eip !7
  %90 = bitcast i64* %RBX to <2 x i64>*
  store <2 x i64> %2, <2 x i64>* %90, align 8
  store i64 %3, i64* %RDX, align 8, !mcsema_real_eip !7
  store i64 %4, i64* %RSI, align 8, !mcsema_real_eip !7
  store i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 309), i64* %RDI, align 8, !mcsema_real_eip !7
  store i64 %89, i64* %RSP, align 8, !mcsema_real_eip !7
  store i64 %88, i64* %RBP, align 8, !mcsema_real_eip !7
  %91 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> %8, <2 x i64>* %91, align 8
  %92 = bitcast i64* %R10 to <2 x i64>*
  store <2 x i64> %10, <2 x i64>* %92, align 8
  %93 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> %12, <2 x i64>* %93, align 8
  %94 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> %14, <2 x i64>* %94, align 8
  store i64 %15, i64* %RIP, align 8, !mcsema_real_eip !7
  store i1 %86, i1* %CF, align 1, !mcsema_real_eip !7
  store i1 %85, i1* %PF, align 1, !mcsema_real_eip !7
  store i1 %76, i1* %AF, align 1, !mcsema_real_eip !7
  store i1 %78, i1* %ZF, align 1, !mcsema_real_eip !7
  store i1 %77, i1* %SF, align 1, !mcsema_real_eip !7
  store i1 %81, i1* %OF, align 1, !mcsema_real_eip !7
  store i1 %16, i1* %DF, align 1, !mcsema_real_eip !7
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %19, i32 128, i32 8, i1 false), !mcsema_real_eip !7
  store i1 %20, i1* %FPU_B, align 1, !mcsema_real_eip !7
  store i1 %21, i1* %FPU_C3, align 1, !mcsema_real_eip !7
  store i3 %22, i3* %FPU_TOP, align 1, !mcsema_real_eip !7
  store i1 %23, i1* %FPU_C2, align 1, !mcsema_real_eip !7
  store i1 %24, i1* %FPU_C1, align 1, !mcsema_real_eip !7
  store i1 %25, i1* %FPU_C0, align 1, !mcsema_real_eip !7
  store i1 %26, i1* %FPU_ES, align 1, !mcsema_real_eip !7
  store i1 %27, i1* %FPU_SF, align 1, !mcsema_real_eip !7
  store i1 %28, i1* %FPU_PE, align 1, !mcsema_real_eip !7
  store i1 %29, i1* %FPU_UE, align 1, !mcsema_real_eip !7
  store i1 %30, i1* %FPU_OE, align 1, !mcsema_real_eip !7
  store i1 %31, i1* %FPU_ZE, align 1, !mcsema_real_eip !7
  store i1 %32, i1* %FPU_DE, align 1, !mcsema_real_eip !7
  store i1 %33, i1* %FPU_IE, align 1, !mcsema_real_eip !7
  store i1 %34, i1* %FPU_X, align 1, !mcsema_real_eip !7
  store i2 %35, i2* %FPU_RC, align 1, !mcsema_real_eip !7
  store i2 %36, i2* %FPU_PC, align 1, !mcsema_real_eip !7
  store i1 %37, i1* %FPU_PM, align 1, !mcsema_real_eip !7
  store i1 %38, i1* %FPU_UM, align 1, !mcsema_real_eip !7
  store i1 %39, i1* %FPU_OM, align 1, !mcsema_real_eip !7
  store i1 %40, i1* %FPU_ZM, align 1, !mcsema_real_eip !7
  store i1 %41, i1* %FPU_DM, align 1, !mcsema_real_eip !7
  store i1 %42, i1* %FPU_IM, align 1, !mcsema_real_eip !7
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !7
  store i64 %47, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !7
  store i16 %48, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !7
  store i64 %49, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !7
  store i128 %50, i128* %XMM0, align 1, !mcsema_real_eip !7
  store i128 %51, i128* %XMM1, align 1, !mcsema_real_eip !7
  store i128 %52, i128* %XMM2, align 1, !mcsema_real_eip !7
  store i128 %53, i128* %XMM3, align 1, !mcsema_real_eip !7
  store i128 %54, i128* %XMM4, align 1, !mcsema_real_eip !7
  store i128 %55, i128* %XMM5, align 1, !mcsema_real_eip !7
  store i128 %56, i128* %XMM6, align 1, !mcsema_real_eip !7
  store i128 %57, i128* %XMM7, align 1, !mcsema_real_eip !7
  store i128 %58, i128* %XMM8, align 1, !mcsema_real_eip !7
  store i128 %59, i128* %XMM9, align 1, !mcsema_real_eip !7
  store i128 %60, i128* %XMM10, align 1, !mcsema_real_eip !7
  store i128 %61, i128* %XMM11, align 1, !mcsema_real_eip !7
  store i128 %62, i128* %XMM12, align 1, !mcsema_real_eip !7
  store i128 %63, i128* %XMM13, align 1, !mcsema_real_eip !7
  store i128 %64, i128* %XMM14, align 1, !mcsema_real_eip !7
  store i128 %65, i128* %XMM15, align 1, !mcsema_real_eip !7
  %95 = bitcast i64* %STACK_BASE to <2 x i64>*
  store <2 x i64> %67, <2 x i64>* %95, align 1
  ret void, !mcsema_real_eip !7
}

define internal x86_64_sysvcc void @sub_217(%struct.regs*) {
entry:
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !27
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !27
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !27
  %1 = bitcast i64* %RBX to <2 x i64>*
  %2 = load <2 x i64>* %1, align 8
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !27
  %3 = load i64* %RDX, align 8, !mcsema_real_eip !27
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !27
  %4 = load i64* %RSI, align 8, !mcsema_real_eip !27
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !27
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !27
  %5 = load i64* %RSP, align 8, !mcsema_real_eip !27
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !27
  %6 = load i64* %RBP, align 8, !mcsema_real_eip !27
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !27
  %7 = bitcast i64* %R8 to <2 x i64>*
  %8 = load <2 x i64>* %7, align 8
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !27
  %9 = bitcast i64* %R10 to <2 x i64>*
  %10 = load <2 x i64>* %9, align 8
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !27
  %11 = bitcast i64* %R12 to <2 x i64>*
  %12 = load <2 x i64>* %11, align 8
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !27
  %13 = bitcast i64* %R14 to <2 x i64>*
  %14 = load <2 x i64>* %13, align 8
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !27
  %15 = load i64* %RIP, align 8, !mcsema_real_eip !27
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !27
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !27
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !27
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !27
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !27
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !27
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !27
  %16 = load i1* %DF, align 1, !mcsema_real_eip !27
  %17 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !27
  %18 = bitcast x86_fp80* %17 to i8*, !mcsema_real_eip !27
  %19 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !27
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %18, i32 128, i32 4, i1 false), !mcsema_real_eip !27
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !27
  %20 = load i1* %FPU_B, align 1, !mcsema_real_eip !27
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !27
  %21 = load i1* %FPU_C3, align 1, !mcsema_real_eip !27
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !27
  %22 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !27
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !27
  %23 = load i1* %FPU_C2, align 1, !mcsema_real_eip !27
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !27
  %24 = load i1* %FPU_C1, align 1, !mcsema_real_eip !27
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !27
  %25 = load i1* %FPU_C0, align 1, !mcsema_real_eip !27
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !27
  %26 = load i1* %FPU_ES, align 1, !mcsema_real_eip !27
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !27
  %27 = load i1* %FPU_SF, align 1, !mcsema_real_eip !27
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !27
  %28 = load i1* %FPU_PE, align 1, !mcsema_real_eip !27
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !27
  %29 = load i1* %FPU_UE, align 1, !mcsema_real_eip !27
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !27
  %30 = load i1* %FPU_OE, align 1, !mcsema_real_eip !27
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !27
  %31 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !27
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !27
  %32 = load i1* %FPU_DE, align 1, !mcsema_real_eip !27
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !27
  %33 = load i1* %FPU_IE, align 1, !mcsema_real_eip !27
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !27
  %34 = load i1* %FPU_X, align 1, !mcsema_real_eip !27
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !27
  %35 = load i2* %FPU_RC, align 1, !mcsema_real_eip !27
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !27
  %36 = load i2* %FPU_PC, align 1, !mcsema_real_eip !27
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !27
  %37 = load i1* %FPU_PM, align 1, !mcsema_real_eip !27
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !27
  %38 = load i1* %FPU_UM, align 1, !mcsema_real_eip !27
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !27
  %39 = load i1* %FPU_OM, align 1, !mcsema_real_eip !27
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !27
  %40 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !27
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !27
  %41 = load i1* %FPU_DM, align 1, !mcsema_real_eip !27
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !27
  %42 = load i1* %FPU_IM, align 1, !mcsema_real_eip !27
  %43 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !27
  %44 = bitcast i8* %43 to i64*
  %45 = load i64* %44, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !27
  %46 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !27
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !27
  %47 = load i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !27
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !27
  %48 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !27
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !27
  %49 = load i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !27
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !27
  %50 = load i128* %XMM0, align 1, !mcsema_real_eip !27
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !27
  %51 = load i128* %XMM1, align 1, !mcsema_real_eip !27
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !27
  %52 = load i128* %XMM2, align 1, !mcsema_real_eip !27
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !27
  %53 = load i128* %XMM3, align 1, !mcsema_real_eip !27
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !27
  %54 = load i128* %XMM4, align 1, !mcsema_real_eip !27
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !27
  %55 = load i128* %XMM5, align 1, !mcsema_real_eip !27
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !27
  %56 = load i128* %XMM6, align 1, !mcsema_real_eip !27
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !27
  %57 = load i128* %XMM7, align 1, !mcsema_real_eip !27
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !27
  %58 = load i128* %XMM8, align 1, !mcsema_real_eip !27
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !27
  %59 = load i128* %XMM9, align 1, !mcsema_real_eip !27
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !27
  %60 = load i128* %XMM10, align 1, !mcsema_real_eip !27
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !27
  %61 = load i128* %XMM11, align 1, !mcsema_real_eip !27
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !27
  %62 = load i128* %XMM12, align 1, !mcsema_real_eip !27
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !27
  %63 = load i128* %XMM13, align 1, !mcsema_real_eip !27
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !27
  %64 = load i128* %XMM14, align 1, !mcsema_real_eip !27
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !27
  %65 = load i128* %XMM15, align 1, !mcsema_real_eip !27
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !27
  %66 = bitcast i64* %STACK_BASE to <2 x i64>*
  %67 = load <2 x i64>* %66, align 8
  %68 = extractelement <2 x i64> %2, i32 1
  %69 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 337), i64 %4, i64 %3, i64 %68), !mcsema_real_eip !28
  %70 = add i64 %6, -116, !mcsema_real_eip !29
  %71 = trunc i64 %69 to i32, !mcsema_real_eip !29
  %72 = inttoptr i64 %70 to i32*
  store i32 %71, i32* %72, align 4, !mcsema_real_eip !29
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %5, i64 144)
  %73 = extractvalue { i64, i1 } %uadd, 0
  %74 = xor i64 %73, %5, !mcsema_real_eip !5
  %75 = and i64 %74, 16
  %76 = icmp eq i64 %75, 0
  %77 = icmp slt i64 %73, 0
  %78 = icmp eq i64 %73, 0, !mcsema_real_eip !5
  %79 = xor i64 %5, -9223372036854775808, !mcsema_real_eip !5
  %80 = and i64 %74, %79, !mcsema_real_eip !5
  %81 = icmp slt i64 %80, 0
  %82 = trunc i64 %73 to i8, !mcsema_real_eip !5
  %83 = tail call i8 @llvm.ctpop.i8(i8 %82), !mcsema_real_eip !5
  %84 = and i8 %83, 1
  %85 = icmp eq i8 %84, 0
  %86 = extractvalue { i64, i1 } %uadd, 1
  %87 = inttoptr i64 %73 to i64*, !mcsema_real_eip !6
  %88 = load i64* %87, align 8, !mcsema_real_eip !6
  %89 = add i64 %73, 16, !mcsema_real_eip !7
  store i64 0, i64* %RAX, align 8, !mcsema_real_eip !7
  %90 = bitcast i64* %RBX to <2 x i64>*
  store <2 x i64> %2, <2 x i64>* %90, align 8
  store i64 %3, i64* %RDX, align 8, !mcsema_real_eip !7
  store i64 %4, i64* %RSI, align 8, !mcsema_real_eip !7
  store i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 337), i64* %RDI, align 8, !mcsema_real_eip !7
  store i64 %89, i64* %RSP, align 8, !mcsema_real_eip !7
  store i64 %88, i64* %RBP, align 8, !mcsema_real_eip !7
  %91 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> %8, <2 x i64>* %91, align 8
  %92 = bitcast i64* %R10 to <2 x i64>*
  store <2 x i64> %10, <2 x i64>* %92, align 8
  %93 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> %12, <2 x i64>* %93, align 8
  %94 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> %14, <2 x i64>* %94, align 8
  store i64 %15, i64* %RIP, align 8, !mcsema_real_eip !7
  store i1 %86, i1* %CF, align 1, !mcsema_real_eip !7
  store i1 %85, i1* %PF, align 1, !mcsema_real_eip !7
  store i1 %76, i1* %AF, align 1, !mcsema_real_eip !7
  store i1 %78, i1* %ZF, align 1, !mcsema_real_eip !7
  store i1 %77, i1* %SF, align 1, !mcsema_real_eip !7
  store i1 %81, i1* %OF, align 1, !mcsema_real_eip !7
  store i1 %16, i1* %DF, align 1, !mcsema_real_eip !7
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %19, i32 128, i32 8, i1 false), !mcsema_real_eip !7
  store i1 %20, i1* %FPU_B, align 1, !mcsema_real_eip !7
  store i1 %21, i1* %FPU_C3, align 1, !mcsema_real_eip !7
  store i3 %22, i3* %FPU_TOP, align 1, !mcsema_real_eip !7
  store i1 %23, i1* %FPU_C2, align 1, !mcsema_real_eip !7
  store i1 %24, i1* %FPU_C1, align 1, !mcsema_real_eip !7
  store i1 %25, i1* %FPU_C0, align 1, !mcsema_real_eip !7
  store i1 %26, i1* %FPU_ES, align 1, !mcsema_real_eip !7
  store i1 %27, i1* %FPU_SF, align 1, !mcsema_real_eip !7
  store i1 %28, i1* %FPU_PE, align 1, !mcsema_real_eip !7
  store i1 %29, i1* %FPU_UE, align 1, !mcsema_real_eip !7
  store i1 %30, i1* %FPU_OE, align 1, !mcsema_real_eip !7
  store i1 %31, i1* %FPU_ZE, align 1, !mcsema_real_eip !7
  store i1 %32, i1* %FPU_DE, align 1, !mcsema_real_eip !7
  store i1 %33, i1* %FPU_IE, align 1, !mcsema_real_eip !7
  store i1 %34, i1* %FPU_X, align 1, !mcsema_real_eip !7
  store i2 %35, i2* %FPU_RC, align 1, !mcsema_real_eip !7
  store i2 %36, i2* %FPU_PC, align 1, !mcsema_real_eip !7
  store i1 %37, i1* %FPU_PM, align 1, !mcsema_real_eip !7
  store i1 %38, i1* %FPU_UM, align 1, !mcsema_real_eip !7
  store i1 %39, i1* %FPU_OM, align 1, !mcsema_real_eip !7
  store i1 %40, i1* %FPU_ZM, align 1, !mcsema_real_eip !7
  store i1 %41, i1* %FPU_DM, align 1, !mcsema_real_eip !7
  store i1 %42, i1* %FPU_IM, align 1, !mcsema_real_eip !7
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !7
  store i64 %47, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !7
  store i16 %48, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !7
  store i64 %49, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !7
  store i128 %50, i128* %XMM0, align 1, !mcsema_real_eip !7
  store i128 %51, i128* %XMM1, align 1, !mcsema_real_eip !7
  store i128 %52, i128* %XMM2, align 1, !mcsema_real_eip !7
  store i128 %53, i128* %XMM3, align 1, !mcsema_real_eip !7
  store i128 %54, i128* %XMM4, align 1, !mcsema_real_eip !7
  store i128 %55, i128* %XMM5, align 1, !mcsema_real_eip !7
  store i128 %56, i128* %XMM6, align 1, !mcsema_real_eip !7
  store i128 %57, i128* %XMM7, align 1, !mcsema_real_eip !7
  store i128 %58, i128* %XMM8, align 1, !mcsema_real_eip !7
  store i128 %59, i128* %XMM9, align 1, !mcsema_real_eip !7
  store i128 %60, i128* %XMM10, align 1, !mcsema_real_eip !7
  store i128 %61, i128* %XMM11, align 1, !mcsema_real_eip !7
  store i128 %62, i128* %XMM12, align 1, !mcsema_real_eip !7
  store i128 %63, i128* %XMM13, align 1, !mcsema_real_eip !7
  store i128 %64, i128* %XMM14, align 1, !mcsema_real_eip !7
  store i128 %65, i128* %XMM15, align 1, !mcsema_real_eip !7
  %95 = bitcast i64* %STACK_BASE to <2 x i64>*
  store <2 x i64> %67, <2 x i64>* %95, align 1
  ret void, !mcsema_real_eip !7
}

define internal x86_64_sysvcc void @sub_230(%struct.regs*) {
entry:
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !30
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !30
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !30
  %1 = bitcast i64* %RBX to <2 x i64>*
  %2 = load <2 x i64>* %1, align 8
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !30
  %3 = load i64* %RDX, align 8, !mcsema_real_eip !30
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !30
  %4 = load i64* %RSI, align 8, !mcsema_real_eip !30
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !30
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !30
  %5 = load i64* %RSP, align 8, !mcsema_real_eip !30
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !30
  %6 = load i64* %RBP, align 8, !mcsema_real_eip !30
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !30
  %7 = bitcast i64* %R8 to <2 x i64>*
  %8 = load <2 x i64>* %7, align 8
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !30
  %9 = bitcast i64* %R10 to <2 x i64>*
  %10 = load <2 x i64>* %9, align 8
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !30
  %11 = bitcast i64* %R12 to <2 x i64>*
  %12 = load <2 x i64>* %11, align 8
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !30
  %13 = bitcast i64* %R14 to <2 x i64>*
  %14 = load <2 x i64>* %13, align 8
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !30
  %15 = load i64* %RIP, align 8, !mcsema_real_eip !30
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !30
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !30
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !30
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !30
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !30
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !30
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !30
  %16 = load i1* %DF, align 1, !mcsema_real_eip !30
  %17 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !30
  %18 = bitcast x86_fp80* %17 to i8*, !mcsema_real_eip !30
  %19 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !30
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %18, i32 128, i32 4, i1 false), !mcsema_real_eip !30
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !30
  %20 = load i1* %FPU_B, align 1, !mcsema_real_eip !30
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !30
  %21 = load i1* %FPU_C3, align 1, !mcsema_real_eip !30
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !30
  %22 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !30
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !30
  %23 = load i1* %FPU_C2, align 1, !mcsema_real_eip !30
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !30
  %24 = load i1* %FPU_C1, align 1, !mcsema_real_eip !30
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !30
  %25 = load i1* %FPU_C0, align 1, !mcsema_real_eip !30
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !30
  %26 = load i1* %FPU_ES, align 1, !mcsema_real_eip !30
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !30
  %27 = load i1* %FPU_SF, align 1, !mcsema_real_eip !30
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !30
  %28 = load i1* %FPU_PE, align 1, !mcsema_real_eip !30
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !30
  %29 = load i1* %FPU_UE, align 1, !mcsema_real_eip !30
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !30
  %30 = load i1* %FPU_OE, align 1, !mcsema_real_eip !30
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !30
  %31 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !30
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !30
  %32 = load i1* %FPU_DE, align 1, !mcsema_real_eip !30
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !30
  %33 = load i1* %FPU_IE, align 1, !mcsema_real_eip !30
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !30
  %34 = load i1* %FPU_X, align 1, !mcsema_real_eip !30
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !30
  %35 = load i2* %FPU_RC, align 1, !mcsema_real_eip !30
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !30
  %36 = load i2* %FPU_PC, align 1, !mcsema_real_eip !30
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !30
  %37 = load i1* %FPU_PM, align 1, !mcsema_real_eip !30
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !30
  %38 = load i1* %FPU_UM, align 1, !mcsema_real_eip !30
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !30
  %39 = load i1* %FPU_OM, align 1, !mcsema_real_eip !30
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !30
  %40 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !30
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !30
  %41 = load i1* %FPU_DM, align 1, !mcsema_real_eip !30
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !30
  %42 = load i1* %FPU_IM, align 1, !mcsema_real_eip !30
  %43 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !30
  %44 = bitcast i8* %43 to i64*
  %45 = load i64* %44, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !30
  %46 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !30
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !30
  %47 = load i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !30
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !30
  %48 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !30
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !30
  %49 = load i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !30
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !30
  %50 = load i128* %XMM0, align 1, !mcsema_real_eip !30
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !30
  %51 = load i128* %XMM1, align 1, !mcsema_real_eip !30
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !30
  %52 = load i128* %XMM2, align 1, !mcsema_real_eip !30
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !30
  %53 = load i128* %XMM3, align 1, !mcsema_real_eip !30
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !30
  %54 = load i128* %XMM4, align 1, !mcsema_real_eip !30
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !30
  %55 = load i128* %XMM5, align 1, !mcsema_real_eip !30
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !30
  %56 = load i128* %XMM6, align 1, !mcsema_real_eip !30
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !30
  %57 = load i128* %XMM7, align 1, !mcsema_real_eip !30
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !30
  %58 = load i128* %XMM8, align 1, !mcsema_real_eip !30
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !30
  %59 = load i128* %XMM9, align 1, !mcsema_real_eip !30
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !30
  %60 = load i128* %XMM10, align 1, !mcsema_real_eip !30
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !30
  %61 = load i128* %XMM11, align 1, !mcsema_real_eip !30
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !30
  %62 = load i128* %XMM12, align 1, !mcsema_real_eip !30
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !30
  %63 = load i128* %XMM13, align 1, !mcsema_real_eip !30
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !30
  %64 = load i128* %XMM14, align 1, !mcsema_real_eip !30
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !30
  %65 = load i128* %XMM15, align 1, !mcsema_real_eip !30
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !30
  %66 = bitcast i64* %STACK_BASE to <2 x i64>*
  %67 = load <2 x i64>* %66, align 8
  %68 = extractelement <2 x i64> %2, i32 1
  %69 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 365), i64 %4, i64 %3, i64 %68), !mcsema_real_eip !31
  %70 = add i64 %6, -120, !mcsema_real_eip !32
  %71 = trunc i64 %69 to i32, !mcsema_real_eip !32
  %72 = inttoptr i64 %70 to i32*
  store i32 %71, i32* %72, align 4, !mcsema_real_eip !32
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %5, i64 144)
  %73 = extractvalue { i64, i1 } %uadd, 0
  %74 = xor i64 %73, %5, !mcsema_real_eip !5
  %75 = and i64 %74, 16
  %76 = icmp eq i64 %75, 0
  %77 = icmp slt i64 %73, 0
  %78 = icmp eq i64 %73, 0, !mcsema_real_eip !5
  %79 = xor i64 %5, -9223372036854775808, !mcsema_real_eip !5
  %80 = and i64 %74, %79, !mcsema_real_eip !5
  %81 = icmp slt i64 %80, 0
  %82 = trunc i64 %73 to i8, !mcsema_real_eip !5
  %83 = tail call i8 @llvm.ctpop.i8(i8 %82), !mcsema_real_eip !5
  %84 = and i8 %83, 1
  %85 = icmp eq i8 %84, 0
  %86 = extractvalue { i64, i1 } %uadd, 1
  %87 = inttoptr i64 %73 to i64*, !mcsema_real_eip !6
  %88 = load i64* %87, align 8, !mcsema_real_eip !6
  %89 = add i64 %73, 16, !mcsema_real_eip !7
  store i64 0, i64* %RAX, align 8, !mcsema_real_eip !7
  %90 = bitcast i64* %RBX to <2 x i64>*
  store <2 x i64> %2, <2 x i64>* %90, align 8
  store i64 %3, i64* %RDX, align 8, !mcsema_real_eip !7
  store i64 %4, i64* %RSI, align 8, !mcsema_real_eip !7
  store i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 365), i64* %RDI, align 8, !mcsema_real_eip !7
  store i64 %89, i64* %RSP, align 8, !mcsema_real_eip !7
  store i64 %88, i64* %RBP, align 8, !mcsema_real_eip !7
  %91 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> %8, <2 x i64>* %91, align 8
  %92 = bitcast i64* %R10 to <2 x i64>*
  store <2 x i64> %10, <2 x i64>* %92, align 8
  %93 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> %12, <2 x i64>* %93, align 8
  %94 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> %14, <2 x i64>* %94, align 8
  store i64 %15, i64* %RIP, align 8, !mcsema_real_eip !7
  store i1 %86, i1* %CF, align 1, !mcsema_real_eip !7
  store i1 %85, i1* %PF, align 1, !mcsema_real_eip !7
  store i1 %76, i1* %AF, align 1, !mcsema_real_eip !7
  store i1 %78, i1* %ZF, align 1, !mcsema_real_eip !7
  store i1 %77, i1* %SF, align 1, !mcsema_real_eip !7
  store i1 %81, i1* %OF, align 1, !mcsema_real_eip !7
  store i1 %16, i1* %DF, align 1, !mcsema_real_eip !7
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %19, i32 128, i32 8, i1 false), !mcsema_real_eip !7
  store i1 %20, i1* %FPU_B, align 1, !mcsema_real_eip !7
  store i1 %21, i1* %FPU_C3, align 1, !mcsema_real_eip !7
  store i3 %22, i3* %FPU_TOP, align 1, !mcsema_real_eip !7
  store i1 %23, i1* %FPU_C2, align 1, !mcsema_real_eip !7
  store i1 %24, i1* %FPU_C1, align 1, !mcsema_real_eip !7
  store i1 %25, i1* %FPU_C0, align 1, !mcsema_real_eip !7
  store i1 %26, i1* %FPU_ES, align 1, !mcsema_real_eip !7
  store i1 %27, i1* %FPU_SF, align 1, !mcsema_real_eip !7
  store i1 %28, i1* %FPU_PE, align 1, !mcsema_real_eip !7
  store i1 %29, i1* %FPU_UE, align 1, !mcsema_real_eip !7
  store i1 %30, i1* %FPU_OE, align 1, !mcsema_real_eip !7
  store i1 %31, i1* %FPU_ZE, align 1, !mcsema_real_eip !7
  store i1 %32, i1* %FPU_DE, align 1, !mcsema_real_eip !7
  store i1 %33, i1* %FPU_IE, align 1, !mcsema_real_eip !7
  store i1 %34, i1* %FPU_X, align 1, !mcsema_real_eip !7
  store i2 %35, i2* %FPU_RC, align 1, !mcsema_real_eip !7
  store i2 %36, i2* %FPU_PC, align 1, !mcsema_real_eip !7
  store i1 %37, i1* %FPU_PM, align 1, !mcsema_real_eip !7
  store i1 %38, i1* %FPU_UM, align 1, !mcsema_real_eip !7
  store i1 %39, i1* %FPU_OM, align 1, !mcsema_real_eip !7
  store i1 %40, i1* %FPU_ZM, align 1, !mcsema_real_eip !7
  store i1 %41, i1* %FPU_DM, align 1, !mcsema_real_eip !7
  store i1 %42, i1* %FPU_IM, align 1, !mcsema_real_eip !7
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !7
  store i64 %47, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !7
  store i16 %48, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !7
  store i64 %49, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !7
  store i128 %50, i128* %XMM0, align 1, !mcsema_real_eip !7
  store i128 %51, i128* %XMM1, align 1, !mcsema_real_eip !7
  store i128 %52, i128* %XMM2, align 1, !mcsema_real_eip !7
  store i128 %53, i128* %XMM3, align 1, !mcsema_real_eip !7
  store i128 %54, i128* %XMM4, align 1, !mcsema_real_eip !7
  store i128 %55, i128* %XMM5, align 1, !mcsema_real_eip !7
  store i128 %56, i128* %XMM6, align 1, !mcsema_real_eip !7
  store i128 %57, i128* %XMM7, align 1, !mcsema_real_eip !7
  store i128 %58, i128* %XMM8, align 1, !mcsema_real_eip !7
  store i128 %59, i128* %XMM9, align 1, !mcsema_real_eip !7
  store i128 %60, i128* %XMM10, align 1, !mcsema_real_eip !7
  store i128 %61, i128* %XMM11, align 1, !mcsema_real_eip !7
  store i128 %62, i128* %XMM12, align 1, !mcsema_real_eip !7
  store i128 %63, i128* %XMM13, align 1, !mcsema_real_eip !7
  store i128 %64, i128* %XMM14, align 1, !mcsema_real_eip !7
  store i128 %65, i128* %XMM15, align 1, !mcsema_real_eip !7
  %95 = bitcast i64* %STACK_BASE to <2 x i64>*
  store <2 x i64> %67, <2 x i64>* %95, align 1
  ret void, !mcsema_real_eip !7
}

define internal x86_64_sysvcc void @sub_249(%struct.regs*) {
entry:
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !33
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !33
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !33
  %1 = bitcast i64* %RBX to <2 x i64>*
  %2 = load <2 x i64>* %1, align 8
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !33
  %3 = load i64* %RDX, align 8, !mcsema_real_eip !33
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !33
  %4 = load i64* %RSI, align 8, !mcsema_real_eip !33
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !33
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !33
  %5 = load i64* %RSP, align 8, !mcsema_real_eip !33
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !33
  %6 = load i64* %RBP, align 8, !mcsema_real_eip !33
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !33
  %7 = bitcast i64* %R8 to <2 x i64>*
  %8 = load <2 x i64>* %7, align 8
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !33
  %9 = bitcast i64* %R10 to <2 x i64>*
  %10 = load <2 x i64>* %9, align 8
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !33
  %11 = bitcast i64* %R12 to <2 x i64>*
  %12 = load <2 x i64>* %11, align 8
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !33
  %13 = bitcast i64* %R14 to <2 x i64>*
  %14 = load <2 x i64>* %13, align 8
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !33
  %15 = load i64* %RIP, align 8, !mcsema_real_eip !33
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !33
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !33
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !33
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !33
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !33
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !33
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !33
  %16 = load i1* %DF, align 1, !mcsema_real_eip !33
  %17 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !33
  %18 = bitcast x86_fp80* %17 to i8*, !mcsema_real_eip !33
  %19 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !33
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %18, i32 128, i32 4, i1 false), !mcsema_real_eip !33
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !33
  %20 = load i1* %FPU_B, align 1, !mcsema_real_eip !33
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !33
  %21 = load i1* %FPU_C3, align 1, !mcsema_real_eip !33
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !33
  %22 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !33
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !33
  %23 = load i1* %FPU_C2, align 1, !mcsema_real_eip !33
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !33
  %24 = load i1* %FPU_C1, align 1, !mcsema_real_eip !33
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !33
  %25 = load i1* %FPU_C0, align 1, !mcsema_real_eip !33
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !33
  %26 = load i1* %FPU_ES, align 1, !mcsema_real_eip !33
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !33
  %27 = load i1* %FPU_SF, align 1, !mcsema_real_eip !33
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !33
  %28 = load i1* %FPU_PE, align 1, !mcsema_real_eip !33
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !33
  %29 = load i1* %FPU_UE, align 1, !mcsema_real_eip !33
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !33
  %30 = load i1* %FPU_OE, align 1, !mcsema_real_eip !33
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !33
  %31 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !33
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !33
  %32 = load i1* %FPU_DE, align 1, !mcsema_real_eip !33
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !33
  %33 = load i1* %FPU_IE, align 1, !mcsema_real_eip !33
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !33
  %34 = load i1* %FPU_X, align 1, !mcsema_real_eip !33
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !33
  %35 = load i2* %FPU_RC, align 1, !mcsema_real_eip !33
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !33
  %36 = load i2* %FPU_PC, align 1, !mcsema_real_eip !33
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !33
  %37 = load i1* %FPU_PM, align 1, !mcsema_real_eip !33
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !33
  %38 = load i1* %FPU_UM, align 1, !mcsema_real_eip !33
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !33
  %39 = load i1* %FPU_OM, align 1, !mcsema_real_eip !33
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !33
  %40 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !33
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !33
  %41 = load i1* %FPU_DM, align 1, !mcsema_real_eip !33
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !33
  %42 = load i1* %FPU_IM, align 1, !mcsema_real_eip !33
  %43 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !33
  %44 = bitcast i8* %43 to i64*
  %45 = load i64* %44, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !33
  %46 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !33
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !33
  %47 = load i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !33
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !33
  %48 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !33
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !33
  %49 = load i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !33
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !33
  %50 = load i128* %XMM0, align 1, !mcsema_real_eip !33
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !33
  %51 = load i128* %XMM1, align 1, !mcsema_real_eip !33
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !33
  %52 = load i128* %XMM2, align 1, !mcsema_real_eip !33
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !33
  %53 = load i128* %XMM3, align 1, !mcsema_real_eip !33
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !33
  %54 = load i128* %XMM4, align 1, !mcsema_real_eip !33
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !33
  %55 = load i128* %XMM5, align 1, !mcsema_real_eip !33
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !33
  %56 = load i128* %XMM6, align 1, !mcsema_real_eip !33
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !33
  %57 = load i128* %XMM7, align 1, !mcsema_real_eip !33
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !33
  %58 = load i128* %XMM8, align 1, !mcsema_real_eip !33
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !33
  %59 = load i128* %XMM9, align 1, !mcsema_real_eip !33
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !33
  %60 = load i128* %XMM10, align 1, !mcsema_real_eip !33
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !33
  %61 = load i128* %XMM11, align 1, !mcsema_real_eip !33
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !33
  %62 = load i128* %XMM12, align 1, !mcsema_real_eip !33
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !33
  %63 = load i128* %XMM13, align 1, !mcsema_real_eip !33
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !33
  %64 = load i128* %XMM14, align 1, !mcsema_real_eip !33
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !33
  %65 = load i128* %XMM15, align 1, !mcsema_real_eip !33
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !33
  %66 = bitcast i64* %STACK_BASE to <2 x i64>*
  %67 = load <2 x i64>* %66, align 8
  %68 = extractelement <2 x i64> %2, i32 1
  %69 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 393), i64 %4, i64 %3, i64 %68), !mcsema_real_eip !34
  %70 = add i64 %6, -124, !mcsema_real_eip !35
  %71 = trunc i64 %69 to i32, !mcsema_real_eip !35
  %72 = inttoptr i64 %70 to i32*
  store i32 %71, i32* %72, align 4, !mcsema_real_eip !35
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %5, i64 144)
  %73 = extractvalue { i64, i1 } %uadd, 0
  %74 = xor i64 %73, %5, !mcsema_real_eip !5
  %75 = and i64 %74, 16
  %76 = icmp eq i64 %75, 0
  %77 = icmp slt i64 %73, 0
  %78 = icmp eq i64 %73, 0, !mcsema_real_eip !5
  %79 = xor i64 %5, -9223372036854775808, !mcsema_real_eip !5
  %80 = and i64 %74, %79, !mcsema_real_eip !5
  %81 = icmp slt i64 %80, 0
  %82 = trunc i64 %73 to i8, !mcsema_real_eip !5
  %83 = tail call i8 @llvm.ctpop.i8(i8 %82), !mcsema_real_eip !5
  %84 = and i8 %83, 1
  %85 = icmp eq i8 %84, 0
  %86 = extractvalue { i64, i1 } %uadd, 1
  %87 = inttoptr i64 %73 to i64*, !mcsema_real_eip !6
  %88 = load i64* %87, align 8, !mcsema_real_eip !6
  %89 = add i64 %73, 16, !mcsema_real_eip !7
  store i64 0, i64* %RAX, align 8, !mcsema_real_eip !7
  %90 = bitcast i64* %RBX to <2 x i64>*
  store <2 x i64> %2, <2 x i64>* %90, align 8
  store i64 %3, i64* %RDX, align 8, !mcsema_real_eip !7
  store i64 %4, i64* %RSI, align 8, !mcsema_real_eip !7
  store i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 393), i64* %RDI, align 8, !mcsema_real_eip !7
  store i64 %89, i64* %RSP, align 8, !mcsema_real_eip !7
  store i64 %88, i64* %RBP, align 8, !mcsema_real_eip !7
  %91 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> %8, <2 x i64>* %91, align 8
  %92 = bitcast i64* %R10 to <2 x i64>*
  store <2 x i64> %10, <2 x i64>* %92, align 8
  %93 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> %12, <2 x i64>* %93, align 8
  %94 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> %14, <2 x i64>* %94, align 8
  store i64 %15, i64* %RIP, align 8, !mcsema_real_eip !7
  store i1 %86, i1* %CF, align 1, !mcsema_real_eip !7
  store i1 %85, i1* %PF, align 1, !mcsema_real_eip !7
  store i1 %76, i1* %AF, align 1, !mcsema_real_eip !7
  store i1 %78, i1* %ZF, align 1, !mcsema_real_eip !7
  store i1 %77, i1* %SF, align 1, !mcsema_real_eip !7
  store i1 %81, i1* %OF, align 1, !mcsema_real_eip !7
  store i1 %16, i1* %DF, align 1, !mcsema_real_eip !7
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %19, i32 128, i32 8, i1 false), !mcsema_real_eip !7
  store i1 %20, i1* %FPU_B, align 1, !mcsema_real_eip !7
  store i1 %21, i1* %FPU_C3, align 1, !mcsema_real_eip !7
  store i3 %22, i3* %FPU_TOP, align 1, !mcsema_real_eip !7
  store i1 %23, i1* %FPU_C2, align 1, !mcsema_real_eip !7
  store i1 %24, i1* %FPU_C1, align 1, !mcsema_real_eip !7
  store i1 %25, i1* %FPU_C0, align 1, !mcsema_real_eip !7
  store i1 %26, i1* %FPU_ES, align 1, !mcsema_real_eip !7
  store i1 %27, i1* %FPU_SF, align 1, !mcsema_real_eip !7
  store i1 %28, i1* %FPU_PE, align 1, !mcsema_real_eip !7
  store i1 %29, i1* %FPU_UE, align 1, !mcsema_real_eip !7
  store i1 %30, i1* %FPU_OE, align 1, !mcsema_real_eip !7
  store i1 %31, i1* %FPU_ZE, align 1, !mcsema_real_eip !7
  store i1 %32, i1* %FPU_DE, align 1, !mcsema_real_eip !7
  store i1 %33, i1* %FPU_IE, align 1, !mcsema_real_eip !7
  store i1 %34, i1* %FPU_X, align 1, !mcsema_real_eip !7
  store i2 %35, i2* %FPU_RC, align 1, !mcsema_real_eip !7
  store i2 %36, i2* %FPU_PC, align 1, !mcsema_real_eip !7
  store i1 %37, i1* %FPU_PM, align 1, !mcsema_real_eip !7
  store i1 %38, i1* %FPU_UM, align 1, !mcsema_real_eip !7
  store i1 %39, i1* %FPU_OM, align 1, !mcsema_real_eip !7
  store i1 %40, i1* %FPU_ZM, align 1, !mcsema_real_eip !7
  store i1 %41, i1* %FPU_DM, align 1, !mcsema_real_eip !7
  store i1 %42, i1* %FPU_IM, align 1, !mcsema_real_eip !7
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !7
  store i64 %47, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !7
  store i16 %48, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !7
  store i64 %49, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !7
  store i128 %50, i128* %XMM0, align 1, !mcsema_real_eip !7
  store i128 %51, i128* %XMM1, align 1, !mcsema_real_eip !7
  store i128 %52, i128* %XMM2, align 1, !mcsema_real_eip !7
  store i128 %53, i128* %XMM3, align 1, !mcsema_real_eip !7
  store i128 %54, i128* %XMM4, align 1, !mcsema_real_eip !7
  store i128 %55, i128* %XMM5, align 1, !mcsema_real_eip !7
  store i128 %56, i128* %XMM6, align 1, !mcsema_real_eip !7
  store i128 %57, i128* %XMM7, align 1, !mcsema_real_eip !7
  store i128 %58, i128* %XMM8, align 1, !mcsema_real_eip !7
  store i128 %59, i128* %XMM9, align 1, !mcsema_real_eip !7
  store i128 %60, i128* %XMM10, align 1, !mcsema_real_eip !7
  store i128 %61, i128* %XMM11, align 1, !mcsema_real_eip !7
  store i128 %62, i128* %XMM12, align 1, !mcsema_real_eip !7
  store i128 %63, i128* %XMM13, align 1, !mcsema_real_eip !7
  store i128 %64, i128* %XMM14, align 1, !mcsema_real_eip !7
  store i128 %65, i128* %XMM15, align 1, !mcsema_real_eip !7
  %95 = bitcast i64* %STACK_BASE to <2 x i64>*
  store <2 x i64> %67, <2 x i64>* %95, align 1
  ret void, !mcsema_real_eip !7
}

define internal x86_64_sysvcc void @sub_262(%struct.regs*) {
entry:
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !36
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !36
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !36
  %1 = bitcast i64* %RBX to <2 x i64>*
  %2 = load <2 x i64>* %1, align 8
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !36
  %3 = load i64* %RDX, align 8, !mcsema_real_eip !36
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !36
  %4 = load i64* %RSI, align 8, !mcsema_real_eip !36
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !36
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !36
  %5 = load i64* %RSP, align 8, !mcsema_real_eip !36
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !36
  %6 = load i64* %RBP, align 8, !mcsema_real_eip !36
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !36
  %7 = bitcast i64* %R8 to <2 x i64>*
  %8 = load <2 x i64>* %7, align 8
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !36
  %9 = bitcast i64* %R10 to <2 x i64>*
  %10 = load <2 x i64>* %9, align 8
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !36
  %11 = bitcast i64* %R12 to <2 x i64>*
  %12 = load <2 x i64>* %11, align 8
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !36
  %13 = bitcast i64* %R14 to <2 x i64>*
  %14 = load <2 x i64>* %13, align 8
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !36
  %15 = load i64* %RIP, align 8, !mcsema_real_eip !36
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !36
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !36
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !36
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !36
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !36
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !36
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !36
  %16 = load i1* %DF, align 1, !mcsema_real_eip !36
  %17 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !36
  %18 = bitcast x86_fp80* %17 to i8*, !mcsema_real_eip !36
  %19 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !36
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %18, i32 128, i32 4, i1 false), !mcsema_real_eip !36
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !36
  %20 = load i1* %FPU_B, align 1, !mcsema_real_eip !36
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !36
  %21 = load i1* %FPU_C3, align 1, !mcsema_real_eip !36
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !36
  %22 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !36
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !36
  %23 = load i1* %FPU_C2, align 1, !mcsema_real_eip !36
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !36
  %24 = load i1* %FPU_C1, align 1, !mcsema_real_eip !36
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !36
  %25 = load i1* %FPU_C0, align 1, !mcsema_real_eip !36
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !36
  %26 = load i1* %FPU_ES, align 1, !mcsema_real_eip !36
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !36
  %27 = load i1* %FPU_SF, align 1, !mcsema_real_eip !36
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !36
  %28 = load i1* %FPU_PE, align 1, !mcsema_real_eip !36
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !36
  %29 = load i1* %FPU_UE, align 1, !mcsema_real_eip !36
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !36
  %30 = load i1* %FPU_OE, align 1, !mcsema_real_eip !36
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !36
  %31 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !36
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !36
  %32 = load i1* %FPU_DE, align 1, !mcsema_real_eip !36
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !36
  %33 = load i1* %FPU_IE, align 1, !mcsema_real_eip !36
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !36
  %34 = load i1* %FPU_X, align 1, !mcsema_real_eip !36
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !36
  %35 = load i2* %FPU_RC, align 1, !mcsema_real_eip !36
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !36
  %36 = load i2* %FPU_PC, align 1, !mcsema_real_eip !36
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !36
  %37 = load i1* %FPU_PM, align 1, !mcsema_real_eip !36
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !36
  %38 = load i1* %FPU_UM, align 1, !mcsema_real_eip !36
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !36
  %39 = load i1* %FPU_OM, align 1, !mcsema_real_eip !36
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !36
  %40 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !36
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !36
  %41 = load i1* %FPU_DM, align 1, !mcsema_real_eip !36
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !36
  %42 = load i1* %FPU_IM, align 1, !mcsema_real_eip !36
  %43 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !36
  %44 = bitcast i8* %43 to i64*
  %45 = load i64* %44, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !36
  %46 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !36
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !36
  %47 = load i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !36
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !36
  %48 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !36
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !36
  %49 = load i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !36
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !36
  %50 = load i128* %XMM0, align 1, !mcsema_real_eip !36
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !36
  %51 = load i128* %XMM1, align 1, !mcsema_real_eip !36
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !36
  %52 = load i128* %XMM2, align 1, !mcsema_real_eip !36
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !36
  %53 = load i128* %XMM3, align 1, !mcsema_real_eip !36
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !36
  %54 = load i128* %XMM4, align 1, !mcsema_real_eip !36
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !36
  %55 = load i128* %XMM5, align 1, !mcsema_real_eip !36
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !36
  %56 = load i128* %XMM6, align 1, !mcsema_real_eip !36
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !36
  %57 = load i128* %XMM7, align 1, !mcsema_real_eip !36
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !36
  %58 = load i128* %XMM8, align 1, !mcsema_real_eip !36
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !36
  %59 = load i128* %XMM9, align 1, !mcsema_real_eip !36
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !36
  %60 = load i128* %XMM10, align 1, !mcsema_real_eip !36
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !36
  %61 = load i128* %XMM11, align 1, !mcsema_real_eip !36
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !36
  %62 = load i128* %XMM12, align 1, !mcsema_real_eip !36
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !36
  %63 = load i128* %XMM13, align 1, !mcsema_real_eip !36
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !36
  %64 = load i128* %XMM14, align 1, !mcsema_real_eip !36
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !36
  %65 = load i128* %XMM15, align 1, !mcsema_real_eip !36
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !36
  %66 = bitcast i64* %STACK_BASE to <2 x i64>*
  %67 = load <2 x i64>* %66, align 8
  %68 = extractelement <2 x i64> %2, i32 1
  %69 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 421), i64 %4, i64 %3, i64 %68), !mcsema_real_eip !37
  %70 = add i64 %6, -128, !mcsema_real_eip !38
  %71 = trunc i64 %69 to i32, !mcsema_real_eip !38
  %72 = inttoptr i64 %70 to i32*
  store i32 %71, i32* %72, align 4, !mcsema_real_eip !38
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %5, i64 144)
  %73 = extractvalue { i64, i1 } %uadd, 0
  %74 = xor i64 %73, %5, !mcsema_real_eip !5
  %75 = and i64 %74, 16
  %76 = icmp eq i64 %75, 0
  %77 = icmp slt i64 %73, 0
  %78 = icmp eq i64 %73, 0, !mcsema_real_eip !5
  %79 = xor i64 %5, -9223372036854775808, !mcsema_real_eip !5
  %80 = and i64 %74, %79, !mcsema_real_eip !5
  %81 = icmp slt i64 %80, 0
  %82 = trunc i64 %73 to i8, !mcsema_real_eip !5
  %83 = tail call i8 @llvm.ctpop.i8(i8 %82), !mcsema_real_eip !5
  %84 = and i8 %83, 1
  %85 = icmp eq i8 %84, 0
  %86 = extractvalue { i64, i1 } %uadd, 1
  %87 = inttoptr i64 %73 to i64*, !mcsema_real_eip !6
  %88 = load i64* %87, align 8, !mcsema_real_eip !6
  %89 = add i64 %73, 16, !mcsema_real_eip !7
  store i64 0, i64* %RAX, align 8, !mcsema_real_eip !7
  %90 = bitcast i64* %RBX to <2 x i64>*
  store <2 x i64> %2, <2 x i64>* %90, align 8
  store i64 %3, i64* %RDX, align 8, !mcsema_real_eip !7
  store i64 %4, i64* %RSI, align 8, !mcsema_real_eip !7
  store i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 421), i64* %RDI, align 8, !mcsema_real_eip !7
  store i64 %89, i64* %RSP, align 8, !mcsema_real_eip !7
  store i64 %88, i64* %RBP, align 8, !mcsema_real_eip !7
  %91 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> %8, <2 x i64>* %91, align 8
  %92 = bitcast i64* %R10 to <2 x i64>*
  store <2 x i64> %10, <2 x i64>* %92, align 8
  %93 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> %12, <2 x i64>* %93, align 8
  %94 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> %14, <2 x i64>* %94, align 8
  store i64 %15, i64* %RIP, align 8, !mcsema_real_eip !7
  store i1 %86, i1* %CF, align 1, !mcsema_real_eip !7
  store i1 %85, i1* %PF, align 1, !mcsema_real_eip !7
  store i1 %76, i1* %AF, align 1, !mcsema_real_eip !7
  store i1 %78, i1* %ZF, align 1, !mcsema_real_eip !7
  store i1 %77, i1* %SF, align 1, !mcsema_real_eip !7
  store i1 %81, i1* %OF, align 1, !mcsema_real_eip !7
  store i1 %16, i1* %DF, align 1, !mcsema_real_eip !7
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %19, i32 128, i32 8, i1 false), !mcsema_real_eip !7
  store i1 %20, i1* %FPU_B, align 1, !mcsema_real_eip !7
  store i1 %21, i1* %FPU_C3, align 1, !mcsema_real_eip !7
  store i3 %22, i3* %FPU_TOP, align 1, !mcsema_real_eip !7
  store i1 %23, i1* %FPU_C2, align 1, !mcsema_real_eip !7
  store i1 %24, i1* %FPU_C1, align 1, !mcsema_real_eip !7
  store i1 %25, i1* %FPU_C0, align 1, !mcsema_real_eip !7
  store i1 %26, i1* %FPU_ES, align 1, !mcsema_real_eip !7
  store i1 %27, i1* %FPU_SF, align 1, !mcsema_real_eip !7
  store i1 %28, i1* %FPU_PE, align 1, !mcsema_real_eip !7
  store i1 %29, i1* %FPU_UE, align 1, !mcsema_real_eip !7
  store i1 %30, i1* %FPU_OE, align 1, !mcsema_real_eip !7
  store i1 %31, i1* %FPU_ZE, align 1, !mcsema_real_eip !7
  store i1 %32, i1* %FPU_DE, align 1, !mcsema_real_eip !7
  store i1 %33, i1* %FPU_IE, align 1, !mcsema_real_eip !7
  store i1 %34, i1* %FPU_X, align 1, !mcsema_real_eip !7
  store i2 %35, i2* %FPU_RC, align 1, !mcsema_real_eip !7
  store i2 %36, i2* %FPU_PC, align 1, !mcsema_real_eip !7
  store i1 %37, i1* %FPU_PM, align 1, !mcsema_real_eip !7
  store i1 %38, i1* %FPU_UM, align 1, !mcsema_real_eip !7
  store i1 %39, i1* %FPU_OM, align 1, !mcsema_real_eip !7
  store i1 %40, i1* %FPU_ZM, align 1, !mcsema_real_eip !7
  store i1 %41, i1* %FPU_DM, align 1, !mcsema_real_eip !7
  store i1 %42, i1* %FPU_IM, align 1, !mcsema_real_eip !7
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !7
  store i64 %47, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !7
  store i16 %48, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !7
  store i64 %49, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !7
  store i128 %50, i128* %XMM0, align 1, !mcsema_real_eip !7
  store i128 %51, i128* %XMM1, align 1, !mcsema_real_eip !7
  store i128 %52, i128* %XMM2, align 1, !mcsema_real_eip !7
  store i128 %53, i128* %XMM3, align 1, !mcsema_real_eip !7
  store i128 %54, i128* %XMM4, align 1, !mcsema_real_eip !7
  store i128 %55, i128* %XMM5, align 1, !mcsema_real_eip !7
  store i128 %56, i128* %XMM6, align 1, !mcsema_real_eip !7
  store i128 %57, i128* %XMM7, align 1, !mcsema_real_eip !7
  store i128 %58, i128* %XMM8, align 1, !mcsema_real_eip !7
  store i128 %59, i128* %XMM9, align 1, !mcsema_real_eip !7
  store i128 %60, i128* %XMM10, align 1, !mcsema_real_eip !7
  store i128 %61, i128* %XMM11, align 1, !mcsema_real_eip !7
  store i128 %62, i128* %XMM12, align 1, !mcsema_real_eip !7
  store i128 %63, i128* %XMM13, align 1, !mcsema_real_eip !7
  store i128 %64, i128* %XMM14, align 1, !mcsema_real_eip !7
  store i128 %65, i128* %XMM15, align 1, !mcsema_real_eip !7
  %95 = bitcast i64* %STACK_BASE to <2 x i64>*
  store <2 x i64> %67, <2 x i64>* %95, align 1
  ret void, !mcsema_real_eip !7
}

define internal x86_64_sysvcc void @sub_a0(%struct.regs*) {
entry:
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !39
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !39
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !39
  %1 = bitcast i64* %RBX to <2 x i64>*
  %2 = load <2 x i64>* %1, align 8
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !39
  %3 = load i64* %RDX, align 8, !mcsema_real_eip !39
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !39
  %4 = load i64* %RSI, align 8, !mcsema_real_eip !39
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !39
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !39
  %5 = load i64* %RSP, align 8, !mcsema_real_eip !39
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !39
  %6 = load i64* %RBP, align 8, !mcsema_real_eip !39
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !39
  %7 = bitcast i64* %R8 to <2 x i64>*
  %8 = load <2 x i64>* %7, align 8
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !39
  %9 = bitcast i64* %R10 to <2 x i64>*
  %10 = load <2 x i64>* %9, align 8
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !39
  %11 = bitcast i64* %R12 to <2 x i64>*
  %12 = load <2 x i64>* %11, align 8
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !39
  %13 = bitcast i64* %R14 to <2 x i64>*
  %14 = load <2 x i64>* %13, align 8
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !39
  %15 = load i64* %RIP, align 8, !mcsema_real_eip !39
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !39
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !39
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !39
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !39
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !39
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !39
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !39
  %16 = load i1* %DF, align 1, !mcsema_real_eip !39
  %17 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !39
  %18 = bitcast x86_fp80* %17 to i8*, !mcsema_real_eip !39
  %19 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !39
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %18, i32 128, i32 4, i1 false), !mcsema_real_eip !39
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !39
  %20 = load i1* %FPU_B, align 1, !mcsema_real_eip !39
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !39
  %21 = load i1* %FPU_C3, align 1, !mcsema_real_eip !39
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !39
  %22 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !39
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !39
  %23 = load i1* %FPU_C2, align 1, !mcsema_real_eip !39
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !39
  %24 = load i1* %FPU_C1, align 1, !mcsema_real_eip !39
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !39
  %25 = load i1* %FPU_C0, align 1, !mcsema_real_eip !39
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !39
  %26 = load i1* %FPU_ES, align 1, !mcsema_real_eip !39
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !39
  %27 = load i1* %FPU_SF, align 1, !mcsema_real_eip !39
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !39
  %28 = load i1* %FPU_PE, align 1, !mcsema_real_eip !39
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !39
  %29 = load i1* %FPU_UE, align 1, !mcsema_real_eip !39
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !39
  %30 = load i1* %FPU_OE, align 1, !mcsema_real_eip !39
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !39
  %31 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !39
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !39
  %32 = load i1* %FPU_DE, align 1, !mcsema_real_eip !39
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !39
  %33 = load i1* %FPU_IE, align 1, !mcsema_real_eip !39
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !39
  %34 = load i1* %FPU_X, align 1, !mcsema_real_eip !39
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !39
  %35 = load i2* %FPU_RC, align 1, !mcsema_real_eip !39
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !39
  %36 = load i2* %FPU_PC, align 1, !mcsema_real_eip !39
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !39
  %37 = load i1* %FPU_PM, align 1, !mcsema_real_eip !39
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !39
  %38 = load i1* %FPU_UM, align 1, !mcsema_real_eip !39
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !39
  %39 = load i1* %FPU_OM, align 1, !mcsema_real_eip !39
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !39
  %40 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !39
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !39
  %41 = load i1* %FPU_DM, align 1, !mcsema_real_eip !39
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !39
  %42 = load i1* %FPU_IM, align 1, !mcsema_real_eip !39
  %43 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !39
  %44 = bitcast i8* %43 to i64*
  %45 = load i64* %44, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !39
  %46 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !39
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !39
  %47 = load i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !39
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !39
  %48 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !39
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !39
  %49 = load i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !39
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !39
  %50 = load i128* %XMM0, align 1, !mcsema_real_eip !39
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !39
  %51 = load i128* %XMM1, align 1, !mcsema_real_eip !39
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !39
  %52 = load i128* %XMM2, align 1, !mcsema_real_eip !39
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !39
  %53 = load i128* %XMM3, align 1, !mcsema_real_eip !39
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !39
  %54 = load i128* %XMM4, align 1, !mcsema_real_eip !39
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !39
  %55 = load i128* %XMM5, align 1, !mcsema_real_eip !39
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !39
  %56 = load i128* %XMM6, align 1, !mcsema_real_eip !39
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !39
  %57 = load i128* %XMM7, align 1, !mcsema_real_eip !39
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !39
  %58 = load i128* %XMM8, align 1, !mcsema_real_eip !39
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !39
  %59 = load i128* %XMM9, align 1, !mcsema_real_eip !39
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !39
  %60 = load i128* %XMM10, align 1, !mcsema_real_eip !39
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !39
  %61 = load i128* %XMM11, align 1, !mcsema_real_eip !39
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !39
  %62 = load i128* %XMM12, align 1, !mcsema_real_eip !39
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !39
  %63 = load i128* %XMM13, align 1, !mcsema_real_eip !39
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !39
  %64 = load i128* %XMM14, align 1, !mcsema_real_eip !39
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !39
  %65 = load i128* %XMM15, align 1, !mcsema_real_eip !39
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !39
  %66 = bitcast i64* %STACK_BASE to <2 x i64>*
  %67 = load <2 x i64>* %66, align 8
  %68 = extractelement <2 x i64> %2, i32 1
  %69 = tail call x86_64_sysvcc i64 @printf(i64 ptrtoint (%1* @data_0x39b to i64), i64 %4, i64 %3, i64 %68), !mcsema_real_eip !40
  %70 = add i64 %6, -56, !mcsema_real_eip !41
  %71 = trunc i64 %69 to i32, !mcsema_real_eip !41
  %72 = inttoptr i64 %70 to i32*
  store i32 %71, i32* %72, align 4, !mcsema_real_eip !41
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %5, i64 144)
  %73 = extractvalue { i64, i1 } %uadd, 0
  %74 = xor i64 %73, %5, !mcsema_real_eip !5
  %75 = and i64 %74, 16
  %76 = icmp eq i64 %75, 0
  %77 = icmp slt i64 %73, 0
  %78 = icmp eq i64 %73, 0, !mcsema_real_eip !5
  %79 = xor i64 %5, -9223372036854775808, !mcsema_real_eip !5
  %80 = and i64 %74, %79, !mcsema_real_eip !5
  %81 = icmp slt i64 %80, 0
  %82 = trunc i64 %73 to i8, !mcsema_real_eip !5
  %83 = tail call i8 @llvm.ctpop.i8(i8 %82), !mcsema_real_eip !5
  %84 = and i8 %83, 1
  %85 = icmp eq i8 %84, 0
  %86 = extractvalue { i64, i1 } %uadd, 1
  %87 = inttoptr i64 %73 to i64*, !mcsema_real_eip !6
  %88 = load i64* %87, align 8, !mcsema_real_eip !6
  %89 = add i64 %73, 16, !mcsema_real_eip !7
  store i64 0, i64* %RAX, align 8, !mcsema_real_eip !7
  %90 = bitcast i64* %RBX to <2 x i64>*
  store <2 x i64> %2, <2 x i64>* %90, align 8
  store i64 %3, i64* %RDX, align 8, !mcsema_real_eip !7
  store i64 %4, i64* %RSI, align 8, !mcsema_real_eip !7
  store i64 ptrtoint (%1* @data_0x39b to i64), i64* %RDI, align 8, !mcsema_real_eip !7
  store i64 %89, i64* %RSP, align 8, !mcsema_real_eip !7
  store i64 %88, i64* %RBP, align 8, !mcsema_real_eip !7
  %91 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> %8, <2 x i64>* %91, align 8
  %92 = bitcast i64* %R10 to <2 x i64>*
  store <2 x i64> %10, <2 x i64>* %92, align 8
  %93 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> %12, <2 x i64>* %93, align 8
  %94 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> %14, <2 x i64>* %94, align 8
  store i64 %15, i64* %RIP, align 8, !mcsema_real_eip !7
  store i1 %86, i1* %CF, align 1, !mcsema_real_eip !7
  store i1 %85, i1* %PF, align 1, !mcsema_real_eip !7
  store i1 %76, i1* %AF, align 1, !mcsema_real_eip !7
  store i1 %78, i1* %ZF, align 1, !mcsema_real_eip !7
  store i1 %77, i1* %SF, align 1, !mcsema_real_eip !7
  store i1 %81, i1* %OF, align 1, !mcsema_real_eip !7
  store i1 %16, i1* %DF, align 1, !mcsema_real_eip !7
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %19, i32 128, i32 8, i1 false), !mcsema_real_eip !7
  store i1 %20, i1* %FPU_B, align 1, !mcsema_real_eip !7
  store i1 %21, i1* %FPU_C3, align 1, !mcsema_real_eip !7
  store i3 %22, i3* %FPU_TOP, align 1, !mcsema_real_eip !7
  store i1 %23, i1* %FPU_C2, align 1, !mcsema_real_eip !7
  store i1 %24, i1* %FPU_C1, align 1, !mcsema_real_eip !7
  store i1 %25, i1* %FPU_C0, align 1, !mcsema_real_eip !7
  store i1 %26, i1* %FPU_ES, align 1, !mcsema_real_eip !7
  store i1 %27, i1* %FPU_SF, align 1, !mcsema_real_eip !7
  store i1 %28, i1* %FPU_PE, align 1, !mcsema_real_eip !7
  store i1 %29, i1* %FPU_UE, align 1, !mcsema_real_eip !7
  store i1 %30, i1* %FPU_OE, align 1, !mcsema_real_eip !7
  store i1 %31, i1* %FPU_ZE, align 1, !mcsema_real_eip !7
  store i1 %32, i1* %FPU_DE, align 1, !mcsema_real_eip !7
  store i1 %33, i1* %FPU_IE, align 1, !mcsema_real_eip !7
  store i1 %34, i1* %FPU_X, align 1, !mcsema_real_eip !7
  store i2 %35, i2* %FPU_RC, align 1, !mcsema_real_eip !7
  store i2 %36, i2* %FPU_PC, align 1, !mcsema_real_eip !7
  store i1 %37, i1* %FPU_PM, align 1, !mcsema_real_eip !7
  store i1 %38, i1* %FPU_UM, align 1, !mcsema_real_eip !7
  store i1 %39, i1* %FPU_OM, align 1, !mcsema_real_eip !7
  store i1 %40, i1* %FPU_ZM, align 1, !mcsema_real_eip !7
  store i1 %41, i1* %FPU_DM, align 1, !mcsema_real_eip !7
  store i1 %42, i1* %FPU_IM, align 1, !mcsema_real_eip !7
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !7
  store i64 %47, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !7
  store i16 %48, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !7
  store i64 %49, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !7
  store i128 %50, i128* %XMM0, align 1, !mcsema_real_eip !7
  store i128 %51, i128* %XMM1, align 1, !mcsema_real_eip !7
  store i128 %52, i128* %XMM2, align 1, !mcsema_real_eip !7
  store i128 %53, i128* %XMM3, align 1, !mcsema_real_eip !7
  store i128 %54, i128* %XMM4, align 1, !mcsema_real_eip !7
  store i128 %55, i128* %XMM5, align 1, !mcsema_real_eip !7
  store i128 %56, i128* %XMM6, align 1, !mcsema_real_eip !7
  store i128 %57, i128* %XMM7, align 1, !mcsema_real_eip !7
  store i128 %58, i128* %XMM8, align 1, !mcsema_real_eip !7
  store i128 %59, i128* %XMM9, align 1, !mcsema_real_eip !7
  store i128 %60, i128* %XMM10, align 1, !mcsema_real_eip !7
  store i128 %61, i128* %XMM11, align 1, !mcsema_real_eip !7
  store i128 %62, i128* %XMM12, align 1, !mcsema_real_eip !7
  store i128 %63, i128* %XMM13, align 1, !mcsema_real_eip !7
  store i128 %64, i128* %XMM14, align 1, !mcsema_real_eip !7
  store i128 %65, i128* %XMM15, align 1, !mcsema_real_eip !7
  %95 = bitcast i64* %STACK_BASE to <2 x i64>*
  store <2 x i64> %67, <2 x i64>* %95, align 1
  ret void, !mcsema_real_eip !7
}

define internal x86_64_sysvcc void @sub_b9(%struct.regs*) {
entry:
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !42
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !42
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !42
  %1 = bitcast i64* %RBX to <2 x i64>*
  %2 = load <2 x i64>* %1, align 8
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !42
  %3 = load i64* %RDX, align 8, !mcsema_real_eip !42
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !42
  %4 = load i64* %RSI, align 8, !mcsema_real_eip !42
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !42
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !42
  %5 = load i64* %RSP, align 8, !mcsema_real_eip !42
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !42
  %6 = load i64* %RBP, align 8, !mcsema_real_eip !42
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !42
  %7 = bitcast i64* %R8 to <2 x i64>*
  %8 = load <2 x i64>* %7, align 8
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !42
  %9 = bitcast i64* %R10 to <2 x i64>*
  %10 = load <2 x i64>* %9, align 8
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !42
  %11 = bitcast i64* %R12 to <2 x i64>*
  %12 = load <2 x i64>* %11, align 8
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !42
  %13 = bitcast i64* %R14 to <2 x i64>*
  %14 = load <2 x i64>* %13, align 8
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !42
  %15 = load i64* %RIP, align 8, !mcsema_real_eip !42
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !42
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !42
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !42
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !42
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !42
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !42
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !42
  %16 = load i1* %DF, align 1, !mcsema_real_eip !42
  %17 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !42
  %18 = bitcast x86_fp80* %17 to i8*, !mcsema_real_eip !42
  %19 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !42
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %18, i32 128, i32 4, i1 false), !mcsema_real_eip !42
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !42
  %20 = load i1* %FPU_B, align 1, !mcsema_real_eip !42
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !42
  %21 = load i1* %FPU_C3, align 1, !mcsema_real_eip !42
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !42
  %22 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !42
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !42
  %23 = load i1* %FPU_C2, align 1, !mcsema_real_eip !42
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !42
  %24 = load i1* %FPU_C1, align 1, !mcsema_real_eip !42
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !42
  %25 = load i1* %FPU_C0, align 1, !mcsema_real_eip !42
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !42
  %26 = load i1* %FPU_ES, align 1, !mcsema_real_eip !42
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !42
  %27 = load i1* %FPU_SF, align 1, !mcsema_real_eip !42
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !42
  %28 = load i1* %FPU_PE, align 1, !mcsema_real_eip !42
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !42
  %29 = load i1* %FPU_UE, align 1, !mcsema_real_eip !42
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !42
  %30 = load i1* %FPU_OE, align 1, !mcsema_real_eip !42
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !42
  %31 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !42
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !42
  %32 = load i1* %FPU_DE, align 1, !mcsema_real_eip !42
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !42
  %33 = load i1* %FPU_IE, align 1, !mcsema_real_eip !42
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !42
  %34 = load i1* %FPU_X, align 1, !mcsema_real_eip !42
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !42
  %35 = load i2* %FPU_RC, align 1, !mcsema_real_eip !42
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !42
  %36 = load i2* %FPU_PC, align 1, !mcsema_real_eip !42
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !42
  %37 = load i1* %FPU_PM, align 1, !mcsema_real_eip !42
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !42
  %38 = load i1* %FPU_UM, align 1, !mcsema_real_eip !42
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !42
  %39 = load i1* %FPU_OM, align 1, !mcsema_real_eip !42
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !42
  %40 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !42
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !42
  %41 = load i1* %FPU_DM, align 1, !mcsema_real_eip !42
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !42
  %42 = load i1* %FPU_IM, align 1, !mcsema_real_eip !42
  %43 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !42
  %44 = bitcast i8* %43 to i64*
  %45 = load i64* %44, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !42
  %46 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !42
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !42
  %47 = load i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !42
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !42
  %48 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !42
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !42
  %49 = load i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !42
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !42
  %50 = load i128* %XMM0, align 1, !mcsema_real_eip !42
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !42
  %51 = load i128* %XMM1, align 1, !mcsema_real_eip !42
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !42
  %52 = load i128* %XMM2, align 1, !mcsema_real_eip !42
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !42
  %53 = load i128* %XMM3, align 1, !mcsema_real_eip !42
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !42
  %54 = load i128* %XMM4, align 1, !mcsema_real_eip !42
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !42
  %55 = load i128* %XMM5, align 1, !mcsema_real_eip !42
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !42
  %56 = load i128* %XMM6, align 1, !mcsema_real_eip !42
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !42
  %57 = load i128* %XMM7, align 1, !mcsema_real_eip !42
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !42
  %58 = load i128* %XMM8, align 1, !mcsema_real_eip !42
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !42
  %59 = load i128* %XMM9, align 1, !mcsema_real_eip !42
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !42
  %60 = load i128* %XMM10, align 1, !mcsema_real_eip !42
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !42
  %61 = load i128* %XMM11, align 1, !mcsema_real_eip !42
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !42
  %62 = load i128* %XMM12, align 1, !mcsema_real_eip !42
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !42
  %63 = load i128* %XMM13, align 1, !mcsema_real_eip !42
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !42
  %64 = load i128* %XMM14, align 1, !mcsema_real_eip !42
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !42
  %65 = load i128* %XMM15, align 1, !mcsema_real_eip !42
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !42
  %66 = bitcast i64* %STACK_BASE to <2 x i64>*
  %67 = load <2 x i64>* %66, align 8
  %68 = extractelement <2 x i64> %2, i32 1
  %69 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 16), i64 %4, i64 %3, i64 %68), !mcsema_real_eip !43
  %70 = add i64 %6, -60, !mcsema_real_eip !44
  %71 = trunc i64 %69 to i32, !mcsema_real_eip !44
  %72 = inttoptr i64 %70 to i32*
  store i32 %71, i32* %72, align 4, !mcsema_real_eip !44
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %5, i64 144)
  %73 = extractvalue { i64, i1 } %uadd, 0
  %74 = xor i64 %73, %5, !mcsema_real_eip !5
  %75 = and i64 %74, 16
  %76 = icmp eq i64 %75, 0
  %77 = icmp slt i64 %73, 0
  %78 = icmp eq i64 %73, 0, !mcsema_real_eip !5
  %79 = xor i64 %5, -9223372036854775808, !mcsema_real_eip !5
  %80 = and i64 %74, %79, !mcsema_real_eip !5
  %81 = icmp slt i64 %80, 0
  %82 = trunc i64 %73 to i8, !mcsema_real_eip !5
  %83 = tail call i8 @llvm.ctpop.i8(i8 %82), !mcsema_real_eip !5
  %84 = and i8 %83, 1
  %85 = icmp eq i8 %84, 0
  %86 = extractvalue { i64, i1 } %uadd, 1
  %87 = inttoptr i64 %73 to i64*, !mcsema_real_eip !6
  %88 = load i64* %87, align 8, !mcsema_real_eip !6
  %89 = add i64 %73, 16, !mcsema_real_eip !7
  store i64 0, i64* %RAX, align 8, !mcsema_real_eip !7
  %90 = bitcast i64* %RBX to <2 x i64>*
  store <2 x i64> %2, <2 x i64>* %90, align 8
  store i64 %3, i64* %RDX, align 8, !mcsema_real_eip !7
  store i64 %4, i64* %RSI, align 8, !mcsema_real_eip !7
  store i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 16), i64* %RDI, align 8, !mcsema_real_eip !7
  store i64 %89, i64* %RSP, align 8, !mcsema_real_eip !7
  store i64 %88, i64* %RBP, align 8, !mcsema_real_eip !7
  %91 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> %8, <2 x i64>* %91, align 8
  %92 = bitcast i64* %R10 to <2 x i64>*
  store <2 x i64> %10, <2 x i64>* %92, align 8
  %93 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> %12, <2 x i64>* %93, align 8
  %94 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> %14, <2 x i64>* %94, align 8
  store i64 %15, i64* %RIP, align 8, !mcsema_real_eip !7
  store i1 %86, i1* %CF, align 1, !mcsema_real_eip !7
  store i1 %85, i1* %PF, align 1, !mcsema_real_eip !7
  store i1 %76, i1* %AF, align 1, !mcsema_real_eip !7
  store i1 %78, i1* %ZF, align 1, !mcsema_real_eip !7
  store i1 %77, i1* %SF, align 1, !mcsema_real_eip !7
  store i1 %81, i1* %OF, align 1, !mcsema_real_eip !7
  store i1 %16, i1* %DF, align 1, !mcsema_real_eip !7
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %19, i32 128, i32 8, i1 false), !mcsema_real_eip !7
  store i1 %20, i1* %FPU_B, align 1, !mcsema_real_eip !7
  store i1 %21, i1* %FPU_C3, align 1, !mcsema_real_eip !7
  store i3 %22, i3* %FPU_TOP, align 1, !mcsema_real_eip !7
  store i1 %23, i1* %FPU_C2, align 1, !mcsema_real_eip !7
  store i1 %24, i1* %FPU_C1, align 1, !mcsema_real_eip !7
  store i1 %25, i1* %FPU_C0, align 1, !mcsema_real_eip !7
  store i1 %26, i1* %FPU_ES, align 1, !mcsema_real_eip !7
  store i1 %27, i1* %FPU_SF, align 1, !mcsema_real_eip !7
  store i1 %28, i1* %FPU_PE, align 1, !mcsema_real_eip !7
  store i1 %29, i1* %FPU_UE, align 1, !mcsema_real_eip !7
  store i1 %30, i1* %FPU_OE, align 1, !mcsema_real_eip !7
  store i1 %31, i1* %FPU_ZE, align 1, !mcsema_real_eip !7
  store i1 %32, i1* %FPU_DE, align 1, !mcsema_real_eip !7
  store i1 %33, i1* %FPU_IE, align 1, !mcsema_real_eip !7
  store i1 %34, i1* %FPU_X, align 1, !mcsema_real_eip !7
  store i2 %35, i2* %FPU_RC, align 1, !mcsema_real_eip !7
  store i2 %36, i2* %FPU_PC, align 1, !mcsema_real_eip !7
  store i1 %37, i1* %FPU_PM, align 1, !mcsema_real_eip !7
  store i1 %38, i1* %FPU_UM, align 1, !mcsema_real_eip !7
  store i1 %39, i1* %FPU_OM, align 1, !mcsema_real_eip !7
  store i1 %40, i1* %FPU_ZM, align 1, !mcsema_real_eip !7
  store i1 %41, i1* %FPU_DM, align 1, !mcsema_real_eip !7
  store i1 %42, i1* %FPU_IM, align 1, !mcsema_real_eip !7
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !7
  store i64 %47, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !7
  store i16 %48, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !7
  store i64 %49, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !7
  store i128 %50, i128* %XMM0, align 1, !mcsema_real_eip !7
  store i128 %51, i128* %XMM1, align 1, !mcsema_real_eip !7
  store i128 %52, i128* %XMM2, align 1, !mcsema_real_eip !7
  store i128 %53, i128* %XMM3, align 1, !mcsema_real_eip !7
  store i128 %54, i128* %XMM4, align 1, !mcsema_real_eip !7
  store i128 %55, i128* %XMM5, align 1, !mcsema_real_eip !7
  store i128 %56, i128* %XMM6, align 1, !mcsema_real_eip !7
  store i128 %57, i128* %XMM7, align 1, !mcsema_real_eip !7
  store i128 %58, i128* %XMM8, align 1, !mcsema_real_eip !7
  store i128 %59, i128* %XMM9, align 1, !mcsema_real_eip !7
  store i128 %60, i128* %XMM10, align 1, !mcsema_real_eip !7
  store i128 %61, i128* %XMM11, align 1, !mcsema_real_eip !7
  store i128 %62, i128* %XMM12, align 1, !mcsema_real_eip !7
  store i128 %63, i128* %XMM13, align 1, !mcsema_real_eip !7
  store i128 %64, i128* %XMM14, align 1, !mcsema_real_eip !7
  store i128 %65, i128* %XMM15, align 1, !mcsema_real_eip !7
  %95 = bitcast i64* %STACK_BASE to <2 x i64>*
  store <2 x i64> %67, <2 x i64>* %95, align 1
  ret void, !mcsema_real_eip !7
}

define internal x86_64_sysvcc void @sub_d2(%struct.regs*) {
entry:
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !45
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !45
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !45
  %1 = bitcast i64* %RBX to <2 x i64>*
  %2 = load <2 x i64>* %1, align 8
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !45
  %3 = load i64* %RDX, align 8, !mcsema_real_eip !45
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !45
  %4 = load i64* %RSI, align 8, !mcsema_real_eip !45
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !45
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !45
  %5 = load i64* %RSP, align 8, !mcsema_real_eip !45
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !45
  %6 = load i64* %RBP, align 8, !mcsema_real_eip !45
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !45
  %7 = bitcast i64* %R8 to <2 x i64>*
  %8 = load <2 x i64>* %7, align 8
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !45
  %9 = bitcast i64* %R10 to <2 x i64>*
  %10 = load <2 x i64>* %9, align 8
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !45
  %11 = bitcast i64* %R12 to <2 x i64>*
  %12 = load <2 x i64>* %11, align 8
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !45
  %13 = bitcast i64* %R14 to <2 x i64>*
  %14 = load <2 x i64>* %13, align 8
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !45
  %15 = load i64* %RIP, align 8, !mcsema_real_eip !45
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !45
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !45
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !45
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !45
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !45
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !45
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !45
  %16 = load i1* %DF, align 1, !mcsema_real_eip !45
  %17 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !45
  %18 = bitcast x86_fp80* %17 to i8*, !mcsema_real_eip !45
  %19 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !45
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %18, i32 128, i32 4, i1 false), !mcsema_real_eip !45
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !45
  %20 = load i1* %FPU_B, align 1, !mcsema_real_eip !45
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !45
  %21 = load i1* %FPU_C3, align 1, !mcsema_real_eip !45
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !45
  %22 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !45
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !45
  %23 = load i1* %FPU_C2, align 1, !mcsema_real_eip !45
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !45
  %24 = load i1* %FPU_C1, align 1, !mcsema_real_eip !45
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !45
  %25 = load i1* %FPU_C0, align 1, !mcsema_real_eip !45
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !45
  %26 = load i1* %FPU_ES, align 1, !mcsema_real_eip !45
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !45
  %27 = load i1* %FPU_SF, align 1, !mcsema_real_eip !45
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !45
  %28 = load i1* %FPU_PE, align 1, !mcsema_real_eip !45
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !45
  %29 = load i1* %FPU_UE, align 1, !mcsema_real_eip !45
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !45
  %30 = load i1* %FPU_OE, align 1, !mcsema_real_eip !45
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !45
  %31 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !45
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !45
  %32 = load i1* %FPU_DE, align 1, !mcsema_real_eip !45
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !45
  %33 = load i1* %FPU_IE, align 1, !mcsema_real_eip !45
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !45
  %34 = load i1* %FPU_X, align 1, !mcsema_real_eip !45
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !45
  %35 = load i2* %FPU_RC, align 1, !mcsema_real_eip !45
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !45
  %36 = load i2* %FPU_PC, align 1, !mcsema_real_eip !45
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !45
  %37 = load i1* %FPU_PM, align 1, !mcsema_real_eip !45
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !45
  %38 = load i1* %FPU_UM, align 1, !mcsema_real_eip !45
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !45
  %39 = load i1* %FPU_OM, align 1, !mcsema_real_eip !45
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !45
  %40 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !45
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !45
  %41 = load i1* %FPU_DM, align 1, !mcsema_real_eip !45
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !45
  %42 = load i1* %FPU_IM, align 1, !mcsema_real_eip !45
  %43 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !45
  %44 = bitcast i8* %43 to i64*
  %45 = load i64* %44, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !45
  %46 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !45
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !45
  %47 = load i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !45
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !45
  %48 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !45
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !45
  %49 = load i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !45
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !45
  %50 = load i128* %XMM0, align 1, !mcsema_real_eip !45
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !45
  %51 = load i128* %XMM1, align 1, !mcsema_real_eip !45
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !45
  %52 = load i128* %XMM2, align 1, !mcsema_real_eip !45
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !45
  %53 = load i128* %XMM3, align 1, !mcsema_real_eip !45
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !45
  %54 = load i128* %XMM4, align 1, !mcsema_real_eip !45
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !45
  %55 = load i128* %XMM5, align 1, !mcsema_real_eip !45
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !45
  %56 = load i128* %XMM6, align 1, !mcsema_real_eip !45
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !45
  %57 = load i128* %XMM7, align 1, !mcsema_real_eip !45
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !45
  %58 = load i128* %XMM8, align 1, !mcsema_real_eip !45
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !45
  %59 = load i128* %XMM9, align 1, !mcsema_real_eip !45
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !45
  %60 = load i128* %XMM10, align 1, !mcsema_real_eip !45
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !45
  %61 = load i128* %XMM11, align 1, !mcsema_real_eip !45
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !45
  %62 = load i128* %XMM12, align 1, !mcsema_real_eip !45
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !45
  %63 = load i128* %XMM13, align 1, !mcsema_real_eip !45
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !45
  %64 = load i128* %XMM14, align 1, !mcsema_real_eip !45
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !45
  %65 = load i128* %XMM15, align 1, !mcsema_real_eip !45
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !45
  %66 = bitcast i64* %STACK_BASE to <2 x i64>*
  %67 = load <2 x i64>* %66, align 8
  %68 = extractelement <2 x i64> %2, i32 1
  %69 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 31), i64 %4, i64 %3, i64 %68), !mcsema_real_eip !46
  %70 = add i64 %6, -64, !mcsema_real_eip !47
  %71 = trunc i64 %69 to i32, !mcsema_real_eip !47
  %72 = inttoptr i64 %70 to i32*
  store i32 %71, i32* %72, align 4, !mcsema_real_eip !47
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %5, i64 144)
  %73 = extractvalue { i64, i1 } %uadd, 0
  %74 = xor i64 %73, %5, !mcsema_real_eip !5
  %75 = and i64 %74, 16
  %76 = icmp eq i64 %75, 0
  %77 = icmp slt i64 %73, 0
  %78 = icmp eq i64 %73, 0, !mcsema_real_eip !5
  %79 = xor i64 %5, -9223372036854775808, !mcsema_real_eip !5
  %80 = and i64 %74, %79, !mcsema_real_eip !5
  %81 = icmp slt i64 %80, 0
  %82 = trunc i64 %73 to i8, !mcsema_real_eip !5
  %83 = tail call i8 @llvm.ctpop.i8(i8 %82), !mcsema_real_eip !5
  %84 = and i8 %83, 1
  %85 = icmp eq i8 %84, 0
  %86 = extractvalue { i64, i1 } %uadd, 1
  %87 = inttoptr i64 %73 to i64*, !mcsema_real_eip !6
  %88 = load i64* %87, align 8, !mcsema_real_eip !6
  %89 = add i64 %73, 16, !mcsema_real_eip !7
  store i64 0, i64* %RAX, align 8, !mcsema_real_eip !7
  %90 = bitcast i64* %RBX to <2 x i64>*
  store <2 x i64> %2, <2 x i64>* %90, align 8
  store i64 %3, i64* %RDX, align 8, !mcsema_real_eip !7
  store i64 %4, i64* %RSI, align 8, !mcsema_real_eip !7
  store i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 31), i64* %RDI, align 8, !mcsema_real_eip !7
  store i64 %89, i64* %RSP, align 8, !mcsema_real_eip !7
  store i64 %88, i64* %RBP, align 8, !mcsema_real_eip !7
  %91 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> %8, <2 x i64>* %91, align 8
  %92 = bitcast i64* %R10 to <2 x i64>*
  store <2 x i64> %10, <2 x i64>* %92, align 8
  %93 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> %12, <2 x i64>* %93, align 8
  %94 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> %14, <2 x i64>* %94, align 8
  store i64 %15, i64* %RIP, align 8, !mcsema_real_eip !7
  store i1 %86, i1* %CF, align 1, !mcsema_real_eip !7
  store i1 %85, i1* %PF, align 1, !mcsema_real_eip !7
  store i1 %76, i1* %AF, align 1, !mcsema_real_eip !7
  store i1 %78, i1* %ZF, align 1, !mcsema_real_eip !7
  store i1 %77, i1* %SF, align 1, !mcsema_real_eip !7
  store i1 %81, i1* %OF, align 1, !mcsema_real_eip !7
  store i1 %16, i1* %DF, align 1, !mcsema_real_eip !7
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %19, i32 128, i32 8, i1 false), !mcsema_real_eip !7
  store i1 %20, i1* %FPU_B, align 1, !mcsema_real_eip !7
  store i1 %21, i1* %FPU_C3, align 1, !mcsema_real_eip !7
  store i3 %22, i3* %FPU_TOP, align 1, !mcsema_real_eip !7
  store i1 %23, i1* %FPU_C2, align 1, !mcsema_real_eip !7
  store i1 %24, i1* %FPU_C1, align 1, !mcsema_real_eip !7
  store i1 %25, i1* %FPU_C0, align 1, !mcsema_real_eip !7
  store i1 %26, i1* %FPU_ES, align 1, !mcsema_real_eip !7
  store i1 %27, i1* %FPU_SF, align 1, !mcsema_real_eip !7
  store i1 %28, i1* %FPU_PE, align 1, !mcsema_real_eip !7
  store i1 %29, i1* %FPU_UE, align 1, !mcsema_real_eip !7
  store i1 %30, i1* %FPU_OE, align 1, !mcsema_real_eip !7
  store i1 %31, i1* %FPU_ZE, align 1, !mcsema_real_eip !7
  store i1 %32, i1* %FPU_DE, align 1, !mcsema_real_eip !7
  store i1 %33, i1* %FPU_IE, align 1, !mcsema_real_eip !7
  store i1 %34, i1* %FPU_X, align 1, !mcsema_real_eip !7
  store i2 %35, i2* %FPU_RC, align 1, !mcsema_real_eip !7
  store i2 %36, i2* %FPU_PC, align 1, !mcsema_real_eip !7
  store i1 %37, i1* %FPU_PM, align 1, !mcsema_real_eip !7
  store i1 %38, i1* %FPU_UM, align 1, !mcsema_real_eip !7
  store i1 %39, i1* %FPU_OM, align 1, !mcsema_real_eip !7
  store i1 %40, i1* %FPU_ZM, align 1, !mcsema_real_eip !7
  store i1 %41, i1* %FPU_DM, align 1, !mcsema_real_eip !7
  store i1 %42, i1* %FPU_IM, align 1, !mcsema_real_eip !7
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !7
  store i64 %47, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !7
  store i16 %48, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !7
  store i64 %49, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !7
  store i128 %50, i128* %XMM0, align 1, !mcsema_real_eip !7
  store i128 %51, i128* %XMM1, align 1, !mcsema_real_eip !7
  store i128 %52, i128* %XMM2, align 1, !mcsema_real_eip !7
  store i128 %53, i128* %XMM3, align 1, !mcsema_real_eip !7
  store i128 %54, i128* %XMM4, align 1, !mcsema_real_eip !7
  store i128 %55, i128* %XMM5, align 1, !mcsema_real_eip !7
  store i128 %56, i128* %XMM6, align 1, !mcsema_real_eip !7
  store i128 %57, i128* %XMM7, align 1, !mcsema_real_eip !7
  store i128 %58, i128* %XMM8, align 1, !mcsema_real_eip !7
  store i128 %59, i128* %XMM9, align 1, !mcsema_real_eip !7
  store i128 %60, i128* %XMM10, align 1, !mcsema_real_eip !7
  store i128 %61, i128* %XMM11, align 1, !mcsema_real_eip !7
  store i128 %62, i128* %XMM12, align 1, !mcsema_real_eip !7
  store i128 %63, i128* %XMM13, align 1, !mcsema_real_eip !7
  store i128 %64, i128* %XMM14, align 1, !mcsema_real_eip !7
  store i128 %65, i128* %XMM15, align 1, !mcsema_real_eip !7
  %95 = bitcast i64* %STACK_BASE to <2 x i64>*
  store <2 x i64> %67, <2 x i64>* %95, align 1
  ret void, !mcsema_real_eip !7
}

define internal x86_64_sysvcc void @sub_eb(%struct.regs*) {
entry:
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !48
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !48
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !48
  %1 = bitcast i64* %RBX to <2 x i64>*
  %2 = load <2 x i64>* %1, align 8
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !48
  %3 = load i64* %RDX, align 8, !mcsema_real_eip !48
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !48
  %4 = load i64* %RSI, align 8, !mcsema_real_eip !48
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !48
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !48
  %5 = load i64* %RSP, align 8, !mcsema_real_eip !48
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !48
  %6 = load i64* %RBP, align 8, !mcsema_real_eip !48
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !48
  %7 = bitcast i64* %R8 to <2 x i64>*
  %8 = load <2 x i64>* %7, align 8
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !48
  %9 = bitcast i64* %R10 to <2 x i64>*
  %10 = load <2 x i64>* %9, align 8
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !48
  %11 = bitcast i64* %R12 to <2 x i64>*
  %12 = load <2 x i64>* %11, align 8
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !48
  %13 = bitcast i64* %R14 to <2 x i64>*
  %14 = load <2 x i64>* %13, align 8
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !48
  %15 = load i64* %RIP, align 8, !mcsema_real_eip !48
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !48
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !48
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !48
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !48
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !48
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !48
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !48
  %16 = load i1* %DF, align 1, !mcsema_real_eip !48
  %17 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !48
  %18 = bitcast x86_fp80* %17 to i8*, !mcsema_real_eip !48
  %19 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !48
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %18, i32 128, i32 4, i1 false), !mcsema_real_eip !48
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !48
  %20 = load i1* %FPU_B, align 1, !mcsema_real_eip !48
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !48
  %21 = load i1* %FPU_C3, align 1, !mcsema_real_eip !48
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !48
  %22 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !48
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !48
  %23 = load i1* %FPU_C2, align 1, !mcsema_real_eip !48
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !48
  %24 = load i1* %FPU_C1, align 1, !mcsema_real_eip !48
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !48
  %25 = load i1* %FPU_C0, align 1, !mcsema_real_eip !48
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !48
  %26 = load i1* %FPU_ES, align 1, !mcsema_real_eip !48
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !48
  %27 = load i1* %FPU_SF, align 1, !mcsema_real_eip !48
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !48
  %28 = load i1* %FPU_PE, align 1, !mcsema_real_eip !48
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !48
  %29 = load i1* %FPU_UE, align 1, !mcsema_real_eip !48
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !48
  %30 = load i1* %FPU_OE, align 1, !mcsema_real_eip !48
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !48
  %31 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !48
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !48
  %32 = load i1* %FPU_DE, align 1, !mcsema_real_eip !48
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !48
  %33 = load i1* %FPU_IE, align 1, !mcsema_real_eip !48
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !48
  %34 = load i1* %FPU_X, align 1, !mcsema_real_eip !48
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !48
  %35 = load i2* %FPU_RC, align 1, !mcsema_real_eip !48
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !48
  %36 = load i2* %FPU_PC, align 1, !mcsema_real_eip !48
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !48
  %37 = load i1* %FPU_PM, align 1, !mcsema_real_eip !48
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !48
  %38 = load i1* %FPU_UM, align 1, !mcsema_real_eip !48
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !48
  %39 = load i1* %FPU_OM, align 1, !mcsema_real_eip !48
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !48
  %40 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !48
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !48
  %41 = load i1* %FPU_DM, align 1, !mcsema_real_eip !48
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !48
  %42 = load i1* %FPU_IM, align 1, !mcsema_real_eip !48
  %43 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !48
  %44 = bitcast i8* %43 to i64*
  %45 = load i64* %44, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !48
  %46 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !48
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !48
  %47 = load i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !48
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !48
  %48 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !48
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !48
  %49 = load i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !48
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !48
  %50 = load i128* %XMM0, align 1, !mcsema_real_eip !48
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !48
  %51 = load i128* %XMM1, align 1, !mcsema_real_eip !48
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !48
  %52 = load i128* %XMM2, align 1, !mcsema_real_eip !48
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !48
  %53 = load i128* %XMM3, align 1, !mcsema_real_eip !48
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !48
  %54 = load i128* %XMM4, align 1, !mcsema_real_eip !48
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !48
  %55 = load i128* %XMM5, align 1, !mcsema_real_eip !48
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !48
  %56 = load i128* %XMM6, align 1, !mcsema_real_eip !48
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !48
  %57 = load i128* %XMM7, align 1, !mcsema_real_eip !48
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !48
  %58 = load i128* %XMM8, align 1, !mcsema_real_eip !48
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !48
  %59 = load i128* %XMM9, align 1, !mcsema_real_eip !48
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !48
  %60 = load i128* %XMM10, align 1, !mcsema_real_eip !48
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !48
  %61 = load i128* %XMM11, align 1, !mcsema_real_eip !48
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !48
  %62 = load i128* %XMM12, align 1, !mcsema_real_eip !48
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !48
  %63 = load i128* %XMM13, align 1, !mcsema_real_eip !48
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !48
  %64 = load i128* %XMM14, align 1, !mcsema_real_eip !48
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !48
  %65 = load i128* %XMM15, align 1, !mcsema_real_eip !48
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !48
  %66 = bitcast i64* %STACK_BASE to <2 x i64>*
  %67 = load <2 x i64>* %66, align 8
  %68 = extractelement <2 x i64> %2, i32 1
  %69 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 46), i64 %4, i64 %3, i64 %68), !mcsema_real_eip !49
  %70 = add i64 %6, -68, !mcsema_real_eip !50
  %71 = trunc i64 %69 to i32, !mcsema_real_eip !50
  %72 = inttoptr i64 %70 to i32*
  store i32 %71, i32* %72, align 4, !mcsema_real_eip !50
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %5, i64 144)
  %73 = extractvalue { i64, i1 } %uadd, 0
  %74 = xor i64 %73, %5, !mcsema_real_eip !5
  %75 = and i64 %74, 16
  %76 = icmp eq i64 %75, 0
  %77 = icmp slt i64 %73, 0
  %78 = icmp eq i64 %73, 0, !mcsema_real_eip !5
  %79 = xor i64 %5, -9223372036854775808, !mcsema_real_eip !5
  %80 = and i64 %74, %79, !mcsema_real_eip !5
  %81 = icmp slt i64 %80, 0
  %82 = trunc i64 %73 to i8, !mcsema_real_eip !5
  %83 = tail call i8 @llvm.ctpop.i8(i8 %82), !mcsema_real_eip !5
  %84 = and i8 %83, 1
  %85 = icmp eq i8 %84, 0
  %86 = extractvalue { i64, i1 } %uadd, 1
  %87 = inttoptr i64 %73 to i64*, !mcsema_real_eip !6
  %88 = load i64* %87, align 8, !mcsema_real_eip !6
  %89 = add i64 %73, 16, !mcsema_real_eip !7
  store i64 0, i64* %RAX, align 8, !mcsema_real_eip !7
  %90 = bitcast i64* %RBX to <2 x i64>*
  store <2 x i64> %2, <2 x i64>* %90, align 8
  store i64 %3, i64* %RDX, align 8, !mcsema_real_eip !7
  store i64 %4, i64* %RSI, align 8, !mcsema_real_eip !7
  store i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 46), i64* %RDI, align 8, !mcsema_real_eip !7
  store i64 %89, i64* %RSP, align 8, !mcsema_real_eip !7
  store i64 %88, i64* %RBP, align 8, !mcsema_real_eip !7
  %91 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> %8, <2 x i64>* %91, align 8
  %92 = bitcast i64* %R10 to <2 x i64>*
  store <2 x i64> %10, <2 x i64>* %92, align 8
  %93 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> %12, <2 x i64>* %93, align 8
  %94 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> %14, <2 x i64>* %94, align 8
  store i64 %15, i64* %RIP, align 8, !mcsema_real_eip !7
  store i1 %86, i1* %CF, align 1, !mcsema_real_eip !7
  store i1 %85, i1* %PF, align 1, !mcsema_real_eip !7
  store i1 %76, i1* %AF, align 1, !mcsema_real_eip !7
  store i1 %78, i1* %ZF, align 1, !mcsema_real_eip !7
  store i1 %77, i1* %SF, align 1, !mcsema_real_eip !7
  store i1 %81, i1* %OF, align 1, !mcsema_real_eip !7
  store i1 %16, i1* %DF, align 1, !mcsema_real_eip !7
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %19, i32 128, i32 8, i1 false), !mcsema_real_eip !7
  store i1 %20, i1* %FPU_B, align 1, !mcsema_real_eip !7
  store i1 %21, i1* %FPU_C3, align 1, !mcsema_real_eip !7
  store i3 %22, i3* %FPU_TOP, align 1, !mcsema_real_eip !7
  store i1 %23, i1* %FPU_C2, align 1, !mcsema_real_eip !7
  store i1 %24, i1* %FPU_C1, align 1, !mcsema_real_eip !7
  store i1 %25, i1* %FPU_C0, align 1, !mcsema_real_eip !7
  store i1 %26, i1* %FPU_ES, align 1, !mcsema_real_eip !7
  store i1 %27, i1* %FPU_SF, align 1, !mcsema_real_eip !7
  store i1 %28, i1* %FPU_PE, align 1, !mcsema_real_eip !7
  store i1 %29, i1* %FPU_UE, align 1, !mcsema_real_eip !7
  store i1 %30, i1* %FPU_OE, align 1, !mcsema_real_eip !7
  store i1 %31, i1* %FPU_ZE, align 1, !mcsema_real_eip !7
  store i1 %32, i1* %FPU_DE, align 1, !mcsema_real_eip !7
  store i1 %33, i1* %FPU_IE, align 1, !mcsema_real_eip !7
  store i1 %34, i1* %FPU_X, align 1, !mcsema_real_eip !7
  store i2 %35, i2* %FPU_RC, align 1, !mcsema_real_eip !7
  store i2 %36, i2* %FPU_PC, align 1, !mcsema_real_eip !7
  store i1 %37, i1* %FPU_PM, align 1, !mcsema_real_eip !7
  store i1 %38, i1* %FPU_UM, align 1, !mcsema_real_eip !7
  store i1 %39, i1* %FPU_OM, align 1, !mcsema_real_eip !7
  store i1 %40, i1* %FPU_ZM, align 1, !mcsema_real_eip !7
  store i1 %41, i1* %FPU_DM, align 1, !mcsema_real_eip !7
  store i1 %42, i1* %FPU_IM, align 1, !mcsema_real_eip !7
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !7
  store i64 %47, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !7
  store i16 %48, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !7
  store i64 %49, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !7
  store i128 %50, i128* %XMM0, align 1, !mcsema_real_eip !7
  store i128 %51, i128* %XMM1, align 1, !mcsema_real_eip !7
  store i128 %52, i128* %XMM2, align 1, !mcsema_real_eip !7
  store i128 %53, i128* %XMM3, align 1, !mcsema_real_eip !7
  store i128 %54, i128* %XMM4, align 1, !mcsema_real_eip !7
  store i128 %55, i128* %XMM5, align 1, !mcsema_real_eip !7
  store i128 %56, i128* %XMM6, align 1, !mcsema_real_eip !7
  store i128 %57, i128* %XMM7, align 1, !mcsema_real_eip !7
  store i128 %58, i128* %XMM8, align 1, !mcsema_real_eip !7
  store i128 %59, i128* %XMM9, align 1, !mcsema_real_eip !7
  store i128 %60, i128* %XMM10, align 1, !mcsema_real_eip !7
  store i128 %61, i128* %XMM11, align 1, !mcsema_real_eip !7
  store i128 %62, i128* %XMM12, align 1, !mcsema_real_eip !7
  store i128 %63, i128* %XMM13, align 1, !mcsema_real_eip !7
  store i128 %64, i128* %XMM14, align 1, !mcsema_real_eip !7
  store i128 %65, i128* %XMM15, align 1, !mcsema_real_eip !7
  %95 = bitcast i64* %STACK_BASE to <2 x i64>*
  store <2 x i64> %67, <2 x i64>* %95, align 1
  ret void, !mcsema_real_eip !7
}

define internal x86_64_sysvcc void @sub_104(%struct.regs*) {
entry:
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !51
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !51
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !51
  %1 = bitcast i64* %RBX to <2 x i64>*
  %2 = load <2 x i64>* %1, align 8
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !51
  %3 = load i64* %RDX, align 8, !mcsema_real_eip !51
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !51
  %4 = load i64* %RSI, align 8, !mcsema_real_eip !51
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !51
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !51
  %5 = load i64* %RSP, align 8, !mcsema_real_eip !51
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !51
  %6 = load i64* %RBP, align 8, !mcsema_real_eip !51
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !51
  %7 = bitcast i64* %R8 to <2 x i64>*
  %8 = load <2 x i64>* %7, align 8
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !51
  %9 = bitcast i64* %R10 to <2 x i64>*
  %10 = load <2 x i64>* %9, align 8
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !51
  %11 = bitcast i64* %R12 to <2 x i64>*
  %12 = load <2 x i64>* %11, align 8
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !51
  %13 = bitcast i64* %R14 to <2 x i64>*
  %14 = load <2 x i64>* %13, align 8
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !51
  %15 = load i64* %RIP, align 8, !mcsema_real_eip !51
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !51
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !51
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !51
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !51
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !51
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !51
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !51
  %16 = load i1* %DF, align 1, !mcsema_real_eip !51
  %17 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !51
  %18 = bitcast x86_fp80* %17 to i8*, !mcsema_real_eip !51
  %19 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !51
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %18, i32 128, i32 4, i1 false), !mcsema_real_eip !51
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !51
  %20 = load i1* %FPU_B, align 1, !mcsema_real_eip !51
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !51
  %21 = load i1* %FPU_C3, align 1, !mcsema_real_eip !51
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !51
  %22 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !51
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !51
  %23 = load i1* %FPU_C2, align 1, !mcsema_real_eip !51
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !51
  %24 = load i1* %FPU_C1, align 1, !mcsema_real_eip !51
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !51
  %25 = load i1* %FPU_C0, align 1, !mcsema_real_eip !51
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !51
  %26 = load i1* %FPU_ES, align 1, !mcsema_real_eip !51
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !51
  %27 = load i1* %FPU_SF, align 1, !mcsema_real_eip !51
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !51
  %28 = load i1* %FPU_PE, align 1, !mcsema_real_eip !51
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !51
  %29 = load i1* %FPU_UE, align 1, !mcsema_real_eip !51
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !51
  %30 = load i1* %FPU_OE, align 1, !mcsema_real_eip !51
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !51
  %31 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !51
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !51
  %32 = load i1* %FPU_DE, align 1, !mcsema_real_eip !51
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !51
  %33 = load i1* %FPU_IE, align 1, !mcsema_real_eip !51
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !51
  %34 = load i1* %FPU_X, align 1, !mcsema_real_eip !51
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !51
  %35 = load i2* %FPU_RC, align 1, !mcsema_real_eip !51
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !51
  %36 = load i2* %FPU_PC, align 1, !mcsema_real_eip !51
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !51
  %37 = load i1* %FPU_PM, align 1, !mcsema_real_eip !51
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !51
  %38 = load i1* %FPU_UM, align 1, !mcsema_real_eip !51
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !51
  %39 = load i1* %FPU_OM, align 1, !mcsema_real_eip !51
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !51
  %40 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !51
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !51
  %41 = load i1* %FPU_DM, align 1, !mcsema_real_eip !51
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !51
  %42 = load i1* %FPU_IM, align 1, !mcsema_real_eip !51
  %43 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !51
  %44 = bitcast i8* %43 to i64*
  %45 = load i64* %44, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !51
  %46 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !51
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !51
  %47 = load i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !51
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !51
  %48 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !51
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !51
  %49 = load i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !51
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !51
  %50 = load i128* %XMM0, align 1, !mcsema_real_eip !51
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !51
  %51 = load i128* %XMM1, align 1, !mcsema_real_eip !51
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !51
  %52 = load i128* %XMM2, align 1, !mcsema_real_eip !51
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !51
  %53 = load i128* %XMM3, align 1, !mcsema_real_eip !51
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !51
  %54 = load i128* %XMM4, align 1, !mcsema_real_eip !51
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !51
  %55 = load i128* %XMM5, align 1, !mcsema_real_eip !51
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !51
  %56 = load i128* %XMM6, align 1, !mcsema_real_eip !51
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !51
  %57 = load i128* %XMM7, align 1, !mcsema_real_eip !51
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !51
  %58 = load i128* %XMM8, align 1, !mcsema_real_eip !51
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !51
  %59 = load i128* %XMM9, align 1, !mcsema_real_eip !51
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !51
  %60 = load i128* %XMM10, align 1, !mcsema_real_eip !51
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !51
  %61 = load i128* %XMM11, align 1, !mcsema_real_eip !51
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !51
  %62 = load i128* %XMM12, align 1, !mcsema_real_eip !51
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !51
  %63 = load i128* %XMM13, align 1, !mcsema_real_eip !51
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !51
  %64 = load i128* %XMM14, align 1, !mcsema_real_eip !51
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !51
  %65 = load i128* %XMM15, align 1, !mcsema_real_eip !51
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !51
  %66 = bitcast i64* %STACK_BASE to <2 x i64>*
  %67 = load <2 x i64>* %66, align 8
  %68 = extractelement <2 x i64> %2, i32 1
  %69 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 62), i64 %4, i64 %3, i64 %68), !mcsema_real_eip !52
  %70 = add i64 %6, -72, !mcsema_real_eip !53
  %71 = trunc i64 %69 to i32, !mcsema_real_eip !53
  %72 = inttoptr i64 %70 to i32*
  store i32 %71, i32* %72, align 4, !mcsema_real_eip !53
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %5, i64 144)
  %73 = extractvalue { i64, i1 } %uadd, 0
  %74 = xor i64 %73, %5, !mcsema_real_eip !5
  %75 = and i64 %74, 16
  %76 = icmp eq i64 %75, 0
  %77 = icmp slt i64 %73, 0
  %78 = icmp eq i64 %73, 0, !mcsema_real_eip !5
  %79 = xor i64 %5, -9223372036854775808, !mcsema_real_eip !5
  %80 = and i64 %74, %79, !mcsema_real_eip !5
  %81 = icmp slt i64 %80, 0
  %82 = trunc i64 %73 to i8, !mcsema_real_eip !5
  %83 = tail call i8 @llvm.ctpop.i8(i8 %82), !mcsema_real_eip !5
  %84 = and i8 %83, 1
  %85 = icmp eq i8 %84, 0
  %86 = extractvalue { i64, i1 } %uadd, 1
  %87 = inttoptr i64 %73 to i64*, !mcsema_real_eip !6
  %88 = load i64* %87, align 8, !mcsema_real_eip !6
  %89 = add i64 %73, 16, !mcsema_real_eip !7
  store i64 0, i64* %RAX, align 8, !mcsema_real_eip !7
  %90 = bitcast i64* %RBX to <2 x i64>*
  store <2 x i64> %2, <2 x i64>* %90, align 8
  store i64 %3, i64* %RDX, align 8, !mcsema_real_eip !7
  store i64 %4, i64* %RSI, align 8, !mcsema_real_eip !7
  store i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 62), i64* %RDI, align 8, !mcsema_real_eip !7
  store i64 %89, i64* %RSP, align 8, !mcsema_real_eip !7
  store i64 %88, i64* %RBP, align 8, !mcsema_real_eip !7
  %91 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> %8, <2 x i64>* %91, align 8
  %92 = bitcast i64* %R10 to <2 x i64>*
  store <2 x i64> %10, <2 x i64>* %92, align 8
  %93 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> %12, <2 x i64>* %93, align 8
  %94 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> %14, <2 x i64>* %94, align 8
  store i64 %15, i64* %RIP, align 8, !mcsema_real_eip !7
  store i1 %86, i1* %CF, align 1, !mcsema_real_eip !7
  store i1 %85, i1* %PF, align 1, !mcsema_real_eip !7
  store i1 %76, i1* %AF, align 1, !mcsema_real_eip !7
  store i1 %78, i1* %ZF, align 1, !mcsema_real_eip !7
  store i1 %77, i1* %SF, align 1, !mcsema_real_eip !7
  store i1 %81, i1* %OF, align 1, !mcsema_real_eip !7
  store i1 %16, i1* %DF, align 1, !mcsema_real_eip !7
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %19, i32 128, i32 8, i1 false), !mcsema_real_eip !7
  store i1 %20, i1* %FPU_B, align 1, !mcsema_real_eip !7
  store i1 %21, i1* %FPU_C3, align 1, !mcsema_real_eip !7
  store i3 %22, i3* %FPU_TOP, align 1, !mcsema_real_eip !7
  store i1 %23, i1* %FPU_C2, align 1, !mcsema_real_eip !7
  store i1 %24, i1* %FPU_C1, align 1, !mcsema_real_eip !7
  store i1 %25, i1* %FPU_C0, align 1, !mcsema_real_eip !7
  store i1 %26, i1* %FPU_ES, align 1, !mcsema_real_eip !7
  store i1 %27, i1* %FPU_SF, align 1, !mcsema_real_eip !7
  store i1 %28, i1* %FPU_PE, align 1, !mcsema_real_eip !7
  store i1 %29, i1* %FPU_UE, align 1, !mcsema_real_eip !7
  store i1 %30, i1* %FPU_OE, align 1, !mcsema_real_eip !7
  store i1 %31, i1* %FPU_ZE, align 1, !mcsema_real_eip !7
  store i1 %32, i1* %FPU_DE, align 1, !mcsema_real_eip !7
  store i1 %33, i1* %FPU_IE, align 1, !mcsema_real_eip !7
  store i1 %34, i1* %FPU_X, align 1, !mcsema_real_eip !7
  store i2 %35, i2* %FPU_RC, align 1, !mcsema_real_eip !7
  store i2 %36, i2* %FPU_PC, align 1, !mcsema_real_eip !7
  store i1 %37, i1* %FPU_PM, align 1, !mcsema_real_eip !7
  store i1 %38, i1* %FPU_UM, align 1, !mcsema_real_eip !7
  store i1 %39, i1* %FPU_OM, align 1, !mcsema_real_eip !7
  store i1 %40, i1* %FPU_ZM, align 1, !mcsema_real_eip !7
  store i1 %41, i1* %FPU_DM, align 1, !mcsema_real_eip !7
  store i1 %42, i1* %FPU_IM, align 1, !mcsema_real_eip !7
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !7
  store i64 %47, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !7
  store i16 %48, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !7
  store i64 %49, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !7
  store i128 %50, i128* %XMM0, align 1, !mcsema_real_eip !7
  store i128 %51, i128* %XMM1, align 1, !mcsema_real_eip !7
  store i128 %52, i128* %XMM2, align 1, !mcsema_real_eip !7
  store i128 %53, i128* %XMM3, align 1, !mcsema_real_eip !7
  store i128 %54, i128* %XMM4, align 1, !mcsema_real_eip !7
  store i128 %55, i128* %XMM5, align 1, !mcsema_real_eip !7
  store i128 %56, i128* %XMM6, align 1, !mcsema_real_eip !7
  store i128 %57, i128* %XMM7, align 1, !mcsema_real_eip !7
  store i128 %58, i128* %XMM8, align 1, !mcsema_real_eip !7
  store i128 %59, i128* %XMM9, align 1, !mcsema_real_eip !7
  store i128 %60, i128* %XMM10, align 1, !mcsema_real_eip !7
  store i128 %61, i128* %XMM11, align 1, !mcsema_real_eip !7
  store i128 %62, i128* %XMM12, align 1, !mcsema_real_eip !7
  store i128 %63, i128* %XMM13, align 1, !mcsema_real_eip !7
  store i128 %64, i128* %XMM14, align 1, !mcsema_real_eip !7
  store i128 %65, i128* %XMM15, align 1, !mcsema_real_eip !7
  %95 = bitcast i64* %STACK_BASE to <2 x i64>*
  store <2 x i64> %67, <2 x i64>* %95, align 1
  ret void, !mcsema_real_eip !7
}

define internal x86_64_sysvcc void @sub_11d(%struct.regs*) {
entry:
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !54
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !54
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !54
  %1 = bitcast i64* %RBX to <2 x i64>*
  %2 = load <2 x i64>* %1, align 8
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !54
  %3 = load i64* %RDX, align 8, !mcsema_real_eip !54
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !54
  %4 = load i64* %RSI, align 8, !mcsema_real_eip !54
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !54
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !54
  %5 = load i64* %RSP, align 8, !mcsema_real_eip !54
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !54
  %6 = load i64* %RBP, align 8, !mcsema_real_eip !54
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !54
  %7 = bitcast i64* %R8 to <2 x i64>*
  %8 = load <2 x i64>* %7, align 8
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !54
  %9 = bitcast i64* %R10 to <2 x i64>*
  %10 = load <2 x i64>* %9, align 8
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !54
  %11 = bitcast i64* %R12 to <2 x i64>*
  %12 = load <2 x i64>* %11, align 8
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !54
  %13 = bitcast i64* %R14 to <2 x i64>*
  %14 = load <2 x i64>* %13, align 8
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !54
  %15 = load i64* %RIP, align 8, !mcsema_real_eip !54
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !54
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !54
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !54
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !54
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !54
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !54
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !54
  %16 = load i1* %DF, align 1, !mcsema_real_eip !54
  %17 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !54
  %18 = bitcast x86_fp80* %17 to i8*, !mcsema_real_eip !54
  %19 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !54
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %18, i32 128, i32 4, i1 false), !mcsema_real_eip !54
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !54
  %20 = load i1* %FPU_B, align 1, !mcsema_real_eip !54
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !54
  %21 = load i1* %FPU_C3, align 1, !mcsema_real_eip !54
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !54
  %22 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !54
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !54
  %23 = load i1* %FPU_C2, align 1, !mcsema_real_eip !54
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !54
  %24 = load i1* %FPU_C1, align 1, !mcsema_real_eip !54
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !54
  %25 = load i1* %FPU_C0, align 1, !mcsema_real_eip !54
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !54
  %26 = load i1* %FPU_ES, align 1, !mcsema_real_eip !54
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !54
  %27 = load i1* %FPU_SF, align 1, !mcsema_real_eip !54
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !54
  %28 = load i1* %FPU_PE, align 1, !mcsema_real_eip !54
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !54
  %29 = load i1* %FPU_UE, align 1, !mcsema_real_eip !54
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !54
  %30 = load i1* %FPU_OE, align 1, !mcsema_real_eip !54
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !54
  %31 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !54
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !54
  %32 = load i1* %FPU_DE, align 1, !mcsema_real_eip !54
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !54
  %33 = load i1* %FPU_IE, align 1, !mcsema_real_eip !54
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !54
  %34 = load i1* %FPU_X, align 1, !mcsema_real_eip !54
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !54
  %35 = load i2* %FPU_RC, align 1, !mcsema_real_eip !54
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !54
  %36 = load i2* %FPU_PC, align 1, !mcsema_real_eip !54
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !54
  %37 = load i1* %FPU_PM, align 1, !mcsema_real_eip !54
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !54
  %38 = load i1* %FPU_UM, align 1, !mcsema_real_eip !54
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !54
  %39 = load i1* %FPU_OM, align 1, !mcsema_real_eip !54
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !54
  %40 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !54
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !54
  %41 = load i1* %FPU_DM, align 1, !mcsema_real_eip !54
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !54
  %42 = load i1* %FPU_IM, align 1, !mcsema_real_eip !54
  %43 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !54
  %44 = bitcast i8* %43 to i64*
  %45 = load i64* %44, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !54
  %46 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !54
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !54
  %47 = load i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !54
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !54
  %48 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !54
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !54
  %49 = load i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !54
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !54
  %50 = load i128* %XMM0, align 1, !mcsema_real_eip !54
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !54
  %51 = load i128* %XMM1, align 1, !mcsema_real_eip !54
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !54
  %52 = load i128* %XMM2, align 1, !mcsema_real_eip !54
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !54
  %53 = load i128* %XMM3, align 1, !mcsema_real_eip !54
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !54
  %54 = load i128* %XMM4, align 1, !mcsema_real_eip !54
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !54
  %55 = load i128* %XMM5, align 1, !mcsema_real_eip !54
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !54
  %56 = load i128* %XMM6, align 1, !mcsema_real_eip !54
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !54
  %57 = load i128* %XMM7, align 1, !mcsema_real_eip !54
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !54
  %58 = load i128* %XMM8, align 1, !mcsema_real_eip !54
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !54
  %59 = load i128* %XMM9, align 1, !mcsema_real_eip !54
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !54
  %60 = load i128* %XMM10, align 1, !mcsema_real_eip !54
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !54
  %61 = load i128* %XMM11, align 1, !mcsema_real_eip !54
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !54
  %62 = load i128* %XMM12, align 1, !mcsema_real_eip !54
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !54
  %63 = load i128* %XMM13, align 1, !mcsema_real_eip !54
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !54
  %64 = load i128* %XMM14, align 1, !mcsema_real_eip !54
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !54
  %65 = load i128* %XMM15, align 1, !mcsema_real_eip !54
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !54
  %66 = bitcast i64* %STACK_BASE to <2 x i64>*
  %67 = load <2 x i64>* %66, align 8
  %68 = extractelement <2 x i64> %2, i32 1
  %69 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 77), i64 %4, i64 %3, i64 %68), !mcsema_real_eip !55
  %70 = add i64 %6, -76, !mcsema_real_eip !56
  %71 = trunc i64 %69 to i32, !mcsema_real_eip !56
  %72 = inttoptr i64 %70 to i32*
  store i32 %71, i32* %72, align 4, !mcsema_real_eip !56
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %5, i64 144)
  %73 = extractvalue { i64, i1 } %uadd, 0
  %74 = xor i64 %73, %5, !mcsema_real_eip !5
  %75 = and i64 %74, 16
  %76 = icmp eq i64 %75, 0
  %77 = icmp slt i64 %73, 0
  %78 = icmp eq i64 %73, 0, !mcsema_real_eip !5
  %79 = xor i64 %5, -9223372036854775808, !mcsema_real_eip !5
  %80 = and i64 %74, %79, !mcsema_real_eip !5
  %81 = icmp slt i64 %80, 0
  %82 = trunc i64 %73 to i8, !mcsema_real_eip !5
  %83 = tail call i8 @llvm.ctpop.i8(i8 %82), !mcsema_real_eip !5
  %84 = and i8 %83, 1
  %85 = icmp eq i8 %84, 0
  %86 = extractvalue { i64, i1 } %uadd, 1
  %87 = inttoptr i64 %73 to i64*, !mcsema_real_eip !6
  %88 = load i64* %87, align 8, !mcsema_real_eip !6
  %89 = add i64 %73, 16, !mcsema_real_eip !7
  store i64 0, i64* %RAX, align 8, !mcsema_real_eip !7
  %90 = bitcast i64* %RBX to <2 x i64>*
  store <2 x i64> %2, <2 x i64>* %90, align 8
  store i64 %3, i64* %RDX, align 8, !mcsema_real_eip !7
  store i64 %4, i64* %RSI, align 8, !mcsema_real_eip !7
  store i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 77), i64* %RDI, align 8, !mcsema_real_eip !7
  store i64 %89, i64* %RSP, align 8, !mcsema_real_eip !7
  store i64 %88, i64* %RBP, align 8, !mcsema_real_eip !7
  %91 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> %8, <2 x i64>* %91, align 8
  %92 = bitcast i64* %R10 to <2 x i64>*
  store <2 x i64> %10, <2 x i64>* %92, align 8
  %93 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> %12, <2 x i64>* %93, align 8
  %94 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> %14, <2 x i64>* %94, align 8
  store i64 %15, i64* %RIP, align 8, !mcsema_real_eip !7
  store i1 %86, i1* %CF, align 1, !mcsema_real_eip !7
  store i1 %85, i1* %PF, align 1, !mcsema_real_eip !7
  store i1 %76, i1* %AF, align 1, !mcsema_real_eip !7
  store i1 %78, i1* %ZF, align 1, !mcsema_real_eip !7
  store i1 %77, i1* %SF, align 1, !mcsema_real_eip !7
  store i1 %81, i1* %OF, align 1, !mcsema_real_eip !7
  store i1 %16, i1* %DF, align 1, !mcsema_real_eip !7
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %19, i32 128, i32 8, i1 false), !mcsema_real_eip !7
  store i1 %20, i1* %FPU_B, align 1, !mcsema_real_eip !7
  store i1 %21, i1* %FPU_C3, align 1, !mcsema_real_eip !7
  store i3 %22, i3* %FPU_TOP, align 1, !mcsema_real_eip !7
  store i1 %23, i1* %FPU_C2, align 1, !mcsema_real_eip !7
  store i1 %24, i1* %FPU_C1, align 1, !mcsema_real_eip !7
  store i1 %25, i1* %FPU_C0, align 1, !mcsema_real_eip !7
  store i1 %26, i1* %FPU_ES, align 1, !mcsema_real_eip !7
  store i1 %27, i1* %FPU_SF, align 1, !mcsema_real_eip !7
  store i1 %28, i1* %FPU_PE, align 1, !mcsema_real_eip !7
  store i1 %29, i1* %FPU_UE, align 1, !mcsema_real_eip !7
  store i1 %30, i1* %FPU_OE, align 1, !mcsema_real_eip !7
  store i1 %31, i1* %FPU_ZE, align 1, !mcsema_real_eip !7
  store i1 %32, i1* %FPU_DE, align 1, !mcsema_real_eip !7
  store i1 %33, i1* %FPU_IE, align 1, !mcsema_real_eip !7
  store i1 %34, i1* %FPU_X, align 1, !mcsema_real_eip !7
  store i2 %35, i2* %FPU_RC, align 1, !mcsema_real_eip !7
  store i2 %36, i2* %FPU_PC, align 1, !mcsema_real_eip !7
  store i1 %37, i1* %FPU_PM, align 1, !mcsema_real_eip !7
  store i1 %38, i1* %FPU_UM, align 1, !mcsema_real_eip !7
  store i1 %39, i1* %FPU_OM, align 1, !mcsema_real_eip !7
  store i1 %40, i1* %FPU_ZM, align 1, !mcsema_real_eip !7
  store i1 %41, i1* %FPU_DM, align 1, !mcsema_real_eip !7
  store i1 %42, i1* %FPU_IM, align 1, !mcsema_real_eip !7
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !7
  store i64 %47, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !7
  store i16 %48, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !7
  store i64 %49, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !7
  store i128 %50, i128* %XMM0, align 1, !mcsema_real_eip !7
  store i128 %51, i128* %XMM1, align 1, !mcsema_real_eip !7
  store i128 %52, i128* %XMM2, align 1, !mcsema_real_eip !7
  store i128 %53, i128* %XMM3, align 1, !mcsema_real_eip !7
  store i128 %54, i128* %XMM4, align 1, !mcsema_real_eip !7
  store i128 %55, i128* %XMM5, align 1, !mcsema_real_eip !7
  store i128 %56, i128* %XMM6, align 1, !mcsema_real_eip !7
  store i128 %57, i128* %XMM7, align 1, !mcsema_real_eip !7
  store i128 %58, i128* %XMM8, align 1, !mcsema_real_eip !7
  store i128 %59, i128* %XMM9, align 1, !mcsema_real_eip !7
  store i128 %60, i128* %XMM10, align 1, !mcsema_real_eip !7
  store i128 %61, i128* %XMM11, align 1, !mcsema_real_eip !7
  store i128 %62, i128* %XMM12, align 1, !mcsema_real_eip !7
  store i128 %63, i128* %XMM13, align 1, !mcsema_real_eip !7
  store i128 %64, i128* %XMM14, align 1, !mcsema_real_eip !7
  store i128 %65, i128* %XMM15, align 1, !mcsema_real_eip !7
  %95 = bitcast i64* %STACK_BASE to <2 x i64>*
  store <2 x i64> %67, <2 x i64>* %95, align 1
  ret void, !mcsema_real_eip !7
}

define internal x86_64_sysvcc void @sub_136(%struct.regs*) {
entry:
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !57
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !57
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !57
  %1 = bitcast i64* %RBX to <2 x i64>*
  %2 = load <2 x i64>* %1, align 8
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !57
  %3 = load i64* %RDX, align 8, !mcsema_real_eip !57
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !57
  %4 = load i64* %RSI, align 8, !mcsema_real_eip !57
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !57
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !57
  %5 = load i64* %RSP, align 8, !mcsema_real_eip !57
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !57
  %6 = load i64* %RBP, align 8, !mcsema_real_eip !57
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !57
  %7 = bitcast i64* %R8 to <2 x i64>*
  %8 = load <2 x i64>* %7, align 8
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !57
  %9 = bitcast i64* %R10 to <2 x i64>*
  %10 = load <2 x i64>* %9, align 8
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !57
  %11 = bitcast i64* %R12 to <2 x i64>*
  %12 = load <2 x i64>* %11, align 8
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !57
  %13 = bitcast i64* %R14 to <2 x i64>*
  %14 = load <2 x i64>* %13, align 8
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !57
  %15 = load i64* %RIP, align 8, !mcsema_real_eip !57
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !57
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !57
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !57
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !57
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !57
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !57
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !57
  %16 = load i1* %DF, align 1, !mcsema_real_eip !57
  %17 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !57
  %18 = bitcast x86_fp80* %17 to i8*, !mcsema_real_eip !57
  %19 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !57
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %18, i32 128, i32 4, i1 false), !mcsema_real_eip !57
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !57
  %20 = load i1* %FPU_B, align 1, !mcsema_real_eip !57
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !57
  %21 = load i1* %FPU_C3, align 1, !mcsema_real_eip !57
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !57
  %22 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !57
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !57
  %23 = load i1* %FPU_C2, align 1, !mcsema_real_eip !57
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !57
  %24 = load i1* %FPU_C1, align 1, !mcsema_real_eip !57
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !57
  %25 = load i1* %FPU_C0, align 1, !mcsema_real_eip !57
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !57
  %26 = load i1* %FPU_ES, align 1, !mcsema_real_eip !57
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !57
  %27 = load i1* %FPU_SF, align 1, !mcsema_real_eip !57
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !57
  %28 = load i1* %FPU_PE, align 1, !mcsema_real_eip !57
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !57
  %29 = load i1* %FPU_UE, align 1, !mcsema_real_eip !57
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !57
  %30 = load i1* %FPU_OE, align 1, !mcsema_real_eip !57
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !57
  %31 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !57
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !57
  %32 = load i1* %FPU_DE, align 1, !mcsema_real_eip !57
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !57
  %33 = load i1* %FPU_IE, align 1, !mcsema_real_eip !57
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !57
  %34 = load i1* %FPU_X, align 1, !mcsema_real_eip !57
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !57
  %35 = load i2* %FPU_RC, align 1, !mcsema_real_eip !57
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !57
  %36 = load i2* %FPU_PC, align 1, !mcsema_real_eip !57
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !57
  %37 = load i1* %FPU_PM, align 1, !mcsema_real_eip !57
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !57
  %38 = load i1* %FPU_UM, align 1, !mcsema_real_eip !57
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !57
  %39 = load i1* %FPU_OM, align 1, !mcsema_real_eip !57
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !57
  %40 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !57
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !57
  %41 = load i1* %FPU_DM, align 1, !mcsema_real_eip !57
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !57
  %42 = load i1* %FPU_IM, align 1, !mcsema_real_eip !57
  %43 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !57
  %44 = bitcast i8* %43 to i64*
  %45 = load i64* %44, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !57
  %46 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !57
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !57
  %47 = load i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !57
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !57
  %48 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !57
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !57
  %49 = load i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !57
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !57
  %50 = load i128* %XMM0, align 1, !mcsema_real_eip !57
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !57
  %51 = load i128* %XMM1, align 1, !mcsema_real_eip !57
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !57
  %52 = load i128* %XMM2, align 1, !mcsema_real_eip !57
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !57
  %53 = load i128* %XMM3, align 1, !mcsema_real_eip !57
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !57
  %54 = load i128* %XMM4, align 1, !mcsema_real_eip !57
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !57
  %55 = load i128* %XMM5, align 1, !mcsema_real_eip !57
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !57
  %56 = load i128* %XMM6, align 1, !mcsema_real_eip !57
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !57
  %57 = load i128* %XMM7, align 1, !mcsema_real_eip !57
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !57
  %58 = load i128* %XMM8, align 1, !mcsema_real_eip !57
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !57
  %59 = load i128* %XMM9, align 1, !mcsema_real_eip !57
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !57
  %60 = load i128* %XMM10, align 1, !mcsema_real_eip !57
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !57
  %61 = load i128* %XMM11, align 1, !mcsema_real_eip !57
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !57
  %62 = load i128* %XMM12, align 1, !mcsema_real_eip !57
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !57
  %63 = load i128* %XMM13, align 1, !mcsema_real_eip !57
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !57
  %64 = load i128* %XMM14, align 1, !mcsema_real_eip !57
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !57
  %65 = load i128* %XMM15, align 1, !mcsema_real_eip !57
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !57
  %66 = bitcast i64* %STACK_BASE to <2 x i64>*
  %67 = load <2 x i64>* %66, align 8
  %68 = extractelement <2 x i64> %2, i32 1
  %69 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 95), i64 %4, i64 %3, i64 %68), !mcsema_real_eip !58
  %70 = add i64 %6, -80, !mcsema_real_eip !59
  %71 = trunc i64 %69 to i32, !mcsema_real_eip !59
  %72 = inttoptr i64 %70 to i32*
  store i32 %71, i32* %72, align 4, !mcsema_real_eip !59
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %5, i64 144)
  %73 = extractvalue { i64, i1 } %uadd, 0
  %74 = xor i64 %73, %5, !mcsema_real_eip !5
  %75 = and i64 %74, 16
  %76 = icmp eq i64 %75, 0
  %77 = icmp slt i64 %73, 0
  %78 = icmp eq i64 %73, 0, !mcsema_real_eip !5
  %79 = xor i64 %5, -9223372036854775808, !mcsema_real_eip !5
  %80 = and i64 %74, %79, !mcsema_real_eip !5
  %81 = icmp slt i64 %80, 0
  %82 = trunc i64 %73 to i8, !mcsema_real_eip !5
  %83 = tail call i8 @llvm.ctpop.i8(i8 %82), !mcsema_real_eip !5
  %84 = and i8 %83, 1
  %85 = icmp eq i8 %84, 0
  %86 = extractvalue { i64, i1 } %uadd, 1
  %87 = inttoptr i64 %73 to i64*, !mcsema_real_eip !6
  %88 = load i64* %87, align 8, !mcsema_real_eip !6
  %89 = add i64 %73, 16, !mcsema_real_eip !7
  store i64 0, i64* %RAX, align 8, !mcsema_real_eip !7
  %90 = bitcast i64* %RBX to <2 x i64>*
  store <2 x i64> %2, <2 x i64>* %90, align 8
  store i64 %3, i64* %RDX, align 8, !mcsema_real_eip !7
  store i64 %4, i64* %RSI, align 8, !mcsema_real_eip !7
  store i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 95), i64* %RDI, align 8, !mcsema_real_eip !7
  store i64 %89, i64* %RSP, align 8, !mcsema_real_eip !7
  store i64 %88, i64* %RBP, align 8, !mcsema_real_eip !7
  %91 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> %8, <2 x i64>* %91, align 8
  %92 = bitcast i64* %R10 to <2 x i64>*
  store <2 x i64> %10, <2 x i64>* %92, align 8
  %93 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> %12, <2 x i64>* %93, align 8
  %94 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> %14, <2 x i64>* %94, align 8
  store i64 %15, i64* %RIP, align 8, !mcsema_real_eip !7
  store i1 %86, i1* %CF, align 1, !mcsema_real_eip !7
  store i1 %85, i1* %PF, align 1, !mcsema_real_eip !7
  store i1 %76, i1* %AF, align 1, !mcsema_real_eip !7
  store i1 %78, i1* %ZF, align 1, !mcsema_real_eip !7
  store i1 %77, i1* %SF, align 1, !mcsema_real_eip !7
  store i1 %81, i1* %OF, align 1, !mcsema_real_eip !7
  store i1 %16, i1* %DF, align 1, !mcsema_real_eip !7
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %19, i32 128, i32 8, i1 false), !mcsema_real_eip !7
  store i1 %20, i1* %FPU_B, align 1, !mcsema_real_eip !7
  store i1 %21, i1* %FPU_C3, align 1, !mcsema_real_eip !7
  store i3 %22, i3* %FPU_TOP, align 1, !mcsema_real_eip !7
  store i1 %23, i1* %FPU_C2, align 1, !mcsema_real_eip !7
  store i1 %24, i1* %FPU_C1, align 1, !mcsema_real_eip !7
  store i1 %25, i1* %FPU_C0, align 1, !mcsema_real_eip !7
  store i1 %26, i1* %FPU_ES, align 1, !mcsema_real_eip !7
  store i1 %27, i1* %FPU_SF, align 1, !mcsema_real_eip !7
  store i1 %28, i1* %FPU_PE, align 1, !mcsema_real_eip !7
  store i1 %29, i1* %FPU_UE, align 1, !mcsema_real_eip !7
  store i1 %30, i1* %FPU_OE, align 1, !mcsema_real_eip !7
  store i1 %31, i1* %FPU_ZE, align 1, !mcsema_real_eip !7
  store i1 %32, i1* %FPU_DE, align 1, !mcsema_real_eip !7
  store i1 %33, i1* %FPU_IE, align 1, !mcsema_real_eip !7
  store i1 %34, i1* %FPU_X, align 1, !mcsema_real_eip !7
  store i2 %35, i2* %FPU_RC, align 1, !mcsema_real_eip !7
  store i2 %36, i2* %FPU_PC, align 1, !mcsema_real_eip !7
  store i1 %37, i1* %FPU_PM, align 1, !mcsema_real_eip !7
  store i1 %38, i1* %FPU_UM, align 1, !mcsema_real_eip !7
  store i1 %39, i1* %FPU_OM, align 1, !mcsema_real_eip !7
  store i1 %40, i1* %FPU_ZM, align 1, !mcsema_real_eip !7
  store i1 %41, i1* %FPU_DM, align 1, !mcsema_real_eip !7
  store i1 %42, i1* %FPU_IM, align 1, !mcsema_real_eip !7
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !7
  store i64 %47, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !7
  store i16 %48, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !7
  store i64 %49, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !7
  store i128 %50, i128* %XMM0, align 1, !mcsema_real_eip !7
  store i128 %51, i128* %XMM1, align 1, !mcsema_real_eip !7
  store i128 %52, i128* %XMM2, align 1, !mcsema_real_eip !7
  store i128 %53, i128* %XMM3, align 1, !mcsema_real_eip !7
  store i128 %54, i128* %XMM4, align 1, !mcsema_real_eip !7
  store i128 %55, i128* %XMM5, align 1, !mcsema_real_eip !7
  store i128 %56, i128* %XMM6, align 1, !mcsema_real_eip !7
  store i128 %57, i128* %XMM7, align 1, !mcsema_real_eip !7
  store i128 %58, i128* %XMM8, align 1, !mcsema_real_eip !7
  store i128 %59, i128* %XMM9, align 1, !mcsema_real_eip !7
  store i128 %60, i128* %XMM10, align 1, !mcsema_real_eip !7
  store i128 %61, i128* %XMM11, align 1, !mcsema_real_eip !7
  store i128 %62, i128* %XMM12, align 1, !mcsema_real_eip !7
  store i128 %63, i128* %XMM13, align 1, !mcsema_real_eip !7
  store i128 %64, i128* %XMM14, align 1, !mcsema_real_eip !7
  store i128 %65, i128* %XMM15, align 1, !mcsema_real_eip !7
  %95 = bitcast i64* %STACK_BASE to <2 x i64>*
  store <2 x i64> %67, <2 x i64>* %95, align 1
  ret void, !mcsema_real_eip !7
}

define internal x86_64_sysvcc void @sub_14f(%struct.regs*) {
entry:
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !60
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !60
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !60
  %1 = bitcast i64* %RBX to <2 x i64>*
  %2 = load <2 x i64>* %1, align 8
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !60
  %3 = load i64* %RDX, align 8, !mcsema_real_eip !60
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !60
  %4 = load i64* %RSI, align 8, !mcsema_real_eip !60
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !60
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !60
  %5 = load i64* %RSP, align 8, !mcsema_real_eip !60
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !60
  %6 = load i64* %RBP, align 8, !mcsema_real_eip !60
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !60
  %7 = bitcast i64* %R8 to <2 x i64>*
  %8 = load <2 x i64>* %7, align 8
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !60
  %9 = bitcast i64* %R10 to <2 x i64>*
  %10 = load <2 x i64>* %9, align 8
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !60
  %11 = bitcast i64* %R12 to <2 x i64>*
  %12 = load <2 x i64>* %11, align 8
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !60
  %13 = bitcast i64* %R14 to <2 x i64>*
  %14 = load <2 x i64>* %13, align 8
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !60
  %15 = load i64* %RIP, align 8, !mcsema_real_eip !60
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !60
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !60
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !60
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !60
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !60
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !60
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !60
  %16 = load i1* %DF, align 1, !mcsema_real_eip !60
  %17 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !60
  %18 = bitcast x86_fp80* %17 to i8*, !mcsema_real_eip !60
  %19 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !60
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %18, i32 128, i32 4, i1 false), !mcsema_real_eip !60
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !60
  %20 = load i1* %FPU_B, align 1, !mcsema_real_eip !60
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !60
  %21 = load i1* %FPU_C3, align 1, !mcsema_real_eip !60
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !60
  %22 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !60
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !60
  %23 = load i1* %FPU_C2, align 1, !mcsema_real_eip !60
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !60
  %24 = load i1* %FPU_C1, align 1, !mcsema_real_eip !60
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !60
  %25 = load i1* %FPU_C0, align 1, !mcsema_real_eip !60
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !60
  %26 = load i1* %FPU_ES, align 1, !mcsema_real_eip !60
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !60
  %27 = load i1* %FPU_SF, align 1, !mcsema_real_eip !60
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !60
  %28 = load i1* %FPU_PE, align 1, !mcsema_real_eip !60
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !60
  %29 = load i1* %FPU_UE, align 1, !mcsema_real_eip !60
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !60
  %30 = load i1* %FPU_OE, align 1, !mcsema_real_eip !60
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !60
  %31 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !60
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !60
  %32 = load i1* %FPU_DE, align 1, !mcsema_real_eip !60
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !60
  %33 = load i1* %FPU_IE, align 1, !mcsema_real_eip !60
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !60
  %34 = load i1* %FPU_X, align 1, !mcsema_real_eip !60
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !60
  %35 = load i2* %FPU_RC, align 1, !mcsema_real_eip !60
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !60
  %36 = load i2* %FPU_PC, align 1, !mcsema_real_eip !60
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !60
  %37 = load i1* %FPU_PM, align 1, !mcsema_real_eip !60
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !60
  %38 = load i1* %FPU_UM, align 1, !mcsema_real_eip !60
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !60
  %39 = load i1* %FPU_OM, align 1, !mcsema_real_eip !60
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !60
  %40 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !60
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !60
  %41 = load i1* %FPU_DM, align 1, !mcsema_real_eip !60
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !60
  %42 = load i1* %FPU_IM, align 1, !mcsema_real_eip !60
  %43 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !60
  %44 = bitcast i8* %43 to i64*
  %45 = load i64* %44, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !60
  %46 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !60
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !60
  %47 = load i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !60
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !60
  %48 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !60
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !60
  %49 = load i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !60
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !60
  %50 = load i128* %XMM0, align 1, !mcsema_real_eip !60
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !60
  %51 = load i128* %XMM1, align 1, !mcsema_real_eip !60
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !60
  %52 = load i128* %XMM2, align 1, !mcsema_real_eip !60
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !60
  %53 = load i128* %XMM3, align 1, !mcsema_real_eip !60
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !60
  %54 = load i128* %XMM4, align 1, !mcsema_real_eip !60
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !60
  %55 = load i128* %XMM5, align 1, !mcsema_real_eip !60
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !60
  %56 = load i128* %XMM6, align 1, !mcsema_real_eip !60
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !60
  %57 = load i128* %XMM7, align 1, !mcsema_real_eip !60
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !60
  %58 = load i128* %XMM8, align 1, !mcsema_real_eip !60
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !60
  %59 = load i128* %XMM9, align 1, !mcsema_real_eip !60
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !60
  %60 = load i128* %XMM10, align 1, !mcsema_real_eip !60
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !60
  %61 = load i128* %XMM11, align 1, !mcsema_real_eip !60
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !60
  %62 = load i128* %XMM12, align 1, !mcsema_real_eip !60
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !60
  %63 = load i128* %XMM13, align 1, !mcsema_real_eip !60
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !60
  %64 = load i128* %XMM14, align 1, !mcsema_real_eip !60
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !60
  %65 = load i128* %XMM15, align 1, !mcsema_real_eip !60
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !60
  %66 = bitcast i64* %STACK_BASE to <2 x i64>*
  %67 = load <2 x i64>* %66, align 8
  %68 = extractelement <2 x i64> %2, i32 1
  %69 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 115), i64 %4, i64 %3, i64 %68), !mcsema_real_eip !61
  %70 = add i64 %6, -84, !mcsema_real_eip !62
  %71 = trunc i64 %69 to i32, !mcsema_real_eip !62
  %72 = inttoptr i64 %70 to i32*
  store i32 %71, i32* %72, align 4, !mcsema_real_eip !62
  %uadd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %5, i64 144)
  %73 = extractvalue { i64, i1 } %uadd, 0
  %74 = xor i64 %73, %5, !mcsema_real_eip !5
  %75 = and i64 %74, 16
  %76 = icmp eq i64 %75, 0
  %77 = icmp slt i64 %73, 0
  %78 = icmp eq i64 %73, 0, !mcsema_real_eip !5
  %79 = xor i64 %5, -9223372036854775808, !mcsema_real_eip !5
  %80 = and i64 %74, %79, !mcsema_real_eip !5
  %81 = icmp slt i64 %80, 0
  %82 = trunc i64 %73 to i8, !mcsema_real_eip !5
  %83 = tail call i8 @llvm.ctpop.i8(i8 %82), !mcsema_real_eip !5
  %84 = and i8 %83, 1
  %85 = icmp eq i8 %84, 0
  %86 = extractvalue { i64, i1 } %uadd, 1
  %87 = inttoptr i64 %73 to i64*, !mcsema_real_eip !6
  %88 = load i64* %87, align 8, !mcsema_real_eip !6
  %89 = add i64 %73, 16, !mcsema_real_eip !7
  store i64 0, i64* %RAX, align 8, !mcsema_real_eip !7
  %90 = bitcast i64* %RBX to <2 x i64>*
  store <2 x i64> %2, <2 x i64>* %90, align 8
  store i64 %3, i64* %RDX, align 8, !mcsema_real_eip !7
  store i64 %4, i64* %RSI, align 8, !mcsema_real_eip !7
  store i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 115), i64* %RDI, align 8, !mcsema_real_eip !7
  store i64 %89, i64* %RSP, align 8, !mcsema_real_eip !7
  store i64 %88, i64* %RBP, align 8, !mcsema_real_eip !7
  %91 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> %8, <2 x i64>* %91, align 8
  %92 = bitcast i64* %R10 to <2 x i64>*
  store <2 x i64> %10, <2 x i64>* %92, align 8
  %93 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> %12, <2 x i64>* %93, align 8
  %94 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> %14, <2 x i64>* %94, align 8
  store i64 %15, i64* %RIP, align 8, !mcsema_real_eip !7
  store i1 %86, i1* %CF, align 1, !mcsema_real_eip !7
  store i1 %85, i1* %PF, align 1, !mcsema_real_eip !7
  store i1 %76, i1* %AF, align 1, !mcsema_real_eip !7
  store i1 %78, i1* %ZF, align 1, !mcsema_real_eip !7
  store i1 %77, i1* %SF, align 1, !mcsema_real_eip !7
  store i1 %81, i1* %OF, align 1, !mcsema_real_eip !7
  store i1 %16, i1* %DF, align 1, !mcsema_real_eip !7
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %19, i32 128, i32 8, i1 false), !mcsema_real_eip !7
  store i1 %20, i1* %FPU_B, align 1, !mcsema_real_eip !7
  store i1 %21, i1* %FPU_C3, align 1, !mcsema_real_eip !7
  store i3 %22, i3* %FPU_TOP, align 1, !mcsema_real_eip !7
  store i1 %23, i1* %FPU_C2, align 1, !mcsema_real_eip !7
  store i1 %24, i1* %FPU_C1, align 1, !mcsema_real_eip !7
  store i1 %25, i1* %FPU_C0, align 1, !mcsema_real_eip !7
  store i1 %26, i1* %FPU_ES, align 1, !mcsema_real_eip !7
  store i1 %27, i1* %FPU_SF, align 1, !mcsema_real_eip !7
  store i1 %28, i1* %FPU_PE, align 1, !mcsema_real_eip !7
  store i1 %29, i1* %FPU_UE, align 1, !mcsema_real_eip !7
  store i1 %30, i1* %FPU_OE, align 1, !mcsema_real_eip !7
  store i1 %31, i1* %FPU_ZE, align 1, !mcsema_real_eip !7
  store i1 %32, i1* %FPU_DE, align 1, !mcsema_real_eip !7
  store i1 %33, i1* %FPU_IE, align 1, !mcsema_real_eip !7
  store i1 %34, i1* %FPU_X, align 1, !mcsema_real_eip !7
  store i2 %35, i2* %FPU_RC, align 1, !mcsema_real_eip !7
  store i2 %36, i2* %FPU_PC, align 1, !mcsema_real_eip !7
  store i1 %37, i1* %FPU_PM, align 1, !mcsema_real_eip !7
  store i1 %38, i1* %FPU_UM, align 1, !mcsema_real_eip !7
  store i1 %39, i1* %FPU_OM, align 1, !mcsema_real_eip !7
  store i1 %40, i1* %FPU_ZM, align 1, !mcsema_real_eip !7
  store i1 %41, i1* %FPU_DM, align 1, !mcsema_real_eip !7
  store i1 %42, i1* %FPU_IM, align 1, !mcsema_real_eip !7
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !7
  store i64 %47, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !7
  store i16 %48, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !7
  store i64 %49, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !7
  store i128 %50, i128* %XMM0, align 1, !mcsema_real_eip !7
  store i128 %51, i128* %XMM1, align 1, !mcsema_real_eip !7
  store i128 %52, i128* %XMM2, align 1, !mcsema_real_eip !7
  store i128 %53, i128* %XMM3, align 1, !mcsema_real_eip !7
  store i128 %54, i128* %XMM4, align 1, !mcsema_real_eip !7
  store i128 %55, i128* %XMM5, align 1, !mcsema_real_eip !7
  store i128 %56, i128* %XMM6, align 1, !mcsema_real_eip !7
  store i128 %57, i128* %XMM7, align 1, !mcsema_real_eip !7
  store i128 %58, i128* %XMM8, align 1, !mcsema_real_eip !7
  store i128 %59, i128* %XMM9, align 1, !mcsema_real_eip !7
  store i128 %60, i128* %XMM10, align 1, !mcsema_real_eip !7
  store i128 %61, i128* %XMM11, align 1, !mcsema_real_eip !7
  store i128 %62, i128* %XMM12, align 1, !mcsema_real_eip !7
  store i128 %63, i128* %XMM13, align 1, !mcsema_real_eip !7
  store i128 %64, i128* %XMM14, align 1, !mcsema_real_eip !7
  store i128 %65, i128* %XMM15, align 1, !mcsema_real_eip !7
  %95 = bitcast i64* %STACK_BASE to <2 x i64>*
  store <2 x i64> %67, <2 x i64>* %95, align 1
  ret void, !mcsema_real_eip !7
}

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg)

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !63
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* %STi_val.i.0..sroa_cast)
  %RAX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !63
  %RBX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !63
  %1 = load i64* %RBX.i, align 8, !mcsema_real_eip !63
  %RCX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !63
  %2 = load i64* %RCX.i, align 8, !mcsema_real_eip !63
  %RDX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !63
  %3 = load i64* %RDX.i, align 8, !mcsema_real_eip !63
  %RSI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !63
  %4 = load i64* %RSI.i, align 8, !mcsema_real_eip !63
  %RDI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !63
  %5 = load i64* %RDI.i, align 8, !mcsema_real_eip !63
  %RSP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !63
  %6 = load i64* %RSP.i, align 8, !mcsema_real_eip !63
  %RBP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !63
  %7 = load i64* %RBP.i, align 8, !mcsema_real_eip !63
  %R8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !63
  %8 = load i64* %R8.i, align 8, !mcsema_real_eip !63
  %R9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !63
  %9 = load i64* %R9.i, align 8, !mcsema_real_eip !63
  %R10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !63
  %10 = load i64* %R10.i, align 8, !mcsema_real_eip !63
  %R11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !63
  %11 = load i64* %R11.i, align 8, !mcsema_real_eip !63
  %R12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !63
  %12 = load i64* %R12.i, align 8, !mcsema_real_eip !63
  %R13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !63
  %13 = load i64* %R13.i, align 8, !mcsema_real_eip !63
  %R14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !63
  %14 = load i64* %R14.i, align 8, !mcsema_real_eip !63
  %R15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !63
  %15 = load i64* %R15.i, align 8, !mcsema_real_eip !63
  %RIP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !63
  %16 = load i64* %RIP.i, align 8, !mcsema_real_eip !63
  %CF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !63
  %PF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !63
  %AF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !63
  %ZF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !63
  %SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !63
  %OF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !63
  %DF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !63
  %17 = load i1* %DF.i, align 1, !mcsema_real_eip !63
  %18 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !63
  %19 = bitcast x86_fp80* %18 to i8*, !mcsema_real_eip !63
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %STi_val.i.0..sroa_cast, i8* %19, i32 128, i32 4, i1 false), !mcsema_real_eip !63
  %FPU_B.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !63
  %20 = load i1* %FPU_B.i, align 1, !mcsema_real_eip !63
  %FPU_C3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !63
  %21 = load i1* %FPU_C3.i, align 1, !mcsema_real_eip !63
  %FPU_TOP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !63
  %22 = load i3* %FPU_TOP.i, align 1, !mcsema_real_eip !63
  %FPU_C2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !63
  %23 = load i1* %FPU_C2.i, align 1, !mcsema_real_eip !63
  %FPU_C1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !63
  %24 = load i1* %FPU_C1.i, align 1, !mcsema_real_eip !63
  %FPU_C0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !63
  %25 = load i1* %FPU_C0.i, align 1, !mcsema_real_eip !63
  %FPU_ES.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !63
  %26 = load i1* %FPU_ES.i, align 1, !mcsema_real_eip !63
  %FPU_SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !63
  %27 = load i1* %FPU_SF.i, align 1, !mcsema_real_eip !63
  %FPU_PE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !63
  %28 = load i1* %FPU_PE.i, align 1, !mcsema_real_eip !63
  %FPU_UE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !63
  %29 = load i1* %FPU_UE.i, align 1, !mcsema_real_eip !63
  %FPU_OE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !63
  %30 = load i1* %FPU_OE.i, align 1, !mcsema_real_eip !63
  %FPU_ZE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !63
  %31 = load i1* %FPU_ZE.i, align 1, !mcsema_real_eip !63
  %FPU_DE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !63
  %32 = load i1* %FPU_DE.i, align 1, !mcsema_real_eip !63
  %FPU_IE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !63
  %33 = load i1* %FPU_IE.i, align 1, !mcsema_real_eip !63
  %FPU_X.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !63
  %34 = load i1* %FPU_X.i, align 1, !mcsema_real_eip !63
  %FPU_RC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !63
  %35 = load i2* %FPU_RC.i, align 1, !mcsema_real_eip !63
  %FPU_PC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !63
  %36 = load i2* %FPU_PC.i, align 1, !mcsema_real_eip !63
  %FPU_PM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !63
  %37 = load i1* %FPU_PM.i, align 1, !mcsema_real_eip !63
  %FPU_UM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !63
  %38 = load i1* %FPU_UM.i, align 1, !mcsema_real_eip !63
  %FPU_OM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !63
  %39 = load i1* %FPU_OM.i, align 1, !mcsema_real_eip !63
  %FPU_ZM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !63
  %40 = load i1* %FPU_ZM.i, align 1, !mcsema_real_eip !63
  %FPU_DM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !63
  %41 = load i1* %FPU_DM.i, align 1, !mcsema_real_eip !63
  %FPU_IM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !63
  %42 = load i1* %FPU_IM.i, align 1, !mcsema_real_eip !63
  %43 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !63
  %44 = bitcast i8* %43 to i64*
  %45 = load i64* %44, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !63
  %46 = load i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !63
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !63
  %47 = load i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !63
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !63
  %48 = load i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !63
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !63
  %49 = load i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !63
  %XMM0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !63
  %50 = load i128* %XMM0.i, align 1, !mcsema_real_eip !63
  %XMM1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !63
  %51 = load i128* %XMM1.i, align 1, !mcsema_real_eip !63
  %XMM2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !63
  %52 = load i128* %XMM2.i, align 1, !mcsema_real_eip !63
  %XMM3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !63
  %53 = load i128* %XMM3.i, align 1, !mcsema_real_eip !63
  %XMM4.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !63
  %54 = load i128* %XMM4.i, align 1, !mcsema_real_eip !63
  %XMM5.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !63
  %55 = load i128* %XMM5.i, align 1, !mcsema_real_eip !63
  %XMM6.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !63
  %56 = load i128* %XMM6.i, align 1, !mcsema_real_eip !63
  %XMM7.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !63
  %57 = load i128* %XMM7.i, align 1, !mcsema_real_eip !63
  %XMM8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !63
  %58 = load i128* %XMM8.i, align 1, !mcsema_real_eip !63
  %XMM9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !63
  %59 = load i128* %XMM9.i, align 1, !mcsema_real_eip !63
  %XMM10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !63
  %60 = load i128* %XMM10.i, align 1, !mcsema_real_eip !63
  %XMM11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !63
  %61 = load i128* %XMM11.i, align 1, !mcsema_real_eip !63
  %XMM12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !63
  %62 = load i128* %XMM12.i, align 1, !mcsema_real_eip !63
  %XMM13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !63
  %63 = load i128* %XMM13.i, align 1, !mcsema_real_eip !63
  %XMM14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !63
  %64 = load i128* %XMM14.i, align 1, !mcsema_real_eip !63
  %XMM15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !63
  %65 = load i128* %XMM15.i, align 1, !mcsema_real_eip !63
  %STACK_BASE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !63
  %66 = load i64* %STACK_BASE.i, align 8, !mcsema_real_eip !63
  %STACK_LIMIT.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !63
  %67 = load i64* %STACK_LIMIT.i, align 8, !mcsema_real_eip !63
  %68 = add i64 %6, -8
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !63
  store i64 %7, i64* %69, align 8, !mcsema_real_eip !63
  %70 = add i64 %6, -152
  %71 = add i64 %6, -12, !mcsema_real_eip !64
  %72 = trunc i64 %5 to i32, !mcsema_real_eip !64
  %73 = inttoptr i64 %71 to i32*
  store i32 %72, i32* %73, align 4, !mcsema_real_eip !64
  %74 = add i32 %72, -74632
  %75 = icmp eq i32 %74, 0, !mcsema_real_eip !65
  %76 = icmp slt i32 %74, 0
  %77 = sub i32 74631, %72
  %78 = and i32 %77, %72
  %79 = icmp slt i32 %78, 0
  %80 = zext i32 %74 to i64, !mcsema_real_eip !65
  %81 = add i64 %6, -16, !mcsema_real_eip !66
  %82 = inttoptr i64 %81 to i32*
  store i32 %72, i32* %82, align 4, !mcsema_real_eip !66
  %83 = add i64 %6, -20, !mcsema_real_eip !67
  %84 = inttoptr i64 %83 to i32*
  store i32 %74, i32* %84, align 4, !mcsema_real_eip !67
  %tmp.i = xor i1 %76, %79
  %.demorgan.i = or i1 %75, %tmp.i
  %85 = load i32* %82, align 4, !mcsema_real_eip !68
  br i1 %.demorgan.i, label %block_0x27.i, label %block_0x78.i, !mcsema_real_eip !69

block_0x78.i:                                     ; preds = %driverBlockRaw
  %86 = add i32 %85, -74633
  %87 = zext i32 %86 to i64, !mcsema_real_eip !70
  %88 = add i32 %85, -74643
  %89 = xor i32 %88, %86, !mcsema_real_eip !71
  %90 = icmp eq i32 %88, 0, !mcsema_real_eip !71
  %91 = icmp ult i32 %86, 10, !mcsema_real_eip !71
  %92 = add i64 %6, -56, !mcsema_real_eip !72
  %93 = inttoptr i64 %92 to i64*, !mcsema_real_eip !72
  store i64 %87, i64* %93, align 8, !mcsema_real_eip !72
  %94 = add i64 %6, -60, !mcsema_real_eip !73
  %95 = inttoptr i64 %94 to i32*
  store i32 %88, i32* %95, align 4, !mcsema_real_eip !73
  %.demorgan566.i = or i1 %91, %90
  br i1 %.demorgan566.i, label %block_0x92.i, label %block_0x27b.i, !mcsema_real_eip !74

block_0x27.i:                                     ; preds = %driverBlockRaw
  %96 = add i32 %85, -254
  %97 = icmp eq i32 %96, 0, !mcsema_real_eip !75
  %98 = icmp slt i32 %96, 0
  %99 = sub i32 253, %85
  %100 = and i32 %99, %85
  %101 = icmp slt i32 %100, 0
  %102 = add i64 %6, -24, !mcsema_real_eip !76
  %103 = inttoptr i64 %102 to i32*
  store i32 %96, i32* %103, align 4, !mcsema_real_eip !76
  %tmp556.i = xor i1 %98, %101
  %.demorgan558.i = or i1 %97, %tmp556.i
  %104 = load i32* %82, align 4, !mcsema_real_eip !77
  %105 = zext i32 %104 to i64, !mcsema_real_eip !77
  br i1 %.demorgan558.i, label %block_0x3d.i, label %block_0x62.i, !mcsema_real_eip !78

block_0x27b.i:                                    ; preds = %block_0x3d.i, %block_0x62.i, %block_0x78.i
  %RDX_val.0.i = phi i64 [ %105, %block_0x3d.i ], [ %3, %block_0x62.i ], [ %3, %block_0x78.i ]
  %RCX_val.0.i = phi i64 [ %105, %block_0x3d.i ], [ %2, %block_0x62.i ], [ %87, %block_0x78.i ]
  %106 = load i32* %73, align 4, !mcsema_real_eip !21
  %107 = zext i32 %106 to i64, !mcsema_real_eip !21
  %108 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 449), i64 %107, i64 %RDX_val.0.i, i64 %RCX_val.0.i), !mcsema_real_eip !22
  %109 = add i64 %6, -140, !mcsema_real_eip !23
  %110 = trunc i64 %108 to i32, !mcsema_real_eip !23
  %111 = inttoptr i64 %109 to i32*
  store i32 %110, i32* %111, align 4, !mcsema_real_eip !23
  %uadd.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %70, i64 144)
  %112 = extractvalue { i64, i1 } %uadd.i, 0
  %113 = xor i64 %112, %70, !mcsema_real_eip !5
  %114 = and i64 %113, 16
  %115 = icmp eq i64 %114, 0
  %116 = icmp slt i64 %112, 0
  %117 = icmp eq i64 %112, 0, !mcsema_real_eip !5
  %118 = add i64 %6, 9223372036854775656
  %119 = and i64 %113, %118, !mcsema_real_eip !5
  %120 = icmp slt i64 %119, 0
  %121 = trunc i64 %112 to i8, !mcsema_real_eip !5
  %122 = tail call i8 @llvm.ctpop.i8(i8 %121), !mcsema_real_eip !5
  %123 = and i8 %122, 1
  %124 = icmp eq i8 %123, 0
  %125 = extractvalue { i64, i1 } %uadd.i, 1
  %126 = inttoptr i64 %112 to i64*, !mcsema_real_eip !6
  %127 = load i64* %126, align 8, !mcsema_real_eip !6
  %128 = add i64 %112, 16, !mcsema_real_eip !7
  store i64 0, i64* %RAX.i, align 8, !mcsema_real_eip !7
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !7
  store i64 %RCX_val.0.i, i64* %RCX.i, align 8, !mcsema_real_eip !7
  store i64 %RDX_val.0.i, i64* %RDX.i, align 8, !mcsema_real_eip !7
  store i64 %107, i64* %RSI.i, align 8, !mcsema_real_eip !7
  store i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 449), i64* %RDI.i, align 8, !mcsema_real_eip !7
  store i64 %128, i64* %RSP.i, align 8, !mcsema_real_eip !7
  store i64 %127, i64* %RBP.i, align 8, !mcsema_real_eip !7
  store i64 %8, i64* %R8.i, align 8, !mcsema_real_eip !7
  store i64 %9, i64* %R9.i, align 8, !mcsema_real_eip !7
  store i64 %10, i64* %R10.i, align 8, !mcsema_real_eip !7
  store i64 %11, i64* %R11.i, align 8, !mcsema_real_eip !7
  store i64 %12, i64* %R12.i, align 8, !mcsema_real_eip !7
  store i64 %13, i64* %R13.i, align 8, !mcsema_real_eip !7
  store i64 %14, i64* %R14.i, align 8, !mcsema_real_eip !7
  store i64 %15, i64* %R15.i, align 8, !mcsema_real_eip !7
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !7
  store i1 %125, i1* %CF.i, align 1, !mcsema_real_eip !7
  store i1 %124, i1* %PF.i, align 1, !mcsema_real_eip !7
  store i1 %115, i1* %AF.i, align 1, !mcsema_real_eip !7
  store i1 %117, i1* %ZF.i, align 1, !mcsema_real_eip !7
  store i1 %116, i1* %SF.i, align 1, !mcsema_real_eip !7
  store i1 %120, i1* %OF.i, align 1, !mcsema_real_eip !7
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

block_0x92.i:                                     ; preds = %block_0x78.i
  %129 = and i32 %89, %86, !mcsema_real_eip !71
  %130 = icmp slt i32 %129, 0
  %131 = icmp slt i32 %88, 0
  %132 = trunc i32 %88 to i8, !mcsema_real_eip !71
  %133 = tail call i8 @llvm.ctpop.i8(i8 %132), !mcsema_real_eip !71
  %134 = and i8 %133, 1
  %135 = icmp eq i8 %134, 0
  %136 = and i32 %89, 16, !mcsema_real_eip !71
  %137 = icmp ne i32 %136, 0, !mcsema_real_eip !71
  %138 = load i64* %93, align 8, !mcsema_real_eip !79
  %139 = shl i64 %138, 3
  %140 = add i64 %139, ptrtoint (%0* @data_0x2a3 to i64), !mcsema_real_eip !80
  %141 = inttoptr i64 %140 to i64*, !mcsema_real_eip !80
  %142 = load i64* %141, align 8, !mcsema_real_eip !80
  store i64 %138, i64* %RAX.i, align 8, !mcsema_real_eip !81
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !81
  store i64 %142, i64* %RCX.i, align 8, !mcsema_real_eip !81
  store i64 %3, i64* %RDX.i, align 8, !mcsema_real_eip !81
  store i64 %4, i64* %RSI.i, align 8, !mcsema_real_eip !81
  store i64 %80, i64* %RDI.i, align 8, !mcsema_real_eip !81
  store i64 %70, i64* %RSP.i, align 8, !mcsema_real_eip !81
  store i64 %68, i64* %RBP.i, align 8, !mcsema_real_eip !81
  store i64 %8, i64* %R8.i, align 8, !mcsema_real_eip !81
  store i64 %9, i64* %R9.i, align 8, !mcsema_real_eip !81
  store i64 %10, i64* %R10.i, align 8, !mcsema_real_eip !81
  store i64 %11, i64* %R11.i, align 8, !mcsema_real_eip !81
  store i64 %12, i64* %R12.i, align 8, !mcsema_real_eip !81
  store i64 %13, i64* %R13.i, align 8, !mcsema_real_eip !81
  store i64 %14, i64* %R14.i, align 8, !mcsema_real_eip !81
  store i64 %15, i64* %R15.i, align 8, !mcsema_real_eip !81
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !81
  store i1 %91, i1* %CF.i, align 1, !mcsema_real_eip !81
  store i1 %135, i1* %PF.i, align 1, !mcsema_real_eip !81
  store i1 %137, i1* %AF.i, align 1, !mcsema_real_eip !81
  store i1 %90, i1* %ZF.i, align 1, !mcsema_real_eip !81
  store i1 %131, i1* %SF.i, align 1, !mcsema_real_eip !81
  store i1 %130, i1* %OF.i, align 1, !mcsema_real_eip !81
  store i1 %17, i1* %DF.i, align 1, !mcsema_real_eip !81
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %19, i8* %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !81
  store i1 %20, i1* %FPU_B.i, align 1, !mcsema_real_eip !81
  store i1 %21, i1* %FPU_C3.i, align 1, !mcsema_real_eip !81
  store i3 %22, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !81
  store i1 %23, i1* %FPU_C2.i, align 1, !mcsema_real_eip !81
  store i1 %24, i1* %FPU_C1.i, align 1, !mcsema_real_eip !81
  store i1 %25, i1* %FPU_C0.i, align 1, !mcsema_real_eip !81
  store i1 %26, i1* %FPU_ES.i, align 1, !mcsema_real_eip !81
  store i1 %27, i1* %FPU_SF.i, align 1, !mcsema_real_eip !81
  store i1 %28, i1* %FPU_PE.i, align 1, !mcsema_real_eip !81
  store i1 %29, i1* %FPU_UE.i, align 1, !mcsema_real_eip !81
  store i1 %30, i1* %FPU_OE.i, align 1, !mcsema_real_eip !81
  store i1 %31, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !81
  store i1 %32, i1* %FPU_DE.i, align 1, !mcsema_real_eip !81
  store i1 %33, i1* %FPU_IE.i, align 1, !mcsema_real_eip !81
  store i1 %34, i1* %FPU_X.i, align 1, !mcsema_real_eip !81
  store i2 %35, i2* %FPU_RC.i, align 1, !mcsema_real_eip !81
  store i2 %36, i2* %FPU_PC.i, align 1, !mcsema_real_eip !81
  store i1 %37, i1* %FPU_PM.i, align 1, !mcsema_real_eip !81
  store i1 %38, i1* %FPU_UM.i, align 1, !mcsema_real_eip !81
  store i1 %39, i1* %FPU_OM.i, align 1, !mcsema_real_eip !81
  store i1 %40, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !81
  store i1 %41, i1* %FPU_DM.i, align 1, !mcsema_real_eip !81
  store i1 %42, i1* %FPU_IM.i, align 1, !mcsema_real_eip !81
  store i64 %45, i64* %44, align 4
  store i16 %46, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !81
  store i64 %47, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !81
  store i16 %48, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !81
  store i64 %49, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !81
  store i128 %50, i128* %XMM0.i, align 1, !mcsema_real_eip !81
  store i128 %51, i128* %XMM1.i, align 1, !mcsema_real_eip !81
  store i128 %52, i128* %XMM2.i, align 1, !mcsema_real_eip !81
  store i128 %53, i128* %XMM3.i, align 1, !mcsema_real_eip !81
  store i128 %54, i128* %XMM4.i, align 1, !mcsema_real_eip !81
  store i128 %55, i128* %XMM5.i, align 1, !mcsema_real_eip !81
  store i128 %56, i128* %XMM6.i, align 1, !mcsema_real_eip !81
  store i128 %57, i128* %XMM7.i, align 1, !mcsema_real_eip !81
  store i128 %58, i128* %XMM8.i, align 1, !mcsema_real_eip !81
  store i128 %59, i128* %XMM9.i, align 1, !mcsema_real_eip !81
  store i128 %60, i128* %XMM10.i, align 1, !mcsema_real_eip !81
  store i128 %61, i128* %XMM11.i, align 1, !mcsema_real_eip !81
  store i128 %62, i128* %XMM12.i, align 1, !mcsema_real_eip !81
  store i128 %63, i128* %XMM13.i, align 1, !mcsema_real_eip !81
  store i128 %64, i128* %XMM14.i, align 1, !mcsema_real_eip !81
  store i128 %65, i128* %XMM15.i, align 1, !mcsema_real_eip !81
  store i64 %66, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !81
  store i64 %67, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !81
  %143 = inttoptr i64 %142 to void (%struct.regs*)*
  tail call x86_64_sysvcc void %143(%struct.regs* %0)
  %144 = load i64* %RSP.i, align 8, !mcsema_real_eip !81
  %145 = add i64 %144, 8, !mcsema_real_eip !81
  store i64 %145, i64* %RSP.i, align 8, !mcsema_real_eip !81
  call void @llvm.lifetime.end(i64 128, i8* %STi_val.i.0..sroa_cast)
  br label %sub_0.exit

block_0x62.i:                                     ; preds = %block_0x27.i
  %146 = add i32 %104, -255
  %147 = icmp eq i32 %146, 0, !mcsema_real_eip !82
  %148 = add i64 %6, -44, !mcsema_real_eip !83
  %149 = inttoptr i64 %148 to i32*
  store i32 %146, i32* %149, align 4, !mcsema_real_eip !83
  br i1 %147, label %block_0x168.i, label %block_0x27b.i, !mcsema_real_eip !84

block_0x3d.i:                                     ; preds = %block_0x27.i
  %150 = add i32 %104, -19
  %151 = xor i32 %150, %104, !mcsema_real_eip !85
  %152 = icmp eq i32 %150, 0, !mcsema_real_eip !85
  %153 = icmp ult i32 %104, 19, !mcsema_real_eip !85
  %154 = add i64 %6, -28, !mcsema_real_eip !86
  %155 = inttoptr i64 %154 to i32*
  store i32 %150, i32* %155, align 4, !mcsema_real_eip !86
  %156 = add i64 %6, -40, !mcsema_real_eip !87
  %157 = inttoptr i64 %156 to i64*, !mcsema_real_eip !87
  store i64 %105, i64* %157, align 8, !mcsema_real_eip !87
  %.demorgan561.i = or i1 %153, %152
  br i1 %.demorgan561.i, label %block_0x54.i, label %block_0x27b.i, !mcsema_real_eip !88

block_0x168.i:                                    ; preds = %block_0x62.i
  %158 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 135), i64 %4, i64 %3, i64 %2), !mcsema_real_eip !89
  %159 = add i64 %6, -96, !mcsema_real_eip !90
  %160 = trunc i64 %158 to i32, !mcsema_real_eip !90
  %161 = inttoptr i64 %159 to i32*
  store i32 %160, i32* %161, align 4, !mcsema_real_eip !90
  %uadd562.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %70, i64 144)
  %162 = extractvalue { i64, i1 } %uadd562.i, 0
  %163 = xor i64 %162, %70, !mcsema_real_eip !5
  %164 = and i64 %163, 16
  %165 = icmp eq i64 %164, 0
  %166 = icmp slt i64 %162, 0
  %167 = icmp eq i64 %162, 0, !mcsema_real_eip !5
  %168 = add i64 %6, 9223372036854775656
  %169 = and i64 %163, %168, !mcsema_real_eip !5
  %170 = icmp slt i64 %169, 0
  %171 = trunc i64 %162 to i8, !mcsema_real_eip !5
  %172 = tail call i8 @llvm.ctpop.i8(i8 %171), !mcsema_real_eip !5
  %173 = and i8 %172, 1
  %174 = icmp eq i8 %173, 0
  %175 = extractvalue { i64, i1 } %uadd562.i, 1
  %176 = inttoptr i64 %162 to i64*, !mcsema_real_eip !6
  %177 = load i64* %176, align 8, !mcsema_real_eip !6
  %178 = add i64 %162, 16, !mcsema_real_eip !7
  store i64 0, i64* %RAX.i, align 8, !mcsema_real_eip !7
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !7
  store i64 %2, i64* %RCX.i, align 8, !mcsema_real_eip !7
  store i64 %3, i64* %RDX.i, align 8, !mcsema_real_eip !7
  store i64 %4, i64* %RSI.i, align 8, !mcsema_real_eip !7
  store i64 add (i64 ptrtoint (%1* @data_0x39b to i64), i64 135), i64* %RDI.i, align 8, !mcsema_real_eip !7
  store i64 %178, i64* %RSP.i, align 8, !mcsema_real_eip !7
  store i64 %177, i64* %RBP.i, align 8, !mcsema_real_eip !7
  store i64 %8, i64* %R8.i, align 8, !mcsema_real_eip !7
  store i64 %9, i64* %R9.i, align 8, !mcsema_real_eip !7
  store i64 %10, i64* %R10.i, align 8, !mcsema_real_eip !7
  store i64 %11, i64* %R11.i, align 8, !mcsema_real_eip !7
  store i64 %12, i64* %R12.i, align 8, !mcsema_real_eip !7
  store i64 %13, i64* %R13.i, align 8, !mcsema_real_eip !7
  store i64 %14, i64* %R14.i, align 8, !mcsema_real_eip !7
  store i64 %15, i64* %R15.i, align 8, !mcsema_real_eip !7
  store i64 %16, i64* %RIP.i, align 8, !mcsema_real_eip !7
  store i1 %175, i1* %CF.i, align 1, !mcsema_real_eip !7
  store i1 %174, i1* %PF.i, align 1, !mcsema_real_eip !7
  store i1 %165, i1* %AF.i, align 1, !mcsema_real_eip !7
  store i1 %167, i1* %ZF.i, align 1, !mcsema_real_eip !7
  store i1 %166, i1* %SF.i, align 1, !mcsema_real_eip !7
  store i1 %170, i1* %OF.i, align 1, !mcsema_real_eip !7
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

block_0x54.i:                                     ; preds = %block_0x3d.i
  %179 = and i32 %151, %104, !mcsema_real_eip !85
  %180 = icmp slt i32 %179, 0
  %181 = icmp slt i32 %150, 0
  %182 = trunc i32 %150 to i8, !mcsema_real_eip !85
  %183 = tail call i8 @llvm.ctpop.i8(i8 %182), !mcsema_real_eip !85
  %184 = and i8 %183, 1
  %185 = icmp eq i8 %184, 0
  %186 = and i32 %151, 16
  %187 = icmp eq i32 %186, 0
  %188 = shl nuw nsw i64 %105, 3
  %189 = add i64 %188, add (i64 ptrtoint (%0* @data_0x2a3 to i64), i64 88), !mcsema_real_eip !91
  %190 = inttoptr i64 %189 to i64*, !mcsema_real_eip !91
  %191 = load i64* %190, align 8, !mcsema_real_eip !91
  store i64 %105, i64* %RAX.i, align 8, !mcsema_real_eip !92
  store i64 %1, i64* %RBX.i, align 8, !mcsema_real_eip !92
  store i64 %191, i64* %RCX.i, align 8, !mcsema_real_eip !92
  store i64 %105, i64* %RDX.i, align 8, !mcsema_real_eip !92
  store i64 %4, i64* %RSI.i, align 8, !mcsema_real_eip !92
  store i64 %80, i64* %RDI.i, align 8, !mcsema_real_eip !92
  store i64 %70, i64* %RSP.i, align 8, !mcsema_real_eip !92
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
  store i1 %153, i1* %CF.i, align 1, !mcsema_real_eip !92
  store i1 %185, i1* %PF.i, align 1, !mcsema_real_eip !92
  store i1 %187, i1* %AF.i, align 1, !mcsema_real_eip !92
  store i1 %152, i1* %ZF.i, align 1, !mcsema_real_eip !92
  store i1 %181, i1* %SF.i, align 1, !mcsema_real_eip !92
  store i1 %180, i1* %OF.i, align 1, !mcsema_real_eip !92
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
  %192 = inttoptr i64 %191 to void (%struct.regs*)*
  tail call x86_64_sysvcc void %192(%struct.regs* %0)
  %193 = load i64* %RSP.i, align 8, !mcsema_real_eip !92
  %194 = add i64 %193, 8, !mcsema_real_eip !92
  store i64 %194, i64* %RSP.i, align 8, !mcsema_real_eip !92
  call void @llvm.lifetime.end(i64 128, i8* %STi_val.i.0..sroa_cast)
  br label %sub_0.exit

sub_0.exit:                                       ; preds = %block_0x54.i, %block_0x168.i, %block_0x92.i, %block_0x27b.i
  ret void
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #0

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #0

attributes #0 = { nounwind }
attributes #1 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!1 = metadata !{i32 1, metadata !"Dwarf Version", i32 3}
!2 = metadata !{i64 385, [18 x i8] c"\09movabsq\09$0, %rdi\00"}
!3 = metadata !{i64 397, [9 x i8] c"\09callq\090\00"}
!4 = metadata !{i64 402, [22 x i8] c"\09movl\09%eax, -92(%rbp)\00"}
!5 = metadata !{i64 666, [17 x i8] c"\09addq\09$144, %rsp\00"}
!6 = metadata !{i64 673, [11 x i8] c"\09popq\09%rbp\00"}
!7 = metadata !{i64 674, [6 x i8] c"\09retq\00"}
!8 = metadata !{i64 410, [18 x i8] c"\09movabsq\09$0, %rdi\00"}
!9 = metadata !{i64 422, [9 x i8] c"\09callq\090\00"}
!10 = metadata !{i64 427, [22 x i8] c"\09movl\09%eax, -96(%rbp)\00"}
!11 = metadata !{i64 435, [18 x i8] c"\09movabsq\09$0, %rdi\00"}
!12 = metadata !{i64 447, [9 x i8] c"\09callq\090\00"}
!13 = metadata !{i64 452, [23 x i8] c"\09movl\09%eax, -100(%rbp)\00"}
!14 = metadata !{i64 460, [18 x i8] c"\09movabsq\09$0, %rdi\00"}
!15 = metadata !{i64 472, [9 x i8] c"\09callq\090\00"}
!16 = metadata !{i64 477, [23 x i8] c"\09movl\09%eax, -104(%rbp)\00"}
!17 = metadata !{i64 485, [18 x i8] c"\09movabsq\09$0, %rdi\00"}
!18 = metadata !{i64 497, [9 x i8] c"\09callq\090\00"}
!19 = metadata !{i64 502, [23 x i8] c"\09movl\09%eax, -108(%rbp)\00"}
!20 = metadata !{i64 635, [18 x i8] c"\09movabsq\09$0, %rdi\00"}
!21 = metadata !{i64 645, [21 x i8] c"\09movl\09-4(%rbp), %esi\00"}
!22 = metadata !{i64 650, [9 x i8] c"\09callq\090\00"}
!23 = metadata !{i64 655, [23 x i8] c"\09movl\09%eax, -132(%rbp)\00"}
!24 = metadata !{i64 510, [18 x i8] c"\09movabsq\09$0, %rdi\00"}
!25 = metadata !{i64 522, [9 x i8] c"\09callq\090\00"}
!26 = metadata !{i64 527, [23 x i8] c"\09movl\09%eax, -112(%rbp)\00"}
!27 = metadata !{i64 535, [18 x i8] c"\09movabsq\09$0, %rdi\00"}
!28 = metadata !{i64 547, [9 x i8] c"\09callq\090\00"}
!29 = metadata !{i64 552, [23 x i8] c"\09movl\09%eax, -116(%rbp)\00"}
!30 = metadata !{i64 560, [18 x i8] c"\09movabsq\09$0, %rdi\00"}
!31 = metadata !{i64 572, [9 x i8] c"\09callq\090\00"}
!32 = metadata !{i64 577, [23 x i8] c"\09movl\09%eax, -120(%rbp)\00"}
!33 = metadata !{i64 585, [18 x i8] c"\09movabsq\09$0, %rdi\00"}
!34 = metadata !{i64 597, [9 x i8] c"\09callq\090\00"}
!35 = metadata !{i64 602, [23 x i8] c"\09movl\09%eax, -124(%rbp)\00"}
!36 = metadata !{i64 610, [18 x i8] c"\09movabsq\09$0, %rdi\00"}
!37 = metadata !{i64 622, [9 x i8] c"\09callq\090\00"}
!38 = metadata !{i64 627, [23 x i8] c"\09movl\09%eax, -128(%rbp)\00"}
!39 = metadata !{i64 160, [18 x i8] c"\09movabsq\09$0, %rdi\00"}
!40 = metadata !{i64 172, [9 x i8] c"\09callq\090\00"}
!41 = metadata !{i64 177, [22 x i8] c"\09movl\09%eax, -56(%rbp)\00"}
!42 = metadata !{i64 185, [18 x i8] c"\09movabsq\09$0, %rdi\00"}
!43 = metadata !{i64 197, [9 x i8] c"\09callq\090\00"}
!44 = metadata !{i64 202, [22 x i8] c"\09movl\09%eax, -60(%rbp)\00"}
!45 = metadata !{i64 210, [18 x i8] c"\09movabsq\09$0, %rdi\00"}
!46 = metadata !{i64 222, [9 x i8] c"\09callq\090\00"}
!47 = metadata !{i64 227, [22 x i8] c"\09movl\09%eax, -64(%rbp)\00"}
!48 = metadata !{i64 235, [18 x i8] c"\09movabsq\09$0, %rdi\00"}
!49 = metadata !{i64 247, [9 x i8] c"\09callq\090\00"}
!50 = metadata !{i64 252, [22 x i8] c"\09movl\09%eax, -68(%rbp)\00"}
!51 = metadata !{i64 260, [18 x i8] c"\09movabsq\09$0, %rdi\00"}
!52 = metadata !{i64 272, [9 x i8] c"\09callq\090\00"}
!53 = metadata !{i64 277, [22 x i8] c"\09movl\09%eax, -72(%rbp)\00"}
!54 = metadata !{i64 285, [18 x i8] c"\09movabsq\09$0, %rdi\00"}
!55 = metadata !{i64 297, [9 x i8] c"\09callq\090\00"}
!56 = metadata !{i64 302, [22 x i8] c"\09movl\09%eax, -76(%rbp)\00"}
!57 = metadata !{i64 310, [18 x i8] c"\09movabsq\09$0, %rdi\00"}
!58 = metadata !{i64 322, [9 x i8] c"\09callq\090\00"}
!59 = metadata !{i64 327, [22 x i8] c"\09movl\09%eax, -80(%rbp)\00"}
!60 = metadata !{i64 335, [18 x i8] c"\09movabsq\09$0, %rdi\00"}
!61 = metadata !{i64 347, [9 x i8] c"\09callq\090\00"}
!62 = metadata !{i64 352, [22 x i8] c"\09movl\09%eax, -84(%rbp)\00"}
!63 = metadata !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!64 = metadata !{i64 11, [21 x i8] c"\09movl\09%edi, -4(%rbp)\00"}
!65 = metadata !{i64 16, [19 x i8] c"\09subl\09$74632, %edi\00"}
!66 = metadata !{i64 22, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!67 = metadata !{i64 25, [22 x i8] c"\09movl\09%edi, -12(%rbp)\00"}
!68 = metadata !{i64 120, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!69 = metadata !{i64 28, [7 x i8] c"\09jg\0986\00"}
!70 = metadata !{i64 123, [24 x i8] c"\09addl\09$4294892663, %eax\00"}
!71 = metadata !{i64 130, [16 x i8] c"\09subl\09$10, %eax\00"}
!72 = metadata !{i64 133, [22 x i8] c"\09movq\09%rcx, -48(%rbp)\00"}
!73 = metadata !{i64 137, [22 x i8] c"\09movl\09%eax, -52(%rbp)\00"}
!74 = metadata !{i64 140, [8 x i8] c"\09ja\09489\00"}
!75 = metadata !{i64 42, [17 x i8] c"\09subl\09$254, %eax\00"}
!76 = metadata !{i64 47, [22 x i8] c"\09movl\09%eax, -16(%rbp)\00"}
!77 = metadata !{i64 98, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!78 = metadata !{i64 50, [7 x i8] c"\09jg\0942\00"}
!79 = metadata !{i64 146, [22 x i8] c"\09movq\09-48(%rbp), %rax\00"}
!80 = metadata !{i64 150, [22 x i8] c"\09movq\09(,%rax,8), %rcx\00"}
!81 = metadata !{i64 158, [12 x i8] c"\09jmpq\09*%rcx\00"}
!82 = metadata !{i64 101, [17 x i8] c"\09subl\09$255, %eax\00"}
!83 = metadata !{i64 106, [22 x i8] c"\09movl\09%eax, -36(%rbp)\00"}
!84 = metadata !{i64 109, [8 x i8] c"\09je\09245\00"}
!85 = metadata !{i64 68, [16 x i8] c"\09subl\09$19, %eax\00"}
!86 = metadata !{i64 71, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!87 = metadata !{i64 74, [22 x i8] c"\09movq\09%rdx, -32(%rbp)\00"}
!88 = metadata !{i64 78, [8 x i8] c"\09ja\09551\00"}
!89 = metadata !{i64 372, [9 x i8] c"\09callq\090\00"}
!90 = metadata !{i64 377, [22 x i8] c"\09movl\09%eax, -88(%rbp)\00"}
!91 = metadata !{i64 88, [22 x i8] c"\09movq\09(,%rax,8), %rcx\00"}
!92 = metadata !{i64 96, [12 x i8] c"\09jmpq\09*%rcx\00"}
