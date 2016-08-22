; ModuleID = 'test_5_opt.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%0 = type <{ [77 x i8] }>
%1 = type <{ [86 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0x28d = internal global %0 <{ [77 x i8] c"+-+---+---+| |     |#|| | --+ | || |   | | || +-- | | ||     |   |+-----+---+" }>, align 64
@data_0x2da = internal constant %1 <{ [86 x i8] c"Wrong command!(only w,s,a,d accepted!)\00You lose!\00You win!\00Your solution:%s \0A\00You lose\00" }>, align 64

; Function Attrs: nounwind
define internal x86_64_sysvcc void @sub_0(%struct.regs*) #0 {
entry:
  %STi_val = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %RBX = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %1 = load i64* %RBX, align 8, !mcsema_real_eip !2
  %RCX = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %RSI = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %2 = load i64* %RSI, align 8, !mcsema_real_eip !2
  %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %3 = load i64* %RSP, align 8, !mcsema_real_eip !2
  %RBP = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %4 = load i64* %RBP, align 8, !mcsema_real_eip !2
  %R8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %5 = bitcast i64* %R8 to <2 x i64>*
  %6 = load <2 x i64>* %5, align 8
  %R10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %7 = bitcast i64* %R10 to <2 x i64>*
  %8 = load <2 x i64>* %7, align 8
  %R12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %9 = bitcast i64* %R12 to <2 x i64>*
  %10 = load <2 x i64>* %9, align 8
  %R14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %11 = bitcast i64* %R14 to <2 x i64>*
  %12 = load <2 x i64>* %11, align 8
  %RIP = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %13 = load i64* %RIP, align 8, !mcsema_real_eip !2
  %CF = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %AF = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %DF = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %14 = load i1* %DF, align 1, !mcsema_real_eip !2
  %15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %16 = bitcast x86_fp80* %15 to i8*, !mcsema_real_eip !2
  %17 = bitcast [8 x x86_fp80]* %STi_val to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %17, i8* %16, i32 128, i32 4, i1 false), !mcsema_real_eip !2
  %FPU_B = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %18 = load i1* %FPU_B, align 1, !mcsema_real_eip !2
  %FPU_C3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %19 = load i1* %FPU_C3, align 1, !mcsema_real_eip !2
  %FPU_TOP = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %20 = load i3* %FPU_TOP, align 1, !mcsema_real_eip !2
  %FPU_C2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %21 = load i1* %FPU_C2, align 1, !mcsema_real_eip !2
  %FPU_C1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %22 = load i1* %FPU_C1, align 1, !mcsema_real_eip !2
  %FPU_C0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %23 = load i1* %FPU_C0, align 1, !mcsema_real_eip !2
  %FPU_ES = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %24 = load i1* %FPU_ES, align 1, !mcsema_real_eip !2
  %FPU_SF = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %25 = load i1* %FPU_SF, align 1, !mcsema_real_eip !2
  %FPU_PE = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %26 = load i1* %FPU_PE, align 1, !mcsema_real_eip !2
  %FPU_UE = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %27 = load i1* %FPU_UE, align 1, !mcsema_real_eip !2
  %FPU_OE = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %28 = load i1* %FPU_OE, align 1, !mcsema_real_eip !2
  %FPU_ZE = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %29 = load i1* %FPU_ZE, align 1, !mcsema_real_eip !2
  %FPU_DE = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %30 = load i1* %FPU_DE, align 1, !mcsema_real_eip !2
  %FPU_IE = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %31 = load i1* %FPU_IE, align 1, !mcsema_real_eip !2
  %FPU_X = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %32 = load i1* %FPU_X, align 1, !mcsema_real_eip !2
  %FPU_RC = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %33 = load i2* %FPU_RC, align 1, !mcsema_real_eip !2
  %FPU_PC = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %34 = load i2* %FPU_PC, align 1, !mcsema_real_eip !2
  %FPU_PM = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %35 = load i1* %FPU_PM, align 1, !mcsema_real_eip !2
  %FPU_UM = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %36 = load i1* %FPU_UM, align 1, !mcsema_real_eip !2
  %FPU_OM = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %37 = load i1* %FPU_OM, align 1, !mcsema_real_eip !2
  %FPU_ZM = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %38 = load i1* %FPU_ZM, align 1, !mcsema_real_eip !2
  %FPU_DM = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %39 = load i1* %FPU_DM, align 1, !mcsema_real_eip !2
  %FPU_IM = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %40 = load i1* %FPU_IM, align 1, !mcsema_real_eip !2
  %41 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %42 = bitcast i8* %41 to i64*
  %43 = load i64* %42, align 4
  %FPU_LASTIP_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %44 = load i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !2
  %FPU_LASTIP_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %45 = load i64* %FPU_LASTIP_OFF, align 8, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %46 = load i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %47 = load i64* %FPU_LASTDATA_OFF, align 8, !mcsema_real_eip !2
  %XMM0 = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %48 = load i128* %XMM0, align 1, !mcsema_real_eip !2
  %XMM1 = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %49 = load i128* %XMM1, align 1, !mcsema_real_eip !2
  %XMM2 = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %50 = load i128* %XMM2, align 1, !mcsema_real_eip !2
  %XMM3 = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %51 = load i128* %XMM3, align 1, !mcsema_real_eip !2
  %XMM4 = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %52 = load i128* %XMM4, align 1, !mcsema_real_eip !2
  %XMM5 = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %53 = load i128* %XMM5, align 1, !mcsema_real_eip !2
  %XMM6 = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %54 = load i128* %XMM6, align 1, !mcsema_real_eip !2
  %XMM7 = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %55 = load i128* %XMM7, align 1, !mcsema_real_eip !2
  %XMM8 = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %56 = load i128* %XMM8, align 1, !mcsema_real_eip !2
  %XMM9 = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %57 = load i128* %XMM9, align 1, !mcsema_real_eip !2
  %XMM10 = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %58 = load i128* %XMM10, align 1, !mcsema_real_eip !2
  %XMM11 = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %59 = load i128* %XMM11, align 1, !mcsema_real_eip !2
  %XMM12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %60 = load i128* %XMM12, align 1, !mcsema_real_eip !2
  %XMM13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %61 = load i128* %XMM13, align 1, !mcsema_real_eip !2
  %XMM14 = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %62 = load i128* %XMM14, align 1, !mcsema_real_eip !2
  %XMM15 = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %63 = load i128* %XMM15, align 1, !mcsema_real_eip !2
  %STACK_BASE = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %64 = bitcast i64* %STACK_BASE to <2 x i64>*
  %65 = load <2 x i64>* %64, align 8
  %66 = add i64 %3, -8
  %67 = inttoptr i64 %66 to i64*, !mcsema_real_eip !2
  store i64 %4, i64* %67, align 8, !mcsema_real_eip !2
  %68 = add i64 %3, -12, !mcsema_real_eip !3
  %69 = inttoptr i64 %68 to i32*
  store i32 0, i32* %69, align 4, !mcsema_real_eip !3
  %70 = add i64 %3, -16, !mcsema_real_eip !4
  %71 = inttoptr i64 %70 to i32*
  br label %block_0x11

block_0x11:                                       ; preds = %block_0x56, %entry
  store i32 0, i32* %71, align 4, !mcsema_real_eip !4
  br label %block_0x1a

block_0x6a:                                       ; preds = %block_0x56
  %.lcssa26 = phi i1 [ %117, %block_0x56 ]
  %.lcssa25 = phi i1 [ %115, %block_0x56 ]
  %.lcssa24 = phi i32 [ %113, %block_0x56 ]
  %.lcssa23 = phi i32 [ %112, %block_0x56 ]
  %.lcssa22 = phi i32 [ %111, %block_0x56 ]
  %.lcssa.lcssa = phi i64 [ %.lcssa, %block_0x56 ]
  %.lcssa21.lcssa = phi i64 [ %.lcssa21, %block_0x56 ]
  %RAX = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RDX = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %RDI = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %PF = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %ZF = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %OF = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %72 = icmp ult i32 %.lcssa22, 6, !mcsema_real_eip !5
  %73 = trunc i32 %.lcssa23 to i8, !mcsema_real_eip !5
  %74 = tail call i8 @llvm.ctpop.i8(i8 %73), !mcsema_real_eip !5
  %75 = and i8 %74, 1
  %76 = icmp eq i8 %75, 0
  %77 = and i32 %.lcssa24, 16, !mcsema_real_eip !5
  %78 = icmp ne i32 %77, 0, !mcsema_real_eip !5
  %79 = tail call x86_64_sysvcc i64 @putchar(i64 10), !mcsema_real_eip !6
  %80 = load i64* %67, align 8, !mcsema_real_eip !7
  %81 = add i64 %3, 8, !mcsema_real_eip !8
  store i64 %79, i64* %RAX, align 8, !mcsema_real_eip !8
  store i64 %1, i64* %RBX, align 8, !mcsema_real_eip !8
  store i64 %.lcssa.lcssa, i64* %RCX, align 8, !mcsema_real_eip !8
  store i64 %.lcssa21.lcssa, i64* %RDX, align 8, !mcsema_real_eip !8
  store i64 %2, i64* %RSI, align 8, !mcsema_real_eip !8
  store i64 10, i64* %RDI, align 8, !mcsema_real_eip !8
  store i64 %81, i64* %RSP, align 8, !mcsema_real_eip !8
  store i64 %80, i64* %RBP, align 8, !mcsema_real_eip !8
  %82 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> %6, <2 x i64>* %82, align 8
  %83 = bitcast i64* %R10 to <2 x i64>*
  store <2 x i64> %8, <2 x i64>* %83, align 8
  %84 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> %10, <2 x i64>* %84, align 8
  %85 = bitcast i64* %R14 to <2 x i64>*
  store <2 x i64> %12, <2 x i64>* %85, align 8
  store i64 %13, i64* %RIP, align 8, !mcsema_real_eip !8
  store i1 %72, i1* %CF, align 1, !mcsema_real_eip !8
  store i1 %76, i1* %PF, align 1, !mcsema_real_eip !8
  store i1 %78, i1* %AF, align 1, !mcsema_real_eip !8
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !8
  store i1 %.lcssa25, i1* %SF, align 1, !mcsema_real_eip !8
  store i1 %.lcssa26, i1* %OF, align 1, !mcsema_real_eip !8
  store i1 %14, i1* %DF, align 1, !mcsema_real_eip !8
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %16, i8* %17, i32 128, i32 8, i1 false), !mcsema_real_eip !8
  store i1 %18, i1* %FPU_B, align 1, !mcsema_real_eip !8
  store i1 %19, i1* %FPU_C3, align 1, !mcsema_real_eip !8
  store i3 %20, i3* %FPU_TOP, align 1, !mcsema_real_eip !8
  store i1 %21, i1* %FPU_C2, align 1, !mcsema_real_eip !8
  store i1 %22, i1* %FPU_C1, align 1, !mcsema_real_eip !8
  store i1 %23, i1* %FPU_C0, align 1, !mcsema_real_eip !8
  store i1 %24, i1* %FPU_ES, align 1, !mcsema_real_eip !8
  store i1 %25, i1* %FPU_SF, align 1, !mcsema_real_eip !8
  store i1 %26, i1* %FPU_PE, align 1, !mcsema_real_eip !8
  store i1 %27, i1* %FPU_UE, align 1, !mcsema_real_eip !8
  store i1 %28, i1* %FPU_OE, align 1, !mcsema_real_eip !8
  store i1 %29, i1* %FPU_ZE, align 1, !mcsema_real_eip !8
  store i1 %30, i1* %FPU_DE, align 1, !mcsema_real_eip !8
  store i1 %31, i1* %FPU_IE, align 1, !mcsema_real_eip !8
  store i1 %32, i1* %FPU_X, align 1, !mcsema_real_eip !8
  store i2 %33, i2* %FPU_RC, align 1, !mcsema_real_eip !8
  store i2 %34, i2* %FPU_PC, align 1, !mcsema_real_eip !8
  store i1 %35, i1* %FPU_PM, align 1, !mcsema_real_eip !8
  store i1 %36, i1* %FPU_UM, align 1, !mcsema_real_eip !8
  store i1 %37, i1* %FPU_OM, align 1, !mcsema_real_eip !8
  store i1 %38, i1* %FPU_ZM, align 1, !mcsema_real_eip !8
  store i1 %39, i1* %FPU_DM, align 1, !mcsema_real_eip !8
  store i1 %40, i1* %FPU_IM, align 1, !mcsema_real_eip !8
  store i64 %43, i64* %42, align 4
  store i16 %44, i16* %FPU_LASTIP_SEG, align 1, !mcsema_real_eip !8
  store i64 %45, i64* %FPU_LASTIP_OFF, align 1, !mcsema_real_eip !8
  store i16 %46, i16* %FPU_LASTDATA_SEG, align 1, !mcsema_real_eip !8
  store i64 %47, i64* %FPU_LASTDATA_OFF, align 1, !mcsema_real_eip !8
  store i128 %48, i128* %XMM0, align 1, !mcsema_real_eip !8
  store i128 %49, i128* %XMM1, align 1, !mcsema_real_eip !8
  store i128 %50, i128* %XMM2, align 1, !mcsema_real_eip !8
  store i128 %51, i128* %XMM3, align 1, !mcsema_real_eip !8
  store i128 %52, i128* %XMM4, align 1, !mcsema_real_eip !8
  store i128 %53, i128* %XMM5, align 1, !mcsema_real_eip !8
  store i128 %54, i128* %XMM6, align 1, !mcsema_real_eip !8
  store i128 %55, i128* %XMM7, align 1, !mcsema_real_eip !8
  store i128 %56, i128* %XMM8, align 1, !mcsema_real_eip !8
  store i128 %57, i128* %XMM9, align 1, !mcsema_real_eip !8
  store i128 %58, i128* %XMM10, align 1, !mcsema_real_eip !8
  store i128 %59, i128* %XMM11, align 1, !mcsema_real_eip !8
  store i128 %60, i128* %XMM12, align 1, !mcsema_real_eip !8
  store i128 %61, i128* %XMM13, align 1, !mcsema_real_eip !8
  store i128 %62, i128* %XMM14, align 1, !mcsema_real_eip !8
  store i128 %63, i128* %XMM15, align 1, !mcsema_real_eip !8
  %86 = bitcast i64* %STACK_BASE to <2 x i64>*
  store <2 x i64> %65, <2 x i64>* %86, align 1
  ret void, !mcsema_real_eip !8

block_0x1a:                                       ; preds = %block_0x1a, %block_0x11
  %87 = phi i32 [ 0, %block_0x11 ], [ %100, %block_0x1a ]
  %88 = sext i32 %87 to i64, !mcsema_real_eip !9
  %89 = load i32* %69, align 4, !mcsema_real_eip !10
  %90 = sext i32 %89 to i64, !mcsema_real_eip !11
  %91 = mul i64 %90, 11
  %92 = add i64 %88, ptrtoint (%0* @data_0x28d to i64)
  %93 = add i64 %92, %91
  %94 = inttoptr i64 %93 to i8*
  %95 = load i8* %94, align 1, !mcsema_real_eip !12
  %96 = sext i8 %95 to i64
  %97 = and i64 %96, 4294967295
  %98 = tail call x86_64_sysvcc i64 @putchar(i64 %97), !mcsema_real_eip !13
  %99 = load i32* %71, align 4, !mcsema_real_eip !14
  %100 = add i32 %99, 1
  store i32 %100, i32* %71, align 4, !mcsema_real_eip !14
  %101 = add i32 %99, -9
  %102 = icmp eq i32 %101, 0, !mcsema_real_eip !15
  %103 = icmp slt i32 %101, 0
  %104 = sub i32 8, %99
  %105 = and i32 %100, %104
  %106 = icmp slt i32 %105, 0
  %107 = xor i1 %103, %106
  %108 = or i1 %102, %107, !mcsema_real_eip !16
  br i1 %108, label %block_0x1a, label %block_0x56, !mcsema_real_eip !16

