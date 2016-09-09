; ModuleID = 'Output/test_4.clang.opt.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%0 = type <{ [88 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0x1ee = internal constant %0 <{ [88 x i8] c"\0B\00\00\00\0C\00\00\00\0D\00\00\00\0E\00\00\00\0F\00\00\00\10\00\00\00\11\00\00\00\12\00\00\00\13\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00\07\00\00\00\08\00\00\00\09\00\00\00\0A\00\00\00" }>, align 64

declare x86_64_sysvcc i64 @memcpy(i64 inreg, i64 inreg, i64 inreg)

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  %STi_val.i.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !3
  %1 = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* %1)
  %RAX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !3
  %RBX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !3
  %2 = load i64* %RBX.i, align 8, !mcsema_real_eip !3
  %RCX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !3
  %RDX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !3
  %RSI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !3
  %3 = load i64* %RSI.i, align 8, !mcsema_real_eip !3
  %RDI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !3
  %4 = load i64* %RDI.i, align 8, !mcsema_real_eip !3
  %RSP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !3
  %5 = load i64* %RSP.i, align 8, !mcsema_real_eip !3
  %RBP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !3
  %6 = load i64* %RBP.i, align 8, !mcsema_real_eip !3
  %R8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !3
  %R9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !3
  %R10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !3
  %R11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !3
  %R12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !3
  %7 = load i64* %R12.i, align 8, !mcsema_real_eip !3
  %R13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !3
  %8 = load i64* %R13.i, align 8, !mcsema_real_eip !3
  %R14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !3
  %9 = load i64* %R14.i, align 8, !mcsema_real_eip !3
  %R15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !3
  %10 = load i64* %R15.i, align 8, !mcsema_real_eip !3
  %RIP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !3
  %11 = load i64* %RIP.i, align 8, !mcsema_real_eip !3
  %CF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !3
  %PF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !3
  %AF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !3
  %ZF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !3
  %SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !3
  %OF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !3
  %DF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !3
  %12 = load i1* %DF.i, align 1, !mcsema_real_eip !3
  %13 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !3
  %14 = bitcast x86_fp80* %13 to i8*, !mcsema_real_eip !3
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %1, i8* %14, i32 128, i32 4, i1 false), !mcsema_real_eip !3
  %FPU_B.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !3
  %15 = load i1* %FPU_B.i, align 1, !mcsema_real_eip !3
  %FPU_C3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !3
  %16 = load i1* %FPU_C3.i, align 1, !mcsema_real_eip !3
  %FPU_TOP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !3
  %17 = load i3* %FPU_TOP.i, align 1, !mcsema_real_eip !3
  %FPU_C2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !3
  %18 = load i1* %FPU_C2.i, align 1, !mcsema_real_eip !3
  %FPU_C1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !3
  %19 = load i1* %FPU_C1.i, align 1, !mcsema_real_eip !3
  %FPU_C0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !3
  %20 = load i1* %FPU_C0.i, align 1, !mcsema_real_eip !3
  %FPU_ES.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !3
  %21 = load i1* %FPU_ES.i, align 1, !mcsema_real_eip !3
  %FPU_SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !3
  %22 = load i1* %FPU_SF.i, align 1, !mcsema_real_eip !3
  %FPU_PE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !3
  %23 = load i1* %FPU_PE.i, align 1, !mcsema_real_eip !3
  %FPU_UE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !3
  %24 = load i1* %FPU_UE.i, align 1, !mcsema_real_eip !3
  %FPU_OE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !3
  %25 = load i1* %FPU_OE.i, align 1, !mcsema_real_eip !3
  %FPU_ZE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !3
  %26 = load i1* %FPU_ZE.i, align 1, !mcsema_real_eip !3
  %FPU_DE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !3
  %27 = load i1* %FPU_DE.i, align 1, !mcsema_real_eip !3
  %FPU_IE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !3
  %28 = load i1* %FPU_IE.i, align 1, !mcsema_real_eip !3
  %FPU_X.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !3
  %29 = load i1* %FPU_X.i, align 1, !mcsema_real_eip !3
  %FPU_RC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !3
  %30 = load i2* %FPU_RC.i, align 1, !mcsema_real_eip !3
  %FPU_PC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !3
  %31 = load i2* %FPU_PC.i, align 1, !mcsema_real_eip !3
  %FPU_PM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !3
  %32 = load i1* %FPU_PM.i, align 1, !mcsema_real_eip !3
  %FPU_UM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !3
  %33 = load i1* %FPU_UM.i, align 1, !mcsema_real_eip !3
  %FPU_OM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !3
  %34 = load i1* %FPU_OM.i, align 1, !mcsema_real_eip !3
  %FPU_ZM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !3
  %35 = load i1* %FPU_ZM.i, align 1, !mcsema_real_eip !3
  %FPU_DM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !3
  %36 = load i1* %FPU_DM.i, align 1, !mcsema_real_eip !3
  %FPU_IM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !3
  %37 = load i1* %FPU_IM.i, align 1, !mcsema_real_eip !3
  %38 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !3
  %39 = bitcast i8* %38 to i64*
  %40 = load i64* %39, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !3
  %41 = load i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !3
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !3
  %42 = load i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !3
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !3
  %43 = load i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !3
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !3
  %44 = load i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !3
  %XMM0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !3
  %45 = load i128* %XMM0.i, align 1, !mcsema_real_eip !3
  %XMM1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !3
  %46 = load i128* %XMM1.i, align 1, !mcsema_real_eip !3
  %XMM2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !3
  %47 = load i128* %XMM2.i, align 1, !mcsema_real_eip !3
  %XMM3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !3
  %48 = load i128* %XMM3.i, align 1, !mcsema_real_eip !3
  %XMM4.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !3
  %49 = load i128* %XMM4.i, align 1, !mcsema_real_eip !3
  %XMM5.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !3
  %50 = load i128* %XMM5.i, align 1, !mcsema_real_eip !3
  %XMM6.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !3
  %51 = load i128* %XMM6.i, align 1, !mcsema_real_eip !3
  %XMM7.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !3
  %52 = load i128* %XMM7.i, align 1, !mcsema_real_eip !3
  %XMM8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !3
  %53 = load i128* %XMM8.i, align 1, !mcsema_real_eip !3
  %XMM9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !3
  %54 = load i128* %XMM9.i, align 1, !mcsema_real_eip !3
  %XMM10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !3
  %55 = load i128* %XMM10.i, align 1, !mcsema_real_eip !3
  %XMM11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !3
  %56 = load i128* %XMM11.i, align 1, !mcsema_real_eip !3
  %XMM12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !3
  %57 = load i128* %XMM12.i, align 1, !mcsema_real_eip !3
  %XMM13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !3
  %58 = load i128* %XMM13.i, align 1, !mcsema_real_eip !3
  %XMM14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !3
  %59 = load i128* %XMM14.i, align 1, !mcsema_real_eip !3
  %XMM15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !3
  %60 = load i128* %XMM15.i, align 1, !mcsema_real_eip !3
  %STACK_BASE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !3
  %STACK_LIMIT.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !3
  %61 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  %62 = load <2 x i64>* %61, align 8
  %63 = add i64 %5, -8
  %64 = inttoptr i64 %63 to i64*, !mcsema_real_eip !3
  store i64 %6, i64* %64, align 8, !mcsema_real_eip !3
  %65 = add i64 %5, -16
  %66 = inttoptr i64 %65 to i64*, !mcsema_real_eip !4
  store i64 %10, i64* %66, align 8, !mcsema_real_eip !4
  %67 = add i64 %5, -24
  %68 = inttoptr i64 %67 to i64*, !mcsema_real_eip !5
  store i64 %9, i64* %68, align 8, !mcsema_real_eip !5
  %69 = add i64 %5, -32
  %70 = inttoptr i64 %69 to i64*, !mcsema_real_eip !6
  store i64 %8, i64* %70, align 8, !mcsema_real_eip !6
  %71 = add i64 %5, -40
  %72 = inttoptr i64 %71 to i64*, !mcsema_real_eip !7
  store i64 %7, i64* %72, align 8, !mcsema_real_eip !7
  %73 = add i64 %5, -48
  %74 = inttoptr i64 %73 to i64*, !mcsema_real_eip !8
  store i64 %2, i64* %74, align 8, !mcsema_real_eip !8
  %75 = add i64 %5, -248
  %76 = xor i64 %75, %73, !mcsema_real_eip !9
  %77 = and i64 %76, 16, !mcsema_real_eip !9
  %78 = icmp ne i64 %77, 0, !mcsema_real_eip !9
  %79 = trunc i64 %75 to i8, !mcsema_real_eip !9
  %80 = tail call i8 @llvm.ctpop.i8(i8 %79), !mcsema_real_eip !9
  %81 = and i8 %80, 1
  %82 = icmp eq i8 %81, 0
  %83 = icmp eq i64 %75, 0, !mcsema_real_eip !9
  %84 = icmp slt i64 %75, 0
  %85 = icmp ult i64 %73, 200, !mcsema_real_eip !9
  %86 = and i64 %76, %73, !mcsema_real_eip !9
  %87 = icmp slt i64 %86, 0
  %88 = add i64 %5, -152, !mcsema_real_eip !10
  %89 = add i64 %5, -104, !mcsema_real_eip !11
  %90 = add i64 %5, -52, !mcsema_real_eip !12
  %91 = inttoptr i64 %90 to i32*
  store i32 0, i32* %91, align 4, !mcsema_real_eip !12
  %92 = add i64 %5, -56, !mcsema_real_eip !13
  %93 = trunc i64 %4 to i32, !mcsema_real_eip !13
  %94 = inttoptr i64 %92 to i32*
  store i32 %93, i32* %94, align 4, !mcsema_real_eip !13
  %95 = add i64 %5, -64, !mcsema_real_eip !14
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !14
  store i64 %3, i64* %96, align 8, !mcsema_real_eip !14
  %97 = add i64 %5, -156, !mcsema_real_eip !15
  %98 = inttoptr i64 %97 to i32*
  store i32 300, i32* %98, align 4, !mcsema_real_eip !15
  %99 = add i64 %5, -168, !mcsema_real_eip !16
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !16
  store i64 add (i64 ptrtoint (%0* @data_0x1ee to i64), i64 48), i64* %100, align 8, !mcsema_real_eip !16
  %101 = add i64 %5, -176, !mcsema_real_eip !17
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !17
  store i64 40, i64* %102, align 8, !mcsema_real_eip !17
  %103 = add i64 %5, -180, !mcsema_real_eip !18
  %104 = inttoptr i64 %103 to i32*
  store i32 100, i32* %104, align 4, !mcsema_real_eip !18
  %105 = add i64 %5, -184, !mcsema_real_eip !19
  %106 = inttoptr i64 %105 to i32*
  store i32 200, i32* %106, align 4, !mcsema_real_eip !19
  %107 = add i64 %5, -192, !mcsema_real_eip !20
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !20
  store i64 %89, i64* %108, align 8, !mcsema_real_eip !20
  %109 = add i64 %5, -196, !mcsema_real_eip !21
  %110 = inttoptr i64 %109 to i32*
  store i32 400, i32* %110, align 4, !mcsema_real_eip !21
  %111 = add i64 %5, -200, !mcsema_real_eip !22
  %112 = inttoptr i64 %111 to i32*
  store i32 500, i32* %112, align 4, !mcsema_real_eip !22
  %113 = add i64 %5, -204, !mcsema_real_eip !23
  %114 = inttoptr i64 %113 to i32*
  store i32 600, i32* %114, align 4, !mcsema_real_eip !23
  %115 = add i64 %5, -208, !mcsema_real_eip !24
  %116 = inttoptr i64 %115 to i32*
  store i32 10, i32* %116, align 4, !mcsema_real_eip !24
  %117 = add i64 %5, -216, !mcsema_real_eip !25
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !25
  store i64 %88, i64* %118, align 8, !mcsema_real_eip !25
  %119 = tail call x86_64_sysvcc i64 @memcpy(i64 %89, i64 ptrtoint (%0* @data_0x1ee to i64), i64 40), !mcsema_real_eip !26
  %120 = load i64* %118, align 8, !mcsema_real_eip !27
  %121 = load i64* %100, align 8, !mcsema_real_eip !28
  %122 = load i64* %102, align 8, !mcsema_real_eip !29
  %123 = tail call x86_64_sysvcc i64 @memcpy(i64 %120, i64 %121, i64 %122), !mcsema_real_eip !30
  %124 = load i32* %104, align 4, !mcsema_real_eip !31
  %125 = zext i32 %124 to i64, !mcsema_real_eip !31
  %126 = load i32* %106, align 4, !mcsema_real_eip !32
  %127 = zext i32 %126 to i64, !mcsema_real_eip !32
  %128 = load i32* %98, align 4, !mcsema_real_eip !33
  %129 = zext i32 %128 to i64, !mcsema_real_eip !33
  %130 = load i32* %110, align 4, !mcsema_real_eip !34
  %131 = zext i32 %130 to i64, !mcsema_real_eip !34
  %132 = load i32* %112, align 4, !mcsema_real_eip !35
  %133 = zext i32 %132 to i64, !mcsema_real_eip !35
  %134 = load i32* %114, align 4, !mcsema_real_eip !36
  %135 = zext i32 %134 to i64, !mcsema_real_eip !36
  %136 = inttoptr i64 %75 to i32*
  store i32 10, i32* %136, align 4, !mcsema_real_eip !37
  %137 = load i64* %108, align 8, !mcsema_real_eip !38
  %138 = add i64 %5, -240, !mcsema_real_eip !39
  %139 = inttoptr i64 %138 to i64*, !mcsema_real_eip !39
  store i64 %137, i64* %139, align 8, !mcsema_real_eip !39
  %140 = add i64 %5, -232, !mcsema_real_eip !40
  %141 = inttoptr i64 %140 to i32*
  store i32 10, i32* %141, align 4, !mcsema_real_eip !40
  %142 = load i64* %118, align 8, !mcsema_real_eip !41
  %143 = add i64 %5, -224, !mcsema_real_eip !42
  %144 = inttoptr i64 %143 to i64*, !mcsema_real_eip !42
  store i64 %142, i64* %144, align 8, !mcsema_real_eip !42
  %145 = add i64 %5, -256
  %146 = inttoptr i64 %145 to i64*, !mcsema_real_eip !43
  store i64 -4981261766360305936, i64* %146, align 8, !mcsema_real_eip !43
  store i64 %123, i64* %RAX.i, align 8, !mcsema_real_eip !43
  store i64 %137, i64* %RBX.i, align 8, !mcsema_real_eip !43
  store i64 %131, i64* %RCX.i, align 8, !mcsema_real_eip !43
  store i64 %129, i64* %RDX.i, align 8, !mcsema_real_eip !43
  store i64 %127, i64* %RSI.i, align 8, !mcsema_real_eip !43
  store i64 %125, i64* %RDI.i, align 8, !mcsema_real_eip !43
  store i64 %145, i64* %RSP.i, align 8, !mcsema_real_eip !43
  store i64 %63, i64* %RBP.i, align 8, !mcsema_real_eip !43
  store i64 %133, i64* %R8.i, align 8, !mcsema_real_eip !43
  store i64 %135, i64* %R9.i, align 8, !mcsema_real_eip !43
  store i64 600, i64* %R10.i, align 8, !mcsema_real_eip !43
  store i64 10, i64* %R11.i, align 8, !mcsema_real_eip !43
  store i64 40, i64* %R12.i, align 8, !mcsema_real_eip !43
  store i64 ptrtoint (%0* @data_0x1ee to i64), i64* %R13.i, align 8, !mcsema_real_eip !43
  store i64 %142, i64* %R14.i, align 8, !mcsema_real_eip !43
  store i64 add (i64 ptrtoint (%0* @data_0x1ee to i64), i64 48), i64* %R15.i, align 8, !mcsema_real_eip !43
  store i64 %11, i64* %RIP.i, align 8, !mcsema_real_eip !43
  store i1 %85, i1* %CF.i, align 1, !mcsema_real_eip !43
  store i1 %82, i1* %PF.i, align 1, !mcsema_real_eip !43
  store i1 %78, i1* %AF.i, align 1, !mcsema_real_eip !43
  store i1 %83, i1* %ZF.i, align 1, !mcsema_real_eip !43
  store i1 %84, i1* %SF.i, align 1, !mcsema_real_eip !43
  store i1 %87, i1* %OF.i, align 1, !mcsema_real_eip !43
  store i1 %12, i1* %DF.i, align 1, !mcsema_real_eip !43
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %14, i8* %1, i32 128, i32 8, i1 false), !mcsema_real_eip !43
  store i1 %15, i1* %FPU_B.i, align 1, !mcsema_real_eip !43
  store i1 %16, i1* %FPU_C3.i, align 1, !mcsema_real_eip !43
  store i3 %17, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !43
  store i1 %18, i1* %FPU_C2.i, align 1, !mcsema_real_eip !43
  store i1 %19, i1* %FPU_C1.i, align 1, !mcsema_real_eip !43
  store i1 %20, i1* %FPU_C0.i, align 1, !mcsema_real_eip !43
  store i1 %21, i1* %FPU_ES.i, align 1, !mcsema_real_eip !43
  store i1 %22, i1* %FPU_SF.i, align 1, !mcsema_real_eip !43
  store i1 %23, i1* %FPU_PE.i, align 1, !mcsema_real_eip !43
  store i1 %24, i1* %FPU_UE.i, align 1, !mcsema_real_eip !43
  store i1 %25, i1* %FPU_OE.i, align 1, !mcsema_real_eip !43
  store i1 %26, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !43
  store i1 %27, i1* %FPU_DE.i, align 1, !mcsema_real_eip !43
  store i1 %28, i1* %FPU_IE.i, align 1, !mcsema_real_eip !43
  store i1 %29, i1* %FPU_X.i, align 1, !mcsema_real_eip !43
  store i2 %30, i2* %FPU_RC.i, align 1, !mcsema_real_eip !43
  store i2 %31, i2* %FPU_PC.i, align 1, !mcsema_real_eip !43
  store i1 %32, i1* %FPU_PM.i, align 1, !mcsema_real_eip !43
  store i1 %33, i1* %FPU_UM.i, align 1, !mcsema_real_eip !43
  store i1 %34, i1* %FPU_OM.i, align 1, !mcsema_real_eip !43
  store i1 %35, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !43
  store i1 %36, i1* %FPU_DM.i, align 1, !mcsema_real_eip !43
  store i1 %37, i1* %FPU_IM.i, align 1, !mcsema_real_eip !43
  store i64 %40, i64* %39, align 4
  store i16 %41, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !43
  store i64 %42, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !43
  store i16 %43, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !43
  store i64 %44, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !43
  store i128 %45, i128* %XMM0.i, align 1, !mcsema_real_eip !43
  store i128 %46, i128* %XMM1.i, align 1, !mcsema_real_eip !43
  store i128 %47, i128* %XMM2.i, align 1, !mcsema_real_eip !43
  store i128 %48, i128* %XMM3.i, align 1, !mcsema_real_eip !43
  store i128 %49, i128* %XMM4.i, align 1, !mcsema_real_eip !43
  store i128 %50, i128* %XMM5.i, align 1, !mcsema_real_eip !43
  store i128 %51, i128* %XMM6.i, align 1, !mcsema_real_eip !43
  store i128 %52, i128* %XMM7.i, align 1, !mcsema_real_eip !43
  store i128 %53, i128* %XMM8.i, align 1, !mcsema_real_eip !43
  store i128 %54, i128* %XMM9.i, align 1, !mcsema_real_eip !43
  store i128 %55, i128* %XMM10.i, align 1, !mcsema_real_eip !43
  store i128 %56, i128* %XMM11.i, align 1, !mcsema_real_eip !43
  store i128 %57, i128* %XMM12.i, align 1, !mcsema_real_eip !43
  store i128 %58, i128* %XMM13.i, align 1, !mcsema_real_eip !43
  store i128 %59, i128* %XMM14.i, align 1, !mcsema_real_eip !43
  store i128 %60, i128* %XMM15.i, align 1, !mcsema_real_eip !43
  store <2 x i64> %62, <2 x i64>* %61, align 1
  %147 = bitcast [8 x x86_fp80]* %STi_val.i.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* %147)
  %148 = bitcast i64* %R12.i to <2 x i64>*
  %149 = load <2 x i64>* %148, align 8
  %150 = bitcast i64* %R14.i to <2 x i64>*
  %151 = load <2 x i64>* %150, align 8
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %147, i8* %1, i32 128, i32 16, i1 false)
  %152 = add i64 %5, -264
  %153 = inttoptr i64 %152 to i64*, !mcsema_real_eip !2
  store i64 %63, i64* %153, align 8, !mcsema_real_eip !2
  %154 = add i64 %5, -272
  %155 = inttoptr i64 %154 to i64*, !mcsema_real_eip !44
  store i64 %137, i64* %155, align 8, !mcsema_real_eip !44
  %156 = load i64* %144, align 8, !mcsema_real_eip !45
  %157 = load i32* %141, align 4, !mcsema_real_eip !46
  %158 = zext i32 %157 to i64, !mcsema_real_eip !46
  %159 = load i64* %139, align 8, !mcsema_real_eip !47
  %160 = load i32* %136, align 4, !mcsema_real_eip !48
  %161 = add i64 %5, -276, !mcsema_real_eip !49
  %162 = inttoptr i64 %161 to i32*
  store i32 %124, i32* %162, align 4, !mcsema_real_eip !49
  %163 = add i64 %5, -280, !mcsema_real_eip !50
  %164 = inttoptr i64 %163 to i32*
  store i32 %126, i32* %164, align 4, !mcsema_real_eip !50
  %165 = add i64 %5, -284, !mcsema_real_eip !51
  %166 = inttoptr i64 %165 to i32*
  store i32 %128, i32* %166, align 4, !mcsema_real_eip !51
  %167 = add i64 %5, -288, !mcsema_real_eip !52
  %168 = inttoptr i64 %167 to i32*
  store i32 %130, i32* %168, align 4, !mcsema_real_eip !52
  %169 = add i64 %5, -292, !mcsema_real_eip !53
  %170 = inttoptr i64 %169 to i32*
  store i32 %132, i32* %170, align 4, !mcsema_real_eip !53
  %171 = add i64 %5, -296, !mcsema_real_eip !54
  %172 = inttoptr i64 %171 to i32*
  store i32 %134, i32* %172, align 4, !mcsema_real_eip !54
  %173 = add i64 %5, -300, !mcsema_real_eip !55
  %174 = inttoptr i64 %173 to i32*
  store i32 %160, i32* %174, align 4, !mcsema_real_eip !55
  %175 = add i64 %5, -312, !mcsema_real_eip !56
  %176 = inttoptr i64 %175 to i64*, !mcsema_real_eip !56
  store i64 %159, i64* %176, align 8, !mcsema_real_eip !56
  %177 = add i64 %5, -316, !mcsema_real_eip !57
  %178 = inttoptr i64 %177 to i32*
  store i32 %157, i32* %178, align 4, !mcsema_real_eip !57
  %179 = add i64 %5, -328, !mcsema_real_eip !58
  %180 = inttoptr i64 %179 to i64*, !mcsema_real_eip !58
  store i64 %156, i64* %180, align 8, !mcsema_real_eip !58
  %181 = add i64 %5, -332, !mcsema_real_eip !59
  %182 = inttoptr i64 %181 to i32*
  store i32 0, i32* %182, align 4, !mcsema_real_eip !59
  %183 = add i64 %5, -336, !mcsema_real_eip !60
  %184 = inttoptr i64 %183 to i32*
  store i32 0, i32* %184, align 4, !mcsema_real_eip !60
  %185 = load i32* %174, align 4, !mcsema_real_eip !61
  %186 = sub i32 0, %185, !mcsema_real_eip !61
  %187 = icmp slt i32 %186, 0
  %188 = and i32 %185, %186, !mcsema_real_eip !61
  %189 = icmp slt i32 %188, 0
  %tmp.i.i = xor i1 %187, %189
  br i1 %tmp.i.i, label %block_0x51.i.i.preheader, label %sub_a0.exit, !mcsema_real_eip !62

