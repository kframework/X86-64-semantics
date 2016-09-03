; ModuleID = 'Output/test_5.clang.opt.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%0 = type <{ [77 x i8] }>
%1 = type <{ [95 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0x3b2 = internal global %0 <{ [77 x i8] c"+-+---+---+| |     |#|| | --+ | || |   | | || +-- | | ||     |   |+-----+---+" }>, align 64
@data_0x3ff = internal constant %1 <{ [95 x i8] c"%c\00\0A\00Wrong command!(only w,s,a,d accepted!)\0A\00You lose!\0A\00You win!\0A\00Your solution:%s \0A\00You lose\0A\00" }>, align 64

define internal x86_64_sysvcc void @sub_0(%struct.regs*) {
entry:
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %1 = load i64* %RBX, align 8, !mcsema_real_eip !2
  %RCX = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %2 = load i64* %RSP, align 8, !mcsema_real_eip !2
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %3 = load i64* %RBP, align 8, !mcsema_real_eip !2
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %4 = bitcast i64* %R8 to <2 x i64>*
  %5 = load <2 x i64>* %4, align 8
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %6 = bitcast i64* %R10 to <2 x i64>*
  %7 = load <2 x i64>* %6, align 8
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %8 = bitcast i64* %R12 to <2 x i64>*
  %9 = load <2 x i64>* %8, align 8
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %10 = bitcast i64* %R14 to <2 x i64>*
  %11 = load <2 x i64>* %10, align 8
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %12 = load i64* %RIP, align 8, !mcsema_real_eip !2
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %13 = load i1* %DF, align 1, !mcsema_real_eip !2
  %14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %15 = bitcast x86_fp80* %14 to i8*, !mcsema_real_eip !2
  %16 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* %15, i32 128, i32 4, i1 false), !mcsema_real_eip !2
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %17 = load i1* %FPU_B, align 1, !mcsema_real_eip !2
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %18 = load i1* %FPU_C3, align 1, !mcsema_real_eip !2
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %19 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !2
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %20 = load i1* %FPU_C2, align 1, !mcsema_real_eip !2
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %21 = load i1* %FPU_C1, align 1, !mcsema_real_eip !2
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %22 = load i1* %FPU_C0, align 1, !mcsema_real_eip !2
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %23 = load i1* %FPU_ES, align 1, !mcsema_real_eip !2
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %24 = load i1* %FPU_SF, align 1, !mcsema_real_eip !2
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %25 = load i1* %FPU_PE, align 1, !mcsema_real_eip !2
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %26 = load i1* %FPU_UE, align 1, !mcsema_real_eip !2
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %27 = load i1* %FPU_OE, align 1, !mcsema_real_eip !2
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %28 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !2
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %29 = load i1* %FPU_DE, align 1, !mcsema_real_eip !2
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %30 = load i1* %FPU_IE, align 1, !mcsema_real_eip !2
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %31 = load i1* %FPU_X, align 1, !mcsema_real_eip !2
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %32 = load i2* %FPU_RC, align 1, !mcsema_real_eip !2
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %33 = load i2* %FPU_PC, align 1, !mcsema_real_eip !2
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %34 = load i1* %FPU_PM, align 1, !mcsema_real_eip !2
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %35 = load i1* %FPU_UM, align 1, !mcsema_real_eip !2
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %36 = load i1* %FPU_OM, align 1, !mcsema_real_eip !2
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %37 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !2
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %38 = load i1* %FPU_DM, align 1, !mcsema_real_eip !2
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %39 = load i1* %FPU_IM, align 1, !mcsema_real_eip !2
  %40 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %41 = bitcast i8* %40 to i64*
  %42 = load i64* %41, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %43 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !2
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %44 = load i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %45 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %46 = load i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !2
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %47 = load i128* %XMM0, align 1, !mcsema_real_eip !2
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %48 = load i128* %XMM1, align 1, !mcsema_real_eip !2
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %49 = load i128* %XMM2, align 1, !mcsema_real_eip !2
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %50 = load i128* %XMM3, align 1, !mcsema_real_eip !2
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %51 = load i128* %XMM4, align 1, !mcsema_real_eip !2
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %52 = load i128* %XMM5, align 1, !mcsema_real_eip !2
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %53 = load i128* %XMM6, align 1, !mcsema_real_eip !2
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %54 = load i128* %XMM7, align 1, !mcsema_real_eip !2
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %55 = load i128* %XMM8, align 1, !mcsema_real_eip !2
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %56 = load i128* %XMM9, align 1, !mcsema_real_eip !2
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %57 = load i128* %XMM10, align 1, !mcsema_real_eip !2
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %58 = load i128* %XMM11, align 1, !mcsema_real_eip !2
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %59 = load i128* %XMM12, align 1, !mcsema_real_eip !2
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %60 = load i128* %XMM13, align 1, !mcsema_real_eip !2
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %61 = load i128* %XMM14, align 1, !mcsema_real_eip !2
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %62 = load i128* %XMM15, align 1, !mcsema_real_eip !2
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %63 = bitcast i64* %STACK_BASE to <2 x i64>*
  %64 = load <2 x i64>* %63, align 8
  %65 = add i64 %2, -8
  %66 = inttoptr i64 %65 to i64*, !mcsema_real_eip !2
  store i64 %3, i64* %66, align 8, !mcsema_real_eip !2
  %67 = add i64 %2, -12, !mcsema_real_eip !3
  %68 = inttoptr i64 %67 to i32*
  store i32 0, i32* %68, align 4, !mcsema_real_eip !3
  %69 = add i64 %2, -16, !mcsema_real_eip !4
  %70 = inttoptr i64 %69 to i32*
  %71 = add i64 %2, -20, !mcsema_real_eip !5
  %72 = inttoptr i64 %71 to i32*
  %73 = add i64 %2, -24, !mcsema_real_eip !6
  %74 = inttoptr i64 %73 to i32*
  br label %block_0x1c

block_0x98:                                       ; preds = %block_0x74
  %.lcssa.lcssa = phi i64 [ %.lcssa, %block_0x74 ]
  %.lcssa10.lcssa = phi i64 [ %.lcssa10, %block_0x74 ]
  %.lcssa11.lcssa = phi i8 [ %.lcssa11, %block_0x74 ]
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %75 = add i64 %2, -40
  %76 = sext i8 %.lcssa11.lcssa to i64
  %77 = and i64 %76, 4294967295
  %78 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x3ff to i64), i64 3)), !mcsema_real_eip !7
  %79 = add i64 %2, -28, !mcsema_real_eip !8
  %80 = trunc i64 %78 to i32, !mcsema_real_eip !8
  %81 = inttoptr i64 %79 to i32*
  store i32 %80, i32* %81, align 4, !mcsema_real_eip !8
  %uadd75 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %75, i64 32)
  %82 = extractvalue { i64, i1 } %uadd75, 0
  %83 = xor i64 %82, %75, !mcsema_real_eip !9
  %84 = and i64 %83, 16, !mcsema_real_eip !9
  %85 = icmp ne i64 %84, 0, !mcsema_real_eip !9
  %86 = icmp slt i64 %82, 0
  %87 = icmp eq i64 %82, 0, !mcsema_real_eip !9
  %88 = add i64 %2, 9223372036854775768
  %89 = and i64 %83, %88, !mcsema_real_eip !9
  %90 = icmp slt i64 %89, 0
  %91 = trunc i64 %82 to i8, !mcsema_real_eip !9
  %92 = tail call i8 @llvm.ctpop.i8(i8 %91), !mcsema_real_eip !9
  %93 = and i8 %92, 1
  %94 = icmp eq i8 %93, 0
  %95 = extractvalue { i64, i1 } %uadd75, 1
  %96 = inttoptr i64 %82 to i64*, !mcsema_real_eip !10
  %97 = load i64* %96, align 8, !mcsema_real_eip !10
  %98 = add i64 %82, 16, !mcsema_real_eip !11
  store i64 %78, i64* %RAX, align 8, !mcsema_real_eip !11
  store i64 %1, i64* %RBX, align 8, !mcsema_real_eip !11
  store i64 %.lcssa.lcssa, i64* %RCX, align 8, !mcsema_real_eip !11
  store i64 %.lcssa10.lcssa, i64* %RDX, align 8, !mcsema_real_eip !11
  store i64 %77, i64* %RSI, align 8, !mcsema_real_eip !11
  store i64 add (i64 ptrtoint (%1* @data_0x3ff to i64), i64 3), i64* %RDI, align 8, !mcsema_real_eip !11
  store i64 %98, i64* %RSP, align 8, !mcsema_real_eip !11
  store i64 %97, i64* %RBP, align 8, !mcsema_real_eip !11
  %99 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> %5, <2 x i64>* %99, align 8
  %100 = bitcast i64* %R10 to <2 x i64>*
  store <2 x i64> %7, <2 x i64>* %100, align 8
  %101 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> %9, <2 x i64>* %101, align 8
  %102 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> %11, <2 x i64>* %102, align 8
  store i64 %12, i64* %RIP, align 8, !mcsema_real_eip !11
  store i1 %95, i1* %CF, align 1, !mcsema_real_eip !11
  store i1 %94, i1* %PF, align 1, !mcsema_real_eip !11
  store i1 %85, i1* %AF, align 1, !mcsema_real_eip !11
  store i1 %87, i1* %ZF, align 1, !mcsema_real_eip !11
  store i1 %86, i1* %SF, align 1, !mcsema_real_eip !11
  store i1 %90, i1* %OF, align 1, !mcsema_real_eip !11
  store i1 %13, i1* %DF, align 1, !mcsema_real_eip !11
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %15, i8* %16, i32 128, i32 8, i1 false), !mcsema_real_eip !11
  store i1 %17, i1* %FPU_B, align 1, !mcsema_real_eip !11
  store i1 %18, i1* %FPU_C3, align 1, !mcsema_real_eip !11
  store i3 %19, i3* %FPU_TOP, align 1, !mcsema_real_eip !11
  store i1 %20, i1* %FPU_C2, align 1, !mcsema_real_eip !11
  store i1 %21, i1* %FPU_C1, align 1, !mcsema_real_eip !11
  store i1 %22, i1* %FPU_C0, align 1, !mcsema_real_eip !11
  store i1 %23, i1* %FPU_ES, align 1, !mcsema_real_eip !11
  store i1 %24, i1* %FPU_SF, align 1, !mcsema_real_eip !11
  store i1 %25, i1* %FPU_PE, align 1, !mcsema_real_eip !11
  store i1 %26, i1* %FPU_UE, align 1, !mcsema_real_eip !11
  store i1 %27, i1* %FPU_OE, align 1, !mcsema_real_eip !11
  store i1 %28, i1* %FPU_ZE, align 1, !mcsema_real_eip !11
  store i1 %29, i1* %FPU_DE, align 1, !mcsema_real_eip !11
  store i1 %30, i1* %FPU_IE, align 1, !mcsema_real_eip !11
  store i1 %31, i1* %FPU_X, align 1, !mcsema_real_eip !11
  store i2 %32, i2* %FPU_RC, align 1, !mcsema_real_eip !11
  store i2 %33, i2* %FPU_PC, align 1, !mcsema_real_eip !11
  store i1 %34, i1* %FPU_PM, align 1, !mcsema_real_eip !11
  store i1 %35, i1* %FPU_UM, align 1, !mcsema_real_eip !11
  store i1 %36, i1* %FPU_OM, align 1, !mcsema_real_eip !11
  store i1 %37, i1* %FPU_ZM, align 1, !mcsema_real_eip !11
  store i1 %38, i1* %FPU_DM, align 1, !mcsema_real_eip !11
  store i1 %39, i1* %FPU_IM, align 1, !mcsema_real_eip !11
  store i64 %42, i64* %41, align 4
  store i16 %43, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !11
  store i64 %44, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !11
  store i16 %45, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !11
  store i64 %46, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !11
  store i128 %47, i128* %XMM0, align 1, !mcsema_real_eip !11
  store i128 %48, i128* %XMM1, align 1, !mcsema_real_eip !11
  store i128 %49, i128* %XMM2, align 1, !mcsema_real_eip !11
  store i128 %50, i128* %XMM3, align 1, !mcsema_real_eip !11
  store i128 %51, i128* %XMM4, align 1, !mcsema_real_eip !11
  store i128 %52, i128* %XMM5, align 1, !mcsema_real_eip !11
  store i128 %53, i128* %XMM6, align 1, !mcsema_real_eip !11
  store i128 %54, i128* %XMM7, align 1, !mcsema_real_eip !11
  store i128 %55, i128* %XMM8, align 1, !mcsema_real_eip !11
  store i128 %56, i128* %XMM9, align 1, !mcsema_real_eip !11
  store i128 %57, i128* %XMM10, align 1, !mcsema_real_eip !11
  store i128 %58, i128* %XMM11, align 1, !mcsema_real_eip !11
  store i128 %59, i128* %XMM12, align 1, !mcsema_real_eip !11
  store i128 %60, i128* %XMM13, align 1, !mcsema_real_eip !11
  store i128 %61, i128* %XMM14, align 1, !mcsema_real_eip !11
  store i128 %62, i128* %XMM15, align 1, !mcsema_real_eip !11
  %103 = bitcast i64* %STACK_BASE to <2 x i64>*
  store <2 x i64> %64, <2 x i64>* %103, align 1
  ret void, !mcsema_real_eip !11

block_0x1c:                                       ; preds = %block_0x74, %entry
  store i32 0, i32* %70, align 4, !mcsema_real_eip !4
  br label %block_0x30

block_0x74:                                       ; preds = %block_0x30
  %.lcssa11 = phi i8 [ %121, %block_0x30 ]
  %.lcssa10 = phi i64 [ %117, %block_0x30 ]
  %.lcssa = phi i64 [ %114, %block_0x30 ]
  %104 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x3ff to i64), i64 3)), !mcsema_real_eip !12
  %105 = trunc i64 %104 to i32, !mcsema_real_eip !6
  store i32 %105, i32* %74, align 4, !mcsema_real_eip !6
  %106 = load i32* %68, align 4, !mcsema_real_eip !13
  %107 = add i32 %106, 1
  store i32 %107, i32* %68, align 4, !mcsema_real_eip !14
  %108 = add i32 %106, -6
  %109 = icmp slt i32 %108, 0
  %110 = sub i32 5, %106
  %111 = and i32 %107, %110
  %112 = icmp slt i32 %111, 0
  %tmp74 = xor i1 %109, %112
  br i1 %tmp74, label %block_0x1c, label %block_0x98, !mcsema_real_eip !15

block_0x30:                                       ; preds = %block_0x30, %block_0x1c
  %113 = phi i32 [ 0, %block_0x1c ], [ %125, %block_0x30 ]
  %114 = sext i32 %113 to i64, !mcsema_real_eip !16
  %115 = load i32* %68, align 4, !mcsema_real_eip !17
  %116 = sext i32 %115 to i64, !mcsema_real_eip !17
  %117 = mul i64 %116, 11, !mcsema_real_eip !18
  %118 = add i64 %114, ptrtoint (%0* @data_0x3b2 to i64)
  %119 = add i64 %118, %117, !mcsema_real_eip !19
  %120 = inttoptr i64 %119 to i8*
  %121 = load i8* %120, align 1, !mcsema_real_eip !19
  %122 = tail call x86_64_sysvcc i64 @printf(i64 ptrtoint (%1* @data_0x3ff to i64)), !mcsema_real_eip !20
  %123 = trunc i64 %122 to i32, !mcsema_real_eip !5
  store i32 %123, i32* %72, align 4, !mcsema_real_eip !5
  %124 = load i32* %70, align 4, !mcsema_real_eip !21
  %125 = add i32 %124, 1
  store i32 %125, i32* %70, align 4, !mcsema_real_eip !22
  %126 = add i32 %124, -10
  %127 = icmp slt i32 %126, 0
  %128 = sub i32 9, %124
  %129 = and i32 %125, %128
  %130 = icmp slt i32 %129, 0
  %tmp72 = xor i1 %127, %130
  br i1 %tmp72, label %block_0x30, label %block_0x74, !mcsema_real_eip !23
}

declare x86_64_sysvcc i64 @read(i64 inreg, i64 inreg, i64 inreg)

declare x86_64_sysvcc i64 @printf(i64 inreg)

declare x86_64_sysvcc i64 @exit(i64 inreg)