block_0x56:                                       ; preds = %block_0x1a
  %.lcssa21 = phi i64 [ %90, %block_0x1a ]
  %.lcssa = phi i64 [ %88, %block_0x1a ]
  %109 = tail call x86_64_sysvcc i64 @putchar(i64 10), !mcsema_real_eip !17
  %110 = load i32* %69, align 4, !mcsema_real_eip !18
  %111 = add i32 %110, 1
  store i32 %111, i32* %69, align 4, !mcsema_real_eip !18
  %112 = add i32 %110, -5
  %113 = xor i32 %112, %111, !mcsema_real_eip !5
  %114 = icmp eq i32 %112, 0, !mcsema_real_eip !5
  %115 = icmp slt i32 %112, 0
  %116 = and i32 %113, %111, !mcsema_real_eip !5
  %117 = icmp slt i32 %116, 0
  %118 = xor i1 %115, %117
  %119 = or i1 %114, %118, !mcsema_real_eip !19
  br i1 %119, label %block_0x11, label %block_0x6a, !mcsema_real_eip !19
}

declare x86_64_sysvcc i64 @read(i64 inreg, i64 inreg, i64 inreg)

declare x86_64_sysvcc i64 @puts(i64 inreg)

declare x86_64_sysvcc i64 @printf(i64 inreg)

declare x86_64_sysvcc i64 @exit(i64 inreg)

declare x86_64_sysvcc i64 @sleep(i64 inreg)

; Function Attrs: nounwind
declare x86_64_sysvcc i64 @putchar(i64 inreg) #0

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !20
  %1 = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* %1)
  %RAX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !20
  %RBX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !20
  %2 = load i64* %RBX.i, align 8, !mcsema_real_eip !20
  %RCX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !20
  %RDX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !20
  %RSI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !20
  %3 = load i64* %RSI.i, align 8, !mcsema_real_eip !20
  %RDI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !20
  %4 = load i64* %RDI.i, align 8, !mcsema_real_eip !20
  %RSP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !20
  %5 = load i64* %RSP.i, align 8, !mcsema_real_eip !20
  %RBP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !20
  %6 = load i64* %RBP.i, align 8, !mcsema_real_eip !20
  %R8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !20
  %7 = load i64* %R8.i, align 8, !mcsema_real_eip !20
  %R9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !20
  %8 = load i64* %R9.i, align 8, !mcsema_real_eip !20
  %R10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !20
  %9 = load i64* %R10.i, align 8, !mcsema_real_eip !20
  %R11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !20
  %10 = load i64* %R11.i, align 8, !mcsema_real_eip !20
  %R12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !20
  %11 = load i64* %R12.i, align 8, !mcsema_real_eip !20
  %R13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !20
  %12 = load i64* %R13.i, align 8, !mcsema_real_eip !20
  %R14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !20
  %13 = load i64* %R14.i, align 8, !mcsema_real_eip !20
  %R15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !20
  %14 = load i64* %R15.i, align 8, !mcsema_real_eip !20
  %RIP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !20
  %15 = load i64* %RIP.i, align 8, !mcsema_real_eip !20
  %CF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !20
  %PF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !20
  %AF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !20
  %ZF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !20
  %SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !20
  %OF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !20
  %DF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !20
  %16 = load i1* %DF.i, align 1, !mcsema_real_eip !20
  %17 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !20
  %18 = bitcast x86_fp80* %17 to i8*, !mcsema_real_eip !20
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %1, i8* %18, i32 128, i32 4, i1 false), !mcsema_real_eip !20
  %FPU_B.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !20
  %19 = load i1* %FPU_B.i, align 1, !mcsema_real_eip !20
  %FPU_C3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !20
  %20 = load i1* %FPU_C3.i, align 1, !mcsema_real_eip !20
  %FPU_TOP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !20
  %21 = load i3* %FPU_TOP.i, align 1, !mcsema_real_eip !20
  %FPU_C2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !20
  %22 = load i1* %FPU_C2.i, align 1, !mcsema_real_eip !20
  %FPU_C1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !20
  %23 = load i1* %FPU_C1.i, align 1, !mcsema_real_eip !20
  %FPU_C0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !20
  %24 = load i1* %FPU_C0.i, align 1, !mcsema_real_eip !20
  %FPU_ES.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !20
  %25 = load i1* %FPU_ES.i, align 1, !mcsema_real_eip !20
  %FPU_SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !20
  %26 = load i1* %FPU_SF.i, align 1, !mcsema_real_eip !20
  %FPU_PE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !20
  %27 = load i1* %FPU_PE.i, align 1, !mcsema_real_eip !20
  %FPU_UE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !20
  %28 = load i1* %FPU_UE.i, align 1, !mcsema_real_eip !20
  %FPU_OE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !20
  %29 = load i1* %FPU_OE.i, align 1, !mcsema_real_eip !20
  %FPU_ZE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !20
  %30 = load i1* %FPU_ZE.i, align 1, !mcsema_real_eip !20
  %FPU_DE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !20
  %31 = load i1* %FPU_DE.i, align 1, !mcsema_real_eip !20
  %FPU_IE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !20
  %32 = load i1* %FPU_IE.i, align 1, !mcsema_real_eip !20
  %FPU_X.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !20
  %33 = load i1* %FPU_X.i, align 1, !mcsema_real_eip !20
  %FPU_RC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !20
  %34 = load i2* %FPU_RC.i, align 1, !mcsema_real_eip !20
  %FPU_PC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !20
  %35 = load i2* %FPU_PC.i, align 1, !mcsema_real_eip !20
  %FPU_PM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !20
  %36 = load i1* %FPU_PM.i, align 1, !mcsema_real_eip !20
  %FPU_UM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !20
  %37 = load i1* %FPU_UM.i, align 1, !mcsema_real_eip !20
  %FPU_OM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !20
  %38 = load i1* %FPU_OM.i, align 1, !mcsema_real_eip !20
  %FPU_ZM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !20
  %39 = load i1* %FPU_ZM.i, align 1, !mcsema_real_eip !20
  %FPU_DM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !20
  %40 = load i1* %FPU_DM.i, align 1, !mcsema_real_eip !20
  %FPU_IM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !20
  %41 = load i1* %FPU_IM.i, align 1, !mcsema_real_eip !20
  %42 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !20
  %43 = bitcast i8* %42 to i64*
  %44 = load i64* %43, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !20
  %45 = load i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !20
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !20
  %46 = load i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !20
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !20
  %47 = load i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !20
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !20
  %48 = load i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !20
  %XMM0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !20
  %49 = load i128* %XMM0.i, align 1, !mcsema_real_eip !20
  %XMM1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !20
  %50 = load i128* %XMM1.i, align 1, !mcsema_real_eip !20
  %XMM2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !20
  %51 = load i128* %XMM2.i, align 1, !mcsema_real_eip !20
  %XMM3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !20
  %52 = load i128* %XMM3.i, align 1, !mcsema_real_eip !20
  %XMM4.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !20
  %53 = load i128* %XMM4.i, align 1, !mcsema_real_eip !20
  %XMM5.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !20
  %54 = load i128* %XMM5.i, align 1, !mcsema_real_eip !20
  %XMM6.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !20
  %55 = load i128* %XMM6.i, align 1, !mcsema_real_eip !20
  %XMM7.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !20
  %56 = load i128* %XMM7.i, align 1, !mcsema_real_eip !20
  %XMM8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !20
  %57 = load i128* %XMM8.i, align 1, !mcsema_real_eip !20
  %XMM9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !20
  %58 = load i128* %XMM9.i, align 1, !mcsema_real_eip !20
  %XMM10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !20
  %59 = load i128* %XMM10.i, align 1, !mcsema_real_eip !20
  %XMM11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !20
  %60 = load i128* %XMM11.i, align 1, !mcsema_real_eip !20
  %XMM12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !20
  %61 = load i128* %XMM12.i, align 1, !mcsema_real_eip !20
  %XMM13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !20
  %62 = load i128* %XMM13.i, align 1, !mcsema_real_eip !20
  %XMM14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !20
  %63 = load i128* %XMM14.i, align 1, !mcsema_real_eip !20
  %XMM15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !20
  %64 = load i128* %XMM15.i, align 1, !mcsema_real_eip !20
  %STACK_BASE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !20
  %65 = load i64* %STACK_BASE.i, align 8, !mcsema_real_eip !20
  %STACK_LIMIT.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !20
  %66 = load i64* %STACK_LIMIT.i, align 8, !mcsema_real_eip !20
  %67 = add i64 %5, -8
  %68 = inttoptr i64 %67 to i64*, !mcsema_real_eip !20
  store i64 %6, i64* %68, align 8, !mcsema_real_eip !20
  %69 = add i64 %5, -72
  %70 = add i64 %5, -60, !mcsema_real_eip !21
  %71 = trunc i64 %4 to i32, !mcsema_real_eip !21
  %72 = inttoptr i64 %70 to i32*
  store i32 %71, i32* %72, align 4, !mcsema_real_eip !21
  %73 = inttoptr i64 %69 to i64*, !mcsema_real_eip !22
  store i64 %3, i64* %73, align 8, !mcsema_real_eip !22
  %74 = add i64 %5, -20, !mcsema_real_eip !23
  %75 = inttoptr i64 %74 to i32*
  store i32 0, i32* %75, align 4, !mcsema_real_eip !23
  %76 = add i64 %5, -12, !mcsema_real_eip !24
  %77 = inttoptr i64 %76 to i32*
  store i32 1, i32* %77, align 4, !mcsema_real_eip !24
  %78 = add i64 %5, -16, !mcsema_real_eip !25
  %79 = inttoptr i64 %78 to i32*
  store i32 1, i32* %79, align 4, !mcsema_real_eip !25
  %80 = load i32* %77, align 4, !mcsema_real_eip !26
  %81 = sext i32 %80 to i64, !mcsema_real_eip !27
  %82 = add i64 %81, add (i64 ptrtoint (%0* @data_0x28d to i64), i64 11)
  %83 = inttoptr i64 %82 to i8*
  store i8 88, i8* %83, align 1, !mcsema_real_eip !28
  %84 = add i64 %5, -56, !mcsema_real_eip !29
  %85 = tail call x86_64_sysvcc i64 @read(i64 0, i64 %84, i64 28), !mcsema_real_eip !30
  %86 = load i32* %75, align 4, !mcsema_real_eip !31
  %87 = add i32 %86, -27
  %88 = xor i32 %87, %86, !mcsema_real_eip !31
  %89 = icmp eq i32 %87, 0, !mcsema_real_eip !31
  %90 = icmp slt i32 %87, 0
  %91 = and i32 %88, %86, !mcsema_real_eip !31
  %92 = icmp slt i32 %91, 0
  %93 = xor i1 %90, %92
  %94 = or i1 %89, %93, !mcsema_real_eip !32
  br i1 %94, label %block_0xdd.i.preheader, label %driverBlockRaw.sub_76.exit_crit_edge, !mcsema_real_eip !32

driverBlockRaw.sub_76.exit_crit_edge:             ; preds = %driverBlockRaw
  %95 = insertelement <2 x i64> undef, i64 %81, i32 0
  %96 = insertelement <2 x i64> %95, i64 28, i32 1
  %97 = trunc i32 %87 to i8, !mcsema_real_eip !31
  %98 = tail call i8 @llvm.ctpop.i8(i8 %97), !mcsema_real_eip !31
  %.pre = bitcast i64* %RCX.i to <2 x i64>*
  br label %sub_76.exit

block_0xdd.i.preheader:                           ; preds = %driverBlockRaw
  %99 = bitcast i64* %RCX.i to <2 x i64>*
  br label %block_0xdd.i