block_0x51.i.i.preheader:                         ; preds = %driverBlockRaw
  br label %block_0x51.i.i

block_0x7f.loopexit.i.i:                          ; preds = %block_0x51.i.i
  %.lcssa4 = phi i32 [ %205, %block_0x51.i.i ]
  %.lcssa = phi i32 [ %203, %block_0x51.i.i ]
  %190 = zext i32 %.lcssa to i64, !mcsema_real_eip !63
  %191 = zext i32 %.lcssa4 to i64, !mcsema_real_eip !64
  br label %sub_a0.exit

block_0x51.i.i:                                   ; preds = %block_0x51.i.i, %block_0x51.i.i.preheader
  %192 = phi i32 [ %207, %block_0x51.i.i ], [ 0, %block_0x51.i.i.preheader ]
  %193 = sext i32 %192 to i64, !mcsema_real_eip !65
  %194 = load i64* %176, align 8, !mcsema_real_eip !66
  %195 = shl nsw i64 %193, 2
  %196 = add i64 %195, %194, !mcsema_real_eip !67
  %197 = inttoptr i64 %196 to i32*
  %198 = load i32* %197, align 4, !mcsema_real_eip !67
  %199 = load i64* %180, align 8, !mcsema_real_eip !68
  %200 = add i64 %199, %195, !mcsema_real_eip !63
  %201 = inttoptr i64 %200 to i32*
  %202 = load i32* %201, align 4, !mcsema_real_eip !63
  %203 = sub i32 %198, %202, !mcsema_real_eip !63
  %204 = load i32* %182, align 4, !mcsema_real_eip !69
  %205 = add i32 %203, %204
  store i32 %205, i32* %182, align 4, !mcsema_real_eip !70
  %206 = load i32* %184, align 4, !mcsema_real_eip !71
  %207 = add i32 %206, 1
  store i32 %207, i32* %184, align 4, !mcsema_real_eip !72
  %208 = load i32* %174, align 4, !mcsema_real_eip !61
  %209 = sub i32 %207, %208, !mcsema_real_eip !61
  %210 = xor i32 %209, %207, !mcsema_real_eip !61
  %211 = icmp slt i32 %209, 0
  %212 = xor i32 %208, %207, !mcsema_real_eip !61
  %213 = and i32 %210, %212, !mcsema_real_eip !61
  %214 = icmp slt i32 %213, 0
  %tmp71.i.i = xor i1 %211, %214
  br i1 %tmp71.i.i, label %block_0x51.i.i, label %block_0x7f.loopexit.i.i, !mcsema_real_eip !62