declare x86_64_sysvcc i64 @sleep(i64 inreg)

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !24
  %1 = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* %1)
  %RAX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !24
  %RBX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !24
  %2 = load i64* %RBX.i, align 8, !mcsema_real_eip !24
  %RCX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !24
  %RDX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !24
  %RSI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !24
  %3 = load i64* %RSI.i, align 8, !mcsema_real_eip !24
  %RDI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !24
  %4 = load i64* %RDI.i, align 8, !mcsema_real_eip !24
  %RSP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !24
  %5 = load i64* %RSP.i, align 8, !mcsema_real_eip !24
  %RBP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !24
  %6 = load i64* %RBP.i, align 8, !mcsema_real_eip !24
  %R8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !24
  %R10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !24
  %7 = load i64* %R10.i, align 8, !mcsema_real_eip !24
  %R11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !24
  %8 = load i64* %R11.i, align 8, !mcsema_real_eip !24
  %R12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !24
  %9 = load i64* %R12.i, align 8, !mcsema_real_eip !24
  %R13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !24
  %10 = load i64* %R13.i, align 8, !mcsema_real_eip !24
  %R14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !24
  %11 = load i64* %R14.i, align 8, !mcsema_real_eip !24
  %R15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !24
  %12 = load i64* %R15.i, align 8, !mcsema_real_eip !24
  %RIP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !24
  %13 = load i64* %RIP.i, align 8, !mcsema_real_eip !24
  %CF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !24
  %PF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !24
  %AF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !24
  %ZF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !24
  %SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !24
  %OF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !24
  %DF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !24
  %14 = load i1* %DF.i, align 1, !mcsema_real_eip !24
  %15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !24
  %16 = bitcast x86_fp80* %15 to i8*, !mcsema_real_eip !24
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %1, i8* %16, i32 128, i32 4, i1 false), !mcsema_real_eip !24
  %FPU_B.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !24
  %17 = load i1* %FPU_B.i, align 1, !mcsema_real_eip !24
  %FPU_C3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !24
  %18 = load i1* %FPU_C3.i, align 1, !mcsema_real_eip !24
  %FPU_TOP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !24
  %19 = load i3* %FPU_TOP.i, align 1, !mcsema_real_eip !24
  %FPU_C2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !24
  %20 = load i1* %FPU_C2.i, align 1, !mcsema_real_eip !24
  %FPU_C1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !24
  %21 = load i1* %FPU_C1.i, align 1, !mcsema_real_eip !24
  %FPU_C0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !24
  %22 = load i1* %FPU_C0.i, align 1, !mcsema_real_eip !24
  %FPU_ES.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !24
  %23 = load i1* %FPU_ES.i, align 1, !mcsema_real_eip !24
  %FPU_SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !24
  %24 = load i1* %FPU_SF.i, align 1, !mcsema_real_eip !24
  %FPU_PE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !24
  %25 = load i1* %FPU_PE.i, align 1, !mcsema_real_eip !24
  %FPU_UE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !24
  %26 = load i1* %FPU_UE.i, align 1, !mcsema_real_eip !24
  %FPU_OE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !24
  %27 = load i1* %FPU_OE.i, align 1, !mcsema_real_eip !24
  %FPU_ZE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !24
  %28 = load i1* %FPU_ZE.i, align 1, !mcsema_real_eip !24
  %FPU_DE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !24
  %29 = load i1* %FPU_DE.i, align 1, !mcsema_real_eip !24
  %FPU_IE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !24
  %30 = load i1* %FPU_IE.i, align 1, !mcsema_real_eip !24
  %FPU_X.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !24
  %31 = load i1* %FPU_X.i, align 1, !mcsema_real_eip !24
  %FPU_RC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !24
  %32 = load i2* %FPU_RC.i, align 1, !mcsema_real_eip !24
  %FPU_PC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !24
  %33 = load i2* %FPU_PC.i, align 1, !mcsema_real_eip !24
  %FPU_PM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !24
  %34 = load i1* %FPU_PM.i, align 1, !mcsema_real_eip !24
  %FPU_UM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !24
  %35 = load i1* %FPU_UM.i, align 1, !mcsema_real_eip !24
  %FPU_OM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !24
  %36 = load i1* %FPU_OM.i, align 1, !mcsema_real_eip !24
  %FPU_ZM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !24
  %37 = load i1* %FPU_ZM.i, align 1, !mcsema_real_eip !24
  %FPU_DM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !24
  %38 = load i1* %FPU_DM.i, align 1, !mcsema_real_eip !24
  %FPU_IM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !24
  %39 = load i1* %FPU_IM.i, align 1, !mcsema_real_eip !24
  %40 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !24
  %41 = bitcast i8* %40 to i64*
  %42 = load i64* %41, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !24
  %43 = load i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !24
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !24
  %44 = load i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !24
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !24
  %45 = load i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !24
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !24
  %46 = load i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !24
  %XMM0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !24
  %47 = load i128* %XMM0.i, align 1, !mcsema_real_eip !24
  %XMM1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !24
  %48 = load i128* %XMM1.i, align 1, !mcsema_real_eip !24
  %XMM2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !24
  %49 = load i128* %XMM2.i, align 1, !mcsema_real_eip !24
  %XMM3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !24
  %50 = load i128* %XMM3.i, align 1, !mcsema_real_eip !24
  %XMM4.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !24
  %51 = load i128* %XMM4.i, align 1, !mcsema_real_eip !24
  %XMM5.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !24
  %52 = load i128* %XMM5.i, align 1, !mcsema_real_eip !24
  %XMM6.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !24
  %53 = load i128* %XMM6.i, align 1, !mcsema_real_eip !24
  %XMM7.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !24
  %54 = load i128* %XMM7.i, align 1, !mcsema_real_eip !24
  %XMM8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !24
  %55 = load i128* %XMM8.i, align 1, !mcsema_real_eip !24
  %XMM9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !24
  %56 = load i128* %XMM9.i, align 1, !mcsema_real_eip !24
  %XMM10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !24
  %57 = load i128* %XMM10.i, align 1, !mcsema_real_eip !24
  %XMM11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !24
  %58 = load i128* %XMM11.i, align 1, !mcsema_real_eip !24
  %XMM12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !24
  %59 = load i128* %XMM12.i, align 1, !mcsema_real_eip !24
  %XMM13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !24
  %60 = load i128* %XMM13.i, align 1, !mcsema_real_eip !24
  %XMM14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !24
  %61 = load i128* %XMM14.i, align 1, !mcsema_real_eip !24
  %XMM15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !24
  %62 = load i128* %XMM15.i, align 1, !mcsema_real_eip !24
  %STACK_BASE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !24
  %63 = load i64* %STACK_BASE.i, align 8, !mcsema_real_eip !24
  %STACK_LIMIT.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !24
  %64 = load i64* %STACK_LIMIT.i, align 8, !mcsema_real_eip !24
  %65 = add i64 %5, -8
  %66 = inttoptr i64 %65 to i64*, !mcsema_real_eip !24
  store i64 %6, i64* %66, align 8, !mcsema_real_eip !24
  %67 = add i64 %5, -136
  %68 = add i64 %5, -72, !mcsema_real_eip !25
  %69 = add i64 %5, -12, !mcsema_real_eip !26
  %70 = inttoptr i64 %69 to i32*
  store i32 0, i32* %70, align 4, !mcsema_real_eip !26
  %71 = add i64 %5, -16, !mcsema_real_eip !27
  %72 = trunc i64 %4 to i32, !mcsema_real_eip !27
  %73 = inttoptr i64 %71 to i32*
  store i32 %72, i32* %73, align 4, !mcsema_real_eip !27
  %74 = add i64 %5, -24, !mcsema_real_eip !28
  %75 = inttoptr i64 %74 to i64*, !mcsema_real_eip !28
  store i64 %3, i64* %75, align 8, !mcsema_real_eip !28
  %76 = add i64 %5, -44, !mcsema_real_eip !29
  %77 = inttoptr i64 %76 to i32*
  store i32 0, i32* %77, align 4, !mcsema_real_eip !29
  %78 = add i64 %5, -28, !mcsema_real_eip !30
  %79 = inttoptr i64 %78 to i32*
  store i32 1, i32* %79, align 4, !mcsema_real_eip !30
  %80 = add i64 %5, -32, !mcsema_real_eip !31
  %81 = inttoptr i64 %80 to i32*
  store i32 1, i32* %81, align 4, !mcsema_real_eip !31
  %82 = load i32* %79, align 4, !mcsema_real_eip !32
  %83 = sext i32 %82 to i64, !mcsema_real_eip !32
  %84 = add i64 %83, add (i64 ptrtoint (%0* @data_0x3b2 to i64), i64 11), !mcsema_real_eip !33
  %85 = inttoptr i64 %84 to i8*
  store i8 88, i8* %85, align 1, !mcsema_real_eip !33
  %86 = tail call x86_64_sysvcc i64 @read(i64 0, i64 %68, i64 28), !mcsema_real_eip !34
  %87 = add i64 %5, -80, !mcsema_real_eip !35
  %88 = inttoptr i64 %87 to i64*, !mcsema_real_eip !35
  store i64 %86, i64* %88, align 8, !mcsema_real_eip !35
  %89 = load i32* %77, align 4, !mcsema_real_eip !36
  %90 = add i32 %89, -28
  %91 = icmp slt i32 %90, 0
  %92 = sub i32 27, %89
  %93 = and i32 %92, %89
  %94 = icmp slt i32 %93, 0
  %tmp.i = xor i1 %91, %94
  %95 = bitcast i64* %R8.i to <2 x i64>*
  br i1 %tmp.i, label %block_0x13d.i.preheader, label %sub_c0.exit, !mcsema_real_eip !37

block_0x13d.i.preheader:                          ; preds = %driverBlockRaw
  br label %block_0x13d.i

block_0x390.loopexit.i:                           ; preds = %block_0x130.i
  %.lcssa = phi <2 x i64> [ %426, %block_0x130.i ]
  %RBX_val.2.i.lcssa = phi i64 [ %RBX_val.2.i, %block_0x130.i ]
  %RDX_val.1.i.lcssa = phi i64 [ %RDX_val.1.i, %block_0x130.i ]
  %RSI_val.6.in.i.lcssa = phi i32 [ %RSI_val.6.in.i, %block_0x130.i ]
  %RBP_val.2.i.lcssa = phi i64 [ %RBP_val.2.i, %block_0x130.i ]
  %RSP_val.2.i.lcssa = phi i64 [ %RSP_val.2.i, %block_0x130.i ]
  %R10_val.2.i.lcssa = phi i64 [ %R10_val.2.i, %block_0x130.i ]
  %R11_val.2.i.lcssa = phi i64 [ %R11_val.2.i, %block_0x130.i ]
  %R12_val.2.i.lcssa = phi i64 [ %R12_val.2.i, %block_0x130.i ]
  %R13_val.2.i.lcssa = phi i64 [ %R13_val.2.i, %block_0x130.i ]
  %R14_val.2.i.lcssa = phi i64 [ %R14_val.2.i, %block_0x130.i ]
  %RIP_val.2.i.lcssa = phi i64 [ %RIP_val.2.i, %block_0x130.i ]
  %DF_val.2.i.lcssa = phi i1 [ %DF_val.2.i, %block_0x130.i ]
  %FPU_B_val.2.i.lcssa = phi i1 [ %FPU_B_val.2.i, %block_0x130.i ]
  %FPU_C3_val.2.i.lcssa = phi i1 [ %FPU_C3_val.2.i, %block_0x130.i ]
  %FPU_TOP_val.2.i.lcssa = phi i3 [ %FPU_TOP_val.2.i, %block_0x130.i ]
  %FPU_C2_val.2.i.lcssa = phi i1 [ %FPU_C2_val.2.i, %block_0x130.i ]
  %FPU_C1_val.2.i.lcssa = phi i1 [ %FPU_C1_val.2.i, %block_0x130.i ]
  %FPU_C0_val.2.i.lcssa = phi i1 [ %FPU_C0_val.2.i, %block_0x130.i ]
  %FPU_ES_val.2.i.lcssa = phi i1 [ %FPU_ES_val.2.i, %block_0x130.i ]
  %FPU_SF_val.2.i.lcssa = phi i1 [ %FPU_SF_val.2.i, %block_0x130.i ]
  %FPU_PE_val.2.i.lcssa = phi i1 [ %FPU_PE_val.2.i, %block_0x130.i ]
  %FPU_UE_val.2.i.lcssa = phi i1 [ %FPU_UE_val.2.i, %block_0x130.i ]
  %FPU_OE_val.2.i.lcssa = phi i1 [ %FPU_OE_val.2.i, %block_0x130.i ]
  %FPU_ZE_val.2.i.lcssa = phi i1 [ %FPU_ZE_val.2.i, %block_0x130.i ]
  %FPU_DE_val.2.i.lcssa = phi i1 [ %FPU_DE_val.2.i, %block_0x130.i ]
  %FPU_IE_val.2.i.lcssa = phi i1 [ %FPU_IE_val.2.i, %block_0x130.i ]
  %FPU_X_val.2.i.lcssa = phi i1 [ %FPU_X_val.2.i, %block_0x130.i ]
  %FPU_RC_val.2.i.lcssa = phi i2 [ %FPU_RC_val.2.i, %block_0x130.i ]
  %FPU_PC_val.2.i.lcssa = phi i2 [ %FPU_PC_val.2.i, %block_0x130.i ]
  %FPU_PM_val.2.i.lcssa = phi i1 [ %FPU_PM_val.2.i, %block_0x130.i ]
  %FPU_UM_val.2.i.lcssa = phi i1 [ %FPU_UM_val.2.i, %block_0x130.i ]
  %FPU_OM_val.2.i.lcssa = phi i1 [ %FPU_OM_val.2.i, %block_0x130.i ]
  %FPU_ZM_val.2.i.lcssa = phi i1 [ %FPU_ZM_val.2.i, %block_0x130.i ]
  %FPU_DM_val.2.i.lcssa = phi i1 [ %FPU_DM_val.2.i, %block_0x130.i ]
  %FPU_IM_val.2.i.lcssa = phi i1 [ %FPU_IM_val.2.i, %block_0x130.i ]
  %FPU_TAG_val.sroa.0.2.i.lcssa = phi i64 [ %FPU_TAG_val.sroa.0.2.i, %block_0x130.i ]
  %FPU_LASTIP_SEG_val.2.i.lcssa = phi i16 [ %FPU_LASTIP_SEG_val.2.i, %block_0x130.i ]
  %FPU_LASTIP_OFF_val.2.i.lcssa = phi i64 [ %FPU_LASTIP_OFF_val.2.i, %block_0x130.i ]
  %FPU_LASTDATA_SEG_val.2.i.lcssa = phi i16 [ %FPU_LASTDATA_SEG_val.2.i, %block_0x130.i ]
  %FPU_LASTDATA_OFF_val.2.i.lcssa = phi i64 [ %FPU_LASTDATA_OFF_val.2.i, %block_0x130.i ]
  %XMM0_val.2.i.lcssa = phi i128 [ %XMM0_val.2.i, %block_0x130.i ]
  %XMM1_val.2.i.lcssa = phi i128 [ %XMM1_val.2.i, %block_0x130.i ]
  %XMM2_val.2.i.lcssa = phi i128 [ %XMM2_val.2.i, %block_0x130.i ]
  %XMM3_val.2.i.lcssa = phi i128 [ %XMM3_val.2.i, %block_0x130.i ]
  %XMM4_val.2.i.lcssa = phi i128 [ %XMM4_val.2.i, %block_0x130.i ]
  %XMM5_val.2.i.lcssa = phi i128 [ %XMM5_val.2.i, %block_0x130.i ]
  %XMM6_val.2.i.lcssa = phi i128 [ %XMM6_val.2.i, %block_0x130.i ]
  %XMM7_val.2.i.lcssa = phi i128 [ %XMM7_val.2.i, %block_0x130.i ]
  %XMM8_val.2.i.lcssa = phi i128 [ %XMM8_val.2.i, %block_0x130.i ]
  %XMM9_val.2.i.lcssa = phi i128 [ %XMM9_val.2.i, %block_0x130.i ]
  %XMM10_val.2.i.lcssa = phi i128 [ %XMM10_val.2.i, %block_0x130.i ]
  %XMM11_val.2.i.lcssa = phi i128 [ %XMM11_val.2.i, %block_0x130.i ]
  %XMM12_val.2.i.lcssa = phi i128 [ %XMM12_val.2.i, %block_0x130.i ]
  %XMM13_val.2.i.lcssa = phi i128 [ %XMM13_val.2.i, %block_0x130.i ]
  %XMM14_val.2.i.lcssa = phi i128 [ %XMM14_val.2.i, %block_0x130.i ]
  %XMM15_val.2.i.lcssa = phi i128 [ %XMM15_val.2.i, %block_0x130.i ]
  %STACK_BASE_val.2.i.lcssa = phi i64 [ %STACK_BASE_val.2.i, %block_0x130.i ]
  %STACK_LIMIT_val.2.i.lcssa = phi i64 [ %STACK_LIMIT_val.2.i, %block_0x130.i ]
  %R15_val.2.i.lcssa = phi i64 [ %R15_val.2.i, %block_0x130.i ]
  %RSI_val.6.le.i = zext i32 %RSI_val.6.in.i.lcssa to i64
  br label %sub_c0.exit