block_0xdd.i:                                     ; preds = %block_0xdd.i.backedge, %block_0xdd.i.preheader
  %R15_val.0.i = phi i64 [ %14, %block_0xdd.i.preheader ], [ %R15_val.0.i.be, %block_0xdd.i.backedge ]
  %STACK_LIMIT_val.0.i = phi i64 [ %66, %block_0xdd.i.preheader ], [ %STACK_LIMIT_val.0.i.be, %block_0xdd.i.backedge ]
  %STACK_BASE_val.0.i = phi i64 [ %65, %block_0xdd.i.preheader ], [ %STACK_BASE_val.0.i.be, %block_0xdd.i.backedge ]
  %XMM15_val.0.i = phi i128 [ %64, %block_0xdd.i.preheader ], [ %XMM15_val.0.i.be, %block_0xdd.i.backedge ]
  %XMM14_val.0.i = phi i128 [ %63, %block_0xdd.i.preheader ], [ %XMM14_val.0.i.be, %block_0xdd.i.backedge ]
  %XMM13_val.0.i = phi i128 [ %62, %block_0xdd.i.preheader ], [ %XMM13_val.0.i.be, %block_0xdd.i.backedge ]
  %XMM12_val.0.i = phi i128 [ %61, %block_0xdd.i.preheader ], [ %XMM12_val.0.i.be, %block_0xdd.i.backedge ]
  %XMM11_val.0.i = phi i128 [ %60, %block_0xdd.i.preheader ], [ %XMM11_val.0.i.be, %block_0xdd.i.backedge ]
  %XMM10_val.0.i = phi i128 [ %59, %block_0xdd.i.preheader ], [ %XMM10_val.0.i.be, %block_0xdd.i.backedge ]
  %XMM9_val.0.i = phi i128 [ %58, %block_0xdd.i.preheader ], [ %XMM9_val.0.i.be, %block_0xdd.i.backedge ]
  %XMM8_val.0.i = phi i128 [ %57, %block_0xdd.i.preheader ], [ %XMM8_val.0.i.be, %block_0xdd.i.backedge ]
  %XMM7_val.0.i = phi i128 [ %56, %block_0xdd.i.preheader ], [ %XMM7_val.0.i.be, %block_0xdd.i.backedge ]
  %XMM6_val.0.i = phi i128 [ %55, %block_0xdd.i.preheader ], [ %XMM6_val.0.i.be, %block_0xdd.i.backedge ]
  %XMM5_val.0.i = phi i128 [ %54, %block_0xdd.i.preheader ], [ %XMM5_val.0.i.be, %block_0xdd.i.backedge ]
  %XMM4_val.0.i = phi i128 [ %53, %block_0xdd.i.preheader ], [ %XMM4_val.0.i.be, %block_0xdd.i.backedge ]
  %XMM3_val.0.i = phi i128 [ %52, %block_0xdd.i.preheader ], [ %XMM3_val.0.i.be, %block_0xdd.i.backedge ]
  %XMM2_val.0.i = phi i128 [ %51, %block_0xdd.i.preheader ], [ %XMM2_val.0.i.be, %block_0xdd.i.backedge ]
  %XMM1_val.0.i = phi i128 [ %50, %block_0xdd.i.preheader ], [ %XMM1_val.0.i.be, %block_0xdd.i.backedge ]
  %XMM0_val.0.i = phi i128 [ %49, %block_0xdd.i.preheader ], [ %XMM0_val.0.i.be, %block_0xdd.i.backedge ]
  %FPU_LASTDATA_OFF_val.0.i = phi i64 [ %48, %block_0xdd.i.preheader ], [ %FPU_LASTDATA_OFF_val.0.i.be, %block_0xdd.i.backedge ]
  %FPU_LASTDATA_SEG_val.0.i = phi i16 [ %47, %block_0xdd.i.preheader ], [ %FPU_LASTDATA_SEG_val.0.i.be, %block_0xdd.i.backedge ]
  %FPU_LASTIP_OFF_val.0.i = phi i64 [ %46, %block_0xdd.i.preheader ], [ %FPU_LASTIP_OFF_val.0.i.be, %block_0xdd.i.backedge ]
  %FPU_LASTIP_SEG_val.0.i = phi i16 [ %45, %block_0xdd.i.preheader ], [ %FPU_LASTIP_SEG_val.0.i.be, %block_0xdd.i.backedge ]
  %FPU_TAG_val.sroa.0.0.i = phi i64 [ %44, %block_0xdd.i.preheader ], [ %FPU_TAG_val.sroa.0.0.i.be, %block_0xdd.i.backedge ]
  %FPU_IM_val.0.i = phi i1 [ %41, %block_0xdd.i.preheader ], [ %FPU_IM_val.0.i.be, %block_0xdd.i.backedge ]
  %FPU_DM_val.0.i = phi i1 [ %40, %block_0xdd.i.preheader ], [ %FPU_DM_val.0.i.be, %block_0xdd.i.backedge ]
  %FPU_ZM_val.0.i = phi i1 [ %39, %block_0xdd.i.preheader ], [ %FPU_ZM_val.0.i.be, %block_0xdd.i.backedge ]
  %FPU_OM_val.0.i = phi i1 [ %38, %block_0xdd.i.preheader ], [ %FPU_OM_val.0.i.be, %block_0xdd.i.backedge ]
  %FPU_UM_val.0.i = phi i1 [ %37, %block_0xdd.i.preheader ], [ %FPU_UM_val.0.i.be, %block_0xdd.i.backedge ]
  %FPU_PM_val.0.i = phi i1 [ %36, %block_0xdd.i.preheader ], [ %FPU_PM_val.0.i.be, %block_0xdd.i.backedge ]
  %FPU_PC_val.0.i = phi i2 [ %35, %block_0xdd.i.preheader ], [ %FPU_PC_val.0.i.be, %block_0xdd.i.backedge ]
  %FPU_RC_val.0.i = phi i2 [ %34, %block_0xdd.i.preheader ], [ %FPU_RC_val.0.i.be, %block_0xdd.i.backedge ]
  %FPU_X_val.0.i = phi i1 [ %33, %block_0xdd.i.preheader ], [ %FPU_X_val.0.i.be, %block_0xdd.i.backedge ]
  %FPU_IE_val.0.i = phi i1 [ %32, %block_0xdd.i.preheader ], [ %FPU_IE_val.0.i.be, %block_0xdd.i.backedge ]
  %FPU_DE_val.0.i = phi i1 [ %31, %block_0xdd.i.preheader ], [ %FPU_DE_val.0.i.be, %block_0xdd.i.backedge ]
  %FPU_ZE_val.0.i = phi i1 [ %30, %block_0xdd.i.preheader ], [ %FPU_ZE_val.0.i.be, %block_0xdd.i.backedge ]
  %FPU_OE_val.0.i = phi i1 [ %29, %block_0xdd.i.preheader ], [ %FPU_OE_val.0.i.be, %block_0xdd.i.backedge ]
  %FPU_UE_val.0.i = phi i1 [ %28, %block_0xdd.i.preheader ], [ %FPU_UE_val.0.i.be, %block_0xdd.i.backedge ]
  %FPU_PE_val.0.i = phi i1 [ %27, %block_0xdd.i.preheader ], [ %FPU_PE_val.0.i.be, %block_0xdd.i.backedge ]
  %FPU_SF_val.0.i = phi i1 [ %26, %block_0xdd.i.preheader ], [ %FPU_SF_val.0.i.be, %block_0xdd.i.backedge ]
  %FPU_ES_val.0.i = phi i1 [ %25, %block_0xdd.i.preheader ], [ %FPU_ES_val.0.i.be, %block_0xdd.i.backedge ]
  %FPU_C0_val.0.i = phi i1 [ %24, %block_0xdd.i.preheader ], [ %FPU_C0_val.0.i.be, %block_0xdd.i.backedge ]
  %FPU_C1_val.0.i = phi i1 [ %23, %block_0xdd.i.preheader ], [ %FPU_C1_val.0.i.be, %block_0xdd.i.backedge ]
  %FPU_C2_val.0.i = phi i1 [ %22, %block_0xdd.i.preheader ], [ %FPU_C2_val.0.i.be, %block_0xdd.i.backedge ]
  %FPU_TOP_val.0.i = phi i3 [ %21, %block_0xdd.i.preheader ], [ %FPU_TOP_val.0.i.be, %block_0xdd.i.backedge ]
  %FPU_C3_val.0.i = phi i1 [ %20, %block_0xdd.i.preheader ], [ %FPU_C3_val.0.i.be, %block_0xdd.i.backedge ]
  %FPU_B_val.0.i = phi i1 [ %19, %block_0xdd.i.preheader ], [ %FPU_B_val.0.i.be, %block_0xdd.i.backedge ]
  %DF_val.0.i = phi i1 [ %16, %block_0xdd.i.preheader ], [ %DF_val.0.i.be, %block_0xdd.i.backedge ]
  %RIP_val.0.i = phi i64 [ %15, %block_0xdd.i.preheader ], [ %RIP_val.0.i.be, %block_0xdd.i.backedge ]
  %R14_val.0.i = phi i64 [ %13, %block_0xdd.i.preheader ], [ %R14_val.0.i.be, %block_0xdd.i.backedge ]
  %R13_val.0.i = phi i64 [ %12, %block_0xdd.i.preheader ], [ %R13_val.0.i.be, %block_0xdd.i.backedge ]
  %R12_val.0.i = phi i64 [ %11, %block_0xdd.i.preheader ], [ %R12_val.0.i.be, %block_0xdd.i.backedge ]
  %R11_val.0.i = phi i64 [ %10, %block_0xdd.i.preheader ], [ %R11_val.0.i.be, %block_0xdd.i.backedge ]
  %R10_val.0.i = phi i64 [ %9, %block_0xdd.i.preheader ], [ %R10_val.0.i.be, %block_0xdd.i.backedge ]
  %R9_val.0.i = phi i64 [ %8, %block_0xdd.i.preheader ], [ %R9_val.0.i.be, %block_0xdd.i.backedge ]
  %R8_val.0.i = phi i64 [ %7, %block_0xdd.i.preheader ], [ %R8_val.0.i.be, %block_0xdd.i.backedge ]
  %RSP_val.0.i = phi i64 [ %69, %block_0xdd.i.preheader ], [ %RSP_val.0.i.be, %block_0xdd.i.backedge ]
  %RBP_val.0.i = phi i64 [ %67, %block_0xdd.i.preheader ], [ %RBP_val.0.i.be, %block_0xdd.i.backedge ]
  %RDI_val.0.i = phi i64 [ 0, %block_0xdd.i.preheader ], [ 1, %block_0xdd.i.backedge ]
  %RSI_val.0.i = phi i64 [ %84, %block_0xdd.i.preheader ], [ %RSI_val.0.i.be, %block_0xdd.i.backedge ]
  %RBX_val.0.i = phi i64 [ %2, %block_0xdd.i.preheader ], [ %RBX_val.0.i.be, %block_0xdd.i.backedge ]
  %100 = add i64 %RBP_val.0.i, -4, !mcsema_real_eip !33
  %101 = inttoptr i64 %100 to i32*
  %102 = load i32* %101, align 4, !mcsema_real_eip !33
  %103 = add i64 %RBP_val.0.i, -16, !mcsema_real_eip !34
  %104 = inttoptr i64 %103 to i32*
  store i32 %102, i32* %104, align 4, !mcsema_real_eip !34
  %105 = add i64 %RBP_val.0.i, -8, !mcsema_real_eip !35
  %106 = inttoptr i64 %105 to i32*
  %107 = load i32* %106, align 4, !mcsema_real_eip !35
  %108 = add i64 %RBP_val.0.i, -20, !mcsema_real_eip !36
  %109 = inttoptr i64 %108 to i32*
  store i32 %107, i32* %109, align 4, !mcsema_real_eip !36
  %110 = add i64 %RBP_val.0.i, -12, !mcsema_real_eip !37
  %111 = inttoptr i64 %110 to i32*
  %112 = load i32* %111, align 4, !mcsema_real_eip !37
  %113 = sext i32 %112 to i64, !mcsema_real_eip !38
  %114 = add i64 %RBP_val.0.i, -48, !mcsema_real_eip !39
  %115 = add i64 %113, %114, !mcsema_real_eip !39
  %116 = inttoptr i64 %115 to i8*
  %117 = load i8* %116, align 1, !mcsema_real_eip !39
  %118 = icmp eq i8 %117, 100
  br i1 %118, label %block_0x123.i, label %block_0xfb.i, !mcsema_real_eip !40

block_0x123.i:                                    ; preds = %block_0xdd.i
  %119 = load i32* %101, align 4, !mcsema_real_eip !41
  %120 = add i32 %119, 1
  store i32 %120, i32* %101, align 4, !mcsema_real_eip !41
  br label %block_0x147.i, !mcsema_real_eip !42

block_0xfb.i:                                     ; preds = %block_0xdd.i
  %121 = sext i8 %117 to i32, !mcsema_real_eip !43
  %122 = add nsw i32 %121, -100
  %123 = icmp eq i32 %122, 0, !mcsema_real_eip !44
  %124 = icmp slt i32 %122, 0
  %125 = sub i32 99, %121
  %126 = and i32 %125, %121
  %127 = icmp slt i32 %126, 0
  %tmp.i = xor i1 %124, %127
  %.demorgan.i = or i1 %123, %tmp.i
  br i1 %.demorgan.i, label %block_0x100.i, label %block_0x107.i, !mcsema_real_eip !45

block_0x107.i:                                    ; preds = %block_0xfb.i
  switch i8 %117, label %block_0x129.i [
    i8 115, label %block_0x117.i
    i8 119, label %block_0x111.i
  ]

block_0x100.i:                                    ; preds = %block_0xfb.i
  %128 = icmp eq i8 %117, 97
  br i1 %128, label %block_0x11d.i, label %block_0x129.i, !mcsema_real_eip !46

block_0x147.i:                                    ; preds = %block_0x111.i, %block_0x117.i, %block_0x11d.i, %block_0x123.i
  %129 = load i32* %101, align 4, !mcsema_real_eip !47
  %130 = sext i32 %129 to i64, !mcsema_real_eip !48
  %131 = load i32* %106, align 4, !mcsema_real_eip !49
  %132 = sext i32 %131 to i64, !mcsema_real_eip !50
  %133 = mul i64 %132, 11
  %134 = add i64 %130, ptrtoint (%0* @data_0x28d to i64)
  %135 = add i64 %134, %133
  %136 = inttoptr i64 %135 to i8*
  %137 = load i8* %136, align 1, !mcsema_real_eip !51
  %138 = icmp eq i8 %137, 35
  br i1 %138, label %block_0x173.i, label %block_0x19d.i, !mcsema_real_eip !52

block_0x11d.i:                                    ; preds = %block_0x100.i
  %139 = load i32* %101, align 4, !mcsema_real_eip !53
  %140 = add i32 %139, -1
  store i32 %140, i32* %101, align 4, !mcsema_real_eip !53
  br label %block_0x147.i, !mcsema_real_eip !54

block_0x117.i:                                    ; preds = %block_0x107.i
  %141 = load i32* %106, align 4, !mcsema_real_eip !55
  %142 = add i32 %141, 1
  store i32 %142, i32* %106, align 4, !mcsema_real_eip !55
  br label %block_0x147.i, !mcsema_real_eip !56

block_0x19d.i:                                    ; preds = %block_0x129.i, %block_0x147.i
  %143 = phi i32 [ %131, %block_0x147.i ], [ %171, %block_0x129.i ]
  %144 = phi i32 [ %129, %block_0x147.i ], [ %169, %block_0x129.i ]
  %RDI_val.1.i = phi i64 [ %RDI_val.0.i, %block_0x147.i ], [ 4294967295, %block_0x129.i ]
  %145 = sext i32 %144 to i64, !mcsema_real_eip !57
  %146 = sext i32 %143 to i64, !mcsema_real_eip !58
  %147 = mul i64 %146, 11
  %148 = add i64 %145, ptrtoint (%0* @data_0x28d to i64)
  %149 = add i64 %148, %147
  %150 = inttoptr i64 %149 to i8*
  %151 = load i8* %150, align 1, !mcsema_real_eip !59
  %152 = icmp eq i8 %151, 32
  br i1 %152, label %block_0x213.i, label %block_0x1c9.i, !mcsema_real_eip !60

block_0x173.i:                                    ; preds = %block_0x129.i, %block_0x147.i
  %153 = tail call x86_64_sysvcc i64 @puts(i64 zext (i32 add (i32 ptrtoint (%1* @data_0x2da to i32), i32 49) to i64)), !mcsema_real_eip !61
  %154 = tail call x86_64_sysvcc i64 @printf(i64 zext (i32 add (i32 ptrtoint (%1* @data_0x2da to i32), i32 58) to i64)), !mcsema_real_eip !62
  %155 = tail call x86_64_sysvcc i64 @exit(i64 1), !mcsema_real_eip !63
  %156 = load i32* %101, align 4, !mcsema_real_eip !64
  %157 = sext i32 %156 to i64, !mcsema_real_eip !57
  %158 = load i32* %106, align 4, !mcsema_real_eip !65
  %159 = sext i32 %158 to i64, !mcsema_real_eip !58
  %160 = mul i64 %159, 11
  %161 = add i64 %157, ptrtoint (%0* @data_0x28d to i64)
  %162 = add i64 %161, %160
  %163 = inttoptr i64 %162 to i8*
  %164 = load i8* %163, align 1, !mcsema_real_eip !59
  %165 = icmp eq i8 %164, 32
  br i1 %165, label %block_0x213.i, label %block_0x1c9.i, !mcsema_real_eip !60

block_0x129.i:                                    ; preds = %block_0x100.i, %block_0x107.i
  %166 = tail call x86_64_sysvcc i64 @puts(i64 zext (i32 ptrtoint (%1* @data_0x2da to i32) to i64)), !mcsema_real_eip !66
  %167 = tail call x86_64_sysvcc i64 @puts(i64 zext (i32 add (i32 ptrtoint (%1* @data_0x2da to i32), i32 39) to i64)), !mcsema_real_eip !67
  %168 = tail call x86_64_sysvcc i64 @exit(i64 4294967295), !mcsema_real_eip !68
  %169 = load i32* %101, align 4, !mcsema_real_eip !47
  %170 = sext i32 %169 to i64, !mcsema_real_eip !48
  %171 = load i32* %106, align 4, !mcsema_real_eip !49
  %172 = sext i32 %171 to i64, !mcsema_real_eip !50
  %173 = mul i64 %172, 11
  %174 = add i64 %170, ptrtoint (%0* @data_0x28d to i64)
  %175 = add i64 %174, %173
  %176 = inttoptr i64 %175 to i8*
  %177 = load i8* %176, align 1, !mcsema_real_eip !51
  %178 = icmp eq i8 %177, 35
  br i1 %178, label %block_0x173.i, label %block_0x19d.i, !mcsema_real_eip !52

block_0x111.i:                                    ; preds = %block_0x107.i
  %179 = load i32* %106, align 4, !mcsema_real_eip !69
  %180 = add i32 %179, -1
  store i32 %180, i32* %106, align 4, !mcsema_real_eip !69
  br label %block_0x147.i, !mcsema_real_eip !70

block_0x213.i:                                    ; preds = %block_0x201.i, %block_0x173.i, %block_0x19d.i
  %181 = phi i32 [ %158, %block_0x173.i ], [ 2, %block_0x201.i ], [ %143, %block_0x19d.i ]
  %182 = phi i32 [ %156, %block_0x173.i ], [ %185, %block_0x201.i ], [ %144, %block_0x19d.i ]
  %RDI_val.2.i = phi i64 [ 1, %block_0x173.i ], [ %RDI_val.3.i, %block_0x201.i ], [ %RDI_val.1.i, %block_0x19d.i ]
  %RSI_val.2.i = phi i64 [ %114, %block_0x173.i ], [ %RSI_val.3.i, %block_0x201.i ], [ %RSI_val.0.i, %block_0x19d.i ]
  %183 = load i32* %104, align 4, !mcsema_real_eip !71
  %184 = icmp eq i32 %183, %182
  br i1 %184, label %block_0x21b.i, label %block_0x237.i, !mcsema_real_eip !72

block_0x1c9.i:                                    ; preds = %block_0x173.i, %block_0x19d.i
  %185 = phi i32 [ %156, %block_0x173.i ], [ %144, %block_0x19d.i ]
  %186 = phi i32 [ %158, %block_0x173.i ], [ %143, %block_0x19d.i ]
  %RDI_val.3.i = phi i64 [ 1, %block_0x173.i ], [ %RDI_val.1.i, %block_0x19d.i ]
  %RSI_val.3.i = phi i64 [ %114, %block_0x173.i ], [ %RSI_val.0.i, %block_0x19d.i ]
  %187 = icmp eq i32 %186, 2
  br i1 %187, label %block_0x1cf.i, label %block_0x207.i, !mcsema_real_eip !73

