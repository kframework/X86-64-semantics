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
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* %STi_val.i.0..sroa_cast)
  %RAX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !3
  %RBX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !3
  %1 = load i64* %RBX.i, align 8, !mcsema_real_eip !3
  %RCX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !3
  %RDX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !3
  %RSI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !3
  %2 = load i64* %RSI.i, align 8, !mcsema_real_eip !3
  %RDI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !3
  %3 = load i64* %RDI.i, align 8, !mcsema_real_eip !3
  %RSP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !3
  %4 = load i64* %RSP.i, align 8, !mcsema_real_eip !3
  %RBP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !3
  %5 = load i64* %RBP.i, align 8, !mcsema_real_eip !3
  %R8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !3
  %R9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !3
  %R10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !3
  %R11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !3
  %R12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !3
  %6 = load i64* %R12.i, align 8, !mcsema_real_eip !3
  %R13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !3
  %7 = load i64* %R13.i, align 8, !mcsema_real_eip !3
  %R14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !3
  %8 = load i64* %R14.i, align 8, !mcsema_real_eip !3
  %R15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !3
  %9 = load i64* %R15.i, align 8, !mcsema_real_eip !3
  %RIP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !3
  %10 = load i64* %RIP.i, align 8, !mcsema_real_eip !3
  %CF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !3
  %PF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !3
  %AF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !3
  %ZF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !3
  %SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !3
  %OF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !3
  %DF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !3
  %11 = load i1* %DF.i, align 1, !mcsema_real_eip !3
  %12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !3
  %13 = bitcast x86_fp80* %12 to i8*, !mcsema_real_eip !3
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %STi_val.i.0..sroa_cast, i8* %13, i32 128, i32 4, i1 false), !mcsema_real_eip !3
  %FPU_B.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !3
  %14 = load i1* %FPU_B.i, align 1, !mcsema_real_eip !3
  %FPU_C3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !3
  %15 = load i1* %FPU_C3.i, align 1, !mcsema_real_eip !3
  %FPU_TOP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !3
  %16 = load i3* %FPU_TOP.i, align 1, !mcsema_real_eip !3
  %FPU_C2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !3
  %17 = load i1* %FPU_C2.i, align 1, !mcsema_real_eip !3
  %FPU_C1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !3
  %18 = load i1* %FPU_C1.i, align 1, !mcsema_real_eip !3
  %FPU_C0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !3
  %19 = load i1* %FPU_C0.i, align 1, !mcsema_real_eip !3
  %FPU_ES.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !3
  %20 = load i1* %FPU_ES.i, align 1, !mcsema_real_eip !3
  %FPU_SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !3
  %21 = load i1* %FPU_SF.i, align 1, !mcsema_real_eip !3
  %FPU_PE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !3
  %22 = load i1* %FPU_PE.i, align 1, !mcsema_real_eip !3
  %FPU_UE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !3
  %23 = load i1* %FPU_UE.i, align 1, !mcsema_real_eip !3
  %FPU_OE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !3
  %24 = load i1* %FPU_OE.i, align 1, !mcsema_real_eip !3
  %FPU_ZE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !3
  %25 = load i1* %FPU_ZE.i, align 1, !mcsema_real_eip !3
  %FPU_DE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !3
  %26 = load i1* %FPU_DE.i, align 1, !mcsema_real_eip !3
  %FPU_IE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !3
  %27 = load i1* %FPU_IE.i, align 1, !mcsema_real_eip !3
  %FPU_X.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !3
  %28 = load i1* %FPU_X.i, align 1, !mcsema_real_eip !3
  %FPU_RC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !3
  %29 = load i2* %FPU_RC.i, align 1, !mcsema_real_eip !3
  %FPU_PC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !3
  %30 = load i2* %FPU_PC.i, align 1, !mcsema_real_eip !3
  %FPU_PM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !3
  %31 = load i1* %FPU_PM.i, align 1, !mcsema_real_eip !3
  %FPU_UM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !3
  %32 = load i1* %FPU_UM.i, align 1, !mcsema_real_eip !3
  %FPU_OM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !3
  %33 = load i1* %FPU_OM.i, align 1, !mcsema_real_eip !3
  %FPU_ZM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !3
  %34 = load i1* %FPU_ZM.i, align 1, !mcsema_real_eip !3
  %FPU_DM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !3
  %35 = load i1* %FPU_DM.i, align 1, !mcsema_real_eip !3
  %FPU_IM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !3
  %36 = load i1* %FPU_IM.i, align 1, !mcsema_real_eip !3
  %37 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !3
  %38 = bitcast i8* %37 to i64*
  %39 = load i64* %38, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !3
  %40 = load i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !3
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !3
  %41 = load i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !3
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !3
  %42 = load i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !3
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !3
  %43 = load i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !3
  %XMM0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !3
  %44 = load i128* %XMM0.i, align 1, !mcsema_real_eip !3
  %XMM1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !3
  %45 = load i128* %XMM1.i, align 1, !mcsema_real_eip !3
  %XMM2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !3
  %46 = load i128* %XMM2.i, align 1, !mcsema_real_eip !3
  %XMM3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !3
  %47 = load i128* %XMM3.i, align 1, !mcsema_real_eip !3
  %XMM4.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !3
  %48 = load i128* %XMM4.i, align 1, !mcsema_real_eip !3
  %XMM5.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !3
  %49 = load i128* %XMM5.i, align 1, !mcsema_real_eip !3
  %XMM6.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !3
  %50 = load i128* %XMM6.i, align 1, !mcsema_real_eip !3
  %XMM7.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !3
  %51 = load i128* %XMM7.i, align 1, !mcsema_real_eip !3
  %XMM8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !3
  %52 = load i128* %XMM8.i, align 1, !mcsema_real_eip !3
  %XMM9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !3
  %53 = load i128* %XMM9.i, align 1, !mcsema_real_eip !3
  %XMM10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !3
  %54 = load i128* %XMM10.i, align 1, !mcsema_real_eip !3
  %XMM11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !3
  %55 = load i128* %XMM11.i, align 1, !mcsema_real_eip !3
  %XMM12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !3
  %56 = load i128* %XMM12.i, align 1, !mcsema_real_eip !3
  %XMM13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !3
  %57 = load i128* %XMM13.i, align 1, !mcsema_real_eip !3
  %XMM14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !3
  %58 = load i128* %XMM14.i, align 1, !mcsema_real_eip !3
  %XMM15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !3
  %59 = load i128* %XMM15.i, align 1, !mcsema_real_eip !3
  %STACK_BASE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !3
  %STACK_LIMIT.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !3
  %60 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  %61 = load <2 x i64>* %60, align 8
  %62 = add i64 %4, -8
  %63 = inttoptr i64 %62 to i64*, !mcsema_real_eip !3
  store i64 %5, i64* %63, align 8, !mcsema_real_eip !3
  %64 = add i64 %4, -16
  %65 = inttoptr i64 %64 to i64*, !mcsema_real_eip !4
  store i64 %9, i64* %65, align 8, !mcsema_real_eip !4
  %66 = add i64 %4, -24
  %67 = inttoptr i64 %66 to i64*, !mcsema_real_eip !5
  store i64 %8, i64* %67, align 8, !mcsema_real_eip !5
  %68 = add i64 %4, -32
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !6
  store i64 %7, i64* %69, align 8, !mcsema_real_eip !6
  %70 = add i64 %4, -40
  %71 = inttoptr i64 %70 to i64*, !mcsema_real_eip !7
  store i64 %6, i64* %71, align 8, !mcsema_real_eip !7
  %72 = add i64 %4, -48
  %73 = inttoptr i64 %72 to i64*, !mcsema_real_eip !8
  store i64 %1, i64* %73, align 8, !mcsema_real_eip !8
  %74 = add i64 %4, -248
  %75 = xor i64 %74, %72, !mcsema_real_eip !9
  %76 = and i64 %75, 16, !mcsema_real_eip !9
  %77 = icmp ne i64 %76, 0, !mcsema_real_eip !9
  %78 = trunc i64 %74 to i8, !mcsema_real_eip !9
  %79 = tail call i8 @llvm.ctpop.i8(i8 %78), !mcsema_real_eip !9
  %80 = and i8 %79, 1
  %81 = icmp eq i8 %80, 0
  %82 = icmp eq i64 %74, 0, !mcsema_real_eip !9
  %83 = icmp slt i64 %74, 0
  %84 = icmp ult i64 %72, 200, !mcsema_real_eip !9
  %85 = and i64 %75, %72, !mcsema_real_eip !9
  %86 = icmp slt i64 %85, 0
  %87 = add i64 %4, -152, !mcsema_real_eip !10
  %88 = add i64 %4, -104, !mcsema_real_eip !11
  %89 = add i64 %4, -52, !mcsema_real_eip !12
  %90 = inttoptr i64 %89 to i32*
  store i32 0, i32* %90, align 4, !mcsema_real_eip !12
  %91 = add i64 %4, -56, !mcsema_real_eip !13
  %92 = trunc i64 %3 to i32, !mcsema_real_eip !13
  %93 = inttoptr i64 %91 to i32*
  store i32 %92, i32* %93, align 4, !mcsema_real_eip !13
  %94 = add i64 %4, -64, !mcsema_real_eip !14
  %95 = inttoptr i64 %94 to i64*, !mcsema_real_eip !14
  store i64 %2, i64* %95, align 8, !mcsema_real_eip !14
  %96 = add i64 %4, -156, !mcsema_real_eip !15
  %97 = inttoptr i64 %96 to i32*
  store i32 300, i32* %97, align 4, !mcsema_real_eip !15
  %98 = add i64 %4, -168, !mcsema_real_eip !16
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !16
  store i64 add (i64 ptrtoint (%0* @data_0x1ee to i64), i64 48), i64* %99, align 8, !mcsema_real_eip !16
  %100 = add i64 %4, -176, !mcsema_real_eip !17
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !17
  store i64 40, i64* %101, align 8, !mcsema_real_eip !17
  %102 = add i64 %4, -180, !mcsema_real_eip !18
  %103 = inttoptr i64 %102 to i32*
  store i32 100, i32* %103, align 4, !mcsema_real_eip !18
  %104 = add i64 %4, -184, !mcsema_real_eip !19
  %105 = inttoptr i64 %104 to i32*
  store i32 200, i32* %105, align 4, !mcsema_real_eip !19
  %106 = add i64 %4, -192, !mcsema_real_eip !20
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !20
  store i64 %88, i64* %107, align 8, !mcsema_real_eip !20
  %108 = add i64 %4, -196, !mcsema_real_eip !21
  %109 = inttoptr i64 %108 to i32*
  store i32 400, i32* %109, align 4, !mcsema_real_eip !21
  %110 = add i64 %4, -200, !mcsema_real_eip !22
  %111 = inttoptr i64 %110 to i32*
  store i32 500, i32* %111, align 4, !mcsema_real_eip !22
  %112 = add i64 %4, -204, !mcsema_real_eip !23
  %113 = inttoptr i64 %112 to i32*
  store i32 600, i32* %113, align 4, !mcsema_real_eip !23
  %114 = add i64 %4, -208, !mcsema_real_eip !24
  %115 = inttoptr i64 %114 to i32*
  store i32 10, i32* %115, align 4, !mcsema_real_eip !24
  %116 = add i64 %4, -216, !mcsema_real_eip !25
  %117 = inttoptr i64 %116 to i64*, !mcsema_real_eip !25
  store i64 %87, i64* %117, align 8, !mcsema_real_eip !25
  %118 = tail call x86_64_sysvcc i64 @memcpy(i64 %88, i64 ptrtoint (%0* @data_0x1ee to i64), i64 40), !mcsema_real_eip !26
  %119 = load i64* %117, align 8, !mcsema_real_eip !27
  %120 = load i64* %99, align 8, !mcsema_real_eip !28
  %121 = load i64* %101, align 8, !mcsema_real_eip !29
  %122 = tail call x86_64_sysvcc i64 @memcpy(i64 %119, i64 %120, i64 %121), !mcsema_real_eip !30
  %123 = load i32* %103, align 4, !mcsema_real_eip !31
  %124 = zext i32 %123 to i64, !mcsema_real_eip !31
  %125 = load i32* %105, align 4, !mcsema_real_eip !32
  %126 = zext i32 %125 to i64, !mcsema_real_eip !32
  %127 = load i32* %97, align 4, !mcsema_real_eip !33
  %128 = zext i32 %127 to i64, !mcsema_real_eip !33
  %129 = load i32* %109, align 4, !mcsema_real_eip !34
  %130 = zext i32 %129 to i64, !mcsema_real_eip !34
  %131 = load i32* %111, align 4, !mcsema_real_eip !35
  %132 = zext i32 %131 to i64, !mcsema_real_eip !35
  %133 = load i32* %113, align 4, !mcsema_real_eip !36
  %134 = zext i32 %133 to i64, !mcsema_real_eip !36
  %135 = inttoptr i64 %74 to i32*
  store i32 10, i32* %135, align 4, !mcsema_real_eip !37
  %136 = load i64* %107, align 8, !mcsema_real_eip !38
  %137 = add i64 %4, -240, !mcsema_real_eip !39
  %138 = inttoptr i64 %137 to i64*, !mcsema_real_eip !39
  store i64 %136, i64* %138, align 8, !mcsema_real_eip !39
  %139 = add i64 %4, -232, !mcsema_real_eip !40
  %140 = inttoptr i64 %139 to i32*
  store i32 10, i32* %140, align 4, !mcsema_real_eip !40
  %141 = load i64* %117, align 8, !mcsema_real_eip !41
  %142 = add i64 %4, -224, !mcsema_real_eip !42
  %143 = inttoptr i64 %142 to i64*, !mcsema_real_eip !42
  store i64 %141, i64* %143, align 8, !mcsema_real_eip !42
  %144 = add i64 %4, -256
  %145 = inttoptr i64 %144 to i64*, !mcsema_real_eip !43
  store i64 -4981261766360305936, i64* %145, align 8, !mcsema_real_eip !43
  store i64 %122, i64* %RAX.i, align 8, !mcsema_real_eip !43
  store i64 %136, i64* %RBX.i, align 8, !mcsema_real_eip !43
  store i64 %130, i64* %RCX.i, align 8, !mcsema_real_eip !43
  store i64 %128, i64* %RDX.i, align 8, !mcsema_real_eip !43
  store i64 %126, i64* %RSI.i, align 8, !mcsema_real_eip !43
  store i64 %124, i64* %RDI.i, align 8, !mcsema_real_eip !43
  store i64 %144, i64* %RSP.i, align 8, !mcsema_real_eip !43
  store i64 %62, i64* %RBP.i, align 8, !mcsema_real_eip !43
  store i64 %132, i64* %R8.i, align 8, !mcsema_real_eip !43
  store i64 %134, i64* %R9.i, align 8, !mcsema_real_eip !43
  store i64 600, i64* %R10.i, align 8, !mcsema_real_eip !43
  store i64 10, i64* %R11.i, align 8, !mcsema_real_eip !43
  store i64 40, i64* %R12.i, align 8, !mcsema_real_eip !43
  store i64 ptrtoint (%0* @data_0x1ee to i64), i64* %R13.i, align 8, !mcsema_real_eip !43
  store i64 %141, i64* %R14.i, align 8, !mcsema_real_eip !43
  store i64 add (i64 ptrtoint (%0* @data_0x1ee to i64), i64 48), i64* %R15.i, align 8, !mcsema_real_eip !43
  store i64 %10, i64* %RIP.i, align 8, !mcsema_real_eip !43
  store i1 %84, i1* %CF.i, align 1, !mcsema_real_eip !43
  store i1 %81, i1* %PF.i, align 1, !mcsema_real_eip !43
  store i1 %77, i1* %AF.i, align 1, !mcsema_real_eip !43
  store i1 %82, i1* %ZF.i, align 1, !mcsema_real_eip !43
  store i1 %83, i1* %SF.i, align 1, !mcsema_real_eip !43
  store i1 %86, i1* %OF.i, align 1, !mcsema_real_eip !43
  store i1 %11, i1* %DF.i, align 1, !mcsema_real_eip !43
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %13, i8* %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !43
  store i1 %14, i1* %FPU_B.i, align 1, !mcsema_real_eip !43
  store i1 %15, i1* %FPU_C3.i, align 1, !mcsema_real_eip !43
  store i3 %16, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !43
  store i1 %17, i1* %FPU_C2.i, align 1, !mcsema_real_eip !43
  store i1 %18, i1* %FPU_C1.i, align 1, !mcsema_real_eip !43
  store i1 %19, i1* %FPU_C0.i, align 1, !mcsema_real_eip !43
  store i1 %20, i1* %FPU_ES.i, align 1, !mcsema_real_eip !43
  store i1 %21, i1* %FPU_SF.i, align 1, !mcsema_real_eip !43
  store i1 %22, i1* %FPU_PE.i, align 1, !mcsema_real_eip !43
  store i1 %23, i1* %FPU_UE.i, align 1, !mcsema_real_eip !43
  store i1 %24, i1* %FPU_OE.i, align 1, !mcsema_real_eip !43
  store i1 %25, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !43
  store i1 %26, i1* %FPU_DE.i, align 1, !mcsema_real_eip !43
  store i1 %27, i1* %FPU_IE.i, align 1, !mcsema_real_eip !43
  store i1 %28, i1* %FPU_X.i, align 1, !mcsema_real_eip !43
  store i2 %29, i2* %FPU_RC.i, align 1, !mcsema_real_eip !43
  store i2 %30, i2* %FPU_PC.i, align 1, !mcsema_real_eip !43
  store i1 %31, i1* %FPU_PM.i, align 1, !mcsema_real_eip !43
  store i1 %32, i1* %FPU_UM.i, align 1, !mcsema_real_eip !43
  store i1 %33, i1* %FPU_OM.i, align 1, !mcsema_real_eip !43
  store i1 %34, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !43
  store i1 %35, i1* %FPU_DM.i, align 1, !mcsema_real_eip !43
  store i1 %36, i1* %FPU_IM.i, align 1, !mcsema_real_eip !43
  store i64 %39, i64* %38, align 4
  store i16 %40, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !43
  store i64 %41, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !43
  store i16 %42, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !43
  store i64 %43, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !43
  store i128 %44, i128* %XMM0.i, align 1, !mcsema_real_eip !43
  store i128 %45, i128* %XMM1.i, align 1, !mcsema_real_eip !43
  store i128 %46, i128* %XMM2.i, align 1, !mcsema_real_eip !43
  store i128 %47, i128* %XMM3.i, align 1, !mcsema_real_eip !43
  store i128 %48, i128* %XMM4.i, align 1, !mcsema_real_eip !43
  store i128 %49, i128* %XMM5.i, align 1, !mcsema_real_eip !43
  store i128 %50, i128* %XMM6.i, align 1, !mcsema_real_eip !43
  store i128 %51, i128* %XMM7.i, align 1, !mcsema_real_eip !43
  store i128 %52, i128* %XMM8.i, align 1, !mcsema_real_eip !43
  store i128 %53, i128* %XMM9.i, align 1, !mcsema_real_eip !43
  store i128 %54, i128* %XMM10.i, align 1, !mcsema_real_eip !43
  store i128 %55, i128* %XMM11.i, align 1, !mcsema_real_eip !43
  store i128 %56, i128* %XMM12.i, align 1, !mcsema_real_eip !43
  store i128 %57, i128* %XMM13.i, align 1, !mcsema_real_eip !43
  store i128 %58, i128* %XMM14.i, align 1, !mcsema_real_eip !43
  store i128 %59, i128* %XMM15.i, align 1, !mcsema_real_eip !43
  store <2 x i64> %61, <2 x i64>* %60, align 1
  %STi_val.i.0..sroa_cast.i = bitcast [8 x x86_fp80]* %STi_val.i.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* %STi_val.i.0..sroa_cast.i)
  %146 = bitcast i64* %R12.i to <2 x i64>*
  %147 = load <2 x i64>* %146, align 8
  %148 = bitcast i64* %R14.i to <2 x i64>*
  %149 = load <2 x i64>* %148, align 8
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %STi_val.i.0..sroa_cast.i, i8* %STi_val.i.0..sroa_cast, i32 128, i32 16, i1 false)
  %150 = add i64 %4, -264
  %151 = inttoptr i64 %150 to i64*, !mcsema_real_eip !2
  store i64 %62, i64* %151, align 8, !mcsema_real_eip !2
  %152 = add i64 %4, -272
  %153 = inttoptr i64 %152 to i64*, !mcsema_real_eip !44
  store i64 %136, i64* %153, align 8, !mcsema_real_eip !44
  %154 = load i64* %143, align 8, !mcsema_real_eip !45
  %155 = load i32* %140, align 4, !mcsema_real_eip !46
  %156 = zext i32 %155 to i64, !mcsema_real_eip !46
  %157 = load i64* %138, align 8, !mcsema_real_eip !47
  %158 = load i32* %135, align 4, !mcsema_real_eip !48
  %159 = add i64 %4, -276, !mcsema_real_eip !49
  %160 = inttoptr i64 %159 to i32*
  store i32 %123, i32* %160, align 4, !mcsema_real_eip !49
  %161 = add i64 %4, -280, !mcsema_real_eip !50
  %162 = inttoptr i64 %161 to i32*
  store i32 %125, i32* %162, align 4, !mcsema_real_eip !50
  %163 = add i64 %4, -284, !mcsema_real_eip !51
  %164 = inttoptr i64 %163 to i32*
  store i32 %127, i32* %164, align 4, !mcsema_real_eip !51
  %165 = add i64 %4, -288, !mcsema_real_eip !52
  %166 = inttoptr i64 %165 to i32*
  store i32 %129, i32* %166, align 4, !mcsema_real_eip !52
  %167 = add i64 %4, -292, !mcsema_real_eip !53
  %168 = inttoptr i64 %167 to i32*
  store i32 %131, i32* %168, align 4, !mcsema_real_eip !53
  %169 = add i64 %4, -296, !mcsema_real_eip !54
  %170 = inttoptr i64 %169 to i32*
  store i32 %133, i32* %170, align 4, !mcsema_real_eip !54
  %171 = add i64 %4, -300, !mcsema_real_eip !55
  %172 = inttoptr i64 %171 to i32*
  store i32 %158, i32* %172, align 4, !mcsema_real_eip !55
  %173 = add i64 %4, -312, !mcsema_real_eip !56
  %174 = inttoptr i64 %173 to i64*, !mcsema_real_eip !56
  store i64 %157, i64* %174, align 8, !mcsema_real_eip !56
  %175 = add i64 %4, -316, !mcsema_real_eip !57
  %176 = inttoptr i64 %175 to i32*
  store i32 %155, i32* %176, align 4, !mcsema_real_eip !57
  %177 = add i64 %4, -328, !mcsema_real_eip !58
  %178 = inttoptr i64 %177 to i64*, !mcsema_real_eip !58
  store i64 %154, i64* %178, align 8, !mcsema_real_eip !58
  %179 = add i64 %4, -332, !mcsema_real_eip !59
  %180 = inttoptr i64 %179 to i32*
  store i32 0, i32* %180, align 4, !mcsema_real_eip !59
  %181 = add i64 %4, -336, !mcsema_real_eip !60
  %182 = inttoptr i64 %181 to i32*
  store i32 0, i32* %182, align 4, !mcsema_real_eip !60
  %183 = load i32* %172, align 4, !mcsema_real_eip !61
  %184 = sub i32 0, %183, !mcsema_real_eip !61
  %185 = icmp slt i32 %184, 0
  %186 = and i32 %183, %184, !mcsema_real_eip !61
  %187 = icmp slt i32 %186, 0
  %tmp.i.i = xor i1 %185, %187
  br i1 %tmp.i.i, label %block_0x51.i.i.preheader, label %sub_a0.exit, !mcsema_real_eip !62