block_0x13d.i:                                    ; preds = %block_0x130.i, %block_0x13d.i.preheader
  %R15_val.1.i = phi i64 [ %R15_val.2.i, %block_0x130.i ], [ %12, %block_0x13d.i.preheader ]
  %STACK_LIMIT_val.1.i = phi i64 [ %STACK_LIMIT_val.2.i, %block_0x130.i ], [ %64, %block_0x13d.i.preheader ]
  %STACK_BASE_val.1.i = phi i64 [ %STACK_BASE_val.2.i, %block_0x130.i ], [ %63, %block_0x13d.i.preheader ]
  %XMM15_val.1.i = phi i128 [ %XMM15_val.2.i, %block_0x130.i ], [ %62, %block_0x13d.i.preheader ]
  %XMM14_val.1.i = phi i128 [ %XMM14_val.2.i, %block_0x130.i ], [ %61, %block_0x13d.i.preheader ]
  %XMM13_val.1.i = phi i128 [ %XMM13_val.2.i, %block_0x130.i ], [ %60, %block_0x13d.i.preheader ]
  %XMM12_val.1.i = phi i128 [ %XMM12_val.2.i, %block_0x130.i ], [ %59, %block_0x13d.i.preheader ]
  %XMM11_val.1.i = phi i128 [ %XMM11_val.2.i, %block_0x130.i ], [ %58, %block_0x13d.i.preheader ]
  %XMM10_val.1.i = phi i128 [ %XMM10_val.2.i, %block_0x130.i ], [ %57, %block_0x13d.i.preheader ]
  %XMM9_val.1.i = phi i128 [ %XMM9_val.2.i, %block_0x130.i ], [ %56, %block_0x13d.i.preheader ]
  %XMM8_val.1.i = phi i128 [ %XMM8_val.2.i, %block_0x130.i ], [ %55, %block_0x13d.i.preheader ]
  %XMM7_val.1.i = phi i128 [ %XMM7_val.2.i, %block_0x130.i ], [ %54, %block_0x13d.i.preheader ]
  %XMM6_val.1.i = phi i128 [ %XMM6_val.2.i, %block_0x130.i ], [ %53, %block_0x13d.i.preheader ]
  %XMM5_val.1.i = phi i128 [ %XMM5_val.2.i, %block_0x130.i ], [ %52, %block_0x13d.i.preheader ]
  %XMM4_val.1.i = phi i128 [ %XMM4_val.2.i, %block_0x130.i ], [ %51, %block_0x13d.i.preheader ]
  %XMM3_val.1.i = phi i128 [ %XMM3_val.2.i, %block_0x130.i ], [ %50, %block_0x13d.i.preheader ]
  %XMM2_val.1.i = phi i128 [ %XMM2_val.2.i, %block_0x130.i ], [ %49, %block_0x13d.i.preheader ]
  %XMM1_val.1.i = phi i128 [ %XMM1_val.2.i, %block_0x130.i ], [ %48, %block_0x13d.i.preheader ]
  %XMM0_val.1.i = phi i128 [ %XMM0_val.2.i, %block_0x130.i ], [ %47, %block_0x13d.i.preheader ]
  %FPU_LASTDATA_OFF_val.1.i = phi i64 [ %FPU_LASTDATA_OFF_val.2.i, %block_0x130.i ], [ %46, %block_0x13d.i.preheader ]
  %FPU_LASTDATA_SEG_val.1.i = phi i16 [ %FPU_LASTDATA_SEG_val.2.i, %block_0x130.i ], [ %45, %block_0x13d.i.preheader ]
  %FPU_LASTIP_OFF_val.1.i = phi i64 [ %FPU_LASTIP_OFF_val.2.i, %block_0x130.i ], [ %44, %block_0x13d.i.preheader ]
  %FPU_LASTIP_SEG_val.1.i = phi i16 [ %FPU_LASTIP_SEG_val.2.i, %block_0x130.i ], [ %43, %block_0x13d.i.preheader ]
  %FPU_TAG_val.sroa.0.1.i = phi i64 [ %FPU_TAG_val.sroa.0.2.i, %block_0x130.i ], [ %42, %block_0x13d.i.preheader ]
  %FPU_IM_val.1.i = phi i1 [ %FPU_IM_val.2.i, %block_0x130.i ], [ %39, %block_0x13d.i.preheader ]
  %FPU_DM_val.1.i = phi i1 [ %FPU_DM_val.2.i, %block_0x130.i ], [ %38, %block_0x13d.i.preheader ]
  %FPU_ZM_val.1.i = phi i1 [ %FPU_ZM_val.2.i, %block_0x130.i ], [ %37, %block_0x13d.i.preheader ]
  %FPU_OM_val.1.i = phi i1 [ %FPU_OM_val.2.i, %block_0x130.i ], [ %36, %block_0x13d.i.preheader ]
  %FPU_UM_val.1.i = phi i1 [ %FPU_UM_val.2.i, %block_0x130.i ], [ %35, %block_0x13d.i.preheader ]
  %FPU_PM_val.1.i = phi i1 [ %FPU_PM_val.2.i, %block_0x130.i ], [ %34, %block_0x13d.i.preheader ]
  %FPU_PC_val.1.i = phi i2 [ %FPU_PC_val.2.i, %block_0x130.i ], [ %33, %block_0x13d.i.preheader ]
  %FPU_RC_val.1.i = phi i2 [ %FPU_RC_val.2.i, %block_0x130.i ], [ %32, %block_0x13d.i.preheader ]
  %FPU_X_val.1.i = phi i1 [ %FPU_X_val.2.i, %block_0x130.i ], [ %31, %block_0x13d.i.preheader ]
  %FPU_IE_val.1.i = phi i1 [ %FPU_IE_val.2.i, %block_0x130.i ], [ %30, %block_0x13d.i.preheader ]
  %FPU_DE_val.1.i = phi i1 [ %FPU_DE_val.2.i, %block_0x130.i ], [ %29, %block_0x13d.i.preheader ]
  %FPU_ZE_val.1.i = phi i1 [ %FPU_ZE_val.2.i, %block_0x130.i ], [ %28, %block_0x13d.i.preheader ]
  %FPU_OE_val.1.i = phi i1 [ %FPU_OE_val.2.i, %block_0x130.i ], [ %27, %block_0x13d.i.preheader ]
  %FPU_UE_val.1.i = phi i1 [ %FPU_UE_val.2.i, %block_0x130.i ], [ %26, %block_0x13d.i.preheader ]
  %FPU_PE_val.1.i = phi i1 [ %FPU_PE_val.2.i, %block_0x130.i ], [ %25, %block_0x13d.i.preheader ]
  %FPU_SF_val.1.i = phi i1 [ %FPU_SF_val.2.i, %block_0x130.i ], [ %24, %block_0x13d.i.preheader ]
  %FPU_ES_val.1.i = phi i1 [ %FPU_ES_val.2.i, %block_0x130.i ], [ %23, %block_0x13d.i.preheader ]
  %FPU_C0_val.1.i = phi i1 [ %FPU_C0_val.2.i, %block_0x130.i ], [ %22, %block_0x13d.i.preheader ]
  %FPU_C1_val.1.i = phi i1 [ %FPU_C1_val.2.i, %block_0x130.i ], [ %21, %block_0x13d.i.preheader ]
  %FPU_C2_val.1.i = phi i1 [ %FPU_C2_val.2.i, %block_0x130.i ], [ %20, %block_0x13d.i.preheader ]
  %FPU_TOP_val.1.i = phi i3 [ %FPU_TOP_val.2.i, %block_0x130.i ], [ %19, %block_0x13d.i.preheader ]
  %FPU_C3_val.1.i = phi i1 [ %FPU_C3_val.2.i, %block_0x130.i ], [ %18, %block_0x13d.i.preheader ]
  %FPU_B_val.1.i = phi i1 [ %FPU_B_val.2.i, %block_0x130.i ], [ %17, %block_0x13d.i.preheader ]
  %DF_val.1.i = phi i1 [ %DF_val.2.i, %block_0x130.i ], [ %14, %block_0x13d.i.preheader ]
  %RIP_val.1.i = phi i64 [ %RIP_val.2.i, %block_0x130.i ], [ %13, %block_0x13d.i.preheader ]
  %R14_val.1.i = phi i64 [ %R14_val.2.i, %block_0x130.i ], [ %11, %block_0x13d.i.preheader ]
  %R13_val.1.i = phi i64 [ %R13_val.2.i, %block_0x130.i ], [ %10, %block_0x13d.i.preheader ]
  %R12_val.1.i = phi i64 [ %R12_val.2.i, %block_0x130.i ], [ %9, %block_0x13d.i.preheader ]
  %R11_val.1.i = phi i64 [ %R11_val.2.i, %block_0x130.i ], [ %8, %block_0x13d.i.preheader ]
  %R10_val.1.i = phi i64 [ %R10_val.2.i, %block_0x130.i ], [ %7, %block_0x13d.i.preheader ]
  %RSP_val.1.i = phi i64 [ %RSP_val.2.i, %block_0x130.i ], [ %67, %block_0x13d.i.preheader ]
  %RBP_val.1.i = phi i64 [ %RBP_val.2.i, %block_0x130.i ], [ %65, %block_0x13d.i.preheader ]
  %RDI_val.0.i = phi i64 [ 1, %block_0x130.i ], [ 0, %block_0x13d.i.preheader ]
  %RBX_val.1.i = phi i64 [ %RBX_val.2.i, %block_0x130.i ], [ %2, %block_0x13d.i.preheader ]
  %96 = phi <2 x i64> [ %426, %block_0x130.i ], [ <i64 add (i64 ptrtoint (%0* @data_0x3b2 to i64), i64 11), i64 11>, %block_0x13d.i.preheader ]
  %97 = add i64 %RBP_val.1.i, -20, !mcsema_real_eip !38
  %98 = inttoptr i64 %97 to i32*
  %99 = load i32* %98, align 4, !mcsema_real_eip !38
  %100 = add i64 %RBP_val.1.i, -28, !mcsema_real_eip !39
  %101 = inttoptr i64 %100 to i32*
  store i32 %99, i32* %101, align 4, !mcsema_real_eip !39
  %102 = add i64 %RBP_val.1.i, -24, !mcsema_real_eip !40
  %103 = inttoptr i64 %102 to i32*
  %104 = load i32* %103, align 4, !mcsema_real_eip !40
  %105 = add i64 %RBP_val.1.i, -32, !mcsema_real_eip !41
  %106 = inttoptr i64 %105 to i32*
  store i32 %104, i32* %106, align 4, !mcsema_real_eip !41
  %107 = add i64 %RBP_val.1.i, -36, !mcsema_real_eip !42
  %108 = inttoptr i64 %107 to i32*
  %109 = load i32* %108, align 4, !mcsema_real_eip !42
  %110 = sext i32 %109 to i64, !mcsema_real_eip !42
  %111 = add i64 %RBP_val.1.i, -64, !mcsema_real_eip !43
  %112 = add i64 %111, %110, !mcsema_real_eip !43
  %113 = inttoptr i64 %112 to i8*
  %114 = load i8* %113, align 1, !mcsema_real_eip !43
  %115 = sext i8 %114 to i32, !mcsema_real_eip !43
  %116 = add nsw i32 %115, -114
  %117 = icmp eq i32 %116, 0, !mcsema_real_eip !44
  %118 = icmp slt i32 %116, 0
  %119 = sub i32 113, %115
  %120 = and i32 %119, %115
  %121 = icmp slt i32 %120, 0
  %122 = add i64 %RBP_val.1.i, -76, !mcsema_real_eip !45
  %123 = inttoptr i64 %122 to i32*
  store i32 %115, i32* %123, align 4, !mcsema_real_eip !45
  %124 = add i64 %RBP_val.1.i, -80, !mcsema_real_eip !46
  %125 = inttoptr i64 %124 to i32*
  store i32 %116, i32* %125, align 4, !mcsema_real_eip !46
  %tmp348.i = xor i1 %118, %121
  %.demorgan.i = or i1 %117, %tmp348.i
  %126 = load i32* %123, align 4, !mcsema_real_eip !47
  br i1 %.demorgan.i, label %block_0x168.i, label %block_0x190.i, !mcsema_real_eip !48

block_0x190.i:                                    ; preds = %block_0x13d.i
  %127 = add i32 %126, -115
  %128 = icmp eq i32 %127, 0, !mcsema_real_eip !49
  %129 = add i64 %RBP_val.1.i, -92, !mcsema_real_eip !50
  %130 = inttoptr i64 %129 to i32*
  store i32 %127, i32* %130, align 4, !mcsema_real_eip !50
  br i1 %128, label %block_0x1c8.i, label %block_0x1a4.i, !mcsema_real_eip !51

block_0x168.i:                                    ; preds = %block_0x13d.i
  %131 = add i32 %126, -97
  %132 = icmp eq i32 %131, 0, !mcsema_real_eip !52
  %133 = add i64 %RBP_val.1.i, -84, !mcsema_real_eip !53
  %134 = inttoptr i64 %133 to i32*
  store i32 %131, i32* %134, align 4, !mcsema_real_eip !53
  br i1 %132, label %block_0x1d8.i, label %block_0x17c.i, !mcsema_real_eip !54

block_0x1c8.i:                                    ; preds = %block_0x190.i
  %135 = load i32* %103, align 4, !mcsema_real_eip !55
  %136 = add i32 %135, 1
  store i32 %136, i32* %103, align 4, !mcsema_real_eip !56
  br label %block_0x22a.i, !mcsema_real_eip !57

block_0x1d8.i:                                    ; preds = %block_0x168.i
  %137 = load i32* %98, align 4, !mcsema_real_eip !58
  %138 = add i32 %137, -1
  store i32 %138, i32* %98, align 4, !mcsema_real_eip !59
  br label %block_0x22a.i, !mcsema_real_eip !60

block_0x1a4.i:                                    ; preds = %block_0x190.i
  %139 = load i32* %123, align 4, !mcsema_real_eip !61
  %140 = add i32 %139, -119
  %141 = icmp eq i32 %140, 0, !mcsema_real_eip !62
  %142 = add i64 %RBP_val.1.i, -96, !mcsema_real_eip !63
  %143 = inttoptr i64 %142 to i32*
  store i32 %140, i32* %143, align 4, !mcsema_real_eip !63
  br i1 %141, label %block_0x1b8.i, label %block_0x1f8.i, !mcsema_real_eip !64

block_0x22a.i:                                    ; preds = %block_0x1b8.i, %block_0x1e8.i, %block_0x1d8.i, %block_0x1c8.i
  %144 = load i32* %98, align 4, !mcsema_real_eip !65
  %145 = sext i32 %144 to i64, !mcsema_real_eip !65
  %146 = load i32* %103, align 4, !mcsema_real_eip !66
  %147 = sext i32 %146 to i64, !mcsema_real_eip !66
  %148 = mul i64 %147, 11, !mcsema_real_eip !67
  %149 = add i64 %145, ptrtoint (%0* @data_0x3b2 to i64)
  %150 = add i64 %149, %148, !mcsema_real_eip !68
  %151 = inttoptr i64 %150 to i8*
  %152 = load i8* %151, align 1, !mcsema_real_eip !68
  %153 = icmp eq i8 %152, 35
  br i1 %153, label %block_0x256.i, label %block_0x28c.i, !mcsema_real_eip !69