block_0x207.i:                                    ; preds = %block_0x201.i, %block_0x1cf.i, %block_0x1c9.i
  %188 = load i32* %104, align 4, !mcsema_real_eip !74
  store i32 %188, i32* %101, align 4, !mcsema_real_eip !75
  %189 = load i32* %109, align 4, !mcsema_real_eip !76
  store i32 %189, i32* %106, align 4, !mcsema_real_eip !77
  %190 = load i32* %104, align 4, !mcsema_real_eip !71
  %191 = load i32* %101, align 4, !mcsema_real_eip !78
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %block_0x21b.i, label %block_0x237.i, !mcsema_real_eip !72

block_0x1cf.i:                                    ; preds = %block_0x1c9.i
  %193 = sext i32 %185 to i64, !mcsema_real_eip !79
  %194 = add i64 %193, add (i64 ptrtoint (%0* @data_0x28d to i64), i64 22)
  %195 = inttoptr i64 %194 to i8*
  %196 = load i8* %195, align 1, !mcsema_real_eip !80
  %197 = icmp ne i8 %196, 124
  %198 = icmp slt i32 %185, 1
  %or.cond.i = or i1 %197, %198
  br i1 %or.cond.i, label %block_0x207.i, label %block_0x201.i, !mcsema_real_eip !81

block_0x237.i:                                    ; preds = %block_0x21b.i, %block_0x207.i, %block_0x213.i
  %199 = phi i32 [ %301, %block_0x21b.i ], [ %181, %block_0x213.i ], [ %189, %block_0x207.i ]
  %200 = phi i32 [ %300, %block_0x21b.i ], [ %182, %block_0x213.i ], [ %191, %block_0x207.i ]
  %RDI_val.4.i = phi i64 [ %RDI_val.5.i, %block_0x21b.i ], [ %RDI_val.2.i, %block_0x213.i ], [ %RDI_val.3.i, %block_0x207.i ]
  %RSI_val.4.i = phi i64 [ %RSI_val.5.i, %block_0x21b.i ], [ %RSI_val.2.i, %block_0x213.i ], [ %RSI_val.3.i, %block_0x207.i ]
  %201 = sext i32 %200 to i64, !mcsema_real_eip !82
  %202 = sext i32 %199 to i64, !mcsema_real_eip !83
  %203 = mul i64 %202, 11
  %204 = add i64 %203, %201
  %uadd384.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %204, i64 ptrtoint (%0* @data_0x28d to i64))
  %205 = extractvalue { i64, i1 } %uadd384.i, 0
  %206 = xor i64 %205, ptrtoint (%0* @data_0x28d to i64), !mcsema_real_eip !84
  %207 = xor i64 %205, %204, !mcsema_real_eip !84
  %208 = and i64 %207, 16, !mcsema_real_eip !84
  %209 = icmp ne i64 %208, 0, !mcsema_real_eip !84
  %210 = icmp slt i64 %205, 0
  %211 = icmp eq i64 %205, 0, !mcsema_real_eip !84
  %212 = xor i64 %204, xor (i64 ptrtoint (%0* @data_0x28d to i64), i64 -1), !mcsema_real_eip !84
  %213 = and i64 %206, %212, !mcsema_real_eip !84
  %214 = icmp slt i64 %213, 0
  %215 = trunc i64 %205 to i8, !mcsema_real_eip !84
  %216 = tail call i8 @llvm.ctpop.i8(i8 %215), !mcsema_real_eip !84
  %217 = and i8 %216, 1
  %218 = icmp eq i8 %217, 0
  %219 = extractvalue { i64, i1 } %uadd384.i, 1
  %220 = inttoptr i64 %205 to i8*
  store i8 88, i8* %220, align 1, !mcsema_real_eip !85
  %221 = add i64 %RSP_val.0.i, -8
  %222 = inttoptr i64 %221 to i64*, !mcsema_real_eip !86
  store i64 -4981261766360305936, i64* %222, align 8, !mcsema_real_eip !86
  store i64 0, i64* %RAX.i, align 8, !mcsema_real_eip !86
  store i64 %RBX_val.0.i, i64* %RBX.i, align 8, !mcsema_real_eip !86
  store i64 %201, i64* %RCX.i, align 8, !mcsema_real_eip !86
  store i64 %202, i64* %RDX.i, align 8, !mcsema_real_eip !86
  store i64 %RSI_val.4.i, i64* %RSI.i, align 8, !mcsema_real_eip !86
  store i64 %RDI_val.4.i, i64* %RDI.i, align 8, !mcsema_real_eip !86
  store i64 %221, i64* %RSP.i, align 8, !mcsema_real_eip !86
  store i64 %RBP_val.0.i, i64* %RBP.i, align 8, !mcsema_real_eip !86
  store i64 %R8_val.0.i, i64* %R8.i, align 8, !mcsema_real_eip !86
  store i64 %R9_val.0.i, i64* %R9.i, align 8, !mcsema_real_eip !86
  store i64 %R10_val.0.i, i64* %R10.i, align 8, !mcsema_real_eip !86
  store i64 %R11_val.0.i, i64* %R11.i, align 8, !mcsema_real_eip !86
  store i64 %R12_val.0.i, i64* %R12.i, align 8, !mcsema_real_eip !86
  store i64 %R13_val.0.i, i64* %R13.i, align 8, !mcsema_real_eip !86
  store i64 %R14_val.0.i, i64* %R14.i, align 8, !mcsema_real_eip !86
  store i64 %R15_val.0.i, i64* %R15.i, align 8, !mcsema_real_eip !86
  store i64 %RIP_val.0.i, i64* %RIP.i, align 8, !mcsema_real_eip !86
  store i1 %219, i1* %CF.i, align 1, !mcsema_real_eip !86
  store i1 %218, i1* %PF.i, align 1, !mcsema_real_eip !86
  store i1 %209, i1* %AF.i, align 1, !mcsema_real_eip !86
  store i1 %211, i1* %ZF.i, align 1, !mcsema_real_eip !86
  store i1 %210, i1* %SF.i, align 1, !mcsema_real_eip !86
  store i1 %214, i1* %OF.i, align 1, !mcsema_real_eip !86
  store i1 %DF_val.0.i, i1* %DF.i, align 1, !mcsema_real_eip !86
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %1, i32 128, i32 8, i1 false), !mcsema_real_eip !86
  store i1 %FPU_B_val.0.i, i1* %FPU_B.i, align 1, !mcsema_real_eip !86
  store i1 %FPU_C3_val.0.i, i1* %FPU_C3.i, align 1, !mcsema_real_eip !86
  store i3 %FPU_TOP_val.0.i, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !86
  store i1 %FPU_C2_val.0.i, i1* %FPU_C2.i, align 1, !mcsema_real_eip !86
  store i1 %FPU_C1_val.0.i, i1* %FPU_C1.i, align 1, !mcsema_real_eip !86
  store i1 %FPU_C0_val.0.i, i1* %FPU_C0.i, align 1, !mcsema_real_eip !86
  store i1 %FPU_ES_val.0.i, i1* %FPU_ES.i, align 1, !mcsema_real_eip !86
  store i1 %FPU_SF_val.0.i, i1* %FPU_SF.i, align 1, !mcsema_real_eip !86
  store i1 %FPU_PE_val.0.i, i1* %FPU_PE.i, align 1, !mcsema_real_eip !86
  store i1 %FPU_UE_val.0.i, i1* %FPU_UE.i, align 1, !mcsema_real_eip !86
  store i1 %FPU_OE_val.0.i, i1* %FPU_OE.i, align 1, !mcsema_real_eip !86
  store i1 %FPU_ZE_val.0.i, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !86
  store i1 %FPU_DE_val.0.i, i1* %FPU_DE.i, align 1, !mcsema_real_eip !86
  store i1 %FPU_IE_val.0.i, i1* %FPU_IE.i, align 1, !mcsema_real_eip !86
  store i1 %FPU_X_val.0.i, i1* %FPU_X.i, align 1, !mcsema_real_eip !86
  store i2 %FPU_RC_val.0.i, i2* %FPU_RC.i, align 1, !mcsema_real_eip !86
  store i2 %FPU_PC_val.0.i, i2* %FPU_PC.i, align 1, !mcsema_real_eip !86
  store i1 %FPU_PM_val.0.i, i1* %FPU_PM.i, align 1, !mcsema_real_eip !86
  store i1 %FPU_UM_val.0.i, i1* %FPU_UM.i, align 1, !mcsema_real_eip !86
  store i1 %FPU_OM_val.0.i, i1* %FPU_OM.i, align 1, !mcsema_real_eip !86
  store i1 %FPU_ZM_val.0.i, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !86
  store i1 %FPU_DM_val.0.i, i1* %FPU_DM.i, align 1, !mcsema_real_eip !86
  store i1 %FPU_IM_val.0.i, i1* %FPU_IM.i, align 1, !mcsema_real_eip !86
  store i64 %FPU_TAG_val.sroa.0.0.i, i64* %43, align 4
  store i16 %FPU_LASTIP_SEG_val.0.i, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !86
  store i64 %FPU_LASTIP_OFF_val.0.i, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !86
  store i16 %FPU_LASTDATA_SEG_val.0.i, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !86
  store i64 %FPU_LASTDATA_OFF_val.0.i, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !86
  store i128 %XMM0_val.0.i, i128* %XMM0.i, align 1, !mcsema_real_eip !86
  store i128 %XMM1_val.0.i, i128* %XMM1.i, align 1, !mcsema_real_eip !86
  store i128 %XMM2_val.0.i, i128* %XMM2.i, align 1, !mcsema_real_eip !86
  store i128 %XMM3_val.0.i, i128* %XMM3.i, align 1, !mcsema_real_eip !86
  store i128 %XMM4_val.0.i, i128* %XMM4.i, align 1, !mcsema_real_eip !86
  store i128 %XMM5_val.0.i, i128* %XMM5.i, align 1, !mcsema_real_eip !86
  store i128 %XMM6_val.0.i, i128* %XMM6.i, align 1, !mcsema_real_eip !86
  store i128 %XMM7_val.0.i, i128* %XMM7.i, align 1, !mcsema_real_eip !86
  store i128 %XMM8_val.0.i, i128* %XMM8.i, align 1, !mcsema_real_eip !86
  store i128 %XMM9_val.0.i, i128* %XMM9.i, align 1, !mcsema_real_eip !86
  store i128 %XMM10_val.0.i, i128* %XMM10.i, align 1, !mcsema_real_eip !86
  store i128 %XMM11_val.0.i, i128* %XMM11.i, align 1, !mcsema_real_eip !86
  store i128 %XMM12_val.0.i, i128* %XMM12.i, align 1, !mcsema_real_eip !86
  store i128 %XMM13_val.0.i, i128* %XMM13.i, align 1, !mcsema_real_eip !86
  store i128 %XMM14_val.0.i, i128* %XMM14.i, align 1, !mcsema_real_eip !86
  store i128 %XMM15_val.0.i, i128* %XMM15.i, align 1, !mcsema_real_eip !86
  store i64 %STACK_BASE_val.0.i, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !86
  store i64 %STACK_LIMIT_val.0.i, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !86
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0), !mcsema_real_eip !86
  %223 = load i64* %RBX.i, align 8, !mcsema_real_eip !86
  %224 = load <2 x i64>* %99, align 8
  %225 = load i64* %RSI.i, align 8, !mcsema_real_eip !86
  %226 = load i64* %RSP.i, align 8, !mcsema_real_eip !86
  %227 = load i64* %RBP.i, align 8, !mcsema_real_eip !86
  %228 = load i64* %R8.i, align 8, !mcsema_real_eip !86
  %229 = load i64* %R9.i, align 8, !mcsema_real_eip !86
  %230 = load i64* %R10.i, align 8, !mcsema_real_eip !86
  %231 = load i64* %R11.i, align 8, !mcsema_real_eip !86
  %232 = load i64* %R12.i, align 8, !mcsema_real_eip !86
  %233 = load i64* %R13.i, align 8, !mcsema_real_eip !86
  %234 = load i64* %R14.i, align 8, !mcsema_real_eip !86
  %235 = load i64* %R15.i, align 8, !mcsema_real_eip !86
  %236 = load i64* %RIP.i, align 8, !mcsema_real_eip !86
  %237 = load i1* %DF.i, align 1, !mcsema_real_eip !86
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %1, i8* %18, i32 128, i32 4, i1 false), !mcsema_real_eip !86
  %238 = load i1* %FPU_B.i, align 1, !mcsema_real_eip !86
  %239 = load i1* %FPU_C3.i, align 1, !mcsema_real_eip !86
  %240 = load i3* %FPU_TOP.i, align 1, !mcsema_real_eip !86
  %241 = load i1* %FPU_C2.i, align 1, !mcsema_real_eip !86
  %242 = load i1* %FPU_C1.i, align 1, !mcsema_real_eip !86
  %243 = load i1* %FPU_C0.i, align 1, !mcsema_real_eip !86
  %244 = load i1* %FPU_ES.i, align 1, !mcsema_real_eip !86
  %245 = load i1* %FPU_SF.i, align 1, !mcsema_real_eip !86
  %246 = load i1* %FPU_PE.i, align 1, !mcsema_real_eip !86
  %247 = load i1* %FPU_UE.i, align 1, !mcsema_real_eip !86
  %248 = load i1* %FPU_OE.i, align 1, !mcsema_real_eip !86
  %249 = load i1* %FPU_ZE.i, align 1, !mcsema_real_eip !86
  %250 = load i1* %FPU_DE.i, align 1, !mcsema_real_eip !86
  %251 = load i1* %FPU_IE.i, align 1, !mcsema_real_eip !86
  %252 = load i1* %FPU_X.i, align 1, !mcsema_real_eip !86
  %253 = load i2* %FPU_RC.i, align 1, !mcsema_real_eip !86
  %254 = load i2* %FPU_PC.i, align 1, !mcsema_real_eip !86
  %255 = load i1* %FPU_PM.i, align 1, !mcsema_real_eip !86
  %256 = load i1* %FPU_UM.i, align 1, !mcsema_real_eip !86
  %257 = load i1* %FPU_OM.i, align 1, !mcsema_real_eip !86
  %258 = load i1* %FPU_ZM.i, align 1, !mcsema_real_eip !86
  %259 = load i1* %FPU_DM.i, align 1, !mcsema_real_eip !86
  %260 = load i1* %FPU_IM.i, align 1, !mcsema_real_eip !86
  %261 = load i64* %43, align 4
  %262 = load i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !86
  %263 = load i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !86
  %264 = load i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !86
  %265 = load i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !86
  %266 = load i128* %XMM0.i, align 1, !mcsema_real_eip !86
  %267 = load i128* %XMM1.i, align 1, !mcsema_real_eip !86
  %268 = load i128* %XMM2.i, align 1, !mcsema_real_eip !86
  %269 = load i128* %XMM3.i, align 1, !mcsema_real_eip !86
  %270 = load i128* %XMM4.i, align 1, !mcsema_real_eip !86
  %271 = load i128* %XMM5.i, align 1, !mcsema_real_eip !86
  %272 = load i128* %XMM6.i, align 1, !mcsema_real_eip !86
  %273 = load i128* %XMM7.i, align 1, !mcsema_real_eip !86
  %274 = load i128* %XMM8.i, align 1, !mcsema_real_eip !86
  %275 = load i128* %XMM9.i, align 1, !mcsema_real_eip !86
  %276 = load i128* %XMM10.i, align 1, !mcsema_real_eip !86
  %277 = load i128* %XMM11.i, align 1, !mcsema_real_eip !86
  %278 = load i128* %XMM12.i, align 1, !mcsema_real_eip !86
  %279 = load i128* %XMM13.i, align 1, !mcsema_real_eip !86
  %280 = load i128* %XMM14.i, align 1, !mcsema_real_eip !86
  %281 = load i128* %XMM15.i, align 1, !mcsema_real_eip !86
  %282 = load i64* %STACK_BASE.i, align 8, !mcsema_real_eip !86
  %283 = load i64* %STACK_LIMIT.i, align 8, !mcsema_real_eip !86
  %284 = add i64 %227, -12, !mcsema_real_eip !87
  %285 = inttoptr i64 %284 to i32*
  %286 = load i32* %285, align 4, !mcsema_real_eip !87
  %287 = add i32 %286, 1
  store i32 %287, i32* %285, align 4, !mcsema_real_eip !87
  %288 = tail call x86_64_sysvcc i64 @sleep(i64 1), !mcsema_real_eip !88
  %289 = load i32* %285, align 4, !mcsema_real_eip !31
  %290 = add i32 %289, -27
  %291 = xor i32 %290, %289, !mcsema_real_eip !31
  %292 = trunc i32 %290 to i8, !mcsema_real_eip !31
  %293 = tail call i8 @llvm.ctpop.i8(i8 %292), !mcsema_real_eip !31
  %294 = icmp eq i32 %290, 0, !mcsema_real_eip !31
  %295 = icmp slt i32 %290, 0
  %296 = and i32 %291, %289, !mcsema_real_eip !31
  %297 = icmp slt i32 %296, 0
  %298 = xor i1 %295, %297
  %299 = or i1 %294, %298, !mcsema_real_eip !32
  br i1 %299, label %block_0xdd.i.backedge, label %sub_76.exit.loopexit, !mcsema_real_eip !32