block_0x51.i.i.preheader:                         ; preds = %driverBlockRaw
  br label %block_0x51.i.i

block_0x7f.loopexit.i.i:                          ; preds = %block_0x51.i.i
  %.lcssa6 = phi i32 [ %203, %block_0x51.i.i ]
  %.lcssa = phi i32 [ %201, %block_0x51.i.i ]
  %188 = zext i32 %.lcssa to i64, !mcsema_real_eip !63
  %189 = zext i32 %.lcssa6 to i64, !mcsema_real_eip !64
  br label %sub_a0.exit

block_0x51.i.i:                                   ; preds = %block_0x51.i.i, %block_0x51.i.i.preheader
  %190 = phi i32 [ %205, %block_0x51.i.i ], [ 0, %block_0x51.i.i.preheader ]
  %191 = sext i32 %190 to i64, !mcsema_real_eip !65
  %192 = load i64* %174, align 8, !mcsema_real_eip !66
  %193 = shl nsw i64 %191, 2
  %194 = add i64 %193, %192, !mcsema_real_eip !67
  %195 = inttoptr i64 %194 to i32*
  %196 = load i32* %195, align 4, !mcsema_real_eip !67
  %197 = load i64* %178, align 8, !mcsema_real_eip !68
  %198 = add i64 %197, %193, !mcsema_real_eip !63
  %199 = inttoptr i64 %198 to i32*
  %200 = load i32* %199, align 4, !mcsema_real_eip !63
  %201 = sub i32 %196, %200, !mcsema_real_eip !63
  %202 = load i32* %180, align 4, !mcsema_real_eip !69
  %203 = add i32 %201, %202
  store i32 %203, i32* %180, align 4, !mcsema_real_eip !70
  %204 = load i32* %182, align 4, !mcsema_real_eip !71
  %205 = add i32 %204, 1
  store i32 %205, i32* %182, align 4, !mcsema_real_eip !72
  %206 = load i32* %172, align 4, !mcsema_real_eip !61
  %207 = sub i32 %205, %206, !mcsema_real_eip !61
  %208 = xor i32 %207, %205, !mcsema_real_eip !61
  %209 = icmp slt i32 %207, 0
  %210 = xor i32 %206, %205, !mcsema_real_eip !61
  %211 = and i32 %208, %210, !mcsema_real_eip !61
  %212 = icmp slt i32 %211, 0
  %tmp71.i.i = xor i1 %209, %212
  br i1 %tmp71.i.i, label %block_0x51.i.i, label %block_0x7f.loopexit.i.i, !mcsema_real_eip !62