block_0x17c.i:                                    ; preds = %block_0x168.i
  %154 = load i32* %123, align 4, !mcsema_real_eip !70
  %155 = add i32 %154, -100
  %156 = icmp eq i32 %155, 0, !mcsema_real_eip !71
  %157 = add i64 %RBP_val.1.i, -88, !mcsema_real_eip !72
  %158 = inttoptr i64 %157 to i32*
  store i32 %155, i32* %158, align 4, !mcsema_real_eip !72
  br i1 %156, label %block_0x1e8.i, label %block_0x1f8.i, !mcsema_real_eip !73

block_0x1f8.i:                                    ; preds = %block_0x17c.i, %block_0x1a4.i
  %159 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x3ff to i64), i64 5)), !mcsema_real_eip !74
  %160 = add i64 %RBP_val.1.i, -100, !mcsema_real_eip !75
  %161 = trunc i64 %159 to i32, !mcsema_real_eip !75
  %162 = inttoptr i64 %160 to i32*
  store i32 %161, i32* %162, align 4, !mcsema_real_eip !75
  %163 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x3ff to i64), i64 45)), !mcsema_real_eip !76
  %164 = add i64 %RBP_val.1.i, -104, !mcsema_real_eip !77
  %165 = trunc i64 %163 to i32, !mcsema_real_eip !77
  %166 = inttoptr i64 %164 to i32*
  store i32 %165, i32* %166, align 4, !mcsema_real_eip !77
  %167 = tail call x86_64_sysvcc i64 @exit(i64 4294967295), !mcsema_real_eip !78
  %168 = load i32* %98, align 4, !mcsema_real_eip !65
  %169 = sext i32 %168 to i64, !mcsema_real_eip !65
  %170 = load i32* %103, align 4, !mcsema_real_eip !66
  %171 = sext i32 %170 to i64, !mcsema_real_eip !66
  %172 = mul i64 %171, 11, !mcsema_real_eip !67
  %173 = add i64 %169, ptrtoint (%0* @data_0x3b2 to i64)
  %174 = add i64 %173, %172, !mcsema_real_eip !68
  %175 = inttoptr i64 %174 to i8*
  %176 = load i8* %175, align 1, !mcsema_real_eip !68
  %177 = icmp eq i8 %176, 35
  br i1 %177, label %block_0x256.i, label %block_0x28c.i, !mcsema_real_eip !69

block_0x28c.i:                                    ; preds = %block_0x1f8.i, %block_0x22a.i
  %178 = phi i32 [ %146, %block_0x22a.i ], [ %170, %block_0x1f8.i ]
  %179 = phi i32 [ %144, %block_0x22a.i ], [ %168, %block_0x1f8.i ]
  %RDI_val.1.i = phi i64 [ %RDI_val.0.i, %block_0x22a.i ], [ 4294967295, %block_0x1f8.i ]
  %180 = sext i32 %179 to i64, !mcsema_real_eip !79
  %181 = sext i32 %178 to i64, !mcsema_real_eip !80
  %182 = mul i64 %181, 11, !mcsema_real_eip !81
  %183 = add i64 %180, ptrtoint (%0* @data_0x3b2 to i64)
  %184 = add i64 %183, %182, !mcsema_real_eip !82
  %185 = inttoptr i64 %184 to i8*
  %186 = load i8* %185, align 1, !mcsema_real_eip !82
  %187 = sext i8 %186 to i64
  %188 = and i64 %187, 4294967295
  %189 = icmp eq i8 %186, 32
  br i1 %189, label %block_0x317.i, label %block_0x2b8.i, !mcsema_real_eip !83

block_0x256.i:                                    ; preds = %block_0x1f8.i, %block_0x22a.i
  %190 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x3ff to i64), i64 56)), !mcsema_real_eip !84
  %191 = add i64 %RBP_val.1.i, -108, !mcsema_real_eip !85
  %192 = trunc i64 %190 to i32, !mcsema_real_eip !85
  %193 = inttoptr i64 %191 to i32*
  store i32 %192, i32* %193, align 4, !mcsema_real_eip !85
  %194 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x3ff to i64), i64 66)), !mcsema_real_eip !86
  %195 = add i64 %RBP_val.1.i, -112, !mcsema_real_eip !87
  %196 = trunc i64 %194 to i32, !mcsema_real_eip !87
  %197 = inttoptr i64 %195 to i32*
  store i32 %196, i32* %197, align 4, !mcsema_real_eip !87
  %198 = tail call x86_64_sysvcc i64 @exit(i64 0), !mcsema_real_eip !88
  %199 = load i32* %98, align 4, !mcsema_real_eip !79
  %200 = sext i32 %199 to i64, !mcsema_real_eip !79
  %201 = load i32* %103, align 4, !mcsema_real_eip !80
  %202 = sext i32 %201 to i64, !mcsema_real_eip !80
  %203 = mul i64 %202, 11, !mcsema_real_eip !81
  %204 = add i64 %200, ptrtoint (%0* @data_0x3b2 to i64)
  %205 = add i64 %204, %203, !mcsema_real_eip !82
  %206 = inttoptr i64 %205 to i8*
  %207 = load i8* %206, align 1, !mcsema_real_eip !82
  %208 = sext i8 %207 to i64
  %209 = and i64 %208, 4294967295
  %210 = icmp eq i8 %207, 32
  br i1 %210, label %block_0x317.i, label %block_0x2b8.i, !mcsema_real_eip !83

block_0x1e8.i:                                    ; preds = %block_0x17c.i
  %211 = load i32* %98, align 4, !mcsema_real_eip !89
  %212 = add i32 %211, 1
  store i32 %212, i32* %98, align 4, !mcsema_real_eip !90
  br label %block_0x22a.i, !mcsema_real_eip !91

block_0x1b8.i:                                    ; preds = %block_0x1a4.i
  %213 = load i32* %103, align 4, !mcsema_real_eip !92
  %214 = add i32 %213, -1
  store i32 %214, i32* %103, align 4, !mcsema_real_eip !93
  br label %block_0x22a.i, !mcsema_real_eip !94

block_0x317.i:                                    ; preds = %block_0x2fe.i, %block_0x256.i, %block_0x28c.i
  %215 = phi i32 [ %201, %block_0x256.i ], [ 2, %block_0x2fe.i ], [ %178, %block_0x28c.i ]
  %216 = phi i32 [ %199, %block_0x256.i ], [ %219, %block_0x2fe.i ], [ %179, %block_0x28c.i ]
  %RDI_val.2.i = phi i64 [ 0, %block_0x256.i ], [ %RDI_val.3.i, %block_0x2fe.i ], [ %RDI_val.1.i, %block_0x28c.i ]
  %RSI_val.1.i = phi i64 [ %209, %block_0x256.i ], [ %232, %block_0x2fe.i ], [ %188, %block_0x28c.i ]
  %217 = load i32* %101, align 4, !mcsema_real_eip !95
  %218 = icmp eq i32 %217, %216
  br i1 %218, label %block_0x323.i, label %block_0x34d.i, !mcsema_real_eip !96

block_0x2b8.i:                                    ; preds = %block_0x256.i, %block_0x28c.i
  %219 = phi i32 [ %199, %block_0x256.i ], [ %179, %block_0x28c.i ]
  %220 = phi i32 [ %201, %block_0x256.i ], [ %178, %block_0x28c.i ]
  %RDI_val.3.i = phi i64 [ 0, %block_0x256.i ], [ %RDI_val.1.i, %block_0x28c.i ]
  %RSI_val.2.i = phi i64 [ %209, %block_0x256.i ], [ %188, %block_0x28c.i ]
  %221 = icmp eq i32 %220, 2
  br i1 %221, label %block_0x2c5.i, label %block_0x30b.i, !mcsema_real_eip !97

block_0x30b.i:                                    ; preds = %block_0x2fe.i, %block_0x2c5.i, %block_0x2b8.i
  %RSI_val.3.i = phi i64 [ %232, %block_0x2fe.i ], [ %232, %block_0x2c5.i ], [ %RSI_val.2.i, %block_0x2b8.i ]
  %222 = load i32* %101, align 4, !mcsema_real_eip !98
  store i32 %222, i32* %98, align 4, !mcsema_real_eip !99
  %223 = load i32* %106, align 4, !mcsema_real_eip !100
  store i32 %223, i32* %103, align 4, !mcsema_real_eip !101
  %224 = load i32* %101, align 4, !mcsema_real_eip !95
  %225 = load i32* %98, align 4, !mcsema_real_eip !102
  %226 = icmp eq i32 %224, %225
  br i1 %226, label %block_0x323.i, label %block_0x34d.i, !mcsema_real_eip !96

block_0x2c5.i:                                    ; preds = %block_0x2b8.i
  %227 = sext i32 %219 to i64, !mcsema_real_eip !103
  %228 = add i64 %227, add (i64 ptrtoint (%0* @data_0x3b2 to i64), i64 22), !mcsema_real_eip !104
  %229 = inttoptr i64 %228 to i8*
  %230 = load i8* %229, align 1, !mcsema_real_eip !104
  %231 = sext i8 %230 to i64
  %232 = and i64 %231, 4294967295
  %233 = icmp ne i8 %230, 124
  %234 = icmp slt i32 %219, 1
  %or.cond.i = or i1 %233, %234
  br i1 %or.cond.i, label %block_0x30b.i, label %block_0x2fe.i, !mcsema_real_eip !105