sub_a0.exit:                                      ; preds = %block_0x7f.loopexit.i.i, %driverBlockRaw
  %RSI_val.0.i.i = phi i64 [ %127, %driverBlockRaw ], [ %191, %block_0x7f.loopexit.i.i ]
  %RDX_val.0.i.i = phi i64 [ %129, %driverBlockRaw ], [ %190, %block_0x7f.loopexit.i.i ]
  %215 = load i32* %182, align 4, !mcsema_real_eip !73
  %216 = load i32* %162, align 4, !mcsema_real_eip !74
  %217 = load i32* %164, align 4, !mcsema_real_eip !75
  %218 = add i32 %217, %216
  %219 = load i32* %166, align 4, !mcsema_real_eip !76
  %220 = add i32 %218, %219
  %221 = load i32* %168, align 4, !mcsema_real_eip !77
  %222 = add i32 %220, %221
  %223 = load i32* %170, align 4, !mcsema_real_eip !78
  %224 = add i32 %222, %223
  %225 = load i32* %172, align 4, !mcsema_real_eip !79
  %uadd76.i.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %224, i32 %225) #0
  %226 = extractvalue { i32, i1 } %uadd76.i.i, 0
  %227 = xor i32 %224, %225, !mcsema_real_eip !79
  %228 = xor i32 %227, %226, !mcsema_real_eip !79
  %229 = and i32 %228, 16, !mcsema_real_eip !79
  %230 = icmp ne i32 %229, 0, !mcsema_real_eip !79
  %231 = icmp eq i32 %226, 0, !mcsema_real_eip !79
  %232 = trunc i32 %226 to i8, !mcsema_real_eip !79
  %233 = tail call i8 @llvm.ctpop.i8(i8 %232) #0, !mcsema_real_eip !79
  %234 = and i8 %233, 1
  %235 = icmp eq i8 %234, 0
  %236 = extractvalue { i32, i1 } %uadd76.i.i, 1
  %237 = zext i32 %226 to i64, !mcsema_real_eip !79
  %238 = sext i32 %215 to i64, !mcsema_real_eip !80
  %239 = sext i32 %226 to i64, !mcsema_real_eip !80
  %240 = mul i64 %239, %238, !mcsema_real_eip !80
  %241 = mul i32 %226, %215, !mcsema_real_eip !80
  %242 = sext i32 %241 to i64, !mcsema_real_eip !80
  %243 = icmp ne i64 %242, %240, !mcsema_real_eip !80
  %244 = zext i32 %241 to i64, !mcsema_real_eip !80
  %245 = load i64* %155, align 8, !mcsema_real_eip !81
  %246 = load i64* %153, align 8, !mcsema_real_eip !82
  store i64 %244, i64* %RAX.i, align 8, !mcsema_real_eip !83
  store i64 %245, i64* %RBX.i, align 8, !mcsema_real_eip !83
  store i64 %237, i64* %RCX.i, align 8, !mcsema_real_eip !83
  store i64 %RDX_val.0.i.i, i64* %RDX.i, align 8, !mcsema_real_eip !83
  store i64 %RSI_val.0.i.i, i64* %RSI.i, align 8, !mcsema_real_eip !83
  store i64 %125, i64* %RDI.i, align 8, !mcsema_real_eip !83
  store i64 %75, i64* %RSP.i, align 8, !mcsema_real_eip !83
  store i64 %246, i64* %RBP.i, align 8, !mcsema_real_eip !83
  store i64 %133, i64* %R8.i, align 8, !mcsema_real_eip !83
  store i64 %135, i64* %R9.i, align 8, !mcsema_real_eip !83
  store i64 %158, i64* %R10.i, align 8, !mcsema_real_eip !83
  store i64 %159, i64* %R11.i, align 8, !mcsema_real_eip !83
  store <2 x i64> %149, <2 x i64>* %148, align 8
  store <2 x i64> %151, <2 x i64>* %150, align 8
  store i64 %11, i64* %RIP.i, align 8, !mcsema_real_eip !83
  store i1 %236, i1* %CF.i, align 1, !mcsema_real_eip !83
  store i1 %235, i1* %PF.i, align 1, !mcsema_real_eip !83
  store i1 %230, i1* %AF.i, align 1, !mcsema_real_eip !83
  store i1 %231, i1* %ZF.i, align 1, !mcsema_real_eip !83
  store i1 %243, i1* %SF.i, align 1, !mcsema_real_eip !83
  store i1 %243, i1* %OF.i, align 1, !mcsema_real_eip !83
  store i1 %12, i1* %DF.i, align 1, !mcsema_real_eip !83
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %14, i8* %147, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !83
  store i1 %15, i1* %FPU_B.i, align 1, !mcsema_real_eip !83
  store i1 %16, i1* %FPU_C3.i, align 1, !mcsema_real_eip !83
  store i3 %17, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !83
  store i1 %18, i1* %FPU_C2.i, align 1, !mcsema_real_eip !83
  store i1 %19, i1* %FPU_C1.i, align 1, !mcsema_real_eip !83
  store i1 %20, i1* %FPU_C0.i, align 1, !mcsema_real_eip !83
  store i1 %21, i1* %FPU_ES.i, align 1, !mcsema_real_eip !83
  store i1 %22, i1* %FPU_SF.i, align 1, !mcsema_real_eip !83
  store i1 %23, i1* %FPU_PE.i, align 1, !mcsema_real_eip !83
  store i1 %24, i1* %FPU_UE.i, align 1, !mcsema_real_eip !83
  store i1 %25, i1* %FPU_OE.i, align 1, !mcsema_real_eip !83
  store i1 %26, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !83
  store i1 %27, i1* %FPU_DE.i, align 1, !mcsema_real_eip !83
  store i1 %28, i1* %FPU_IE.i, align 1, !mcsema_real_eip !83
  store i1 %29, i1* %FPU_X.i, align 1, !mcsema_real_eip !83
  store i2 %30, i2* %FPU_RC.i, align 1, !mcsema_real_eip !83
  store i2 %31, i2* %FPU_PC.i, align 1, !mcsema_real_eip !83
  store i1 %32, i1* %FPU_PM.i, align 1, !mcsema_real_eip !83
  store i1 %33, i1* %FPU_UM.i, align 1, !mcsema_real_eip !83
  store i1 %34, i1* %FPU_OM.i, align 1, !mcsema_real_eip !83
  store i1 %35, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !83
  store i1 %36, i1* %FPU_DM.i, align 1, !mcsema_real_eip !83
  store i1 %37, i1* %FPU_IM.i, align 1, !mcsema_real_eip !83
  store i64 %40, i64* %39, align 4
  store i16 %41, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !83
  store i64 %42, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !83
  store i16 %43, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !83
  store i64 %44, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !83
  store i128 %45, i128* %XMM0.i, align 1, !mcsema_real_eip !83
  store i128 %46, i128* %XMM1.i, align 1, !mcsema_real_eip !83
  store i128 %47, i128* %XMM2.i, align 1, !mcsema_real_eip !83
  store i128 %48, i128* %XMM3.i, align 1, !mcsema_real_eip !83
  store i128 %49, i128* %XMM4.i, align 1, !mcsema_real_eip !83
  store i128 %50, i128* %XMM5.i, align 1, !mcsema_real_eip !83
  store i128 %51, i128* %XMM6.i, align 1, !mcsema_real_eip !83
  store i128 %52, i128* %XMM7.i, align 1, !mcsema_real_eip !83
  store i128 %53, i128* %XMM8.i, align 1, !mcsema_real_eip !83
  store i128 %54, i128* %XMM9.i, align 1, !mcsema_real_eip !83
  store i128 %55, i128* %XMM10.i, align 1, !mcsema_real_eip !83
  store i128 %56, i128* %XMM11.i, align 1, !mcsema_real_eip !83
  store i128 %57, i128* %XMM12.i, align 1, !mcsema_real_eip !83
  store i128 %58, i128* %XMM13.i, align 1, !mcsema_real_eip !83
  store i128 %59, i128* %XMM14.i, align 1, !mcsema_real_eip !83
  store i128 %60, i128* %XMM15.i, align 1, !mcsema_real_eip !83
  store <2 x i64> %62, <2 x i64>* %61, align 1
  call void @llvm.lifetime.end(i64 128, i8* %147)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %1, i8* %14, i32 128, i32 4, i1 false), !mcsema_real_eip !43
  %247 = bitcast <2 x i64> %62 to i128
  %trunc.i = trunc i128 %247 to i64
  %248 = lshr i128 %247, 64
  %249 = trunc i128 %248 to i64
  %uadd.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %75, i64 200)
  %250 = extractvalue { i64, i1 } %uadd.i, 0
  %251 = xor i64 %250, %75, !mcsema_real_eip !84
  %252 = and i64 %251, 16, !mcsema_real_eip !84
  %253 = icmp ne i64 %252, 0, !mcsema_real_eip !84
  %254 = icmp slt i64 %250, 0
  %255 = icmp eq i64 %250, 0, !mcsema_real_eip !84
  %256 = add i64 %5, 9223372036854775560
  %257 = and i64 %251, %256, !mcsema_real_eip !84
  %258 = icmp slt i64 %257, 0
  %259 = trunc i64 %250 to i8, !mcsema_real_eip !84
  %260 = tail call i8 @llvm.ctpop.i8(i8 %259), !mcsema_real_eip !84
  %261 = and i8 %260, 1
  %262 = icmp eq i8 %261, 0
  %263 = extractvalue { i64, i1 } %uadd.i, 1
  %264 = inttoptr i64 %250 to i64*, !mcsema_real_eip !85
  %265 = load i64* %264, align 8, !mcsema_real_eip !85
  %266 = add i64 %250, 8, !mcsema_real_eip !85
  %267 = inttoptr i64 %266 to i64*, !mcsema_real_eip !86
  %268 = load i64* %267, align 8, !mcsema_real_eip !86
  %269 = add i64 %250, 16, !mcsema_real_eip !86
  %270 = inttoptr i64 %269 to i64*, !mcsema_real_eip !87
  %271 = load i64* %270, align 8, !mcsema_real_eip !87
  %272 = add i64 %250, 24, !mcsema_real_eip !87
  %273 = inttoptr i64 %272 to i64*, !mcsema_real_eip !88
  %274 = load i64* %273, align 8, !mcsema_real_eip !88
  %275 = add i64 %250, 32, !mcsema_real_eip !88
  %276 = inttoptr i64 %275 to i64*, !mcsema_real_eip !89
  %277 = load i64* %276, align 8, !mcsema_real_eip !89
  %278 = add i64 %250, 40, !mcsema_real_eip !89
  %279 = inttoptr i64 %278 to i64*, !mcsema_real_eip !90
  %280 = load i64* %279, align 8, !mcsema_real_eip !90
  %281 = add i64 %250, 56, !mcsema_real_eip !91
  store i64 %244, i64* %RAX.i, align 8, !mcsema_real_eip !91
  store i64 %265, i64* %RBX.i, align 8, !mcsema_real_eip !91
  store i64 %237, i64* %RCX.i, align 8, !mcsema_real_eip !91
  store i64 %RDX_val.0.i.i, i64* %RDX.i, align 8, !mcsema_real_eip !91
  store i64 %RSI_val.0.i.i, i64* %RSI.i, align 8, !mcsema_real_eip !91
  store i64 %125, i64* %RDI.i, align 8, !mcsema_real_eip !91
  store i64 %281, i64* %RSP.i, align 8, !mcsema_real_eip !91
  store i64 %280, i64* %RBP.i, align 8, !mcsema_real_eip !91
  store i64 %133, i64* %R8.i, align 8, !mcsema_real_eip !91
  store i64 %135, i64* %R9.i, align 8, !mcsema_real_eip !91
  store i64 %158, i64* %R10.i, align 8, !mcsema_real_eip !91
  store i64 %159, i64* %R11.i, align 8, !mcsema_real_eip !91
  store i64 %268, i64* %R12.i, align 8, !mcsema_real_eip !91
  store i64 %271, i64* %R13.i, align 8, !mcsema_real_eip !91
  store i64 %274, i64* %R14.i, align 8, !mcsema_real_eip !91
  store i64 %277, i64* %R15.i, align 8, !mcsema_real_eip !91
  store i64 %11, i64* %RIP.i, align 8, !mcsema_real_eip !91
  store i1 %263, i1* %CF.i, align 1, !mcsema_real_eip !91
  store i1 %262, i1* %PF.i, align 1, !mcsema_real_eip !91
  store i1 %253, i1* %AF.i, align 1, !mcsema_real_eip !91
  store i1 %255, i1* %ZF.i, align 1, !mcsema_real_eip !91
  store i1 %254, i1* %SF.i, align 1, !mcsema_real_eip !91
  store i1 %258, i1* %OF.i, align 1, !mcsema_real_eip !91
  store i1 %12, i1* %DF.i, align 1, !mcsema_real_eip !91
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %14, i8* %1, i32 128, i32 8, i1 false), !mcsema_real_eip !91
  store i1 %15, i1* %FPU_B.i, align 1, !mcsema_real_eip !91
  store i1 %16, i1* %FPU_C3.i, align 1, !mcsema_real_eip !91
  store i3 %17, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !91
  store i1 %18, i1* %FPU_C2.i, align 1, !mcsema_real_eip !91
  store i1 %19, i1* %FPU_C1.i, align 1, !mcsema_real_eip !91
  store i1 %20, i1* %FPU_C0.i, align 1, !mcsema_real_eip !91
  store i1 %21, i1* %FPU_ES.i, align 1, !mcsema_real_eip !91
  store i1 %22, i1* %FPU_SF.i, align 1, !mcsema_real_eip !91
  store i1 %23, i1* %FPU_PE.i, align 1, !mcsema_real_eip !91
  store i1 %24, i1* %FPU_UE.i, align 1, !mcsema_real_eip !91
  store i1 %25, i1* %FPU_OE.i, align 1, !mcsema_real_eip !91
  store i1 %26, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !91
  store i1 %27, i1* %FPU_DE.i, align 1, !mcsema_real_eip !91
  store i1 %28, i1* %FPU_IE.i, align 1, !mcsema_real_eip !91
  store i1 %29, i1* %FPU_X.i, align 1, !mcsema_real_eip !91
  store i2 %30, i2* %FPU_RC.i, align 1, !mcsema_real_eip !91
  store i2 %31, i2* %FPU_PC.i, align 1, !mcsema_real_eip !91
  store i1 %32, i1* %FPU_PM.i, align 1, !mcsema_real_eip !91
  store i1 %33, i1* %FPU_UM.i, align 1, !mcsema_real_eip !91
  store i1 %34, i1* %FPU_OM.i, align 1, !mcsema_real_eip !91
  store i1 %35, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !91
  store i1 %36, i1* %FPU_DM.i, align 1, !mcsema_real_eip !91
  store i1 %37, i1* %FPU_IM.i, align 1, !mcsema_real_eip !91
  store i64 %40, i64* %39, align 4
  store i16 %41, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !91
  store i64 %42, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !91
  store i16 %43, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !91
  store i64 %44, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !91
  store i128 %45, i128* %XMM0.i, align 1, !mcsema_real_eip !91
  store i128 %46, i128* %XMM1.i, align 1, !mcsema_real_eip !91
  store i128 %47, i128* %XMM2.i, align 1, !mcsema_real_eip !91
  store i128 %48, i128* %XMM3.i, align 1, !mcsema_real_eip !91
  store i128 %49, i128* %XMM4.i, align 1, !mcsema_real_eip !91
  store i128 %50, i128* %XMM5.i, align 1, !mcsema_real_eip !91
  store i128 %51, i128* %XMM6.i, align 1, !mcsema_real_eip !91
  store i128 %52, i128* %XMM7.i, align 1, !mcsema_real_eip !91
  store i128 %53, i128* %XMM8.i, align 1, !mcsema_real_eip !91
  store i128 %54, i128* %XMM9.i, align 1, !mcsema_real_eip !91
  store i128 %55, i128* %XMM10.i, align 1, !mcsema_real_eip !91
  store i128 %56, i128* %XMM11.i, align 1, !mcsema_real_eip !91
  store i128 %57, i128* %XMM12.i, align 1, !mcsema_real_eip !91
  store i128 %58, i128* %XMM13.i, align 1, !mcsema_real_eip !91
  store i128 %59, i128* %XMM14.i, align 1, !mcsema_real_eip !91
  store i128 %60, i128* %XMM15.i, align 1, !mcsema_real_eip !91
  store i64 %trunc.i, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !91
  store i64 %249, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !91
  call void @llvm.lifetime.end(i64 128, i8* %1)
  ret void
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

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
!2 = metadata !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = metadata !{i64 160, [12 x i8] c"\09pushq\09%rbp\00"}
!4 = metadata !{i64 164, [12 x i8] c"\09pushq\09%r15\00"}
!5 = metadata !{i64 166, [12 x i8] c"\09pushq\09%r14\00"}
!6 = metadata !{i64 168, [12 x i8] c"\09pushq\09%r13\00"}
!7 = metadata !{i64 170, [12 x i8] c"\09pushq\09%r12\00"}
!8 = metadata !{i64 172, [12 x i8] c"\09pushq\09%rbx\00"}
!9 = metadata !{i64 173, [17 x i8] c"\09subq\09$200, %rsp\00"}
!10 = metadata !{i64 219, [23 x i8] c"\09leaq\09-144(%rbp), %rbx\00"}
!11 = metadata !{i64 226, [22 x i8] c"\09leaq\09-96(%rbp), %r14\00"}
!12 = metadata !{i64 260, [20 x i8] c"\09movl\09$0, -44(%rbp)\00"}
!13 = metadata !{i64 267, [22 x i8] c"\09movl\09%edi, -48(%rbp)\00"}
!14 = metadata !{i64 270, [22 x i8] c"\09movq\09%rsi, -56(%rbp)\00"}
!15 = metadata !{i64 283, [23 x i8] c"\09movl\09%edx, -148(%rbp)\00"}
!16 = metadata !{i64 292, [23 x i8] c"\09movq\09%r15, -160(%rbp)\00"}
!17 = metadata !{i64 299, [23 x i8] c"\09movq\09%r12, -168(%rbp)\00"}
!18 = metadata !{i64 306, [23 x i8] c"\09movl\09%eax, -172(%rbp)\00"}
!19 = metadata !{i64 312, [23 x i8] c"\09movl\09%ecx, -176(%rbp)\00"}
!20 = metadata !{i64 318, [23 x i8] c"\09movq\09%r14, -184(%rbp)\00"}
!21 = metadata !{i64 325, [23 x i8] c"\09movl\09%r8d, -188(%rbp)\00"}
!22 = metadata !{i64 332, [23 x i8] c"\09movl\09%r9d, -192(%rbp)\00"}
!23 = metadata !{i64 339, [24 x i8] c"\09movl\09%r10d, -196(%rbp)\00"}
!24 = metadata !{i64 346, [24 x i8] c"\09movl\09%r11d, -200(%rbp)\00"}
!25 = metadata !{i64 353, [23 x i8] c"\09movq\09%rbx, -208(%rbp)\00"}
!26 = metadata !{i64 360, [9 x i8] c"\09callq\090\00"}
!27 = metadata !{i64 365, [23 x i8] c"\09movq\09-208(%rbp), %rdx\00"}
!28 = metadata !{i64 375, [23 x i8] c"\09movq\09-160(%rbp), %rsi\00"}
!29 = metadata !{i64 382, [23 x i8] c"\09movq\09-168(%rbp), %rdx\00"}
!30 = metadata !{i64 389, [9 x i8] c"\09callq\090\00"}
!31 = metadata !{i64 394, [23 x i8] c"\09movl\09-172(%rbp), %edi\00"}
!32 = metadata !{i64 400, [23 x i8] c"\09movl\09-176(%rbp), %esi\00"}
!33 = metadata !{i64 406, [23 x i8] c"\09movl\09-148(%rbp), %edx\00"}
!34 = metadata !{i64 412, [23 x i8] c"\09movl\09-188(%rbp), %ecx\00"}
!35 = metadata !{i64 418, [23 x i8] c"\09movl\09-192(%rbp), %r8d\00"}
!36 = metadata !{i64 425, [23 x i8] c"\09movl\09-196(%rbp), %r9d\00"}
!37 = metadata !{i64 432, [18 x i8] c"\09movl\09$10, (%rsp)\00"}
!38 = metadata !{i64 439, [23 x i8] c"\09movq\09-184(%rbp), %rbx\00"}
!39 = metadata !{i64 446, [20 x i8] c"\09movq\09%rbx, 8(%rsp)\00"}
!40 = metadata !{i64 451, [20 x i8] c"\09movl\09$10, 16(%rsp)\00"}
!41 = metadata !{i64 459, [23 x i8] c"\09movq\09-208(%rbp), %r14\00"}
!42 = metadata !{i64 466, [21 x i8] c"\09movq\09%r14, 24(%rsp)\00"}
!43 = metadata !{i64 471, [12 x i8] c"\09callq\09-476\00"}
!44 = metadata !{i64 4, [12 x i8] c"\09pushq\09%rbx\00"}
!45 = metadata !{i64 5, [21 x i8] c"\09movq\0940(%rbp), %rax\00"}
!46 = metadata !{i64 9, [22 x i8] c"\09movl\0932(%rbp), %r10d\00"}
!47 = metadata !{i64 13, [21 x i8] c"\09movq\0924(%rbp), %r11\00"}
!48 = metadata !{i64 17, [21 x i8] c"\09movl\0916(%rbp), %ebx\00"}
!49 = metadata !{i64 20, [22 x i8] c"\09movl\09%edi, -12(%rbp)\00"}
!50 = metadata !{i64 23, [22 x i8] c"\09movl\09%esi, -16(%rbp)\00"}
!51 = metadata !{i64 26, [22 x i8] c"\09movl\09%edx, -20(%rbp)\00"}
!52 = metadata !{i64 29, [22 x i8] c"\09movl\09%ecx, -24(%rbp)\00"}
!53 = metadata !{i64 32, [22 x i8] c"\09movl\09%r8d, -28(%rbp)\00"}
!54 = metadata !{i64 36, [22 x i8] c"\09movl\09%r9d, -32(%rbp)\00"}
!55 = metadata !{i64 40, [22 x i8] c"\09movl\09%ebx, -36(%rbp)\00"}
!56 = metadata !{i64 43, [22 x i8] c"\09movq\09%r11, -48(%rbp)\00"}
!57 = metadata !{i64 47, [23 x i8] c"\09movl\09%r10d, -52(%rbp)\00"}
!58 = metadata !{i64 51, [22 x i8] c"\09movq\09%rax, -64(%rbp)\00"}
!59 = metadata !{i64 55, [20 x i8] c"\09movl\09$0, -68(%rbp)\00"}
!60 = metadata !{i64 62, [20 x i8] c"\09movl\09$0, -72(%rbp)\00"}
!61 = metadata !{i64 72, [22 x i8] c"\09cmpl\09-36(%rbp), %eax\00"}
!62 = metadata !{i64 75, [8 x i8] c"\09jge\0946\00"}
!63 = metadata !{i64 100, [26 x i8] c"\09subl\09(%rcx,%rax,4), %edx\00"}
!64 = metadata !{i64 106, [17 x i8] c"\09addl\09%edx, %esi\00"}
!65 = metadata !{i64 81, [24 x i8] c"\09movslq\09-72(%rbp), %rax\00"}
!66 = metadata !{i64 85, [22 x i8] c"\09movq\09-48(%rbp), %rcx\00"}
!67 = metadata !{i64 89, [26 x i8] c"\09movl\09(%rcx,%rax,4), %edx\00"}
!68 = metadata !{i64 96, [22 x i8] c"\09movq\09-64(%rbp), %rcx\00"}
!69 = metadata !{i64 103, [22 x i8] c"\09movl\09-68(%rbp), %esi\00"}
!70 = metadata !{i64 108, [22 x i8] c"\09movl\09%esi, -68(%rbp)\00"}
!71 = metadata !{i64 111, [22 x i8] c"\09movl\09-72(%rbp), %eax\00"}
!72 = metadata !{i64 119, [22 x i8] c"\09movl\09%eax, -72(%rbp)\00"}
!73 = metadata !{i64 127, [22 x i8] c"\09movl\09-68(%rbp), %eax\00"}
!74 = metadata !{i64 130, [22 x i8] c"\09movl\09-12(%rbp), %ecx\00"}
!75 = metadata !{i64 133, [22 x i8] c"\09addl\09-16(%rbp), %ecx\00"}
!76 = metadata !{i64 136, [22 x i8] c"\09addl\09-20(%rbp), %ecx\00"}
!77 = metadata !{i64 139, [22 x i8] c"\09addl\09-24(%rbp), %ecx\00"}
!78 = metadata !{i64 142, [22 x i8] c"\09addl\09-28(%rbp), %ecx\00"}
!79 = metadata !{i64 145, [22 x i8] c"\09addl\09-32(%rbp), %ecx\00"}
!80 = metadata !{i64 148, [18 x i8] c"\09imull\09%ecx, %eax\00"}
!81 = metadata !{i64 151, [11 x i8] c"\09popq\09%rbx\00"}
!82 = metadata !{i64 152, [11 x i8] c"\09popq\09%rbp\00"}
!83 = metadata !{i64 153, [6 x i8] c"\09retq\00"}
!84 = metadata !{i64 476, [17 x i8] c"\09addq\09$200, %rsp\00"}
!85 = metadata !{i64 483, [11 x i8] c"\09popq\09%rbx\00"}
!86 = metadata !{i64 484, [11 x i8] c"\09popq\09%r12\00"}
!87 = metadata !{i64 486, [11 x i8] c"\09popq\09%r13\00"}
!88 = metadata !{i64 488, [11 x i8] c"\09popq\09%r14\00"}
!89 = metadata !{i64 490, [11 x i8] c"\09popq\09%r15\00"}
!90 = metadata !{i64 492, [11 x i8] c"\09popq\09%rbp\00"}
!91 = metadata !{i64 493, [6 x i8] c"\09retq\00"}