block_0xdd.i.backedge:                            ; preds = %block_0x223.i, %block_0x237.i
  %R15_val.0.i.be = phi i64 [ %342, %block_0x223.i ], [ %235, %block_0x237.i ]
  %STACK_LIMIT_val.0.i.be = phi i64 [ %390, %block_0x223.i ], [ %283, %block_0x237.i ]
  %STACK_BASE_val.0.i.be = phi i64 [ %389, %block_0x223.i ], [ %282, %block_0x237.i ]
  %XMM15_val.0.i.be = phi i128 [ %388, %block_0x223.i ], [ %281, %block_0x237.i ]
  %XMM14_val.0.i.be = phi i128 [ %387, %block_0x223.i ], [ %280, %block_0x237.i ]
  %XMM13_val.0.i.be = phi i128 [ %386, %block_0x223.i ], [ %279, %block_0x237.i ]
  %XMM12_val.0.i.be = phi i128 [ %385, %block_0x223.i ], [ %278, %block_0x237.i ]
  %XMM11_val.0.i.be = phi i128 [ %384, %block_0x223.i ], [ %277, %block_0x237.i ]
  %XMM10_val.0.i.be = phi i128 [ %383, %block_0x223.i ], [ %276, %block_0x237.i ]
  %XMM9_val.0.i.be = phi i128 [ %382, %block_0x223.i ], [ %275, %block_0x237.i ]
  %XMM8_val.0.i.be = phi i128 [ %381, %block_0x223.i ], [ %274, %block_0x237.i ]
  %XMM7_val.0.i.be = phi i128 [ %380, %block_0x223.i ], [ %273, %block_0x237.i ]
  %XMM6_val.0.i.be = phi i128 [ %379, %block_0x223.i ], [ %272, %block_0x237.i ]
  %XMM5_val.0.i.be = phi i128 [ %378, %block_0x223.i ], [ %271, %block_0x237.i ]
  %XMM4_val.0.i.be = phi i128 [ %377, %block_0x223.i ], [ %270, %block_0x237.i ]
  %XMM3_val.0.i.be = phi i128 [ %376, %block_0x223.i ], [ %269, %block_0x237.i ]
  %XMM2_val.0.i.be = phi i128 [ %375, %block_0x223.i ], [ %268, %block_0x237.i ]
  %XMM1_val.0.i.be = phi i128 [ %374, %block_0x223.i ], [ %267, %block_0x237.i ]
  %XMM0_val.0.i.be = phi i128 [ %373, %block_0x223.i ], [ %266, %block_0x237.i ]
  %FPU_LASTDATA_OFF_val.0.i.be = phi i64 [ %372, %block_0x223.i ], [ %265, %block_0x237.i ]
  %FPU_LASTDATA_SEG_val.0.i.be = phi i16 [ %371, %block_0x223.i ], [ %264, %block_0x237.i ]
  %FPU_LASTIP_OFF_val.0.i.be = phi i64 [ %370, %block_0x223.i ], [ %263, %block_0x237.i ]
  %FPU_LASTIP_SEG_val.0.i.be = phi i16 [ %369, %block_0x223.i ], [ %262, %block_0x237.i ]
  %FPU_TAG_val.sroa.0.0.i.be = phi i64 [ %368, %block_0x223.i ], [ %261, %block_0x237.i ]
  %FPU_IM_val.0.i.be = phi i1 [ %367, %block_0x223.i ], [ %260, %block_0x237.i ]
  %FPU_DM_val.0.i.be = phi i1 [ %366, %block_0x223.i ], [ %259, %block_0x237.i ]
  %FPU_ZM_val.0.i.be = phi i1 [ %365, %block_0x223.i ], [ %258, %block_0x237.i ]
  %FPU_OM_val.0.i.be = phi i1 [ %364, %block_0x223.i ], [ %257, %block_0x237.i ]
  %FPU_UM_val.0.i.be = phi i1 [ %363, %block_0x223.i ], [ %256, %block_0x237.i ]
  %FPU_PM_val.0.i.be = phi i1 [ %362, %block_0x223.i ], [ %255, %block_0x237.i ]
  %FPU_PC_val.0.i.be = phi i2 [ %361, %block_0x223.i ], [ %254, %block_0x237.i ]
  %FPU_RC_val.0.i.be = phi i2 [ %360, %block_0x223.i ], [ %253, %block_0x237.i ]
  %FPU_X_val.0.i.be = phi i1 [ %359, %block_0x223.i ], [ %252, %block_0x237.i ]
  %FPU_IE_val.0.i.be = phi i1 [ %358, %block_0x223.i ], [ %251, %block_0x237.i ]
  %FPU_DE_val.0.i.be = phi i1 [ %357, %block_0x223.i ], [ %250, %block_0x237.i ]
  %FPU_ZE_val.0.i.be = phi i1 [ %356, %block_0x223.i ], [ %249, %block_0x237.i ]
  %FPU_OE_val.0.i.be = phi i1 [ %355, %block_0x223.i ], [ %248, %block_0x237.i ]
  %FPU_UE_val.0.i.be = phi i1 [ %354, %block_0x223.i ], [ %247, %block_0x237.i ]
  %FPU_PE_val.0.i.be = phi i1 [ %353, %block_0x223.i ], [ %246, %block_0x237.i ]
  %FPU_SF_val.0.i.be = phi i1 [ %352, %block_0x223.i ], [ %245, %block_0x237.i ]
  %FPU_ES_val.0.i.be = phi i1 [ %351, %block_0x223.i ], [ %244, %block_0x237.i ]
  %FPU_C0_val.0.i.be = phi i1 [ %350, %block_0x223.i ], [ %243, %block_0x237.i ]
  %FPU_C1_val.0.i.be = phi i1 [ %349, %block_0x223.i ], [ %242, %block_0x237.i ]
  %FPU_C2_val.0.i.be = phi i1 [ %348, %block_0x223.i ], [ %241, %block_0x237.i ]
  %FPU_TOP_val.0.i.be = phi i3 [ %347, %block_0x223.i ], [ %240, %block_0x237.i ]
  %FPU_C3_val.0.i.be = phi i1 [ %346, %block_0x223.i ], [ %239, %block_0x237.i ]
  %FPU_B_val.0.i.be = phi i1 [ %345, %block_0x223.i ], [ %238, %block_0x237.i ]
  %DF_val.0.i.be = phi i1 [ %344, %block_0x223.i ], [ %237, %block_0x237.i ]
  %RIP_val.0.i.be = phi i64 [ %343, %block_0x223.i ], [ %236, %block_0x237.i ]
  %R14_val.0.i.be = phi i64 [ %341, %block_0x223.i ], [ %234, %block_0x237.i ]
  %R13_val.0.i.be = phi i64 [ %340, %block_0x223.i ], [ %233, %block_0x237.i ]
  %R12_val.0.i.be = phi i64 [ %339, %block_0x223.i ], [ %232, %block_0x237.i ]
  %R11_val.0.i.be = phi i64 [ %338, %block_0x223.i ], [ %231, %block_0x237.i ]
  %R10_val.0.i.be = phi i64 [ %337, %block_0x223.i ], [ %230, %block_0x237.i ]
  %R9_val.0.i.be = phi i64 [ %336, %block_0x223.i ], [ %229, %block_0x237.i ]
  %R8_val.0.i.be = phi i64 [ %335, %block_0x223.i ], [ %228, %block_0x237.i ]
  %RSP_val.0.i.be = phi i64 [ %333, %block_0x223.i ], [ %226, %block_0x237.i ]
  %RBP_val.0.i.be = phi i64 [ %334, %block_0x223.i ], [ %227, %block_0x237.i ]
  %RSI_val.0.i.be = phi i64 [ %332, %block_0x223.i ], [ %225, %block_0x237.i ]
  %RBX_val.0.i.be = phi i64 [ %330, %block_0x223.i ], [ %223, %block_0x237.i ]
  br label %block_0xdd.i

block_0x21b.i:                                    ; preds = %block_0x207.i, %block_0x213.i
  %300 = phi i32 [ %182, %block_0x213.i ], [ %190, %block_0x207.i ]
  %301 = phi i32 [ %181, %block_0x213.i ], [ %189, %block_0x207.i ]
  %RDI_val.5.i = phi i64 [ %RDI_val.2.i, %block_0x213.i ], [ %RDI_val.3.i, %block_0x207.i ]
  %RSI_val.5.i = phi i64 [ %RSI_val.2.i, %block_0x213.i ], [ %RSI_val.3.i, %block_0x207.i ]
  %302 = load i32* %109, align 4, !mcsema_real_eip !89
  %303 = icmp eq i32 %302, %301
  br i1 %303, label %block_0x223.i, label %block_0x237.i, !mcsema_real_eip !90