block_0x34d.i:                                    ; preds = %block_0x323.i, %block_0x30b.i, %block_0x317.i
  %235 = phi i32 [ %327, %block_0x323.i ], [ %215, %block_0x317.i ], [ %223, %block_0x30b.i ]
  %236 = phi i32 [ %326, %block_0x323.i ], [ %216, %block_0x317.i ], [ %225, %block_0x30b.i ]
  %RDI_val.4.i = phi i64 [ %RDI_val.5.i, %block_0x323.i ], [ %RDI_val.2.i, %block_0x317.i ], [ %RDI_val.3.i, %block_0x30b.i ]
  %RSI_val.4.i = phi i64 [ %RSI_val.5.i, %block_0x323.i ], [ %RSI_val.1.i, %block_0x317.i ], [ %RSI_val.3.i, %block_0x30b.i ]
  %237 = sext i32 %236 to i64, !mcsema_real_eip !106
  %238 = sext i32 %235 to i64, !mcsema_real_eip !107
  %239 = mul i64 %238, 11, !mcsema_real_eip !108
  %uadd366.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %239, i64 ptrtoint (%0* @data_0x3b2 to i64))
  %240 = extractvalue { i64, i1 } %uadd366.i, 0
  %241 = xor i64 %240, ptrtoint (%0* @data_0x3b2 to i64), !mcsema_real_eip !109
  %242 = xor i64 %240, %239, !mcsema_real_eip !109
  %243 = and i64 %242, 16, !mcsema_real_eip !109
  %244 = icmp ne i64 %243, 0, !mcsema_real_eip !109
  %245 = icmp slt i64 %240, 0
  %246 = icmp eq i64 %240, 0, !mcsema_real_eip !109
  %247 = xor i64 %239, xor (i64 ptrtoint (%0* @data_0x3b2 to i64), i64 -9223372036854775808), !mcsema_real_eip !109
  %248 = and i64 %241, %247, !mcsema_real_eip !109
  %249 = icmp slt i64 %248, 0
  %250 = trunc i64 %240 to i8, !mcsema_real_eip !109
  %251 = tail call i8 @llvm.ctpop.i8(i8 %250), !mcsema_real_eip !109
  %252 = and i8 %251, 1
  %253 = icmp eq i8 %252, 0
  %254 = extractvalue { i64, i1 } %uadd366.i, 1
  %255 = add i64 %240, %237, !mcsema_real_eip !110
  %256 = inttoptr i64 %255 to i8*
  store i8 88, i8* %256, align 1, !mcsema_real_eip !110
  %257 = add i64 %RSP_val.1.i, -8
  %258 = inttoptr i64 %257 to i64*, !mcsema_real_eip !111
  store i64 -4981261766360305936, i64* %258, align 8, !mcsema_real_eip !111
  store i64 %240, i64* %RAX.i, align 8, !mcsema_real_eip !111
  store i64 %RBX_val.1.i, i64* %RBX.i, align 8, !mcsema_real_eip !111
  store i64 %237, i64* %RCX.i, align 8, !mcsema_real_eip !111
  store i64 %239, i64* %RDX.i, align 8, !mcsema_real_eip !111
  store i64 %RSI_val.4.i, i64* %RSI.i, align 8, !mcsema_real_eip !111
  store i64 %RDI_val.4.i, i64* %RDI.i, align 8, !mcsema_real_eip !111
  store i64 %257, i64* %RSP.i, align 8, !mcsema_real_eip !111
  store i64 %RBP_val.1.i, i64* %RBP.i, align 8, !mcsema_real_eip !111
  store <2 x i64> %96, <2 x i64>* %95, align 8
  store i64 %R10_val.1.i, i64* %R10.i, align 8, !mcsema_real_eip !111
  store i64 %R11_val.1.i, i64* %R11.i, align 8, !mcsema_real_eip !111
  store i64 %R12_val.1.i, i64* %R12.i, align 8, !mcsema_real_eip !111
  store i64 %R13_val.1.i, i64* %R13.i, align 8, !mcsema_real_eip !111
  store i64 %R14_val.1.i, i64* %R14.i, align 8, !mcsema_real_eip !111
  store i64 %R15_val.1.i, i64* %R15.i, align 8, !mcsema_real_eip !111
  store i64 %RIP_val.1.i, i64* %RIP.i, align 8, !mcsema_real_eip !111
  store i1 %254, i1* %CF.i, align 1, !mcsema_real_eip !111
  store i1 %253, i1* %PF.i, align 1, !mcsema_real_eip !111
  store i1 %244, i1* %AF.i, align 1, !mcsema_real_eip !111
  store i1 %246, i1* %ZF.i, align 1, !mcsema_real_eip !111
  store i1 %245, i1* %SF.i, align 1, !mcsema_real_eip !111
  store i1 %249, i1* %OF.i, align 1, !mcsema_real_eip !111
  store i1 %DF_val.1.i, i1* %DF.i, align 1, !mcsema_real_eip !111
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* %1, i32 128, i32 8, i1 false), !mcsema_real_eip !111
  store i1 %FPU_B_val.1.i, i1* %FPU_B.i, align 1, !mcsema_real_eip !111
  store i1 %FPU_C3_val.1.i, i1* %FPU_C3.i, align 1, !mcsema_real_eip !111
  store i3 %FPU_TOP_val.1.i, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !111
  store i1 %FPU_C2_val.1.i, i1* %FPU_C2.i, align 1, !mcsema_real_eip !111
  store i1 %FPU_C1_val.1.i, i1* %FPU_C1.i, align 1, !mcsema_real_eip !111
  store i1 %FPU_C0_val.1.i, i1* %FPU_C0.i, align 1, !mcsema_real_eip !111
  store i1 %FPU_ES_val.1.i, i1* %FPU_ES.i, align 1, !mcsema_real_eip !111
  store i1 %FPU_SF_val.1.i, i1* %FPU_SF.i, align 1, !mcsema_real_eip !111
  store i1 %FPU_PE_val.1.i, i1* %FPU_PE.i, align 1, !mcsema_real_eip !111
  store i1 %FPU_UE_val.1.i, i1* %FPU_UE.i, align 1, !mcsema_real_eip !111
  store i1 %FPU_OE_val.1.i, i1* %FPU_OE.i, align 1, !mcsema_real_eip !111
  store i1 %FPU_ZE_val.1.i, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !111
  store i1 %FPU_DE_val.1.i, i1* %FPU_DE.i, align 1, !mcsema_real_eip !111
  store i1 %FPU_IE_val.1.i, i1* %FPU_IE.i, align 1, !mcsema_real_eip !111
  store i1 %FPU_X_val.1.i, i1* %FPU_X.i, align 1, !mcsema_real_eip !111
  store i2 %FPU_RC_val.1.i, i2* %FPU_RC.i, align 1, !mcsema_real_eip !111
  store i2 %FPU_PC_val.1.i, i2* %FPU_PC.i, align 1, !mcsema_real_eip !111
  store i1 %FPU_PM_val.1.i, i1* %FPU_PM.i, align 1, !mcsema_real_eip !111
  store i1 %FPU_UM_val.1.i, i1* %FPU_UM.i, align 1, !mcsema_real_eip !111
  store i1 %FPU_OM_val.1.i, i1* %FPU_OM.i, align 1, !mcsema_real_eip !111
  store i1 %FPU_ZM_val.1.i, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !111
  store i1 %FPU_DM_val.1.i, i1* %FPU_DM.i, align 1, !mcsema_real_eip !111
  store i1 %FPU_IM_val.1.i, i1* %FPU_IM.i, align 1, !mcsema_real_eip !111
  store i64 %FPU_TAG_val.sroa.0.1.i, i64* %41, align 4
  store i16 %FPU_LASTIP_SEG_val.1.i, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !111
  store i64 %FPU_LASTIP_OFF_val.1.i, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !111
  store i16 %FPU_LASTDATA_SEG_val.1.i, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !111
  store i64 %FPU_LASTDATA_OFF_val.1.i, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !111
  store i128 %XMM0_val.1.i, i128* %XMM0.i, align 1, !mcsema_real_eip !111
  store i128 %XMM1_val.1.i, i128* %XMM1.i, align 1, !mcsema_real_eip !111
  store i128 %XMM2_val.1.i, i128* %XMM2.i, align 1, !mcsema_real_eip !111
  store i128 %XMM3_val.1.i, i128* %XMM3.i, align 1, !mcsema_real_eip !111
  store i128 %XMM4_val.1.i, i128* %XMM4.i, align 1, !mcsema_real_eip !111
  store i128 %XMM5_val.1.i, i128* %XMM5.i, align 1, !mcsema_real_eip !111
  store i128 %XMM6_val.1.i, i128* %XMM6.i, align 1, !mcsema_real_eip !111
  store i128 %XMM7_val.1.i, i128* %XMM7.i, align 1, !mcsema_real_eip !111
  store i128 %XMM8_val.1.i, i128* %XMM8.i, align 1, !mcsema_real_eip !111
  store i128 %XMM9_val.1.i, i128* %XMM9.i, align 1, !mcsema_real_eip !111
  store i128 %XMM10_val.1.i, i128* %XMM10.i, align 1, !mcsema_real_eip !111
  store i128 %XMM11_val.1.i, i128* %XMM11.i, align 1, !mcsema_real_eip !111
  store i128 %XMM12_val.1.i, i128* %XMM12.i, align 1, !mcsema_real_eip !111
  store i128 %XMM13_val.1.i, i128* %XMM13.i, align 1, !mcsema_real_eip !111
  store i128 %XMM14_val.1.i, i128* %XMM14.i, align 1, !mcsema_real_eip !111
  store i128 %XMM15_val.1.i, i128* %XMM15.i, align 1, !mcsema_real_eip !111
  store i64 %STACK_BASE_val.1.i, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !111
  store i64 %STACK_LIMIT_val.1.i, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !111
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0), !mcsema_real_eip !111
  %259 = load i64* %RBX.i, align 8, !mcsema_real_eip !111
  %260 = load i64* %RDX.i, align 8, !mcsema_real_eip !111
  %261 = load i64* %RSP.i, align 8, !mcsema_real_eip !111
  %262 = load i64* %RBP.i, align 8, !mcsema_real_eip !111
  %263 = load <2 x i64>* %95, align 8
  %264 = load i64* %R10.i, align 8, !mcsema_real_eip !111
  %265 = load i64* %R11.i, align 8, !mcsema_real_eip !111
  %266 = load i64* %R12.i, align 8, !mcsema_real_eip !111
  %267 = load i64* %R13.i, align 8, !mcsema_real_eip !111
  %268 = load i64* %R14.i, align 8, !mcsema_real_eip !111
  %269 = load i64* %R15.i, align 8, !mcsema_real_eip !111
  %270 = load i64* %RIP.i, align 8, !mcsema_real_eip !111
  %271 = load i1* %DF.i, align 1, !mcsema_real_eip !111
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %1, i8* %16, i32 128, i32 4, i1 false), !mcsema_real_eip !111
  %272 = load i1* %FPU_B.i, align 1, !mcsema_real_eip !111
  %273 = load i1* %FPU_C3.i, align 1, !mcsema_real_eip !111
  %274 = load i3* %FPU_TOP.i, align 1, !mcsema_real_eip !111
  %275 = load i1* %FPU_C2.i, align 1, !mcsema_real_eip !111
  %276 = load i1* %FPU_C1.i, align 1, !mcsema_real_eip !111
  %277 = load i1* %FPU_C0.i, align 1, !mcsema_real_eip !111
  %278 = load i1* %FPU_ES.i, align 1, !mcsema_real_eip !111
  %279 = load i1* %FPU_SF.i, align 1, !mcsema_real_eip !111
  %280 = load i1* %FPU_PE.i, align 1, !mcsema_real_eip !111
  %281 = load i1* %FPU_UE.i, align 1, !mcsema_real_eip !111
  %282 = load i1* %FPU_OE.i, align 1, !mcsema_real_eip !111
  %283 = load i1* %FPU_ZE.i, align 1, !mcsema_real_eip !111
  %284 = load i1* %FPU_DE.i, align 1, !mcsema_real_eip !111
  %285 = load i1* %FPU_IE.i, align 1, !mcsema_real_eip !111
  %286 = load i1* %FPU_X.i, align 1, !mcsema_real_eip !111
  %287 = load i2* %FPU_RC.i, align 1, !mcsema_real_eip !111
  %288 = load i2* %FPU_PC.i, align 1, !mcsema_real_eip !111
  %289 = load i1* %FPU_PM.i, align 1, !mcsema_real_eip !111
  %290 = load i1* %FPU_UM.i, align 1, !mcsema_real_eip !111
  %291 = load i1* %FPU_OM.i, align 1, !mcsema_real_eip !111
  %292 = load i1* %FPU_ZM.i, align 1, !mcsema_real_eip !111
  %293 = load i1* %FPU_DM.i, align 1, !mcsema_real_eip !111
  %294 = load i1* %FPU_IM.i, align 1, !mcsema_real_eip !111
  %295 = load i64* %41, align 4
  %296 = load i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !111
  %297 = load i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !111
  %298 = load i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !111
  %299 = load i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !111
  %300 = load i128* %XMM0.i, align 1, !mcsema_real_eip !111
  %301 = load i128* %XMM1.i, align 1, !mcsema_real_eip !111
  %302 = load i128* %XMM2.i, align 1, !mcsema_real_eip !111
  %303 = load i128* %XMM3.i, align 1, !mcsema_real_eip !111
  %304 = load i128* %XMM4.i, align 1, !mcsema_real_eip !111
  %305 = load i128* %XMM5.i, align 1, !mcsema_real_eip !111
  %306 = load i128* %XMM6.i, align 1, !mcsema_real_eip !111
  %307 = load i128* %XMM7.i, align 1, !mcsema_real_eip !111
  %308 = load i128* %XMM8.i, align 1, !mcsema_real_eip !111
  %309 = load i128* %XMM9.i, align 1, !mcsema_real_eip !111
  %310 = load i128* %XMM10.i, align 1, !mcsema_real_eip !111
  %311 = load i128* %XMM11.i, align 1, !mcsema_real_eip !111
  %312 = load i128* %XMM12.i, align 1, !mcsema_real_eip !111
  %313 = load i128* %XMM13.i, align 1, !mcsema_real_eip !111
  %314 = load i128* %XMM14.i, align 1, !mcsema_real_eip !111
  %315 = load i128* %XMM15.i, align 1, !mcsema_real_eip !111
  %316 = load i64* %STACK_BASE.i, align 8, !mcsema_real_eip !111
  %317 = load i64* %STACK_LIMIT.i, align 8, !mcsema_real_eip !111
  %318 = add i64 %262, -36, !mcsema_real_eip !112
  %319 = inttoptr i64 %318 to i32*
  %320 = load i32* %319, align 4, !mcsema_real_eip !112
  %321 = add i32 %320, 1
  store i32 %321, i32* %319, align 4, !mcsema_real_eip !113
  %322 = tail call x86_64_sysvcc i64 @sleep(i64 1), !mcsema_real_eip !114
  %323 = add i64 %262, -120, !mcsema_real_eip !115
  %324 = trunc i64 %322 to i32, !mcsema_real_eip !115
  %325 = inttoptr i64 %323 to i32*
  store i32 %324, i32* %325, align 4, !mcsema_real_eip !115
  br label %block_0x130.i, !mcsema_real_eip !116

block_0x323.i:                                    ; preds = %block_0x30b.i, %block_0x317.i
  %326 = phi i32 [ %216, %block_0x317.i ], [ %224, %block_0x30b.i ]
  %327 = phi i32 [ %215, %block_0x317.i ], [ %223, %block_0x30b.i ]
  %RDI_val.5.i = phi i64 [ %RDI_val.2.i, %block_0x317.i ], [ %RDI_val.3.i, %block_0x30b.i ]
  %RSI_val.5.i = phi i64 [ %RSI_val.1.i, %block_0x317.i ], [ %RSI_val.3.i, %block_0x30b.i ]
  %328 = load i32* %106, align 4, !mcsema_real_eip !117
  %329 = icmp eq i32 %328, %327
  br i1 %329, label %block_0x32f.i, label %block_0x34d.i, !mcsema_real_eip !118