sub_a0.exit:                                      ; preds = %block_0x7f.loopexit.i.i, %driverBlockRaw
  %RSI_val.0.i.i = phi i64 [ %126, %driverBlockRaw ], [ %189, %block_0x7f.loopexit.i.i ]
  %RDX_val.0.i.i = phi i64 [ %128, %driverBlockRaw ], [ %188, %block_0x7f.loopexit.i.i ]
  %213 = load i32* %180, align 4, !mcsema_real_eip !73
  %214 = load i32* %160, align 4, !mcsema_real_eip !74
  %215 = load i32* %162, align 4, !mcsema_real_eip !75
  %216 = add i32 %215, %214
  %217 = load i32* %164, align 4, !mcsema_real_eip !76
  %218 = add i32 %216, %217
  %219 = load i32* %166, align 4, !mcsema_real_eip !77
  %220 = add i32 %218, %219
  %221 = load i32* %168, align 4, !mcsema_real_eip !78
  %222 = add i32 %220, %221
  %223 = load i32* %170, align 4, !mcsema_real_eip !79
  %uadd76.i.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %222, i32 %223) #0
  %224 = extractvalue { i32, i1 } %uadd76.i.i, 0
  %225 = xor i32 %222, %223, !mcsema_real_eip !79
  %226 = xor i32 %225, %224, !mcsema_real_eip !79
  %227 = and i32 %226, 16, !mcsema_real_eip !79
  %228 = icmp ne i32 %227, 0, !mcsema_real_eip !79
  %229 = icmp eq i32 %224, 0, !mcsema_real_eip !79
  %230 = trunc i32 %224 to i8, !mcsema_real_eip !79
  %231 = tail call i8 @llvm.ctpop.i8(i8 %230) #0, !mcsema_real_eip !79
  %232 = and i8 %231, 1
  %233 = icmp eq i8 %232, 0
  %234 = extractvalue { i32, i1 } %uadd76.i.i, 1
  %235 = zext i32 %224 to i64, !mcsema_real_eip !79
  %236 = sext i32 %213 to i64, !mcsema_real_eip !80
  %237 = sext i32 %224 to i64, !mcsema_real_eip !80
  %238 = mul i64 %237, %236, !mcsema_real_eip !80
  %239 = mul i32 %224, %213, !mcsema_real_eip !80
  %240 = sext i32 %239 to i64, !mcsema_real_eip !80
  %241 = icmp ne i64 %240, %238, !mcsema_real_eip !80
  %242 = zext i32 %239 to i64, !mcsema_real_eip !80
  %243 = load i64* %153, align 8, !mcsema_real_eip !81
  %244 = load i64* %151, align 8, !mcsema_real_eip !82
  store i64 %242, i64* %RAX.i, align 8, !mcsema_real_eip !83
  store i64 %243, i64* %RBX.i, align 8, !mcsema_real_eip !83
  store i64 %235, i64* %RCX.i, align 8, !mcsema_real_eip !83
  store i64 %RDX_val.0.i.i, i64* %RDX.i, align 8, !mcsema_real_eip !83
  store i64 %RSI_val.0.i.i, i64* %RSI.i, align 8, !mcsema_real_eip !83
  store i64 %124, i64* %RDI.i, align 8, !mcsema_real_eip !83
  store i64 %74, i64* %RSP.i, align 8, !mcsema_real_eip !83
  store i64 %244, i64* %RBP.i, align 8, !mcsema_real_eip !83
  store i64 %132, i64* %R8.i, align 8, !mcsema_real_eip !83
  store i64 %134, i64* %R9.i, align 8, !mcsema_real_eip !83
  store i64 %156, i64* %R10.i, align 8, !mcsema_real_eip !83
  store i64 %157, i64* %R11.i, align 8, !mcsema_real_eip !83
  store <2 x i64> %147, <2 x i64>* %146, align 8
  store <2 x i64> %149, <2 x i64>* %148, align 8
  store i64 %10, i64* %RIP.i, align 8, !mcsema_real_eip !83
  store i1 %234, i1* %CF.i, align 1, !mcsema_real_eip !83
  store i1 %233, i1* %PF.i, align 1, !mcsema_real_eip !83
  store i1 %228, i1* %AF.i, align 1, !mcsema_real_eip !83
  store i1 %229, i1* %ZF.i, align 1, !mcsema_real_eip !83
  store i1 %241, i1* %SF.i, align 1, !mcsema_real_eip !83
  store i1 %241, i1* %OF.i, align 1, !mcsema_real_eip !83
  store i1 %11, i1* %DF.i, align 1, !mcsema_real_eip !83
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %13, i8* %STi_val.i.0..sroa_cast.i, i32 128, i32 8, i1 false) #0, !mcsema_real_eip !83
  store i1 %14, i1* %FPU_B.i, align 1, !mcsema_real_eip !83
  store i1 %15, i1* %FPU_C3.i, align 1, !mcsema_real_eip !83
  store i3 %16, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !83
  store i1 %17, i1* %FPU_C2.i, align 1, !mcsema_real_eip !83
  store i1 %18, i1* %FPU_C1.i, align 1, !mcsema_real_eip !83
  store i1 %19, i1* %FPU_C0.i, align 1, !mcsema_real_eip !83
  store i1 %20, i1* %FPU_ES.i, align 1, !mcsema_real_eip !83
  store i1 %21, i1* %FPU_SF.i, align 1, !mcsema_real_eip !83
  store i1 %22, i1* %FPU_PE.i, align 1, !mcsema_real_eip !83
  store i1 %23, i1* %FPU_UE.i, align 1, !mcsema_real_eip !83
  store i1 %24, i1* %FPU_OE.i, align 1, !mcsema_real_eip !83
  store i1 %25, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !83
  store i1 %26, i1* %FPU_DE.i, align 1, !mcsema_real_eip !83
  store i1 %27, i1* %FPU_IE.i, align 1, !mcsema_real_eip !83
  store i1 %28, i1* %FPU_X.i, align 1, !mcsema_real_eip !83
  store i2 %29, i2* %FPU_RC.i, align 1, !mcsema_real_eip !83
  store i2 %30, i2* %FPU_PC.i, align 1, !mcsema_real_eip !83
  store i1 %31, i1* %FPU_PM.i, align 1, !mcsema_real_eip !83
  store i1 %32, i1* %FPU_UM.i, align 1, !mcsema_real_eip !83
  store i1 %33, i1* %FPU_OM.i, align 1, !mcsema_real_eip !83
  store i1 %34, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !83
  store i1 %35, i1* %FPU_DM.i, align 1, !mcsema_real_eip !83
  store i1 %36, i1* %FPU_IM.i, align 1, !mcsema_real_eip !83
  store i64 %39, i64* %38, align 4
  store i16 %40, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !83
  store i64 %41, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !83
  store i16 %42, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !83
  store i64 %43, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !83
  store i128 %44, i128* %XMM0.i, align 1, !mcsema_real_eip !83
  store i128 %45, i128* %XMM1.i, align 1, !mcsema_real_eip !83
  store i128 %46, i128* %XMM2.i, align 1, !mcsema_real_eip !83
  store i128 %47, i128* %XMM3.i, align 1, !mcsema_real_eip !83
  store i128 %48, i128* %XMM4.i, align 1, !mcsema_real_eip !83
  store i128 %49, i128* %XMM5.i, align 1, !mcsema_real_eip !83
  store i128 %50, i128* %XMM6.i, align 1, !mcsema_real_eip !83
  store i128 %51, i128* %XMM7.i, align 1, !mcsema_real_eip !83
  store i128 %52, i128* %XMM8.i, align 1, !mcsema_real_eip !83
  store i128 %53, i128* %XMM9.i, align 1, !mcsema_real_eip !83
  store i128 %54, i128* %XMM10.i, align 1, !mcsema_real_eip !83
  store i128 %55, i128* %XMM11.i, align 1, !mcsema_real_eip !83
  store i128 %56, i128* %XMM12.i, align 1, !mcsema_real_eip !83
  store i128 %57, i128* %XMM13.i, align 1, !mcsema_real_eip !83
  store i128 %58, i128* %XMM14.i, align 1, !mcsema_real_eip !83
  store i128 %59, i128* %XMM15.i, align 1, !mcsema_real_eip !83
  store <2 x i64> %61, <2 x i64>* %60, align 1
  call void @llvm.lifetime.end(i64 128, i8* %STi_val.i.0..sroa_cast.i)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %STi_val.i.0..sroa_cast, i8* %13, i32 128, i32 4, i1 false), !mcsema_real_eip !43
  %245 = bitcast <2 x i64> %61 to i128
  %trunc.i = trunc i128 %245 to i64
  %246 = lshr i128 %245, 64
  %247 = trunc i128 %246 to i64
  %uadd.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %74, i64 200)
  %248 = extractvalue { i64, i1 } %uadd.i, 0
  %249 = xor i64 %248, %74, !mcsema_real_eip !84
  %250 = and i64 %249, 16, !mcsema_real_eip !84
  %251 = icmp ne i64 %250, 0, !mcsema_real_eip !84
  %252 = icmp slt i64 %248, 0
  %253 = icmp eq i64 %248, 0, !mcsema_real_eip !84
  %254 = add i64 %4, 9223372036854775560
  %255 = and i64 %249, %254, !mcsema_real_eip !84
  %256 = icmp slt i64 %255, 0
  %257 = trunc i64 %248 to i8, !mcsema_real_eip !84
  %258 = tail call i8 @llvm.ctpop.i8(i8 %257), !mcsema_real_eip !84
  %259 = and i8 %258, 1
  %260 = icmp eq i8 %259, 0
  %261 = extractvalue { i64, i1 } %uadd.i, 1
  %262 = inttoptr i64 %248 to i64*, !mcsema_real_eip !85
  %263 = load i64* %262, align 8, !mcsema_real_eip !85
  %264 = add i64 %248, 8, !mcsema_real_eip !85
  %265 = inttoptr i64 %264 to i64*, !mcsema_real_eip !86
  %266 = load i64* %265, align 8, !mcsema_real_eip !86
  %267 = add i64 %248, 16, !mcsema_real_eip !86
  %268 = inttoptr i64 %267 to i64*, !mcsema_real_eip !87
  %269 = load i64* %268, align 8, !mcsema_real_eip !87
  %270 = add i64 %248, 24, !mcsema_real_eip !87
  %271 = inttoptr i64 %270 to i64*, !mcsema_real_eip !88
  %272 = load i64* %271, align 8, !mcsema_real_eip !88
  %273 = add i64 %248, 32, !mcsema_real_eip !88
  %274 = inttoptr i64 %273 to i64*, !mcsema_real_eip !89
  %275 = load i64* %274, align 8, !mcsema_real_eip !89
  %276 = add i64 %248, 40, !mcsema_real_eip !89
  %277 = inttoptr i64 %276 to i64*, !mcsema_real_eip !90
  %278 = load i64* %277, align 8, !mcsema_real_eip !90
  %279 = add i64 %248, 56, !mcsema_real_eip !91
  store i64 %242, i64* %RAX.i, align 8, !mcsema_real_eip !91
  store i64 %263, i64* %RBX.i, align 8, !mcsema_real_eip !91
  store i64 %235, i64* %RCX.i, align 8, !mcsema_real_eip !91
  store i64 %RDX_val.0.i.i, i64* %RDX.i, align 8, !mcsema_real_eip !91
  store i64 %RSI_val.0.i.i, i64* %RSI.i, align 8, !mcsema_real_eip !91
  store i64 %124, i64* %RDI.i, align 8, !mcsema_real_eip !91
  store i64 %279, i64* %RSP.i, align 8, !mcsema_real_eip !91
  store i64 %278, i64* %RBP.i, align 8, !mcsema_real_eip !91
  store i64 %132, i64* %R8.i, align 8, !mcsema_real_eip !91
  store i64 %134, i64* %R9.i, align 8, !mcsema_real_eip !91
  store i64 %156, i64* %R10.i, align 8, !mcsema_real_eip !91
  store i64 %157, i64* %R11.i, align 8, !mcsema_real_eip !91
  store i64 %266, i64* %R12.i, align 8, !mcsema_real_eip !91
  store i64 %269, i64* %R13.i, align 8, !mcsema_real_eip !91
  store i64 %272, i64* %R14.i, align 8, !mcsema_real_eip !91
  store i64 %275, i64* %R15.i, align 8, !mcsema_real_eip !91
  store i64 %10, i64* %RIP.i, align 8, !mcsema_real_eip !91
  store i1 %261, i1* %CF.i, align 1, !mcsema_real_eip !91
  store i1 %260, i1* %PF.i, align 1, !mcsema_real_eip !91
  store i1 %251, i1* %AF.i, align 1, !mcsema_real_eip !91
  store i1 %253, i1* %ZF.i, align 1, !mcsema_real_eip !91
  store i1 %252, i1* %SF.i, align 1, !mcsema_real_eip !91
  store i1 %256, i1* %OF.i, align 1, !mcsema_real_eip !91
  store i1 %11, i1* %DF.i, align 1, !mcsema_real_eip !91
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %13, i8* %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !91
  store i1 %14, i1* %FPU_B.i, align 1, !mcsema_real_eip !91
  store i1 %15, i1* %FPU_C3.i, align 1, !mcsema_real_eip !91
  store i3 %16, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !91
  store i1 %17, i1* %FPU_C2.i, align 1, !mcsema_real_eip !91
  store i1 %18, i1* %FPU_C1.i, align 1, !mcsema_real_eip !91
  store i1 %19, i1* %FPU_C0.i, align 1, !mcsema_real_eip !91
  store i1 %20, i1* %FPU_ES.i, align 1, !mcsema_real_eip !91
  store i1 %21, i1* %FPU_SF.i, align 1, !mcsema_real_eip !91
  store i1 %22, i1* %FPU_PE.i, align 1, !mcsema_real_eip !91
  store i1 %23, i1* %FPU_UE.i, align 1, !mcsema_real_eip !91
  store i1 %24, i1* %FPU_OE.i, align 1, !mcsema_real_eip !91
  store i1 %25, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !91
  store i1 %26, i1* %FPU_DE.i, align 1, !mcsema_real_eip !91
  store i1 %27, i1* %FPU_IE.i, align 1, !mcsema_real_eip !91
  store i1 %28, i1* %FPU_X.i, align 1, !mcsema_real_eip !91
  store i2 %29, i2* %FPU_RC.i, align 1, !mcsema_real_eip !91
  store i2 %30, i2* %FPU_PC.i, align 1, !mcsema_real_eip !91
  store i1 %31, i1* %FPU_PM.i, align 1, !mcsema_real_eip !91
  store i1 %32, i1* %FPU_UM.i, align 1, !mcsema_real_eip !91
  store i1 %33, i1* %FPU_OM.i, align 1, !mcsema_real_eip !91
  store i1 %34, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !91
  store i1 %35, i1* %FPU_DM.i, align 1, !mcsema_real_eip !91
  store i1 %36, i1* %FPU_IM.i, align 1, !mcsema_real_eip !91
  store i64 %39, i64* %38, align 4
  store i16 %40, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !91
  store i64 %41, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !91
  store i16 %42, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !91
  store i64 %43, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !91
  store i128 %44, i128* %XMM0.i, align 1, !mcsema_real_eip !91
  store i128 %45, i128* %XMM1.i, align 1, !mcsema_real_eip !91
  store i128 %46, i128* %XMM2.i, align 1, !mcsema_real_eip !91
  store i128 %47, i128* %XMM3.i, align 1, !mcsema_real_eip !91
  store i128 %48, i128* %XMM4.i, align 1, !mcsema_real_eip !91
  store i128 %49, i128* %XMM5.i, align 1, !mcsema_real_eip !91
  store i128 %50, i128* %XMM6.i, align 1, !mcsema_real_eip !91
  store i128 %51, i128* %XMM7.i, align 1, !mcsema_real_eip !91
  store i128 %52, i128* %XMM8.i, align 1, !mcsema_real_eip !91
  store i128 %53, i128* %XMM9.i, align 1, !mcsema_real_eip !91
  store i128 %54, i128* %XMM10.i, align 1, !mcsema_real_eip !91
  store i128 %55, i128* %XMM11.i, align 1, !mcsema_real_eip !91
  store i128 %56, i128* %XMM12.i, align 1, !mcsema_real_eip !91
  store i128 %57, i128* %XMM13.i, align 1, !mcsema_real_eip !91
  store i128 %58, i128* %XMM14.i, align 1, !mcsema_real_eip !91
  store i128 %59, i128* %XMM15.i, align 1, !mcsema_real_eip !91
  store i64 %trunc.i, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !91
  store i64 %247, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !91
  call void @llvm.lifetime.end(i64 128, i8* %STi_val.i.0..sroa_cast)
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