block_0x223.i:                                    ; preds = %block_0x21b.i
  %304 = tail call x86_64_sysvcc i64 @puts(i64 zext (i32 add (i32 ptrtoint (%1* @data_0x2da to i32), i32 77) to i64)), !mcsema_real_eip !91
  %305 = tail call x86_64_sysvcc i64 @exit(i64 4294967294), !mcsema_real_eip !92
  %306 = load i32* %101, align 4, !mcsema_real_eip !93
  %307 = sext i32 %306 to i64, !mcsema_real_eip !82
  %308 = load i32* %106, align 4, !mcsema_real_eip !94
  %309 = sext i32 %308 to i64, !mcsema_real_eip !83
  %310 = mul i64 %309, 11
  %311 = add i64 %310, %307
  %uadd377.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %311, i64 ptrtoint (%0* @data_0x28d to i64))
  %312 = extractvalue { i64, i1 } %uadd377.i, 0
  %313 = xor i64 %312, ptrtoint (%0* @data_0x28d to i64), !mcsema_real_eip !84
  %314 = xor i64 %311, %312, !mcsema_real_eip !84
  %315 = and i64 %314, 16, !mcsema_real_eip !84
  %316 = icmp ne i64 %315, 0, !mcsema_real_eip !84
  %317 = icmp slt i64 %312, 0
  %318 = icmp eq i64 %312, 0, !mcsema_real_eip !84
  %319 = xor i64 %311, xor (i64 ptrtoint (%0* @data_0x28d to i64), i64 -1), !mcsema_real_eip !84
  %320 = and i64 %319, %313, !mcsema_real_eip !84
  %321 = icmp slt i64 %320, 0
  %322 = trunc i64 %312 to i8, !mcsema_real_eip !84
  %323 = tail call i8 @llvm.ctpop.i8(i8 %322), !mcsema_real_eip !84
  %324 = and i8 %323, 1
  %325 = icmp eq i8 %324, 0
  %326 = extractvalue { i64, i1 } %uadd377.i, 1
  %327 = inttoptr i64 %312 to i8*
  store i8 88, i8* %327, align 1, !mcsema_real_eip !85
  %328 = add i64 %RSP_val.0.i, -8
  %329 = inttoptr i64 %328 to i64*, !mcsema_real_eip !86
  store i64 -4981261766360305936, i64* %329, align 8, !mcsema_real_eip !86
  store i64 0, i64* %RAX.i, align 8, !mcsema_real_eip !86
  store i64 %RBX_val.0.i, i64* %RBX.i, align 8, !mcsema_real_eip !86
  store i64 %307, i64* %RCX.i, align 8, !mcsema_real_eip !86
  store i64 %309, i64* %RDX.i, align 8, !mcsema_real_eip !86
  store i64 %RSI_val.5.i, i64* %RSI.i, align 8, !mcsema_real_eip !86
  store i64 4294967294, i64* %RDI.i, align 8, !mcsema_real_eip !86
  store i64 %328, i64* %RSP.i, align 8, !mcsema_real_eip !86
  store i64 %RBP_val.0.i, i64* %RBP.i, align 8, !mcsema_real_eip !86
  store i64 %R8_val.0.i, i64* %R8.i, align 8, !mcsema_real_eip !86
  store i64 %R9_val.0.i, i64* %R9.i, align 8, !mcsema_real_eip !86
  store i64 %R10_val.0.i, i64* %R10.i, align 8, !mcsema_real_eip !86
  store i64 %R11_val.0.i, i64* %R11.i, align 8, !mcsema_real_eip !86
  store i64 %R12_val.0.i, i64* %R12.i, align 8, !mcsema_real_eip !86
  store i64 %R13_val.0.i, i64* %R13.i, align 8, !mcsema_real_eip !86
  store i64 %R14_val.0.i, i64* %R14.i, align 8, !mcsema_real_eip !86
  store i64 %R15_val.0.i, i64* %R15.i, align 8, !mcsema_real_eip !86
  store i64 %RIP_val.0.i, i64* %RIP.i, align 8, !mcsema_real_eip !86
  store i1 %326, i1* %CF.i, align 1, !mcsema_real_eip !86
  store i1 %325, i1* %PF.i, align 1, !mcsema_real_eip !86
  store i1 %316, i1* %AF.i, align 1, !mcsema_real_eip !86
  store i1 %318, i1* %ZF.i, align 1, !mcsema_real_eip !86
  store i1 %317, i1* %SF.i, align 1, !mcsema_real_eip !86
  store i1 %321, i1* %OF.i, align 1, !mcsema_real_eip !86
  store i1 %DF_val.0.i, i1* %DF.i, align 1, !mcsema_real_eip !86
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %1, i32 128, i32 8, i1 false), !mcsema_real_eip !86
  store i1 %FPU_B_val.0.i, i1* %FPU_B.i, align 1, !mcsema_real_eip !86
  store i1 %FPU_C3_val.0.i, i1* %FPU_C3.i, align 1, !mcsema_real_eip !86
  store i3 %FPU_TOP_val.0.i, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !86
  store i1 %FPU_C2_val.0.i, i1* %FPU_C2.i, align 1, !mcsema_real_eip !86
  store i1 %FPU_C1_val.0.i, i1* %FPU_C1.i, align 1, !mcsema_real_eip !86
  store i1 %FPU_C0_val.0.i, i1* %FPU_C0.i, align 1, !mcsema_real_eip !86
  store i1 %FPU_ES_val.0.i, i1* %FPU_ES.i, align 1, !mcsema_real_eip !86
  store i1 %FPU_SF_val.0.i, i1* %FPU_SF.i, align 1, !mcsema_real_eip !86
  store i1 %FPU_PE_val.0.i, i1* %FPU_PE.i, align 1, !mcsema_real_eip !86
  store i1 %FPU_UE_val.0.i, i1* %FPU_UE.i, align 1, !mcsema_real_eip !86
  store i1 %FPU_OE_val.0.i, i1* %FPU_OE.i, align 1, !mcsema_real_eip !86
  store i1 %FPU_ZE_val.0.i, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !86
  store i1 %FPU_DE_val.0.i, i1* %FPU_DE.i, align 1, !mcsema_real_eip !86
  store i1 %FPU_IE_val.0.i, i1* %FPU_IE.i, align 1, !mcsema_real_eip !86
  store i1 %FPU_X_val.0.i, i1* %FPU_X.i, align 1, !mcsema_real_eip !86
  store i2 %FPU_RC_val.0.i, i2* %FPU_RC.i, align 1, !mcsema_real_eip !86
  store i2 %FPU_PC_val.0.i, i2* %FPU_PC.i, align 1, !mcsema_real_eip !86
  store i1 %FPU_PM_val.0.i, i1* %FPU_PM.i, align 1, !mcsema_real_eip !86
  store i1 %FPU_UM_val.0.i, i1* %FPU_UM.i, align 1, !mcsema_real_eip !86
  store i1 %FPU_OM_val.0.i, i1* %FPU_OM.i, align 1, !mcsema_real_eip !86
  store i1 %FPU_ZM_val.0.i, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !86
  store i1 %FPU_DM_val.0.i, i1* %FPU_DM.i, align 1, !mcsema_real_eip !86
  store i1 %FPU_IM_val.0.i, i1* %FPU_IM.i, align 1, !mcsema_real_eip !86
  store i64 %FPU_TAG_val.sroa.0.0.i, i64* %43, align 4
  store i16 %FPU_LASTIP_SEG_val.0.i, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !86
  store i64 %FPU_LASTIP_OFF_val.0.i, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !86
  store i16 %FPU_LASTDATA_SEG_val.0.i, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !86
  store i64 %FPU_LASTDATA_OFF_val.0.i, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !86
  store i128 %XMM0_val.0.i, i128* %XMM0.i, align 1, !mcsema_real_eip !86
  store i128 %XMM1_val.0.i, i128* %XMM1.i, align 1, !mcsema_real_eip !86
  store i128 %XMM2_val.0.i, i128* %XMM2.i, align 1, !mcsema_real_eip !86
  store i128 %XMM3_val.0.i, i128* %XMM3.i, align 1, !mcsema_real_eip !86
  store i128 %XMM4_val.0.i, i128* %XMM4.i, align 1, !mcsema_real_eip !86
  store i128 %XMM5_val.0.i, i128* %XMM5.i, align 1, !mcsema_real_eip !86
  store i128 %XMM6_val.0.i, i128* %XMM6.i, align 1, !mcsema_real_eip !86
  store i128 %XMM7_val.0.i, i128* %XMM7.i, align 1, !mcsema_real_eip !86
  store i128 %XMM8_val.0.i, i128* %XMM8.i, align 1, !mcsema_real_eip !86
  store i128 %XMM9_val.0.i, i128* %XMM9.i, align 1, !mcsema_real_eip !86
  store i128 %XMM10_val.0.i, i128* %XMM10.i, align 1, !mcsema_real_eip !86
  store i128 %XMM11_val.0.i, i128* %XMM11.i, align 1, !mcsema_real_eip !86
  store i128 %XMM12_val.0.i, i128* %XMM12.i, align 1, !mcsema_real_eip !86
  store i128 %XMM13_val.0.i, i128* %XMM13.i, align 1, !mcsema_real_eip !86
  store i128 %XMM14_val.0.i, i128* %XMM14.i, align 1, !mcsema_real_eip !86
  store i128 %XMM15_val.0.i, i128* %XMM15.i, align 1, !mcsema_real_eip !86
  store i64 %STACK_BASE_val.0.i, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !86
  store i64 %STACK_LIMIT_val.0.i, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !86
  tail call x86_64_sysvcc void @sub_0(%struct.regs* %0), !mcsema_real_eip !86
  %330 = load i64* %RBX.i, align 8, !mcsema_real_eip !86
  %331 = load <2 x i64>* %99, align 8
  %332 = load i64* %RSI.i, align 8, !mcsema_real_eip !86
  %333 = load i64* %RSP.i, align 8, !mcsema_real_eip !86
  %334 = load i64* %RBP.i, align 8, !mcsema_real_eip !86
  %335 = load i64* %R8.i, align 8, !mcsema_real_eip !86
  %336 = load i64* %R9.i, align 8, !mcsema_real_eip !86
  %337 = load i64* %R10.i, align 8, !mcsema_real_eip !86
  %338 = load i64* %R11.i, align 8, !mcsema_real_eip !86
  %339 = load i64* %R12.i, align 8, !mcsema_real_eip !86
  %340 = load i64* %R13.i, align 8, !mcsema_real_eip !86
  %341 = load i64* %R14.i, align 8, !mcsema_real_eip !86
  %342 = load i64* %R15.i, align 8, !mcsema_real_eip !86
  %343 = load i64* %RIP.i, align 8, !mcsema_real_eip !86
  %344 = load i1* %DF.i, align 1, !mcsema_real_eip !86
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %1, i8* %18, i32 128, i32 4, i1 false), !mcsema_real_eip !86
  %345 = load i1* %FPU_B.i, align 1, !mcsema_real_eip !86
  %346 = load i1* %FPU_C3.i, align 1, !mcsema_real_eip !86
  %347 = load i3* %FPU_TOP.i, align 1, !mcsema_real_eip !86
  %348 = load i1* %FPU_C2.i, align 1, !mcsema_real_eip !86
  %349 = load i1* %FPU_C1.i, align 1, !mcsema_real_eip !86
  %350 = load i1* %FPU_C0.i, align 1, !mcsema_real_eip !86
  %351 = load i1* %FPU_ES.i, align 1, !mcsema_real_eip !86
  %352 = load i1* %FPU_SF.i, align 1, !mcsema_real_eip !86
  %353 = load i1* %FPU_PE.i, align 1, !mcsema_real_eip !86
  %354 = load i1* %FPU_UE.i, align 1, !mcsema_real_eip !86
  %355 = load i1* %FPU_OE.i, align 1, !mcsema_real_eip !86
  %356 = load i1* %FPU_ZE.i, align 1, !mcsema_real_eip !86
  %357 = load i1* %FPU_DE.i, align 1, !mcsema_real_eip !86
  %358 = load i1* %FPU_IE.i, align 1, !mcsema_real_eip !86
  %359 = load i1* %FPU_X.i, align 1, !mcsema_real_eip !86
  %360 = load i2* %FPU_RC.i, align 1, !mcsema_real_eip !86
  %361 = load i2* %FPU_PC.i, align 1, !mcsema_real_eip !86
  %362 = load i1* %FPU_PM.i, align 1, !mcsema_real_eip !86
  %363 = load i1* %FPU_UM.i, align 1, !mcsema_real_eip !86
  %364 = load i1* %FPU_OM.i, align 1, !mcsema_real_eip !86
  %365 = load i1* %FPU_ZM.i, align 1, !mcsema_real_eip !86
  %366 = load i1* %FPU_DM.i, align 1, !mcsema_real_eip !86
  %367 = load i1* %FPU_IM.i, align 1, !mcsema_real_eip !86
  %368 = load i64* %43, align 4
  %369 = load i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !86
  %370 = load i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !86
  %371 = load i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !86
  %372 = load i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !86
  %373 = load i128* %XMM0.i, align 1, !mcsema_real_eip !86
  %374 = load i128* %XMM1.i, align 1, !mcsema_real_eip !86
  %375 = load i128* %XMM2.i, align 1, !mcsema_real_eip !86
  %376 = load i128* %XMM3.i, align 1, !mcsema_real_eip !86
  %377 = load i128* %XMM4.i, align 1, !mcsema_real_eip !86
  %378 = load i128* %XMM5.i, align 1, !mcsema_real_eip !86
  %379 = load i128* %XMM6.i, align 1, !mcsema_real_eip !86
  %380 = load i128* %XMM7.i, align 1, !mcsema_real_eip !86
  %381 = load i128* %XMM8.i, align 1, !mcsema_real_eip !86
  %382 = load i128* %XMM9.i, align 1, !mcsema_real_eip !86
  %383 = load i128* %XMM10.i, align 1, !mcsema_real_eip !86
  %384 = load i128* %XMM11.i, align 1, !mcsema_real_eip !86
  %385 = load i128* %XMM12.i, align 1, !mcsema_real_eip !86
  %386 = load i128* %XMM13.i, align 1, !mcsema_real_eip !86
  %387 = load i128* %XMM14.i, align 1, !mcsema_real_eip !86
  %388 = load i128* %XMM15.i, align 1, !mcsema_real_eip !86
  %389 = load i64* %STACK_BASE.i, align 8, !mcsema_real_eip !86
  %390 = load i64* %STACK_LIMIT.i, align 8, !mcsema_real_eip !86
  %391 = add i64 %334, -12, !mcsema_real_eip !87
  %392 = inttoptr i64 %391 to i32*
  %393 = load i32* %392, align 4, !mcsema_real_eip !87
  %394 = add i32 %393, 1
  store i32 %394, i32* %392, align 4, !mcsema_real_eip !87
  %395 = tail call x86_64_sysvcc i64 @sleep(i64 1), !mcsema_real_eip !88
  %396 = load i32* %392, align 4, !mcsema_real_eip !31
  %397 = add i32 %396, -27
  %398 = xor i32 %397, %396, !mcsema_real_eip !31
  %399 = trunc i32 %397 to i8, !mcsema_real_eip !31
  %400 = tail call i8 @llvm.ctpop.i8(i8 %399), !mcsema_real_eip !31
  %401 = icmp eq i32 %397, 0, !mcsema_real_eip !31
  %402 = icmp slt i32 %397, 0
  %403 = and i32 %398, %396, !mcsema_real_eip !31
  %404 = icmp slt i32 %403, 0
  %405 = xor i1 %402, %404
  %406 = or i1 %401, %405, !mcsema_real_eip !32
  br i1 %406, label %block_0xdd.i.backedge, label %sub_76.exit.loopexit, !mcsema_real_eip !32

block_0x201.i:                                    ; preds = %block_0x1cf.i
  %407 = add i32 %185, -10
  %408 = icmp eq i32 %407, 0, !mcsema_real_eip !95
  %409 = icmp slt i32 %407, 0
  %410 = sub i32 9, %185
  %411 = and i32 %410, %185
  %412 = icmp slt i32 %411, 0
  %413 = xor i1 %409, %412
  %414 = or i1 %408, %413, !mcsema_real_eip !96
  br i1 %414, label %block_0x213.i, label %block_0x207.i, !mcsema_real_eip !96

sub_76.exit.loopexit:                             ; preds = %block_0x223.i, %block_0x237.i
  %R15_val.1.i.ph = phi i64 [ %342, %block_0x223.i ], [ %235, %block_0x237.i ]
  %STACK_LIMIT_val.1.i.ph = phi i64 [ %390, %block_0x223.i ], [ %283, %block_0x237.i ]
  %STACK_BASE_val.1.i.ph = phi i64 [ %389, %block_0x223.i ], [ %282, %block_0x237.i ]
  %XMM15_val.1.i.ph = phi i128 [ %388, %block_0x223.i ], [ %281, %block_0x237.i ]
  %XMM14_val.1.i.ph = phi i128 [ %387, %block_0x223.i ], [ %280, %block_0x237.i ]
  %XMM13_val.1.i.ph = phi i128 [ %386, %block_0x223.i ], [ %279, %block_0x237.i ]
  %XMM12_val.1.i.ph = phi i128 [ %385, %block_0x223.i ], [ %278, %block_0x237.i ]
  %XMM11_val.1.i.ph = phi i128 [ %384, %block_0x223.i ], [ %277, %block_0x237.i ]
  %XMM10_val.1.i.ph = phi i128 [ %383, %block_0x223.i ], [ %276, %block_0x237.i ]
  %XMM9_val.1.i.ph = phi i128 [ %382, %block_0x223.i ], [ %275, %block_0x237.i ]
  %XMM8_val.1.i.ph = phi i128 [ %381, %block_0x223.i ], [ %274, %block_0x237.i ]
  %XMM7_val.1.i.ph = phi i128 [ %380, %block_0x223.i ], [ %273, %block_0x237.i ]
  %XMM6_val.1.i.ph = phi i128 [ %379, %block_0x223.i ], [ %272, %block_0x237.i ]
  %XMM5_val.1.i.ph = phi i128 [ %378, %block_0x223.i ], [ %271, %block_0x237.i ]
  %XMM4_val.1.i.ph = phi i128 [ %377, %block_0x223.i ], [ %270, %block_0x237.i ]
  %XMM3_val.1.i.ph = phi i128 [ %376, %block_0x223.i ], [ %269, %block_0x237.i ]
  %XMM2_val.1.i.ph = phi i128 [ %375, %block_0x223.i ], [ %268, %block_0x237.i ]
  %XMM1_val.1.i.ph = phi i128 [ %374, %block_0x223.i ], [ %267, %block_0x237.i ]
  %XMM0_val.1.i.ph = phi i128 [ %373, %block_0x223.i ], [ %266, %block_0x237.i ]
  %FPU_LASTDATA_OFF_val.1.i.ph = phi i64 [ %372, %block_0x223.i ], [ %265, %block_0x237.i ]
  %FPU_LASTDATA_SEG_val.1.i.ph = phi i16 [ %371, %block_0x223.i ], [ %264, %block_0x237.i ]
  %FPU_LASTIP_OFF_val.1.i.ph = phi i64 [ %370, %block_0x223.i ], [ %263, %block_0x237.i ]
  %FPU_LASTIP_SEG_val.1.i.ph = phi i16 [ %369, %block_0x223.i ], [ %262, %block_0x237.i ]
  %FPU_TAG_val.sroa.0.1.i.ph = phi i64 [ %368, %block_0x223.i ], [ %261, %block_0x237.i ]
  %FPU_IM_val.1.i.ph = phi i1 [ %367, %block_0x223.i ], [ %260, %block_0x237.i ]
  %FPU_DM_val.1.i.ph = phi i1 [ %366, %block_0x223.i ], [ %259, %block_0x237.i ]
  %FPU_ZM_val.1.i.ph = phi i1 [ %365, %block_0x223.i ], [ %258, %block_0x237.i ]
  %FPU_OM_val.1.i.ph = phi i1 [ %364, %block_0x223.i ], [ %257, %block_0x237.i ]
  %FPU_UM_val.1.i.ph = phi i1 [ %363, %block_0x223.i ], [ %256, %block_0x237.i ]
  %FPU_PM_val.1.i.ph = phi i1 [ %362, %block_0x223.i ], [ %255, %block_0x237.i ]
  %FPU_PC_val.1.i.ph = phi i2 [ %361, %block_0x223.i ], [ %254, %block_0x237.i ]
  %FPU_RC_val.1.i.ph = phi i2 [ %360, %block_0x223.i ], [ %253, %block_0x237.i ]
  %FPU_X_val.1.i.ph = phi i1 [ %359, %block_0x223.i ], [ %252, %block_0x237.i ]
  %FPU_IE_val.1.i.ph = phi i1 [ %358, %block_0x223.i ], [ %251, %block_0x237.i ]
  %FPU_DE_val.1.i.ph = phi i1 [ %357, %block_0x223.i ], [ %250, %block_0x237.i ]
  %FPU_ZE_val.1.i.ph = phi i1 [ %356, %block_0x223.i ], [ %249, %block_0x237.i ]
  %FPU_OE_val.1.i.ph = phi i1 [ %355, %block_0x223.i ], [ %248, %block_0x237.i ]
  %FPU_UE_val.1.i.ph = phi i1 [ %354, %block_0x223.i ], [ %247, %block_0x237.i ]
  %FPU_PE_val.1.i.ph = phi i1 [ %353, %block_0x223.i ], [ %246, %block_0x237.i ]
  %FPU_SF_val.1.i.ph = phi i1 [ %352, %block_0x223.i ], [ %245, %block_0x237.i ]
  %FPU_ES_val.1.i.ph = phi i1 [ %351, %block_0x223.i ], [ %244, %block_0x237.i ]
  %FPU_C0_val.1.i.ph = phi i1 [ %350, %block_0x223.i ], [ %243, %block_0x237.i ]
  %FPU_C1_val.1.i.ph = phi i1 [ %349, %block_0x223.i ], [ %242, %block_0x237.i ]
  %FPU_C2_val.1.i.ph = phi i1 [ %348, %block_0x223.i ], [ %241, %block_0x237.i ]
  %FPU_TOP_val.1.i.ph = phi i3 [ %347, %block_0x223.i ], [ %240, %block_0x237.i ]
  %FPU_C3_val.1.i.ph = phi i1 [ %346, %block_0x223.i ], [ %239, %block_0x237.i ]
  %FPU_B_val.1.i.ph = phi i1 [ %345, %block_0x223.i ], [ %238, %block_0x237.i ]
  %DF_val.1.i.ph = phi i1 [ %344, %block_0x223.i ], [ %237, %block_0x237.i ]
  %OF_val.0.i.ph = phi i1 [ %404, %block_0x223.i ], [ %297, %block_0x237.i ]
  %SF_val.0.i.ph = phi i1 [ %402, %block_0x223.i ], [ %295, %block_0x237.i ]
  %CF_val.0.in.i.ph = phi i32 [ %396, %block_0x223.i ], [ %289, %block_0x237.i ]
  %AF_val.0.in.in.i.ph = phi i32 [ %398, %block_0x223.i ], [ %291, %block_0x237.i ]
  %PF_val.0.in.in.i.ph = phi i8 [ %400, %block_0x223.i ], [ %293, %block_0x237.i ]
  %RIP_val.1.i.ph = phi i64 [ %343, %block_0x223.i ], [ %236, %block_0x237.i ]
  %R14_val.1.i.ph = phi i64 [ %341, %block_0x223.i ], [ %234, %block_0x237.i ]
  %R13_val.1.i.ph = phi i64 [ %340, %block_0x223.i ], [ %233, %block_0x237.i ]
  %R12_val.1.i.ph = phi i64 [ %339, %block_0x223.i ], [ %232, %block_0x237.i ]
  %R11_val.1.i.ph = phi i64 [ %338, %block_0x223.i ], [ %231, %block_0x237.i ]
  %R10_val.1.i.ph = phi i64 [ %337, %block_0x223.i ], [ %230, %block_0x237.i ]
  %R9_val.1.i.ph = phi i64 [ %336, %block_0x223.i ], [ %229, %block_0x237.i ]
  %R8_val.1.i.ph = phi i64 [ %335, %block_0x223.i ], [ %228, %block_0x237.i ]
  %RBP_val.1.i.ph = phi i64 [ %334, %block_0x223.i ], [ %227, %block_0x237.i ]
  %RSI_val.1.i.ph = phi i64 [ %332, %block_0x223.i ], [ %225, %block_0x237.i ]
  %RBX_val.1.i.ph = phi i64 [ %330, %block_0x223.i ], [ %223, %block_0x237.i ]
  %.ph = phi <2 x i64> [ %331, %block_0x223.i ], [ %224, %block_0x237.i ]
  br label %sub_76.exit