block_0x32f.i:                                    ; preds = %block_0x323.i
  %330 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x3ff to i64), i64 85)), !mcsema_real_eip !119
  %331 = add i64 %RBP_val.1.i, -116, !mcsema_real_eip !120
  %332 = trunc i64 %330 to i32, !mcsema_real_eip !120
  %333 = inttoptr i64 %331 to i32*
  store i32 %332, i32* %333, align 4, !mcsema_real_eip !120
  %334 = tail call x86_64_sysvcc i64 @exit(i64 4294967294), !mcsema_real_eip !121
  %335 = load i32* %98, align 4, !mcsema_real_eip !106
  %336 = sext i32 %335 to i64, !mcsema_real_eip !106
  %337 = load i32* %103, align 4, !mcsema_real_eip !107
  %338 = sext i32 %337 to i64, !mcsema_real_eip !107
  %339 = mul i64 %338, 11, !mcsema_real_eip !108
  %uadd362.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %339, i64 ptrtoint (%0* @data_0x3b2 to i64))
  %340 = extractvalue { i64, i1 } %uadd362.i, 0
  %341 = xor i64 %340, ptrtoint (%0* @data_0x3b2 to i64), !mcsema_real_eip !109
  %342 = xor i64 %340, %339, !mcsema_real_eip !109
  %343 = and i64 %342, 16, !mcsema_real_eip !109
  %344 = icmp ne i64 %343, 0, !mcsema_real_eip !109
  %345 = icmp slt i64 %340, 0
  %346 = icmp eq i64 %340, 0, !mcsema_real_eip !109
  %347 = xor i64 %339, xor (i64 ptrtoint (%0* @data_0x3b2 to i64), i64 -9223372036854775808), !mcsema_real_eip !109
  %348 = and i64 %341, %347, !mcsema_real_eip !109
  %349 = icmp slt i64 %348, 0
  %350 = trunc i64 %340 to i8, !mcsema_real_eip !109
  %351 = tail call i8 @llvm.ctpop.i8(i8 %350), !mcsema_real_eip !109
  %352 = and i8 %351, 1
  %353 = icmp eq i8 %352, 0
  %354 = extractvalue { i64, i1 } %uadd362.i, 1
  %355 = add i64 %340, %336, !mcsema_real_eip !110
  %356 = inttoptr i64 %355 to i8*
  store i8 88, i8* %356, align 1, !mcsema_real_eip !110
  %357 = add i64 %RSP_val.1.i, -8
  %358 = inttoptr i64 %357 to i64*, !mcsema_real_eip !111
  store i64 -4981261766360305936, i64* %358, align 8, !mcsema_real_eip !111
  store i64 %340, i64* %RAX.i, align 8, !mcsema_real_eip !111
  store i64 %RBX_val.1.i, i64* %RBX.i, align 8, !mcsema_real_eip !111
  store i64 %336, i64* %RCX.i, align 8, !mcsema_real_eip !111
  store i64 %339, i64* %RDX.i, align 8, !mcsema_real_eip !111
  store i64 %RSI_val.5.i, i64* %RSI.i, align 8, !mcsema_real_eip !111
  store i64 4294967294, i64* %RDI.i, align 8, !mcsema_real_eip !111
  store i64 %357, i64* %RSP.i, align 8, !mcsema_real_eip !111
  store i64 %RBP_val.1.i, i64* %RBP.i, align 8, !mcsema_real_eip !111
  store <2 x i64> %96, <2 x i64>* %95, align 8
  store i64 %R10_val.1.i, i64* %R10.i, align 8, !mcsema_real_eip !111
  store i64 %R11_val.1.i, i64* %R11.i, align 8, !mcsema_real_eip !111
  store i64 %R12_val.1.i, i64* %R12.i, align 8, !mcsema_real_eip !111
  store i64 %R13_val.1.i, i64* %R13.i, align 8, !mcsema_real_eip !111
  store i64 %R14_val.1.i, i64* %R14.i, align 8, !mcsema_real_eip !111
  store i64 %R15_val.1.i, i64* %R15.i, align 8, !mcsema_real_eip !111
  store i64 %RIP_val.1.i, i64* %RIP.i, align 8, !mcsema_real_eip !111
  store i1 %354, i1* %CF.i, align 1, !mcsema_real_eip !111
  store i1 %353, i1* %PF.i, align 1, !mcsema_real_eip !111
  store i1 %344, i1* %AF.i, align 1, !mcsema_real_eip !111
  store i1 %346, i1* %ZF.i, align 1, !mcsema_real_eip !111
  store i1 %345, i1* %SF.i, align 1, !mcsema_real_eip !111
  store i1 %349, i1* %OF.i, align 1, !mcsema_real_eip !111
  store i1 %DF_val.1.i, i1* %DF.i, align 1, !mcsema_real_eip !111
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* %1, i32 128, i32 8, i1 false), !mcsema_real_eip !111
  store i1 %FPU_B_val.1.i, i1* %FPU_B.i, align 1, !mcsema_real_eip !111
  store i1 %FPU_C3_val.1.i, i1* %FPU_C3.i, align 1, !mcsema_real_eip !111
  store i3 %FPU_TOP_val.1.i, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !111
  store i1 %FPU_C2_val.1.i, i1* %FPU_C2.i, align 1, !mcsema_real_eip !111
  store i1 %FPU_C1_val.1.i, i1* %FPU_C1.i, align 1, !mcsema_real_eip !111
  store i1 %FPU_C0_val.1.i, i1* %FPU_C0.i, align 1, !mcsema_real_eip !111
  store i1 %FPU_ES_val.1.i, i1* %FPU_ES.i, align 1, !mcsema_real_eip !111
  store i1 %FPU_SF_val.1.i, i1* %FPU_SF.i, align 1, !mcsema_real_eip !111
  store i1 %FPU_PE_val.1.i, i1* %FPU_PE.i, align 1, !mcsema_real_eip !111
  store i1 %FPU_UE_val.1.i, i1* %FPU_UE.i, align 1, !mcsema_real_eip !111
  store i1 %FPU_OE_val.1.i, i1* %FPU_OE.i, align 1, !mcsema_real_eip !111
  store i1 %FPU_ZE_val.1.i, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !111
  store i1 %FPU_DE_val.1.i, i1* %FPU_DE.i, align 1, !mcsema_real_eip !111
  store i1 %FPU_IE_val.1.i, i1* %FPU_IE.i, align 1, !mcsema_real_eip !111
  store i1 %FPU_X_val.1.i, i1* %FPU_X.i, align 1, !mcsema_real_eip !111
  store i2 %FPU_RC_val.1.i, i2* %FPU_RC.i, align 1, !mcsema_real_eip !111
  store i2 %FPU_PC_val.1.i, i2* %FPU_PC.i, align 1, !mcsema_real_eip !111
  store i1 %FPU_PM_val.1.i, i1* %FPU_PM.i, align 1, !mcsema_real_eip !111
  store i1 %FPU_UM_val.1.i, i1* %FPU_UM.i, align 1, !mcsema_real_eip !111
  store i1 %FPU_OM_val.1.i, i1* %FPU_OM.i, align 1, !mcsema_real_eip !111
  store i1 %FPU_ZM_val.1.i, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !111
  store i1 %FPU_DM_val.1.i, i1* %FPU_DM.i, align 1, !mcsema_real_eip !111
  store i1 %FPU_IM_val.1.i, i1* %FPU_IM.i, align 1, !mcsema_real_eip !111
  store i64 %FPU_TAG_val.sroa.0.1.i, i64* %41, align 4
  store i16 %FPU_LASTIP_SEG_val.1.i, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !111
  store i64 %FPU_LASTIP_OFF_val.1.i, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !111
  store i16 %FPU_LASTDATA_SEG_val.1.i, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !111
  store i64 %FPU_LASTDATA_OFF_val.1.i, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !111
  store i128 %XMM0_val.1.i, i128* %XMM0.i, align 1, !mcsema_real_eip !111
  store i128 %XMM1_val.1.i, i128* %XMM1.i, align 1, !mcsema_real_eip !111
  store i128 %XMM2_val.1.i, i128* %XMM2.i, align 1, !mcsema_real_eip !111
  store i128 %XMM3_val.1.i, i128* %XMM3.i, align 1, !mcsema_real_eip !111
  store i128 %XMM4_val.1.i, i128* %XMM4.i, align 1, !mcsema_real_eip !111
  store i128 %XMM5_val.1.i, i128* %XMM5.i, align 1, !mcsema_real_eip !111
  store i128 %XMM6_val.1.i, i128* %XMM6.i, align 1, !mcsema_real_eip !111
  store i128 %XMM7_val.1.i, i128* %XMM7.i, align 1, !mcsema_real_eip !111
  store i128 %XMM8_val.1.i, i128* %XMM8.i, align 1, !mcsema_real_eip !111
  store i128 %XMM9_val.1.i, i128* %XMM9.i, align 1, !mcsema_real_eip !111
  store i128 %XMM10_val.1.i, i128* %XMM10.i, align 1, !mcsema_real_eip !111
  store i128 %XMM11_val.1.i, i128* %XMM11.i, align 1, !mcsema_real_eip !111
  store i128 %XMM12_val.1.i, i128* %XMM12.i, align 1, !mcsema_real_eip !111
  store i128 %XMM13_val.1.i, i128* %XMM13.i, align 1, !mcsema_real_eip !111
  store i128 %XMM14_val.1.i, i128* %XMM14.i, align 1, !mcsema_real_eip !111
  store i128 %XMM15_val.1.i, i128* %XMM15.i, align 1, !mcsema_real_eip !111
  store i64 %STACK_BASE_val.1.i, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !111
  store i64 %STACK_LIMIT_val.1.i, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !111
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0), !mcsema_real_eip !111
  %359 = load i64* %RBX.i, align 8, !mcsema_real_eip !111
  %360 = load i64* %RDX.i, align 8, !mcsema_real_eip !111
  %361 = load i64* %RSP.i, align 8, !mcsema_real_eip !111
  %362 = load i64* %RBP.i, align 8, !mcsema_real_eip !111
  %363 = load <2 x i64>* %95, align 8
  %364 = load i64* %R10.i, align 8, !mcsema_real_eip !111
  %365 = load i64* %R11.i, align 8, !mcsema_real_eip !111
  %366 = load i64* %R12.i, align 8, !mcsema_real_eip !111
  %367 = load i64* %R13.i, align 8, !mcsema_real_eip !111
  %368 = load i64* %R14.i, align 8, !mcsema_real_eip !111
  %369 = load i64* %R15.i, align 8, !mcsema_real_eip !111
  %370 = load i64* %RIP.i, align 8, !mcsema_real_eip !111
  %371 = load i1* %DF.i, align 1, !mcsema_real_eip !111
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %1, i8* %16, i32 128, i32 4, i1 false), !mcsema_real_eip !111
  %372 = load i1* %FPU_B.i, align 1, !mcsema_real_eip !111
  %373 = load i1* %FPU_C3.i, align 1, !mcsema_real_eip !111
  %374 = load i3* %FPU_TOP.i, align 1, !mcsema_real_eip !111
  %375 = load i1* %FPU_C2.i, align 1, !mcsema_real_eip !111
  %376 = load i1* %FPU_C1.i, align 1, !mcsema_real_eip !111
  %377 = load i1* %FPU_C0.i, align 1, !mcsema_real_eip !111
  %378 = load i1* %FPU_ES.i, align 1, !mcsema_real_eip !111
  %379 = load i1* %FPU_SF.i, align 1, !mcsema_real_eip !111
  %380 = load i1* %FPU_PE.i, align 1, !mcsema_real_eip !111
  %381 = load i1* %FPU_UE.i, align 1, !mcsema_real_eip !111
  %382 = load i1* %FPU_OE.i, align 1, !mcsema_real_eip !111
  %383 = load i1* %FPU_ZE.i, align 1, !mcsema_real_eip !111
  %384 = load i1* %FPU_DE.i, align 1, !mcsema_real_eip !111
  %385 = load i1* %FPU_IE.i, align 1, !mcsema_real_eip !111
  %386 = load i1* %FPU_X.i, align 1, !mcsema_real_eip !111
  %387 = load i2* %FPU_RC.i, align 1, !mcsema_real_eip !111
  %388 = load i2* %FPU_PC.i, align 1, !mcsema_real_eip !111
  %389 = load i1* %FPU_PM.i, align 1, !mcsema_real_eip !111
  %390 = load i1* %FPU_UM.i, align 1, !mcsema_real_eip !111
  %391 = load i1* %FPU_OM.i, align 1, !mcsema_real_eip !111
  %392 = load i1* %FPU_ZM.i, align 1, !mcsema_real_eip !111
  %393 = load i1* %FPU_DM.i, align 1, !mcsema_real_eip !111
  %394 = load i1* %FPU_IM.i, align 1, !mcsema_real_eip !111
  %395 = load i64* %41, align 4
  %396 = load i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !111
  %397 = load i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !111
  %398 = load i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !111
  %399 = load i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !111
  %400 = load i128* %XMM0.i, align 1, !mcsema_real_eip !111
  %401 = load i128* %XMM1.i, align 1, !mcsema_real_eip !111
  %402 = load i128* %XMM2.i, align 1, !mcsema_real_eip !111
  %403 = load i128* %XMM3.i, align 1, !mcsema_real_eip !111
  %404 = load i128* %XMM4.i, align 1, !mcsema_real_eip !111
  %405 = load i128* %XMM5.i, align 1, !mcsema_real_eip !111
  %406 = load i128* %XMM6.i, align 1, !mcsema_real_eip !111
  %407 = load i128* %XMM7.i, align 1, !mcsema_real_eip !111
  %408 = load i128* %XMM8.i, align 1, !mcsema_real_eip !111
  %409 = load i128* %XMM9.i, align 1, !mcsema_real_eip !111
  %410 = load i128* %XMM10.i, align 1, !mcsema_real_eip !111
  %411 = load i128* %XMM11.i, align 1, !mcsema_real_eip !111
  %412 = load i128* %XMM12.i, align 1, !mcsema_real_eip !111
  %413 = load i128* %XMM13.i, align 1, !mcsema_real_eip !111
  %414 = load i128* %XMM14.i, align 1, !mcsema_real_eip !111
  %415 = load i128* %XMM15.i, align 1, !mcsema_real_eip !111
  %416 = load i64* %STACK_BASE.i, align 8, !mcsema_real_eip !111
  %417 = load i64* %STACK_LIMIT.i, align 8, !mcsema_real_eip !111
  %418 = add i64 %362, -36, !mcsema_real_eip !112
  %419 = inttoptr i64 %418 to i32*
  %420 = load i32* %419, align 4, !mcsema_real_eip !112
  %421 = add i32 %420, 1
  store i32 %421, i32* %419, align 4, !mcsema_real_eip !113
  %422 = tail call x86_64_sysvcc i64 @sleep(i64 1), !mcsema_real_eip !114
  %423 = add i64 %362, -120, !mcsema_real_eip !115
  %424 = trunc i64 %422 to i32, !mcsema_real_eip !115
  %425 = inttoptr i64 %423 to i32*
  store i32 %424, i32* %425, align 4, !mcsema_real_eip !115
  br label %block_0x130.i, !mcsema_real_eip !116

block_0x130.i:                                    ; preds = %block_0x32f.i, %block_0x34d.i
  %R15_val.2.i = phi i64 [ %369, %block_0x32f.i ], [ %269, %block_0x34d.i ]
  %STACK_LIMIT_val.2.i = phi i64 [ %417, %block_0x32f.i ], [ %317, %block_0x34d.i ]
  %STACK_BASE_val.2.i = phi i64 [ %416, %block_0x32f.i ], [ %316, %block_0x34d.i ]
  %XMM15_val.2.i = phi i128 [ %415, %block_0x32f.i ], [ %315, %block_0x34d.i ]
  %XMM14_val.2.i = phi i128 [ %414, %block_0x32f.i ], [ %314, %block_0x34d.i ]
  %XMM13_val.2.i = phi i128 [ %413, %block_0x32f.i ], [ %313, %block_0x34d.i ]
  %XMM12_val.2.i = phi i128 [ %412, %block_0x32f.i ], [ %312, %block_0x34d.i ]
  %XMM11_val.2.i = phi i128 [ %411, %block_0x32f.i ], [ %311, %block_0x34d.i ]
  %XMM10_val.2.i = phi i128 [ %410, %block_0x32f.i ], [ %310, %block_0x34d.i ]
  %XMM9_val.2.i = phi i128 [ %409, %block_0x32f.i ], [ %309, %block_0x34d.i ]
  %XMM8_val.2.i = phi i128 [ %408, %block_0x32f.i ], [ %308, %block_0x34d.i ]
  %XMM7_val.2.i = phi i128 [ %407, %block_0x32f.i ], [ %307, %block_0x34d.i ]
  %XMM6_val.2.i = phi i128 [ %406, %block_0x32f.i ], [ %306, %block_0x34d.i ]
  %XMM5_val.2.i = phi i128 [ %405, %block_0x32f.i ], [ %305, %block_0x34d.i ]
  %XMM4_val.2.i = phi i128 [ %404, %block_0x32f.i ], [ %304, %block_0x34d.i ]
  %XMM3_val.2.i = phi i128 [ %403, %block_0x32f.i ], [ %303, %block_0x34d.i ]
  %XMM2_val.2.i = phi i128 [ %402, %block_0x32f.i ], [ %302, %block_0x34d.i ]
  %XMM1_val.2.i = phi i128 [ %401, %block_0x32f.i ], [ %301, %block_0x34d.i ]
  %XMM0_val.2.i = phi i128 [ %400, %block_0x32f.i ], [ %300, %block_0x34d.i ]
  %FPU_LASTDATA_OFF_val.2.i = phi i64 [ %399, %block_0x32f.i ], [ %299, %block_0x34d.i ]
  %FPU_LASTDATA_SEG_val.2.i = phi i16 [ %398, %block_0x32f.i ], [ %298, %block_0x34d.i ]
  %FPU_LASTIP_OFF_val.2.i = phi i64 [ %397, %block_0x32f.i ], [ %297, %block_0x34d.i ]
  %FPU_LASTIP_SEG_val.2.i = phi i16 [ %396, %block_0x32f.i ], [ %296, %block_0x34d.i ]
  %FPU_TAG_val.sroa.0.2.i = phi i64 [ %395, %block_0x32f.i ], [ %295, %block_0x34d.i ]
  %FPU_IM_val.2.i = phi i1 [ %394, %block_0x32f.i ], [ %294, %block_0x34d.i ]
  %FPU_DM_val.2.i = phi i1 [ %393, %block_0x32f.i ], [ %293, %block_0x34d.i ]
  %FPU_ZM_val.2.i = phi i1 [ %392, %block_0x32f.i ], [ %292, %block_0x34d.i ]
  %FPU_OM_val.2.i = phi i1 [ %391, %block_0x32f.i ], [ %291, %block_0x34d.i ]
  %FPU_UM_val.2.i = phi i1 [ %390, %block_0x32f.i ], [ %290, %block_0x34d.i ]
  %FPU_PM_val.2.i = phi i1 [ %389, %block_0x32f.i ], [ %289, %block_0x34d.i ]
  %FPU_PC_val.2.i = phi i2 [ %388, %block_0x32f.i ], [ %288, %block_0x34d.i ]
  %FPU_RC_val.2.i = phi i2 [ %387, %block_0x32f.i ], [ %287, %block_0x34d.i ]
  %FPU_X_val.2.i = phi i1 [ %386, %block_0x32f.i ], [ %286, %block_0x34d.i ]
  %FPU_IE_val.2.i = phi i1 [ %385, %block_0x32f.i ], [ %285, %block_0x34d.i ]
  %FPU_DE_val.2.i = phi i1 [ %384, %block_0x32f.i ], [ %284, %block_0x34d.i ]
  %FPU_ZE_val.2.i = phi i1 [ %383, %block_0x32f.i ], [ %283, %block_0x34d.i ]
  %FPU_OE_val.2.i = phi i1 [ %382, %block_0x32f.i ], [ %282, %block_0x34d.i ]
  %FPU_UE_val.2.i = phi i1 [ %381, %block_0x32f.i ], [ %281, %block_0x34d.i ]
  %FPU_PE_val.2.i = phi i1 [ %380, %block_0x32f.i ], [ %280, %block_0x34d.i ]
  %FPU_SF_val.2.i = phi i1 [ %379, %block_0x32f.i ], [ %279, %block_0x34d.i ]
  %FPU_ES_val.2.i = phi i1 [ %378, %block_0x32f.i ], [ %278, %block_0x34d.i ]
  %FPU_C0_val.2.i = phi i1 [ %377, %block_0x32f.i ], [ %277, %block_0x34d.i ]
  %FPU_C1_val.2.i = phi i1 [ %376, %block_0x32f.i ], [ %276, %block_0x34d.i ]
  %FPU_C2_val.2.i = phi i1 [ %375, %block_0x32f.i ], [ %275, %block_0x34d.i ]
  %FPU_TOP_val.2.i = phi i3 [ %374, %block_0x32f.i ], [ %274, %block_0x34d.i ]
  %FPU_C3_val.2.i = phi i1 [ %373, %block_0x32f.i ], [ %273, %block_0x34d.i ]
  %FPU_B_val.2.i = phi i1 [ %372, %block_0x32f.i ], [ %272, %block_0x34d.i ]
  %DF_val.2.i = phi i1 [ %371, %block_0x32f.i ], [ %271, %block_0x34d.i ]
  %RIP_val.2.i = phi i64 [ %370, %block_0x32f.i ], [ %270, %block_0x34d.i ]
  %R14_val.2.i = phi i64 [ %368, %block_0x32f.i ], [ %268, %block_0x34d.i ]
  %R13_val.2.i = phi i64 [ %367, %block_0x32f.i ], [ %267, %block_0x34d.i ]
  %R12_val.2.i = phi i64 [ %366, %block_0x32f.i ], [ %266, %block_0x34d.i ]
  %R11_val.2.i = phi i64 [ %365, %block_0x32f.i ], [ %265, %block_0x34d.i ]
  %R10_val.2.i = phi i64 [ %364, %block_0x32f.i ], [ %264, %block_0x34d.i ]
  %RSP_val.2.i = phi i64 [ %361, %block_0x32f.i ], [ %261, %block_0x34d.i ]
  %RBP_val.2.i = phi i64 [ %362, %block_0x32f.i ], [ %262, %block_0x34d.i ]
  %RSI_val.6.in.i = phi i32 [ %421, %block_0x32f.i ], [ %321, %block_0x34d.i ]
  %RDX_val.1.i = phi i64 [ %360, %block_0x32f.i ], [ %260, %block_0x34d.i ]
  %RBX_val.2.i = phi i64 [ %359, %block_0x32f.i ], [ %259, %block_0x34d.i ]
  %426 = phi <2 x i64> [ %363, %block_0x32f.i ], [ %263, %block_0x34d.i ]
  %427 = add i64 %RBP_val.2.i, -36, !mcsema_real_eip !36
  %428 = inttoptr i64 %427 to i32*
  %429 = load i32* %428, align 4, !mcsema_real_eip !36
  %430 = add i32 %429, -28
  %431 = icmp slt i32 %430, 0
  %432 = sub i32 27, %429
  %433 = and i32 %432, %429
  %434 = icmp slt i32 %433, 0
  %tmp364.i = xor i1 %431, %434
  br i1 %tmp364.i, label %block_0x13d.i, label %block_0x390.loopexit.i, !mcsema_real_eip !37

block_0x2fe.i:                                    ; preds = %block_0x2c5.i
  %435 = add i32 %219, -11
  %436 = icmp slt i32 %435, 0
  %437 = sub i32 10, %219
  %438 = and i32 %437, %219
  %439 = icmp slt i32 %438, 0
  %440 = xor i1 %436, %439
  br i1 %440, label %block_0x317.i, label %block_0x30b.i, !mcsema_real_eip !122

sub_c0.exit:                                      ; preds = %block_0x390.loopexit.i, %driverBlockRaw
  %R15_val.0.i = phi i64 [ %R15_val.2.i.lcssa, %block_0x390.loopexit.i ], [ %12, %driverBlockRaw ]
  %STACK_LIMIT_val.0.i = phi i64 [ %STACK_LIMIT_val.2.i.lcssa, %block_0x390.loopexit.i ], [ %64, %driverBlockRaw ]
  %STACK_BASE_val.0.i = phi i64 [ %STACK_BASE_val.2.i.lcssa, %block_0x390.loopexit.i ], [ %63, %driverBlockRaw ]
  %XMM15_val.0.i = phi i128 [ %XMM15_val.2.i.lcssa, %block_0x390.loopexit.i ], [ %62, %driverBlockRaw ]
  %XMM14_val.0.i = phi i128 [ %XMM14_val.2.i.lcssa, %block_0x390.loopexit.i ], [ %61, %driverBlockRaw ]
  %XMM13_val.0.i = phi i128 [ %XMM13_val.2.i.lcssa, %block_0x390.loopexit.i ], [ %60, %driverBlockRaw ]
  %XMM12_val.0.i = phi i128 [ %XMM12_val.2.i.lcssa, %block_0x390.loopexit.i ], [ %59, %driverBlockRaw ]
  %XMM11_val.0.i = phi i128 [ %XMM11_val.2.i.lcssa, %block_0x390.loopexit.i ], [ %58, %driverBlockRaw ]
  %XMM10_val.0.i = phi i128 [ %XMM10_val.2.i.lcssa, %block_0x390.loopexit.i ], [ %57, %driverBlockRaw ]
  %XMM9_val.0.i = phi i128 [ %XMM9_val.2.i.lcssa, %block_0x390.loopexit.i ], [ %56, %driverBlockRaw ]
  %XMM8_val.0.i = phi i128 [ %XMM8_val.2.i.lcssa, %block_0x390.loopexit.i ], [ %55, %driverBlockRaw ]
  %XMM7_val.0.i = phi i128 [ %XMM7_val.2.i.lcssa, %block_0x390.loopexit.i ], [ %54, %driverBlockRaw ]
  %XMM6_val.0.i = phi i128 [ %XMM6_val.2.i.lcssa, %block_0x390.loopexit.i ], [ %53, %driverBlockRaw ]
  %XMM5_val.0.i = phi i128 [ %XMM5_val.2.i.lcssa, %block_0x390.loopexit.i ], [ %52, %driverBlockRaw ]
  %XMM4_val.0.i = phi i128 [ %XMM4_val.2.i.lcssa, %block_0x390.loopexit.i ], [ %51, %driverBlockRaw ]
  %XMM3_val.0.i = phi i128 [ %XMM3_val.2.i.lcssa, %block_0x390.loopexit.i ], [ %50, %driverBlockRaw ]
  %XMM2_val.0.i = phi i128 [ %XMM2_val.2.i.lcssa, %block_0x390.loopexit.i ], [ %49, %driverBlockRaw ]
  %XMM1_val.0.i = phi i128 [ %XMM1_val.2.i.lcssa, %block_0x390.loopexit.i ], [ %48, %driverBlockRaw ]
  %XMM0_val.0.i = phi i128 [ %XMM0_val.2.i.lcssa, %block_0x390.loopexit.i ], [ %47, %driverBlockRaw ]
  %FPU_LASTDATA_OFF_val.0.i = phi i64 [ %FPU_LASTDATA_OFF_val.2.i.lcssa, %block_0x390.loopexit.i ], [ %46, %driverBlockRaw ]
  %FPU_LASTDATA_SEG_val.0.i = phi i16 [ %FPU_LASTDATA_SEG_val.2.i.lcssa, %block_0x390.loopexit.i ], [ %45, %driverBlockRaw ]
  %FPU_LASTIP_OFF_val.0.i = phi i64 [ %FPU_LASTIP_OFF_val.2.i.lcssa, %block_0x390.loopexit.i ], [ %44, %driverBlockRaw ]
  %FPU_LASTIP_SEG_val.0.i = phi i16 [ %FPU_LASTIP_SEG_val.2.i.lcssa, %block_0x390.loopexit.i ], [ %43, %driverBlockRaw ]
  %FPU_TAG_val.sroa.0.0.i = phi i64 [ %FPU_TAG_val.sroa.0.2.i.lcssa, %block_0x390.loopexit.i ], [ %42, %driverBlockRaw ]
  %FPU_IM_val.0.i = phi i1 [ %FPU_IM_val.2.i.lcssa, %block_0x390.loopexit.i ], [ %39, %driverBlockRaw ]
  %FPU_DM_val.0.i = phi i1 [ %FPU_DM_val.2.i.lcssa, %block_0x390.loopexit.i ], [ %38, %driverBlockRaw ]
  %FPU_ZM_val.0.i = phi i1 [ %FPU_ZM_val.2.i.lcssa, %block_0x390.loopexit.i ], [ %37, %driverBlockRaw ]
  %FPU_OM_val.0.i = phi i1 [ %FPU_OM_val.2.i.lcssa, %block_0x390.loopexit.i ], [ %36, %driverBlockRaw ]
  %FPU_UM_val.0.i = phi i1 [ %FPU_UM_val.2.i.lcssa, %block_0x390.loopexit.i ], [ %35, %driverBlockRaw ]
  %FPU_PM_val.0.i = phi i1 [ %FPU_PM_val.2.i.lcssa, %block_0x390.loopexit.i ], [ %34, %driverBlockRaw ]
  %FPU_PC_val.0.i = phi i2 [ %FPU_PC_val.2.i.lcssa, %block_0x390.loopexit.i ], [ %33, %driverBlockRaw ]
  %FPU_RC_val.0.i = phi i2 [ %FPU_RC_val.2.i.lcssa, %block_0x390.loopexit.i ], [ %32, %driverBlockRaw ]
  %FPU_X_val.0.i = phi i1 [ %FPU_X_val.2.i.lcssa, %block_0x390.loopexit.i ], [ %31, %driverBlockRaw ]
  %FPU_IE_val.0.i = phi i1 [ %FPU_IE_val.2.i.lcssa, %block_0x390.loopexit.i ], [ %30, %driverBlockRaw ]
  %FPU_DE_val.0.i = phi i1 [ %FPU_DE_val.2.i.lcssa, %block_0x390.loopexit.i ], [ %29, %driverBlockRaw ]
  %FPU_ZE_val.0.i = phi i1 [ %FPU_ZE_val.2.i.lcssa, %block_0x390.loopexit.i ], [ %28, %driverBlockRaw ]
  %FPU_OE_val.0.i = phi i1 [ %FPU_OE_val.2.i.lcssa, %block_0x390.loopexit.i ], [ %27, %driverBlockRaw ]
  %FPU_UE_val.0.i = phi i1 [ %FPU_UE_val.2.i.lcssa, %block_0x390.loopexit.i ], [ %26, %driverBlockRaw ]
  %FPU_PE_val.0.i = phi i1 [ %FPU_PE_val.2.i.lcssa, %block_0x390.loopexit.i ], [ %25, %driverBlockRaw ]
  %FPU_SF_val.0.i = phi i1 [ %FPU_SF_val.2.i.lcssa, %block_0x390.loopexit.i ], [ %24, %driverBlockRaw ]
  %FPU_ES_val.0.i = phi i1 [ %FPU_ES_val.2.i.lcssa, %block_0x390.loopexit.i ], [ %23, %driverBlockRaw ]
  %FPU_C0_val.0.i = phi i1 [ %FPU_C0_val.2.i.lcssa, %block_0x390.loopexit.i ], [ %22, %driverBlockRaw ]
  %FPU_C1_val.0.i = phi i1 [ %FPU_C1_val.2.i.lcssa, %block_0x390.loopexit.i ], [ %21, %driverBlockRaw ]
  %FPU_C2_val.0.i = phi i1 [ %FPU_C2_val.2.i.lcssa, %block_0x390.loopexit.i ], [ %20, %driverBlockRaw ]
  %FPU_TOP_val.0.i = phi i3 [ %FPU_TOP_val.2.i.lcssa, %block_0x390.loopexit.i ], [ %19, %driverBlockRaw ]
  %FPU_C3_val.0.i = phi i1 [ %FPU_C3_val.2.i.lcssa, %block_0x390.loopexit.i ], [ %18, %driverBlockRaw ]
  %FPU_B_val.0.i = phi i1 [ %FPU_B_val.2.i.lcssa, %block_0x390.loopexit.i ], [ %17, %driverBlockRaw ]
  %DF_val.0.i = phi i1 [ %DF_val.2.i.lcssa, %block_0x390.loopexit.i ], [ %14, %driverBlockRaw ]
  %RIP_val.0.i = phi i64 [ %RIP_val.2.i.lcssa, %block_0x390.loopexit.i ], [ %13, %driverBlockRaw ]
  %R14_val.0.i = phi i64 [ %R14_val.2.i.lcssa, %block_0x390.loopexit.i ], [ %11, %driverBlockRaw ]
  %R13_val.0.i = phi i64 [ %R13_val.2.i.lcssa, %block_0x390.loopexit.i ], [ %10, %driverBlockRaw ]
  %R12_val.0.i = phi i64 [ %R12_val.2.i.lcssa, %block_0x390.loopexit.i ], [ %9, %driverBlockRaw ]
  %R11_val.0.i = phi i64 [ %R11_val.2.i.lcssa, %block_0x390.loopexit.i ], [ %8, %driverBlockRaw ]
  %R10_val.0.i = phi i64 [ %R10_val.2.i.lcssa, %block_0x390.loopexit.i ], [ %7, %driverBlockRaw ]
  %RSP_val.0.i = phi i64 [ %RSP_val.2.i.lcssa, %block_0x390.loopexit.i ], [ %67, %driverBlockRaw ]
  %RBP_val.0.i = phi i64 [ %RBP_val.2.i.lcssa, %block_0x390.loopexit.i ], [ %65, %driverBlockRaw ]
  %RSI_val.0.i = phi i64 [ %RSI_val.6.le.i, %block_0x390.loopexit.i ], [ %68, %driverBlockRaw ]
  %RDX_val.0.i = phi i64 [ %RDX_val.1.i.lcssa, %block_0x390.loopexit.i ], [ 28, %driverBlockRaw ]
  %RBX_val.0.i = phi i64 [ %RBX_val.2.i.lcssa, %block_0x390.loopexit.i ], [ %2, %driverBlockRaw ]
  %441 = phi <2 x i64> [ %.lcssa, %block_0x390.loopexit.i ], [ <i64 add (i64 ptrtoint (%0* @data_0x3b2 to i64), i64 11), i64 11>, %driverBlockRaw ]
  %442 = tail call x86_64_sysvcc i64 @printf(i64 add (i64 ptrtoint (%1* @data_0x3ff to i64), i64 85)), !mcsema_real_eip !123
  %443 = add i64 %RBP_val.0.i, -4, !mcsema_real_eip !124
  %444 = inttoptr i64 %443 to i32*
  %445 = load i32* %444, align 4, !mcsema_real_eip !124
  %446 = zext i32 %445 to i64, !mcsema_real_eip !124
  %447 = add i64 %RBP_val.0.i, -124, !mcsema_real_eip !125
  %448 = trunc i64 %442 to i32, !mcsema_real_eip !125
  %449 = inttoptr i64 %447 to i32*
  store i32 %448, i32* %449, align 4, !mcsema_real_eip !125
  %uadd365.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %RSP_val.0.i, i64 128)
  %450 = extractvalue { i64, i1 } %uadd365.i, 0
  %451 = xor i64 %450, %RSP_val.0.i, !mcsema_real_eip !126
  %452 = and i64 %451, 16, !mcsema_real_eip !126
  %453 = icmp ne i64 %452, 0, !mcsema_real_eip !126
  %454 = icmp slt i64 %450, 0
  %455 = icmp eq i64 %450, 0, !mcsema_real_eip !126
  %456 = xor i64 %RSP_val.0.i, -9223372036854775808, !mcsema_real_eip !126
  %457 = and i64 %451, %456, !mcsema_real_eip !126
  %458 = icmp slt i64 %457, 0
  %459 = trunc i64 %450 to i8, !mcsema_real_eip !126
  %460 = tail call i8 @llvm.ctpop.i8(i8 %459), !mcsema_real_eip !126
  %461 = and i8 %460, 1
  %462 = icmp eq i8 %461, 0
  %463 = extractvalue { i64, i1 } %uadd365.i, 1
  %464 = inttoptr i64 %450 to i64*, !mcsema_real_eip !127
  %465 = load i64* %464, align 8, !mcsema_real_eip !127
  %466 = add i64 %450, 16, !mcsema_real_eip !128
  store i64 %446, i64* %RAX.i, align 8, !mcsema_real_eip !128
  store i64 %RBX_val.0.i, i64* %RBX.i, align 8, !mcsema_real_eip !128
  store i64 %446, i64* %RCX.i, align 8, !mcsema_real_eip !128
  store i64 %RDX_val.0.i, i64* %RDX.i, align 8, !mcsema_real_eip !128
  store i64 %RSI_val.0.i, i64* %RSI.i, align 8, !mcsema_real_eip !128
  store i64 add (i64 ptrtoint (%1* @data_0x3ff to i64), i64 85), i64* %RDI.i, align 8, !mcsema_real_eip !128
  store i64 %466, i64* %RSP.i, align 8, !mcsema_real_eip !128
  store i64 %465, i64* %RBP.i, align 8, !mcsema_real_eip !128
  store <2 x i64> %441, <2 x i64>* %95, align 8
  store i64 %R10_val.0.i, i64* %R10.i, align 8, !mcsema_real_eip !128
  store i64 %R11_val.0.i, i64* %R11.i, align 8, !mcsema_real_eip !128
  store i64 %R12_val.0.i, i64* %R12.i, align 8, !mcsema_real_eip !128
  store i64 %R13_val.0.i, i64* %R13.i, align 8, !mcsema_real_eip !128
  store i64 %R14_val.0.i, i64* %R14.i, align 8, !mcsema_real_eip !128
  store i64 %R15_val.0.i, i64* %R15.i, align 8, !mcsema_real_eip !128
  store i64 %RIP_val.0.i, i64* %RIP.i, align 8, !mcsema_real_eip !128
  store i1 %463, i1* %CF.i, align 1, !mcsema_real_eip !128
  store i1 %462, i1* %PF.i, align 1, !mcsema_real_eip !128
  store i1 %453, i1* %AF.i, align 1, !mcsema_real_eip !128
  store i1 %455, i1* %ZF.i, align 1, !mcsema_real_eip !128
  store i1 %454, i1* %SF.i, align 1, !mcsema_real_eip !128
  store i1 %458, i1* %OF.i, align 1, !mcsema_real_eip !128
  store i1 %DF_val.0.i, i1* %DF.i, align 1, !mcsema_real_eip !128
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* %1, i32 128, i32 8, i1 false), !mcsema_real_eip !128
  store i1 %FPU_B_val.0.i, i1* %FPU_B.i, align 1, !mcsema_real_eip !128
  store i1 %FPU_C3_val.0.i, i1* %FPU_C3.i, align 1, !mcsema_real_eip !128
  store i3 %FPU_TOP_val.0.i, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !128
  store i1 %FPU_C2_val.0.i, i1* %FPU_C2.i, align 1, !mcsema_real_eip !128
  store i1 %FPU_C1_val.0.i, i1* %FPU_C1.i, align 1, !mcsema_real_eip !128
  store i1 %FPU_C0_val.0.i, i1* %FPU_C0.i, align 1, !mcsema_real_eip !128
  store i1 %FPU_ES_val.0.i, i1* %FPU_ES.i, align 1, !mcsema_real_eip !128
  store i1 %FPU_SF_val.0.i, i1* %FPU_SF.i, align 1, !mcsema_real_eip !128
  store i1 %FPU_PE_val.0.i, i1* %FPU_PE.i, align 1, !mcsema_real_eip !128
  store i1 %FPU_UE_val.0.i, i1* %FPU_UE.i, align 1, !mcsema_real_eip !128
  store i1 %FPU_OE_val.0.i, i1* %FPU_OE.i, align 1, !mcsema_real_eip !128
  store i1 %FPU_ZE_val.0.i, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !128
  store i1 %FPU_DE_val.0.i, i1* %FPU_DE.i, align 1, !mcsema_real_eip !128
  store i1 %FPU_IE_val.0.i, i1* %FPU_IE.i, align 1, !mcsema_real_eip !128
  store i1 %FPU_X_val.0.i, i1* %FPU_X.i, align 1, !mcsema_real_eip !128
  store i2 %FPU_RC_val.0.i, i2* %FPU_RC.i, align 1, !mcsema_real_eip !128
  store i2 %FPU_PC_val.0.i, i2* %FPU_PC.i, align 1, !mcsema_real_eip !128
  store i1 %FPU_PM_val.0.i, i1* %FPU_PM.i, align 1, !mcsema_real_eip !128
  store i1 %FPU_UM_val.0.i, i1* %FPU_UM.i, align 1, !mcsema_real_eip !128
  store i1 %FPU_OM_val.0.i, i1* %FPU_OM.i, align 1, !mcsema_real_eip !128
  store i1 %FPU_ZM_val.0.i, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !128
  store i1 %FPU_DM_val.0.i, i1* %FPU_DM.i, align 1, !mcsema_real_eip !128
  store i1 %FPU_IM_val.0.i, i1* %FPU_IM.i, align 1, !mcsema_real_eip !128
  store i64 %FPU_TAG_val.sroa.0.0.i, i64* %41, align 4
  store i16 %FPU_LASTIP_SEG_val.0.i, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !128
  store i64 %FPU_LASTIP_OFF_val.0.i, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !128
  store i16 %FPU_LASTDATA_SEG_val.0.i, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !128
  store i64 %FPU_LASTDATA_OFF_val.0.i, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !128
  store i128 %XMM0_val.0.i, i128* %XMM0.i, align 1, !mcsema_real_eip !128
  store i128 %XMM1_val.0.i, i128* %XMM1.i, align 1, !mcsema_real_eip !128
  store i128 %XMM2_val.0.i, i128* %XMM2.i, align 1, !mcsema_real_eip !128
  store i128 %XMM3_val.0.i, i128* %XMM3.i, align 1, !mcsema_real_eip !128
  store i128 %XMM4_val.0.i, i128* %XMM4.i, align 1, !mcsema_real_eip !128
  store i128 %XMM5_val.0.i, i128* %XMM5.i, align 1, !mcsema_real_eip !128
  store i128 %XMM6_val.0.i, i128* %XMM6.i, align 1, !mcsema_real_eip !128
  store i128 %XMM7_val.0.i, i128* %XMM7.i, align 1, !mcsema_real_eip !128
  store i128 %XMM8_val.0.i, i128* %XMM8.i, align 1, !mcsema_real_eip !128
  store i128 %XMM9_val.0.i, i128* %XMM9.i, align 1, !mcsema_real_eip !128
  store i128 %XMM10_val.0.i, i128* %XMM10.i, align 1, !mcsema_real_eip !128
  store i128 %XMM11_val.0.i, i128* %XMM11.i, align 1, !mcsema_real_eip !128
  store i128 %XMM12_val.0.i, i128* %XMM12.i, align 1, !mcsema_real_eip !128
  store i128 %XMM13_val.0.i, i128* %XMM13.i, align 1, !mcsema_real_eip !128
  store i128 %XMM14_val.0.i, i128* %XMM14.i, align 1, !mcsema_real_eip !128
  store i128 %XMM15_val.0.i, i128* %XMM15.i, align 1, !mcsema_real_eip !128
  store i64 %STACK_BASE_val.0.i, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !128
  store i64 %STACK_LIMIT_val.0.i, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !128
  call void @llvm.lifetime.end(i64 128, i8* %1)
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
!2 = metadata !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = metadata !{i64 8, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!4 = metadata !{i64 28, [19 x i8] c"\09movl\09$0, -8(%rbp)\00"}
!5 = metadata !{i64 97, [22 x i8] c"\09movl\09%eax, -12(%rbp)\00"}
!6 = metadata !{i64 133, [22 x i8] c"\09movl\09%eax, -16(%rbp)\00"}
!7 = metadata !{i64 164, [9 x i8] c"\09callq\090\00"}
!8 = metadata !{i64 169, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!9 = metadata !{i64 172, [16 x i8] c"\09addq\09$32, %rsp\00"}
!10 = metadata !{i64 176, [11 x i8] c"\09popq\09%rbp\00"}
!11 = metadata !{i64 177, [6 x i8] c"\09retq\00"}
!12 = metadata !{i64 128, [9 x i8] c"\09callq\090\00"}
!13 = metadata !{i64 136, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!14 = metadata !{i64 144, [21 x i8] c"\09movl\09%eax, -4(%rbp)\00"}
!15 = metadata !{i64 22, [9 x i8] c"\09jge\09124\00"}
!16 = metadata !{i64 68, [23 x i8] c"\09movslq\09-8(%rbp), %rcx\00"}
!17 = metadata !{i64 72, [23 x i8] c"\09movslq\09-4(%rbp), %rdx\00"}
!18 = metadata !{i64 76, [18 x i8] c"\09imulq\09 $11, %rdx\00"}
!19 = metadata !{i64 86, [26 x i8] c"\09movsbl\09(%rax,%rcx), %esi\00"}
!20 = metadata !{i64 92, [9 x i8] c"\09callq\090\00"}
!21 = metadata !{i64 100, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!22 = metadata !{i64 108, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!23 = metadata !{i64 42, [8 x i8] c"\09jge\0968\00"}
!24 = metadata !{i64 192, [12 x i8] c"\09pushq\09%rbp\00"}
!25 = metadata !{i64 218, [22 x i8] c"\09leaq\09-64(%rbp), %rcx\00"}
!26 = metadata !{i64 232, [19 x i8] c"\09movl\09$0, -4(%rbp)\00"}
!27 = metadata !{i64 239, [21 x i8] c"\09movl\09%edi, -8(%rbp)\00"}
!28 = metadata !{i64 242, [22 x i8] c"\09movq\09%rsi, -16(%rbp)\00"}
!29 = metadata !{i64 246, [20 x i8] c"\09movl\09$0, -36(%rbp)\00"}
!30 = metadata !{i64 253, [20 x i8] c"\09movl\09$1, -20(%rbp)\00"}
!31 = metadata !{i64 260, [20 x i8] c"\09movl\09$1, -24(%rbp)\00"}
!32 = metadata !{i64 267, [24 x i8] c"\09movslq\09-20(%rbp), %rsi\00"}
!33 = metadata !{i64 285, [22 x i8] c"\09movb\09$88, (%r8,%rsi)\00"}
!34 = metadata !{i64 295, [9 x i8] c"\09callq\090\00"}
!35 = metadata !{i64 300, [22 x i8] c"\09movq\09%rax, -72(%rbp)\00"}
!36 = metadata !{i64 304, [21 x i8] c"\09cmpl\09$28, -36(%rbp)\00"}
!37 = metadata !{i64 311, [9 x i8] c"\09jge\09595\00"}
!38 = metadata !{i64 317, [22 x i8] c"\09movl\09-20(%rbp), %eax\00"}
!39 = metadata !{i64 320, [22 x i8] c"\09movl\09%eax, -28(%rbp)\00"}
!40 = metadata !{i64 323, [22 x i8] c"\09movl\09-24(%rbp), %eax\00"}
!41 = metadata !{i64 326, [22 x i8] c"\09movl\09%eax, -32(%rbp)\00"}
!42 = metadata !{i64 329, [24 x i8] c"\09movslq\09-36(%rbp), %rcx\00"}
!43 = metadata !{i64 333, [29 x i8] c"\09movsbl\09-64(%rbp,%rcx), %eax\00"}
!44 = metadata !{i64 340, [17 x i8] c"\09subl\09$114, %edx\00"}
!45 = metadata !{i64 343, [22 x i8] c"\09movl\09%eax, -76(%rbp)\00"}
!46 = metadata !{i64 346, [22 x i8] c"\09movl\09%edx, -80(%rbp)\00"}
!47 = metadata !{i64 400, [22 x i8] c"\09movl\09-76(%rbp), %eax\00"}
!48 = metadata !{i64 349, [7 x i8] c"\09jg\0945\00"}
!49 = metadata !{i64 403, [17 x i8] c"\09subl\09$115, %eax\00"}
!50 = metadata !{i64 406, [22 x i8] c"\09movl\09%eax, -92(%rbp)\00"}
!51 = metadata !{i64 409, [7 x i8] c"\09je\0941\00"}
!52 = metadata !{i64 363, [16 x i8] c"\09subl\09$97, %eax\00"}
!53 = metadata !{i64 366, [22 x i8] c"\09movl\09%eax, -84(%rbp)\00"}
!54 = metadata !{i64 369, [7 x i8] c"\09je\0997\00"}
!55 = metadata !{i64 456, [22 x i8] c"\09movl\09-24(%rbp), %eax\00"}
!56 = metadata !{i64 464, [22 x i8] c"\09movl\09%eax, -24(%rbp)\00"}
!57 = metadata !{i64 467, [8 x i8] c"\09jmp\0982\00"}
!58 = metadata !{i64 472, [22 x i8] c"\09movl\09-20(%rbp), %eax\00"}
!59 = metadata !{i64 480, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!60 = metadata !{i64 483, [8 x i8] c"\09jmp\0966\00"}
!61 = metadata !{i64 420, [22 x i8] c"\09movl\09-76(%rbp), %eax\00"}
!62 = metadata !{i64 423, [17 x i8] c"\09subl\09$119, %eax\00"}
!63 = metadata !{i64 426, [22 x i8] c"\09movl\09%eax, -96(%rbp)\00"}
!64 = metadata !{i64 429, [8 x i8] c"\09jne\0969\00"}
!65 = metadata !{i64 564, [24 x i8] c"\09movslq\09-20(%rbp), %rcx\00"}
!66 = metadata !{i64 568, [24 x i8] c"\09movslq\09-24(%rbp), %rdx\00"}
!67 = metadata !{i64 572, [18 x i8] c"\09imulq\09 $11, %rdx\00"}
!68 = metadata !{i64 582, [26 x i8] c"\09movsbl\09(%rax,%rcx), %esi\00"}
!69 = metadata !{i64 592, [8 x i8] c"\09jne\0954\00"}
!70 = metadata !{i64 380, [22 x i8] c"\09movl\09-76(%rbp), %eax\00"}
!71 = metadata !{i64 383, [17 x i8] c"\09subl\09$100, %eax\00"}
!72 = metadata !{i64 386, [22 x i8] c"\09movl\09%eax, -88(%rbp)\00"}
!73 = metadata !{i64 389, [7 x i8] c"\09je\0993\00"}
!74 = metadata !{i64 516, [9 x i8] c"\09callq\090\00"}
!75 = metadata !{i64 531, [23 x i8] c"\09movl\09%eax, -100(%rbp)\00"}
!76 = metadata !{i64 536, [9 x i8] c"\09callq\090\00"}
!77 = metadata !{i64 546, [23 x i8] c"\09movl\09%eax, -104(%rbp)\00"}
!78 = metadata !{i64 549, [9 x i8] c"\09callq\090\00"}
!79 = metadata !{i64 662, [24 x i8] c"\09movslq\09-20(%rbp), %rcx\00"}
!80 = metadata !{i64 666, [24 x i8] c"\09movslq\09-24(%rbp), %rdx\00"}
!81 = metadata !{i64 670, [18 x i8] c"\09imulq\09 $11, %rdx\00"}
!82 = metadata !{i64 680, [26 x i8] c"\09movsbl\09(%rax,%rcx), %esi\00"}
!83 = metadata !{i64 690, [7 x i8] c"\09je\0995\00"}
!84 = metadata !{i64 610, [9 x i8] c"\09callq\090\00"}
!85 = metadata !{i64 629, [23 x i8] c"\09movl\09%eax, -108(%rbp)\00"}
!86 = metadata !{i64 634, [9 x i8] c"\09callq\090\00"}
!87 = metadata !{i64 644, [23 x i8] c"\09movl\09%eax, -112(%rbp)\00"}
!88 = metadata !{i64 647, [9 x i8] c"\09callq\090\00"}
!89 = metadata !{i64 488, [22 x i8] c"\09movl\09-20(%rbp), %eax\00"}
!90 = metadata !{i64 496, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!91 = metadata !{i64 499, [8 x i8] c"\09jmp\0950\00"}
!92 = metadata !{i64 440, [22 x i8] c"\09movl\09-24(%rbp), %eax\00"}
!93 = metadata !{i64 448, [22 x i8] c"\09movl\09%eax, -24(%rbp)\00"}
!94 = metadata !{i64 451, [8 x i8] c"\09jmp\0998\00"}
!95 = metadata !{i64 791, [22 x i8] c"\09movl\09-28(%rbp), %eax\00"}
!96 = metadata !{i64 797, [8 x i8] c"\09jne\0942\00"}
!97 = metadata !{i64 703, [8 x i8] c"\09jne\0970\00"}
!98 = metadata !{i64 779, [22 x i8] c"\09movl\09-28(%rbp), %eax\00"}
!99 = metadata !{i64 782, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!100 = metadata !{i64 785, [22 x i8] c"\09movl\09-32(%rbp), %eax\00"}
!101 = metadata !{i64 788, [22 x i8] c"\09movl\09%eax, -24(%rbp)\00"}
!102 = metadata !{i64 794, [22 x i8] c"\09cmpl\09-20(%rbp), %eax\00"}
!103 = metadata !{i64 719, [24 x i8] c"\09movslq\09-20(%rbp), %rcx\00"}
!104 = metadata !{i64 737, [26 x i8] c"\09movsbl\09(%rax,%rcx), %esi\00"}
!105 = metadata !{i64 747, [8 x i8] c"\09jne\0926\00"}
!106 = metadata !{i64 855, [24 x i8] c"\09movslq\09-20(%rbp), %rcx\00"}
!107 = metadata !{i64 859, [24 x i8] c"\09movslq\09-24(%rbp), %rdx\00"}
!108 = metadata !{i64 863, [18 x i8] c"\09imulq\09 $11, %rdx\00"}
!109 = metadata !{i64 870, [17 x i8] c"\09addq\09%rdx, %rax\00"}
!110 = metadata !{i64 873, [23 x i8] c"\09movb\09$88, (%rax,%rcx)\00"}
!111 = metadata !{i64 877, [12 x i8] c"\09callq\09-882\00"}
!112 = metadata !{i64 887, [22 x i8] c"\09movl\09-36(%rbp), %esi\00"}
!113 = metadata !{i64 896, [22 x i8] c"\09movl\09%esi, -36(%rbp)\00"}
!114 = metadata !{i64 899, [9 x i8] c"\09callq\090\00"}
!115 = metadata !{i64 904, [23 x i8] c"\09movl\09%eax, -120(%rbp)\00"}
!116 = metadata !{i64 907, [10 x i8] c"\09jmp\09-608\00"}
!117 = metadata !{i64 803, [22 x i8] c"\09movl\09-32(%rbp), %eax\00"}
!118 = metadata !{i64 809, [8 x i8] c"\09jne\0930\00"}
!119 = metadata !{i64 827, [9 x i8] c"\09callq\090\00"}
!120 = metadata !{i64 837, [23 x i8] c"\09movl\09%eax, -116(%rbp)\00"}
!121 = metadata !{i64 840, [9 x i8] c"\09callq\090\00"}
!122 = metadata !{i64 773, [7 x i8] c"\09jl\0912\00"}
!123 = metadata !{i64 924, [9 x i8] c"\09callq\090\00"}
!124 = metadata !{i64 929, [21 x i8] c"\09movl\09-4(%rbp), %ecx\00"}
!125 = metadata !{i64 932, [23 x i8] c"\09movl\09%eax, -124(%rbp)\00"}
!126 = metadata !{i64 937, [17 x i8] c"\09addq\09$128, %rsp\00"}
!127 = metadata !{i64 944, [11 x i8] c"\09popq\09%rbp\00"}
!128 = metadata !{i64 945, [6 x i8] c"\09retq\00"}