sub_76.exit:                                      ; preds = %sub_76.exit.loopexit, %driverBlockRaw.sub_76.exit_crit_edge
  %.pre-phi = phi <2 x i64>* [ %.pre, %driverBlockRaw.sub_76.exit_crit_edge ], [ %99, %sub_76.exit.loopexit ]
  %R15_val.1.i = phi i64 [ %14, %driverBlockRaw.sub_76.exit_crit_edge ], [ %R15_val.1.i.ph, %sub_76.exit.loopexit ]
  %STACK_LIMIT_val.1.i = phi i64 [ %66, %driverBlockRaw.sub_76.exit_crit_edge ], [ %STACK_LIMIT_val.1.i.ph, %sub_76.exit.loopexit ]
  %STACK_BASE_val.1.i = phi i64 [ %65, %driverBlockRaw.sub_76.exit_crit_edge ], [ %STACK_BASE_val.1.i.ph, %sub_76.exit.loopexit ]
  %XMM15_val.1.i = phi i128 [ %64, %driverBlockRaw.sub_76.exit_crit_edge ], [ %XMM15_val.1.i.ph, %sub_76.exit.loopexit ]
  %XMM14_val.1.i = phi i128 [ %63, %driverBlockRaw.sub_76.exit_crit_edge ], [ %XMM14_val.1.i.ph, %sub_76.exit.loopexit ]
  %XMM13_val.1.i = phi i128 [ %62, %driverBlockRaw.sub_76.exit_crit_edge ], [ %XMM13_val.1.i.ph, %sub_76.exit.loopexit ]
  %XMM12_val.1.i = phi i128 [ %61, %driverBlockRaw.sub_76.exit_crit_edge ], [ %XMM12_val.1.i.ph, %sub_76.exit.loopexit ]
  %XMM11_val.1.i = phi i128 [ %60, %driverBlockRaw.sub_76.exit_crit_edge ], [ %XMM11_val.1.i.ph, %sub_76.exit.loopexit ]
  %XMM10_val.1.i = phi i128 [ %59, %driverBlockRaw.sub_76.exit_crit_edge ], [ %XMM10_val.1.i.ph, %sub_76.exit.loopexit ]
  %XMM9_val.1.i = phi i128 [ %58, %driverBlockRaw.sub_76.exit_crit_edge ], [ %XMM9_val.1.i.ph, %sub_76.exit.loopexit ]
  %XMM8_val.1.i = phi i128 [ %57, %driverBlockRaw.sub_76.exit_crit_edge ], [ %XMM8_val.1.i.ph, %sub_76.exit.loopexit ]
  %XMM7_val.1.i = phi i128 [ %56, %driverBlockRaw.sub_76.exit_crit_edge ], [ %XMM7_val.1.i.ph, %sub_76.exit.loopexit ]
  %XMM6_val.1.i = phi i128 [ %55, %driverBlockRaw.sub_76.exit_crit_edge ], [ %XMM6_val.1.i.ph, %sub_76.exit.loopexit ]
  %XMM5_val.1.i = phi i128 [ %54, %driverBlockRaw.sub_76.exit_crit_edge ], [ %XMM5_val.1.i.ph, %sub_76.exit.loopexit ]
  %XMM4_val.1.i = phi i128 [ %53, %driverBlockRaw.sub_76.exit_crit_edge ], [ %XMM4_val.1.i.ph, %sub_76.exit.loopexit ]
  %XMM3_val.1.i = phi i128 [ %52, %driverBlockRaw.sub_76.exit_crit_edge ], [ %XMM3_val.1.i.ph, %sub_76.exit.loopexit ]
  %XMM2_val.1.i = phi i128 [ %51, %driverBlockRaw.sub_76.exit_crit_edge ], [ %XMM2_val.1.i.ph, %sub_76.exit.loopexit ]
  %XMM1_val.1.i = phi i128 [ %50, %driverBlockRaw.sub_76.exit_crit_edge ], [ %XMM1_val.1.i.ph, %sub_76.exit.loopexit ]
  %XMM0_val.1.i = phi i128 [ %49, %driverBlockRaw.sub_76.exit_crit_edge ], [ %XMM0_val.1.i.ph, %sub_76.exit.loopexit ]
  %FPU_LASTDATA_OFF_val.1.i = phi i64 [ %48, %driverBlockRaw.sub_76.exit_crit_edge ], [ %FPU_LASTDATA_OFF_val.1.i.ph, %sub_76.exit.loopexit ]
  %FPU_LASTDATA_SEG_val.1.i = phi i16 [ %47, %driverBlockRaw.sub_76.exit_crit_edge ], [ %FPU_LASTDATA_SEG_val.1.i.ph, %sub_76.exit.loopexit ]
  %FPU_LASTIP_OFF_val.1.i = phi i64 [ %46, %driverBlockRaw.sub_76.exit_crit_edge ], [ %FPU_LASTIP_OFF_val.1.i.ph, %sub_76.exit.loopexit ]
  %FPU_LASTIP_SEG_val.1.i = phi i16 [ %45, %driverBlockRaw.sub_76.exit_crit_edge ], [ %FPU_LASTIP_SEG_val.1.i.ph, %sub_76.exit.loopexit ]
  %FPU_TAG_val.sroa.0.1.i = phi i64 [ %44, %driverBlockRaw.sub_76.exit_crit_edge ], [ %FPU_TAG_val.sroa.0.1.i.ph, %sub_76.exit.loopexit ]
  %FPU_IM_val.1.i = phi i1 [ %41, %driverBlockRaw.sub_76.exit_crit_edge ], [ %FPU_IM_val.1.i.ph, %sub_76.exit.loopexit ]
  %FPU_DM_val.1.i = phi i1 [ %40, %driverBlockRaw.sub_76.exit_crit_edge ], [ %FPU_DM_val.1.i.ph, %sub_76.exit.loopexit ]
  %FPU_ZM_val.1.i = phi i1 [ %39, %driverBlockRaw.sub_76.exit_crit_edge ], [ %FPU_ZM_val.1.i.ph, %sub_76.exit.loopexit ]
  %FPU_OM_val.1.i = phi i1 [ %38, %driverBlockRaw.sub_76.exit_crit_edge ], [ %FPU_OM_val.1.i.ph, %sub_76.exit.loopexit ]
  %FPU_UM_val.1.i = phi i1 [ %37, %driverBlockRaw.sub_76.exit_crit_edge ], [ %FPU_UM_val.1.i.ph, %sub_76.exit.loopexit ]
  %FPU_PM_val.1.i = phi i1 [ %36, %driverBlockRaw.sub_76.exit_crit_edge ], [ %FPU_PM_val.1.i.ph, %sub_76.exit.loopexit ]
  %FPU_PC_val.1.i = phi i2 [ %35, %driverBlockRaw.sub_76.exit_crit_edge ], [ %FPU_PC_val.1.i.ph, %sub_76.exit.loopexit ]
  %FPU_RC_val.1.i = phi i2 [ %34, %driverBlockRaw.sub_76.exit_crit_edge ], [ %FPU_RC_val.1.i.ph, %sub_76.exit.loopexit ]
  %FPU_X_val.1.i = phi i1 [ %33, %driverBlockRaw.sub_76.exit_crit_edge ], [ %FPU_X_val.1.i.ph, %sub_76.exit.loopexit ]
  %FPU_IE_val.1.i = phi i1 [ %32, %driverBlockRaw.sub_76.exit_crit_edge ], [ %FPU_IE_val.1.i.ph, %sub_76.exit.loopexit ]
  %FPU_DE_val.1.i = phi i1 [ %31, %driverBlockRaw.sub_76.exit_crit_edge ], [ %FPU_DE_val.1.i.ph, %sub_76.exit.loopexit ]
  %FPU_ZE_val.1.i = phi i1 [ %30, %driverBlockRaw.sub_76.exit_crit_edge ], [ %FPU_ZE_val.1.i.ph, %sub_76.exit.loopexit ]
  %FPU_OE_val.1.i = phi i1 [ %29, %driverBlockRaw.sub_76.exit_crit_edge ], [ %FPU_OE_val.1.i.ph, %sub_76.exit.loopexit ]
  %FPU_UE_val.1.i = phi i1 [ %28, %driverBlockRaw.sub_76.exit_crit_edge ], [ %FPU_UE_val.1.i.ph, %sub_76.exit.loopexit ]
  %FPU_PE_val.1.i = phi i1 [ %27, %driverBlockRaw.sub_76.exit_crit_edge ], [ %FPU_PE_val.1.i.ph, %sub_76.exit.loopexit ]
  %FPU_SF_val.1.i = phi i1 [ %26, %driverBlockRaw.sub_76.exit_crit_edge ], [ %FPU_SF_val.1.i.ph, %sub_76.exit.loopexit ]
  %FPU_ES_val.1.i = phi i1 [ %25, %driverBlockRaw.sub_76.exit_crit_edge ], [ %FPU_ES_val.1.i.ph, %sub_76.exit.loopexit ]
  %FPU_C0_val.1.i = phi i1 [ %24, %driverBlockRaw.sub_76.exit_crit_edge ], [ %FPU_C0_val.1.i.ph, %sub_76.exit.loopexit ]
  %FPU_C1_val.1.i = phi i1 [ %23, %driverBlockRaw.sub_76.exit_crit_edge ], [ %FPU_C1_val.1.i.ph, %sub_76.exit.loopexit ]
  %FPU_C2_val.1.i = phi i1 [ %22, %driverBlockRaw.sub_76.exit_crit_edge ], [ %FPU_C2_val.1.i.ph, %sub_76.exit.loopexit ]
  %FPU_TOP_val.1.i = phi i3 [ %21, %driverBlockRaw.sub_76.exit_crit_edge ], [ %FPU_TOP_val.1.i.ph, %sub_76.exit.loopexit ]
  %FPU_C3_val.1.i = phi i1 [ %20, %driverBlockRaw.sub_76.exit_crit_edge ], [ %FPU_C3_val.1.i.ph, %sub_76.exit.loopexit ]
  %FPU_B_val.1.i = phi i1 [ %19, %driverBlockRaw.sub_76.exit_crit_edge ], [ %FPU_B_val.1.i.ph, %sub_76.exit.loopexit ]
  %DF_val.1.i = phi i1 [ %16, %driverBlockRaw.sub_76.exit_crit_edge ], [ %DF_val.1.i.ph, %sub_76.exit.loopexit ]
  %OF_val.0.i = phi i1 [ %92, %driverBlockRaw.sub_76.exit_crit_edge ], [ %OF_val.0.i.ph, %sub_76.exit.loopexit ]
  %SF_val.0.i = phi i1 [ %90, %driverBlockRaw.sub_76.exit_crit_edge ], [ %SF_val.0.i.ph, %sub_76.exit.loopexit ]
  %CF_val.0.in.i = phi i32 [ %86, %driverBlockRaw.sub_76.exit_crit_edge ], [ %CF_val.0.in.i.ph, %sub_76.exit.loopexit ]
  %AF_val.0.in.in.i = phi i32 [ %88, %driverBlockRaw.sub_76.exit_crit_edge ], [ %AF_val.0.in.in.i.ph, %sub_76.exit.loopexit ]
  %PF_val.0.in.in.i = phi i8 [ %98, %driverBlockRaw.sub_76.exit_crit_edge ], [ %PF_val.0.in.in.i.ph, %sub_76.exit.loopexit ]
  %RIP_val.1.i = phi i64 [ %15, %driverBlockRaw.sub_76.exit_crit_edge ], [ %RIP_val.1.i.ph, %sub_76.exit.loopexit ]
  %R14_val.1.i = phi i64 [ %13, %driverBlockRaw.sub_76.exit_crit_edge ], [ %R14_val.1.i.ph, %sub_76.exit.loopexit ]
  %R13_val.1.i = phi i64 [ %12, %driverBlockRaw.sub_76.exit_crit_edge ], [ %R13_val.1.i.ph, %sub_76.exit.loopexit ]
  %R12_val.1.i = phi i64 [ %11, %driverBlockRaw.sub_76.exit_crit_edge ], [ %R12_val.1.i.ph, %sub_76.exit.loopexit ]
  %R11_val.1.i = phi i64 [ %10, %driverBlockRaw.sub_76.exit_crit_edge ], [ %R11_val.1.i.ph, %sub_76.exit.loopexit ]
  %R10_val.1.i = phi i64 [ %9, %driverBlockRaw.sub_76.exit_crit_edge ], [ %R10_val.1.i.ph, %sub_76.exit.loopexit ]
  %R9_val.1.i = phi i64 [ %8, %driverBlockRaw.sub_76.exit_crit_edge ], [ %R9_val.1.i.ph, %sub_76.exit.loopexit ]
  %R8_val.1.i = phi i64 [ %7, %driverBlockRaw.sub_76.exit_crit_edge ], [ %R8_val.1.i.ph, %sub_76.exit.loopexit ]
  %RBP_val.1.i = phi i64 [ %67, %driverBlockRaw.sub_76.exit_crit_edge ], [ %RBP_val.1.i.ph, %sub_76.exit.loopexit ]
  %RSI_val.1.i = phi i64 [ %84, %driverBlockRaw.sub_76.exit_crit_edge ], [ %RSI_val.1.i.ph, %sub_76.exit.loopexit ]
  %RBX_val.1.i = phi i64 [ %2, %driverBlockRaw.sub_76.exit_crit_edge ], [ %RBX_val.1.i.ph, %sub_76.exit.loopexit ]
  %415 = phi <2 x i64> [ %96, %driverBlockRaw.sub_76.exit_crit_edge ], [ %.ph, %sub_76.exit.loopexit ]
  %PF_val.0.in.i = and i8 %PF_val.0.in.in.i, 1
  %AF_val.0.in.i = and i32 %AF_val.0.in.in.i, 16
  %PF_val.0.i = icmp eq i8 %PF_val.0.in.i, 0
  %AF_val.0.i = icmp eq i32 %AF_val.0.in.i, 0
  %CF_val.0.i = icmp ult i32 %CF_val.0.in.i, 27
  %416 = tail call x86_64_sysvcc i64 @puts(i64 zext (i32 add (i32 ptrtoint (%1* @data_0x2da to i32), i32 77) to i64)), !mcsema_real_eip !97
  %417 = inttoptr i64 %RBP_val.1.i to i64*, !mcsema_real_eip !98
  %418 = load i64* %417, align 8, !mcsema_real_eip !98
  %419 = add i64 %RBP_val.1.i, 16, !mcsema_real_eip !99
  store i64 %416, i64* %RAX.i, align 8, !mcsema_real_eip !99
  store i64 %RBX_val.1.i, i64* %RBX.i, align 8, !mcsema_real_eip !99
  store <2 x i64> %415, <2 x i64>* %.pre-phi, align 8
  store i64 %RSI_val.1.i, i64* %RSI.i, align 8, !mcsema_real_eip !99
  store i64 zext (i32 add (i32 ptrtoint (%1* @data_0x2da to i32), i32 77) to i64), i64* %RDI.i, align 8, !mcsema_real_eip !99
  store i64 %419, i64* %RSP.i, align 8, !mcsema_real_eip !99
  store i64 %418, i64* %RBP.i, align 8, !mcsema_real_eip !99
  store i64 %R8_val.1.i, i64* %R8.i, align 8, !mcsema_real_eip !99
  store i64 %R9_val.1.i, i64* %R9.i, align 8, !mcsema_real_eip !99
  store i64 %R10_val.1.i, i64* %R10.i, align 8, !mcsema_real_eip !99
  store i64 %R11_val.1.i, i64* %R11.i, align 8, !mcsema_real_eip !99
  store i64 %R12_val.1.i, i64* %R12.i, align 8, !mcsema_real_eip !99
  store i64 %R13_val.1.i, i64* %R13.i, align 8, !mcsema_real_eip !99
  store i64 %R14_val.1.i, i64* %R14.i, align 8, !mcsema_real_eip !99
  store i64 %R15_val.1.i, i64* %R15.i, align 8, !mcsema_real_eip !99
  store i64 %RIP_val.1.i, i64* %RIP.i, align 8, !mcsema_real_eip !99
  store i1 %CF_val.0.i, i1* %CF.i, align 1, !mcsema_real_eip !99
  store i1 %PF_val.0.i, i1* %PF.i, align 1, !mcsema_real_eip !99
  store i1 %AF_val.0.i, i1* %AF.i, align 1, !mcsema_real_eip !99
  store i1 false, i1* %ZF.i, align 1, !mcsema_real_eip !99
  store i1 %SF_val.0.i, i1* %SF.i, align 1, !mcsema_real_eip !99
  store i1 %OF_val.0.i, i1* %OF.i, align 1, !mcsema_real_eip !99
  store i1 %DF_val.1.i, i1* %DF.i, align 1, !mcsema_real_eip !99
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %18, i8* %1, i32 128, i32 8, i1 false), !mcsema_real_eip !99
  store i1 %FPU_B_val.1.i, i1* %FPU_B.i, align 1, !mcsema_real_eip !99
  store i1 %FPU_C3_val.1.i, i1* %FPU_C3.i, align 1, !mcsema_real_eip !99
  store i3 %FPU_TOP_val.1.i, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !99
  store i1 %FPU_C2_val.1.i, i1* %FPU_C2.i, align 1, !mcsema_real_eip !99
  store i1 %FPU_C1_val.1.i, i1* %FPU_C1.i, align 1, !mcsema_real_eip !99
  store i1 %FPU_C0_val.1.i, i1* %FPU_C0.i, align 1, !mcsema_real_eip !99
  store i1 %FPU_ES_val.1.i, i1* %FPU_ES.i, align 1, !mcsema_real_eip !99
  store i1 %FPU_SF_val.1.i, i1* %FPU_SF.i, align 1, !mcsema_real_eip !99
  store i1 %FPU_PE_val.1.i, i1* %FPU_PE.i, align 1, !mcsema_real_eip !99
  store i1 %FPU_UE_val.1.i, i1* %FPU_UE.i, align 1, !mcsema_real_eip !99
  store i1 %FPU_OE_val.1.i, i1* %FPU_OE.i, align 1, !mcsema_real_eip !99
  store i1 %FPU_ZE_val.1.i, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !99
  store i1 %FPU_DE_val.1.i, i1* %FPU_DE.i, align 1, !mcsema_real_eip !99
  store i1 %FPU_IE_val.1.i, i1* %FPU_IE.i, align 1, !mcsema_real_eip !99
  store i1 %FPU_X_val.1.i, i1* %FPU_X.i, align 1, !mcsema_real_eip !99
  store i2 %FPU_RC_val.1.i, i2* %FPU_RC.i, align 1, !mcsema_real_eip !99
  store i2 %FPU_PC_val.1.i, i2* %FPU_PC.i, align 1, !mcsema_real_eip !99
  store i1 %FPU_PM_val.1.i, i1* %FPU_PM.i, align 1, !mcsema_real_eip !99
  store i1 %FPU_UM_val.1.i, i1* %FPU_UM.i, align 1, !mcsema_real_eip !99
  store i1 %FPU_OM_val.1.i, i1* %FPU_OM.i, align 1, !mcsema_real_eip !99
  store i1 %FPU_ZM_val.1.i, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !99
  store i1 %FPU_DM_val.1.i, i1* %FPU_DM.i, align 1, !mcsema_real_eip !99
  store i1 %FPU_IM_val.1.i, i1* %FPU_IM.i, align 1, !mcsema_real_eip !99
  store i64 %FPU_TAG_val.sroa.0.1.i, i64* %43, align 4
  store i16 %FPU_LASTIP_SEG_val.1.i, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !99
  store i64 %FPU_LASTIP_OFF_val.1.i, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !99
  store i16 %FPU_LASTDATA_SEG_val.1.i, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !99
  store i64 %FPU_LASTDATA_OFF_val.1.i, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !99
  store i128 %XMM0_val.1.i, i128* %XMM0.i, align 1, !mcsema_real_eip !99
  store i128 %XMM1_val.1.i, i128* %XMM1.i, align 1, !mcsema_real_eip !99
  store i128 %XMM2_val.1.i, i128* %XMM2.i, align 1, !mcsema_real_eip !99
  store i128 %XMM3_val.1.i, i128* %XMM3.i, align 1, !mcsema_real_eip !99
  store i128 %XMM4_val.1.i, i128* %XMM4.i, align 1, !mcsema_real_eip !99
  store i128 %XMM5_val.1.i, i128* %XMM5.i, align 1, !mcsema_real_eip !99
  store i128 %XMM6_val.1.i, i128* %XMM6.i, align 1, !mcsema_real_eip !99
  store i128 %XMM7_val.1.i, i128* %XMM7.i, align 1, !mcsema_real_eip !99
  store i128 %XMM8_val.1.i, i128* %XMM8.i, align 1, !mcsema_real_eip !99
  store i128 %XMM9_val.1.i, i128* %XMM9.i, align 1, !mcsema_real_eip !99
  store i128 %XMM10_val.1.i, i128* %XMM10.i, align 1, !mcsema_real_eip !99
  store i128 %XMM11_val.1.i, i128* %XMM11.i, align 1, !mcsema_real_eip !99
  store i128 %XMM12_val.1.i, i128* %XMM12.i, align 1, !mcsema_real_eip !99
  store i128 %XMM13_val.1.i, i128* %XMM13.i, align 1, !mcsema_real_eip !99
  store i128 %XMM14_val.1.i, i128* %XMM14.i, align 1, !mcsema_real_eip !99
  store i128 %XMM15_val.1.i, i128* %XMM15.i, align 1, !mcsema_real_eip !99
  store i64 %STACK_BASE_val.1.i, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !99
  store i64 %STACK_LIMIT_val.1.i, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !99
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
!4 = metadata !{i64 17, [19 x i8] c"\09movl\09$0, -8(%rbp)\00"}
!5 = metadata !{i64 100, [19 x i8] c"\09cmpl\09$6, -4(%rbp)\00"}
!6 = metadata !{i64 111, [9 x i8] c"\09callq\090\00"}
!7 = metadata !{i64 116, [7 x i8] c"\09leave\00"}
!8 = metadata !{i64 117, [6 x i8] c"\09retq\00"}
!9 = metadata !{i64 29, [19 x i8] c"\09movslq\09%eax, %rcx\00"}
!10 = metadata !{i64 32, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!11 = metadata !{i64 35, [19 x i8] c"\09movslq\09%eax, %rdx\00"}
!12 = metadata !{i64 63, [21 x i8] c"\09movzbl\09(%rax), %eax\00"}
!13 = metadata !{i64 71, [9 x i8] c"\09callq\090\00"}
!14 = metadata !{i64 76, [19 x i8] c"\09addl\09$1, -8(%rbp)\00"}
!15 = metadata !{i64 80, [20 x i8] c"\09cmpl\09$10, -8(%rbp)\00"}
!16 = metadata !{i64 84, [9 x i8] c"\09jle\09-60\00"}
!17 = metadata !{i64 91, [9 x i8] c"\09callq\090\00"}
!18 = metadata !{i64 96, [19 x i8] c"\09addl\09$1, -4(%rbp)\00"}
!19 = metadata !{i64 104, [9 x i8] c"\09jle\09-89\00"}
!20 = metadata !{i64 118, [12 x i8] c"\09pushq\09%rbp\00"}
!21 = metadata !{i64 126, [22 x i8] c"\09movl\09%edi, -52(%rbp)\00"}
!22 = metadata !{i64 129, [22 x i8] c"\09movq\09%rsi, -64(%rbp)\00"}
!23 = metadata !{i64 133, [20 x i8] c"\09movl\09$0, -12(%rbp)\00"}
!24 = metadata !{i64 140, [19 x i8] c"\09movl\09$1, -4(%rbp)\00"}
!25 = metadata !{i64 147, [19 x i8] c"\09movl\09$1, -8(%rbp)\00"}
!26 = metadata !{i64 154, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!27 = metadata !{i64 157, [19 x i8] c"\09movslq\09%eax, %rcx\00"}
!28 = metadata !{i64 191, [18 x i8] c"\09movb\09$88, (%rax)\00"}
!29 = metadata !{i64 194, [22 x i8] c"\09leaq\09-48(%rbp), %rax\00"}
!30 = metadata !{i64 211, [9 x i8] c"\09callq\090\00"}
!31 = metadata !{i64 631, [21 x i8] c"\09cmpl\09$27, -12(%rbp)\00"}
!32 = metadata !{i64 635, [10 x i8] c"\09jle\09-420\00"}
!33 = metadata !{i64 221, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!34 = metadata !{i64 224, [22 x i8] c"\09movl\09%eax, -16(%rbp)\00"}
!35 = metadata !{i64 227, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!36 = metadata !{i64 230, [22 x i8] c"\09movl\09%eax, -20(%rbp)\00"}
!37 = metadata !{i64 233, [22 x i8] c"\09movl\09-12(%rbp), %eax\00"}
!38 = metadata !{i64 236, [6 x i8] c"\09cltq\00"}
!39 = metadata !{i64 238, [29 x i8] c"\09movzbl\09-48(%rbp,%rax), %eax\00"}
!40 = metadata !{i64 249, [7 x i8] c"\09je\0940\00"}
!41 = metadata !{i64 291, [19 x i8] c"\09addl\09$1, -4(%rbp)\00"}
!42 = metadata !{i64 295, [8 x i8] c"\09jmp\0930\00"}
!43 = metadata !{i64 243, [18 x i8] c"\09movsbl\09%al, %eax\00"}
!44 = metadata !{i64 251, [17 x i8] c"\09cmpl\09$100, %eax\00"}
!45 = metadata !{i64 254, [6 x i8] c"\09jg\097\00"}
!46 = metadata !{i64 259, [7 x i8] c"\09je\0924\00"}
!47 = metadata !{i64 327, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!48 = metadata !{i64 330, [19 x i8] c"\09movslq\09%eax, %rcx\00"}
!49 = metadata !{i64 333, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!50 = metadata !{i64 336, [19 x i8] c"\09movslq\09%eax, %rdx\00"}
!51 = metadata !{i64 364, [21 x i8] c"\09movzbl\09(%rax), %eax\00"}
!52 = metadata !{i64 369, [8 x i8] c"\09jne\0942\00"}
!53 = metadata !{i64 285, [19 x i8] c"\09subl\09$1, -4(%rbp)\00"}
!54 = metadata !{i64 289, [8 x i8] c"\09jmp\0936\00"}
!55 = metadata !{i64 279, [19 x i8] c"\09addl\09$1, -8(%rbp)\00"}
!56 = metadata !{i64 283, [8 x i8] c"\09jmp\0942\00"}
!57 = metadata !{i64 416, [19 x i8] c"\09movslq\09%eax, %rcx\00"}
!58 = metadata !{i64 422, [19 x i8] c"\09movslq\09%eax, %rdx\00"}
!59 = metadata !{i64 450, [21 x i8] c"\09movzbl\09(%rax), %eax\00"}
!60 = metadata !{i64 455, [7 x i8] c"\09je\0974\00"}
!61 = metadata !{i64 376, [9 x i8] c"\09callq\090\00"}
!62 = metadata !{i64 398, [9 x i8] c"\09callq\090\00"}
!63 = metadata !{i64 408, [9 x i8] c"\09callq\090\00"}
!64 = metadata !{i64 413, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!65 = metadata !{i64 419, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!66 = metadata !{i64 302, [9 x i8] c"\09callq\090\00"}
!67 = metadata !{i64 312, [9 x i8] c"\09callq\090\00"}
!68 = metadata !{i64 322, [9 x i8] c"\09callq\090\00"}
!69 = metadata !{i64 273, [19 x i8] c"\09subl\09$1, -8(%rbp)\00"}
!70 = metadata !{i64 277, [8 x i8] c"\09jmp\0948\00"}
!71 = metadata !{i64 531, [22 x i8] c"\09movl\09-16(%rbp), %eax\00"}
!72 = metadata !{i64 537, [8 x i8] c"\09jne\0928\00"}
!73 = metadata !{i64 461, [8 x i8] c"\09jne\0956\00"}
!74 = metadata !{i64 519, [22 x i8] c"\09movl\09-16(%rbp), %eax\00"}
!75 = metadata !{i64 522, [21 x i8] c"\09movl\09%eax, -4(%rbp)\00"}
!76 = metadata !{i64 525, [22 x i8] c"\09movl\09-20(%rbp), %eax\00"}
!77 = metadata !{i64 528, [21 x i8] c"\09movl\09%eax, -8(%rbp)\00"}
!78 = metadata !{i64 534, [21 x i8] c"\09cmpl\09-4(%rbp), %eax\00"}
!79 = metadata !{i64 466, [19 x i8] c"\09movslq\09%eax, %rcx\00"}
!80 = metadata !{i64 500, [21 x i8] c"\09movzbl\09(%rax), %eax\00"}
!81 = metadata !{i64 505, [8 x i8] c"\09jne\0912\00"}
!82 = metadata !{i64 570, [19 x i8] c"\09movslq\09%eax, %rcx\00"}
!83 = metadata !{i64 576, [19 x i8] c"\09movslq\09%eax, %rdx\00"}
!84 = metadata !{i64 598, [15 x i8] c"\09addq\09$0, %rax\00"}
!85 = metadata !{i64 604, [18 x i8] c"\09movb\09$88, (%rax)\00"}
!86 = metadata !{i64 612, [9 x i8] c"\09callq\090\00"}
!87 = metadata !{i64 617, [20 x i8] c"\09addl\09$1, -12(%rbp)\00"}
!88 = metadata !{i64 626, [9 x i8] c"\09callq\090\00"}
!89 = metadata !{i64 539, [22 x i8] c"\09movl\09-20(%rbp), %eax\00"}
!90 = metadata !{i64 545, [8 x i8] c"\09jne\0920\00"}
!91 = metadata !{i64 552, [9 x i8] c"\09callq\090\00"}
!92 = metadata !{i64 562, [9 x i8] c"\09callq\090\00"}
!93 = metadata !{i64 567, [21 x i8] c"\09movl\09-4(%rbp), %eax\00"}
!94 = metadata !{i64 573, [21 x i8] c"\09movl\09-8(%rbp), %eax\00"}
!95 = metadata !{i64 513, [20 x i8] c"\09cmpl\09$10, -4(%rbp)\00"}
!96 = metadata !{i64 517, [8 x i8] c"\09jle\0912\00"}
!97 = metadata !{i64 646, [9 x i8] c"\09callq\090\00"}
!98 = metadata !{i64 651, [7 x i8] c"\09leave\00"}
!99 = metadata !{i64 652, [6 x i8] c"\09retq\00"}
