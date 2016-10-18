; ModuleID = 'Output/test_4.clang.opt.bc'
source_filename = "Output/test_4.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%0 = type <{ [88 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0x1ed = internal constant %0 <{ [88 x i8] c"\0B\00\00\00\0C\00\00\00\0D\00\00\00\0E\00\00\00\0F\00\00\00\10\00\00\00\11\00\00\00\12\00\00\00\13\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00\07\00\00\00\08\00\00\00\09\00\00\00\0A\00\00\00" }>, align 64

declare x86_64_sysvcc i64 @memcpy(i64 inreg, i64 inreg, i64 inreg) local_unnamed_addr

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture writeonly, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

define void @mcsema_main(%struct.regs*) local_unnamed_addr {
driverBlockRaw:
  %STi_val.i.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !3
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  %RAX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !3
  %RBX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !3
  %1 = load i64, i64* %RBX.i, align 8, !mcsema_real_eip !3
  %RCX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !3
  %RDX.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !3
  %RSI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !3
  %2 = load i64, i64* %RSI.i, align 8, !mcsema_real_eip !3
  %RDI.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !3
  %3 = load i64, i64* %RDI.i, align 8, !mcsema_real_eip !3
  %RSP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !3
  %4 = load i64, i64* %RSP.i, align 8, !mcsema_real_eip !3
  %RBP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !3
  %5 = load i64, i64* %RBP.i, align 8, !mcsema_real_eip !3
  %R8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !3
  %R9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !3
  %R10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !3
  %R11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !3
  %R12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !3
  %6 = load i64, i64* %R12.i, align 8, !mcsema_real_eip !3
  %R13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !3
  %7 = load i64, i64* %R13.i, align 8, !mcsema_real_eip !3
  %R14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !3
  %8 = load i64, i64* %R14.i, align 8, !mcsema_real_eip !3
  %R15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !3
  %9 = load i64, i64* %R15.i, align 8, !mcsema_real_eip !3
  %RIP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !3
  %10 = load i64, i64* %RIP.i, align 8
  %CF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !3
  %PF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !3
  %AF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !3
  %ZF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !3
  %SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !3
  %OF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !3
  %DF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !3
  %11 = load i1, i1* %DF.i, align 1
  %12 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !3
  %13 = bitcast x86_fp80* %12 to i8*, !mcsema_real_eip !3
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %13, i32 128, i32 4, i1 false), !mcsema_real_eip !3
  %FPU_B.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !3
  %14 = load i1, i1* %FPU_B.i, align 1
  %FPU_C3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !3
  %15 = load i1, i1* %FPU_C3.i, align 1
  %FPU_TOP.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !3
  %16 = load i3, i3* %FPU_TOP.i, align 1
  %FPU_C2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !3
  %17 = load i1, i1* %FPU_C2.i, align 1
  %FPU_C1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !3
  %18 = load i1, i1* %FPU_C1.i, align 1
  %FPU_C0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !3
  %19 = load i1, i1* %FPU_C0.i, align 1
  %FPU_ES.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !3
  %20 = load i1, i1* %FPU_ES.i, align 1
  %FPU_SF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !3
  %21 = load i1, i1* %FPU_SF.i, align 1
  %FPU_PE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !3
  %22 = load i1, i1* %FPU_PE.i, align 1
  %FPU_UE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !3
  %23 = load i1, i1* %FPU_UE.i, align 1
  %FPU_OE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !3
  %24 = load i1, i1* %FPU_OE.i, align 1
  %FPU_ZE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !3
  %25 = load i1, i1* %FPU_ZE.i, align 1
  %FPU_DE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !3
  %26 = load i1, i1* %FPU_DE.i, align 1
  %FPU_IE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !3
  %27 = load i1, i1* %FPU_IE.i, align 1
  %FPU_X.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !3
  %28 = load i1, i1* %FPU_X.i, align 1
  %FPU_RC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !3
  %29 = load i2, i2* %FPU_RC.i, align 1
  %FPU_PC.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !3
  %30 = load i2, i2* %FPU_PC.i, align 1
  %FPU_PM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !3
  %31 = load i1, i1* %FPU_PM.i, align 1
  %FPU_UM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !3
  %32 = load i1, i1* %FPU_UM.i, align 1
  %FPU_OM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !3
  %33 = load i1, i1* %FPU_OM.i, align 1
  %FPU_ZM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !3
  %34 = load i1, i1* %FPU_ZM.i, align 1
  %FPU_DM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !3
  %35 = load i1, i1* %FPU_DM.i, align 1
  %FPU_IM.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !3
  %36 = load i1, i1* %FPU_IM.i, align 1
  %37 = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !3
  %38 = bitcast i8* %37 to i64*
  %39 = load i64, i64* %38, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !3
  %40 = load i16, i16* %FPU_LASTIP_SEG.i, align 1
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !3
  %41 = load i64, i64* %FPU_LASTIP_OFF.i, align 8
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !3
  %42 = load i16, i16* %FPU_LASTDATA_SEG.i, align 1
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !3
  %43 = load i64, i64* %FPU_LASTDATA_OFF.i, align 8
  %XMM0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !3
  %44 = load i128, i128* %XMM0.i, align 1
  %XMM1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !3
  %45 = load i128, i128* %XMM1.i, align 1
  %XMM2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !3
  %46 = load i128, i128* %XMM2.i, align 1
  %XMM3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !3
  %47 = load i128, i128* %XMM3.i, align 1
  %XMM4.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !3
  %48 = load i128, i128* %XMM4.i, align 1
  %XMM5.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !3
  %49 = load i128, i128* %XMM5.i, align 1
  %XMM6.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !3
  %50 = load i128, i128* %XMM6.i, align 1
  %XMM7.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !3
  %51 = load i128, i128* %XMM7.i, align 1
  %XMM8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !3
  %52 = load i128, i128* %XMM8.i, align 1
  %XMM9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !3
  %53 = load i128, i128* %XMM9.i, align 1
  %XMM10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !3
  %54 = load i128, i128* %XMM10.i, align 1
  %XMM11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !3
  %55 = load i128, i128* %XMM11.i, align 1
  %XMM12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !3
  %56 = load i128, i128* %XMM12.i, align 1
  %XMM13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !3
  %57 = load i128, i128* %XMM13.i, align 1
  %XMM14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !3
  %58 = load i128, i128* %XMM14.i, align 1
  %XMM15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !3
  %59 = load i128, i128* %XMM15.i, align 1
  %STACK_BASE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !3
  %60 = load i64, i64* %STACK_BASE.i, align 8
  %STACK_LIMIT.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !3
  %61 = load i64, i64* %STACK_LIMIT.i, align 8
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
  store i64 add (i64 ptrtoint (%0* @data_0x1ed to i64), i64 48), i64* %99, align 8, !mcsema_real_eip !16
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
  %118 = tail call x86_64_sysvcc i64 @memcpy(i64 %88, i64 ptrtoint (%0* @data_0x1ed to i64), i64 40), !mcsema_real_eip !26
  %119 = load i64, i64* %117, align 8, !mcsema_real_eip !27
  %120 = load i64, i64* %99, align 8, !mcsema_real_eip !28
  %121 = load i64, i64* %101, align 8, !mcsema_real_eip !29
  %122 = tail call x86_64_sysvcc i64 @memcpy(i64 %119, i64 %120, i64 %121), !mcsema_real_eip !30
  %123 = load i32, i32* %103, align 4, !mcsema_real_eip !31
  %124 = zext i32 %123 to i64
  %125 = load i32, i32* %105, align 4, !mcsema_real_eip !32
  %126 = zext i32 %125 to i64
  %127 = load i32, i32* %97, align 4, !mcsema_real_eip !33
  %128 = zext i32 %127 to i64
  %129 = load i32, i32* %109, align 4, !mcsema_real_eip !34
  %130 = zext i32 %129 to i64
  %131 = load i32, i32* %111, align 4, !mcsema_real_eip !35
  %132 = zext i32 %131 to i64
  %133 = load i32, i32* %113, align 4, !mcsema_real_eip !36
  %134 = zext i32 %133 to i64
  %135 = inttoptr i64 %74 to i32*
  store i32 10, i32* %135, align 4, !mcsema_real_eip !37
  %136 = load i64, i64* %107, align 8
  %137 = add i64 %4, -240, !mcsema_real_eip !38
  %138 = inttoptr i64 %137 to i64*, !mcsema_real_eip !38
  store i64 %136, i64* %138, align 8, !mcsema_real_eip !38
  %139 = add i64 %4, -232, !mcsema_real_eip !39
  %140 = inttoptr i64 %139 to i32*
  store i32 10, i32* %140, align 4, !mcsema_real_eip !39
  %141 = load i64, i64* %117, align 8
  %142 = add i64 %4, -224, !mcsema_real_eip !40
  %143 = inttoptr i64 %142 to i64*, !mcsema_real_eip !40
  store i64 %141, i64* %143, align 8, !mcsema_real_eip !40
  %144 = add i64 %4, -256
  %145 = inttoptr i64 %144 to i64*, !mcsema_real_eip !41
  store i64 -4981261766360305936, i64* %145, align 8, !mcsema_real_eip !41
  store i64 %122, i64* %RAX.i, align 8, !mcsema_real_eip !41
  store i64 %136, i64* %RBX.i, align 8, !mcsema_real_eip !41
  store i64 %130, i64* %RCX.i, align 8, !mcsema_real_eip !41
  store i64 %128, i64* %RDX.i, align 8, !mcsema_real_eip !41
  store i64 %126, i64* %RSI.i, align 8, !mcsema_real_eip !41
  store i64 %124, i64* %RDI.i, align 8, !mcsema_real_eip !41
  store i64 %144, i64* %RSP.i, align 8, !mcsema_real_eip !41
  store i64 %62, i64* %RBP.i, align 8, !mcsema_real_eip !41
  store i64 %132, i64* %R8.i, align 8, !mcsema_real_eip !41
  store i64 %134, i64* %R9.i, align 8, !mcsema_real_eip !41
  %146 = bitcast i64* %R10.i to <2 x i64>*
  store <2 x i64> <i64 600, i64 10>, <2 x i64>* %146, align 8
  %147 = bitcast i64* %R12.i to <2 x i64>*
  store <2 x i64> <i64 ptrtoint (%0* @data_0x1ed to i64), i64 40>, <2 x i64>* %147, align 8
  store i64 %141, i64* %R14.i, align 8, !mcsema_real_eip !41
  store i64 add (i64 ptrtoint (%0* @data_0x1ed to i64), i64 48), i64* %R15.i, align 8, !mcsema_real_eip !41
  store i64 %10, i64* %RIP.i, align 8, !mcsema_real_eip !41
  store i1 %84, i1* %CF.i, align 1, !mcsema_real_eip !41
  store i1 %81, i1* %PF.i, align 1, !mcsema_real_eip !41
  store i1 %77, i1* %AF.i, align 1, !mcsema_real_eip !41
  store i1 %82, i1* %ZF.i, align 1, !mcsema_real_eip !41
  store i1 %83, i1* %SF.i, align 1, !mcsema_real_eip !41
  store i1 %86, i1* %OF.i, align 1, !mcsema_real_eip !41
  store i1 %11, i1* %DF.i, align 1, !mcsema_real_eip !41
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %13, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !41
  store i1 %14, i1* %FPU_B.i, align 1, !mcsema_real_eip !41
  store i1 %15, i1* %FPU_C3.i, align 1, !mcsema_real_eip !41
  store i3 %16, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !41
  store i1 %17, i1* %FPU_C2.i, align 1, !mcsema_real_eip !41
  store i1 %18, i1* %FPU_C1.i, align 1, !mcsema_real_eip !41
  store i1 %19, i1* %FPU_C0.i, align 1, !mcsema_real_eip !41
  store i1 %20, i1* %FPU_ES.i, align 1, !mcsema_real_eip !41
  store i1 %21, i1* %FPU_SF.i, align 1, !mcsema_real_eip !41
  store i1 %22, i1* %FPU_PE.i, align 1, !mcsema_real_eip !41
  store i1 %23, i1* %FPU_UE.i, align 1, !mcsema_real_eip !41
  store i1 %24, i1* %FPU_OE.i, align 1, !mcsema_real_eip !41
  store i1 %25, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !41
  store i1 %26, i1* %FPU_DE.i, align 1, !mcsema_real_eip !41
  store i1 %27, i1* %FPU_IE.i, align 1, !mcsema_real_eip !41
  store i1 %28, i1* %FPU_X.i, align 1, !mcsema_real_eip !41
  store i2 %29, i2* %FPU_RC.i, align 1, !mcsema_real_eip !41
  store i2 %30, i2* %FPU_PC.i, align 1, !mcsema_real_eip !41
  store i1 %31, i1* %FPU_PM.i, align 1, !mcsema_real_eip !41
  store i1 %32, i1* %FPU_UM.i, align 1, !mcsema_real_eip !41
  store i1 %33, i1* %FPU_OM.i, align 1, !mcsema_real_eip !41
  store i1 %34, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !41
  store i1 %35, i1* %FPU_DM.i, align 1, !mcsema_real_eip !41
  store i1 %36, i1* %FPU_IM.i, align 1, !mcsema_real_eip !41
  store i64 %39, i64* %38, align 4
  store i16 %40, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !41
  store i64 %41, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !41
  store i16 %42, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !41
  store i64 %43, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !41
  store i128 %44, i128* %XMM0.i, align 1, !mcsema_real_eip !41
  store i128 %45, i128* %XMM1.i, align 1, !mcsema_real_eip !41
  store i128 %46, i128* %XMM2.i, align 1, !mcsema_real_eip !41
  store i128 %47, i128* %XMM3.i, align 1, !mcsema_real_eip !41
  store i128 %48, i128* %XMM4.i, align 1, !mcsema_real_eip !41
  store i128 %49, i128* %XMM5.i, align 1, !mcsema_real_eip !41
  store i128 %50, i128* %XMM6.i, align 1, !mcsema_real_eip !41
  store i128 %51, i128* %XMM7.i, align 1, !mcsema_real_eip !41
  store i128 %52, i128* %XMM8.i, align 1, !mcsema_real_eip !41
  store i128 %53, i128* %XMM9.i, align 1, !mcsema_real_eip !41
  store i128 %54, i128* %XMM10.i, align 1, !mcsema_real_eip !41
  store i128 %55, i128* %XMM11.i, align 1, !mcsema_real_eip !41
  store i128 %56, i128* %XMM12.i, align 1, !mcsema_real_eip !41
  store i128 %57, i128* %XMM13.i, align 1, !mcsema_real_eip !41
  store i128 %58, i128* %XMM14.i, align 1, !mcsema_real_eip !41
  store i128 %59, i128* %XMM15.i, align 1, !mcsema_real_eip !41
  store i64 %60, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !41
  store i64 %61, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !41
  %STi_val.i.0..sroa_cast.i = bitcast [8 x x86_fp80]* %STi_val.i.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast.i)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast.i, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 16, i1 false)
  %148 = add i64 %4, -264
  %149 = inttoptr i64 %148 to i64*, !mcsema_real_eip !2
  store i64 %62, i64* %149, align 8, !mcsema_real_eip !2
  %150 = add i64 %4, -272
  %151 = inttoptr i64 %150 to i64*, !mcsema_real_eip !42
  store i64 %136, i64* %151, align 8, !mcsema_real_eip !42
  %152 = load i64, i64* %143, align 8, !mcsema_real_eip !43
  %153 = load i32, i32* %140, align 4, !mcsema_real_eip !44
  %154 = zext i32 %153 to i64
  %155 = load i64, i64* %138, align 8
  %156 = load i32, i32* %135, align 4, !mcsema_real_eip !45
  %157 = add i64 %4, -276, !mcsema_real_eip !46
  %158 = inttoptr i64 %157 to i32*
  store i32 %123, i32* %158, align 4, !mcsema_real_eip !46
  %159 = add i64 %4, -280, !mcsema_real_eip !47
  %160 = inttoptr i64 %159 to i32*
  store i32 %125, i32* %160, align 4, !mcsema_real_eip !47
  %161 = add i64 %4, -284, !mcsema_real_eip !48
  %162 = inttoptr i64 %161 to i32*
  store i32 %127, i32* %162, align 4, !mcsema_real_eip !48
  %163 = add i64 %4, -288, !mcsema_real_eip !49
  %164 = inttoptr i64 %163 to i32*
  store i32 %129, i32* %164, align 4, !mcsema_real_eip !49
  %165 = add i64 %4, -292, !mcsema_real_eip !50
  %166 = inttoptr i64 %165 to i32*
  store i32 %131, i32* %166, align 4, !mcsema_real_eip !50
  %167 = add i64 %4, -296, !mcsema_real_eip !51
  %168 = inttoptr i64 %167 to i32*
  store i32 %133, i32* %168, align 4, !mcsema_real_eip !51
  %169 = add i64 %4, -300, !mcsema_real_eip !52
  %170 = inttoptr i64 %169 to i32*
  store i32 %156, i32* %170, align 4, !mcsema_real_eip !52
  %171 = add i64 %4, -312, !mcsema_real_eip !53
  %172 = inttoptr i64 %171 to i64*, !mcsema_real_eip !53
  store i64 %155, i64* %172, align 8, !mcsema_real_eip !53
  %173 = add i64 %4, -316, !mcsema_real_eip !54
  %174 = inttoptr i64 %173 to i32*
  store i32 %153, i32* %174, align 4, !mcsema_real_eip !54
  %175 = add i64 %4, -328, !mcsema_real_eip !55
  %176 = inttoptr i64 %175 to i64*, !mcsema_real_eip !55
  store i64 %152, i64* %176, align 8, !mcsema_real_eip !55
  %177 = add i64 %4, -332, !mcsema_real_eip !56
  %178 = inttoptr i64 %177 to i32*
  store i32 0, i32* %178, align 4, !mcsema_real_eip !56
  %179 = add i64 %4, -336, !mcsema_real_eip !57
  %180 = inttoptr i64 %179 to i32*
  store i32 0, i32* %180, align 4, !mcsema_real_eip !57
  %181 = load i32, i32* %170, align 4, !mcsema_real_eip !58
  %182 = sub i32 0, %181, !mcsema_real_eip !58
  %183 = icmp slt i32 %182, 0
  %184 = and i32 %181, %182, !mcsema_real_eip !58
  %185 = icmp slt i32 %184, 0
  %tmp.i.i = xor i1 %183, %185
  br i1 %tmp.i.i, label %block_0x51.i.i.preheader, label %sub_a0.exit, !mcsema_real_eip !59

block_0x51.i.i.preheader:                         ; preds = %driverBlockRaw
  br label %block_0x51.i.i

block_0x7b.loopexit.i.i:                          ; preds = %block_0x51.i.i
  %186 = zext i32 %200 to i64, !mcsema_real_eip !60
  br label %sub_a0.exit

block_0x51.i.i:                                   ; preds = %block_0x51.i.i.preheader, %block_0x51.i.i
  %187 = phi i32 [ %202, %block_0x51.i.i ], [ 0, %block_0x51.i.i.preheader ]
  %188 = load i64, i64* %172, align 8, !mcsema_real_eip !61
  %189 = sext i32 %187 to i64, !mcsema_real_eip !62
  %190 = shl nsw i64 %189, 2
  %191 = add i64 %190, %188, !mcsema_real_eip !63
  %192 = inttoptr i64 %191 to i32*
  %193 = load i32, i32* %192, align 4, !mcsema_real_eip !63
  %194 = load i64, i64* %176, align 8, !mcsema_real_eip !64
  %195 = add i64 %194, %190, !mcsema_real_eip !65
  %196 = inttoptr i64 %195 to i32*
  %197 = load i32, i32* %196, align 4, !mcsema_real_eip !65
  %198 = sub i32 %193, %197, !mcsema_real_eip !65
  %199 = load i32, i32* %178, align 4, !mcsema_real_eip !60
  %200 = add i32 %198, %199
  store i32 %200, i32* %178, align 4, !mcsema_real_eip !66
  %201 = load i32, i32* %180, align 4, !mcsema_real_eip !67
  %202 = add i32 %201, 1
  store i32 %202, i32* %180, align 4, !mcsema_real_eip !68
  %203 = load i32, i32* %170, align 4, !mcsema_real_eip !58
  %204 = sub i32 %202, %203, !mcsema_real_eip !58
  %205 = xor i32 %204, %202, !mcsema_real_eip !58
  %206 = icmp slt i32 %204, 0
  %207 = xor i32 %203, %202, !mcsema_real_eip !58
  %208 = and i32 %205, %207, !mcsema_real_eip !58
  %209 = icmp slt i32 %208, 0
  %tmp71.i.i = xor i1 %206, %209
  br i1 %tmp71.i.i, label %block_0x51.i.i, label %block_0x7b.loopexit.i.i, !mcsema_real_eip !59

sub_a0.exit:                                      ; preds = %driverBlockRaw, %block_0x7b.loopexit.i.i
  %RDX_val.0.i.i = phi i64 [ %128, %driverBlockRaw ], [ %186, %block_0x7b.loopexit.i.i ]
  %210 = load i32, i32* %178, align 4, !mcsema_real_eip !69
  %211 = load i32, i32* %158, align 4, !mcsema_real_eip !70
  %212 = load i32, i32* %160, align 4, !mcsema_real_eip !71
  %213 = add i32 %212, %211
  %214 = load i32, i32* %162, align 4, !mcsema_real_eip !72
  %215 = add i32 %213, %214
  %216 = load i32, i32* %164, align 4, !mcsema_real_eip !73
  %217 = add i32 %215, %216
  %218 = load i32, i32* %166, align 4, !mcsema_real_eip !74
  %219 = add i32 %217, %218
  %220 = load i32, i32* %168, align 4, !mcsema_real_eip !75
  %uadd76.i.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %219, i32 %220) #2
  %221 = extractvalue { i32, i1 } %uadd76.i.i, 0
  %222 = xor i32 %219, %220, !mcsema_real_eip !75
  %223 = xor i32 %222, %221, !mcsema_real_eip !75
  %224 = and i32 %223, 16, !mcsema_real_eip !75
  %225 = icmp ne i32 %224, 0, !mcsema_real_eip !75
  %226 = icmp eq i32 %221, 0, !mcsema_real_eip !75
  %227 = trunc i32 %221 to i8, !mcsema_real_eip !75
  %228 = tail call i8 @llvm.ctpop.i8(i8 %227) #2, !mcsema_real_eip !75
  %229 = and i8 %228, 1
  %230 = icmp eq i8 %229, 0
  %231 = extractvalue { i32, i1 } %uadd76.i.i, 1
  %232 = zext i32 %221 to i64
  %233 = sext i32 %210 to i64, !mcsema_real_eip !76
  %234 = sext i32 %221 to i64, !mcsema_real_eip !76
  %235 = mul nsw i64 %234, %233, !mcsema_real_eip !76
  %236 = mul i32 %221, %210, !mcsema_real_eip !76
  %237 = sext i32 %236 to i64, !mcsema_real_eip !76
  %238 = icmp ne i64 %237, %235, !mcsema_real_eip !76
  %239 = zext i32 %236 to i64
  %240 = load i64, i64* %151, align 8, !mcsema_real_eip !77
  %241 = load i64, i64* %149, align 8, !mcsema_real_eip !78
  store i64 %239, i64* %RAX.i, align 8, !mcsema_real_eip !79
  store i64 %240, i64* %RBX.i, align 8, !mcsema_real_eip !79
  store i64 %232, i64* %RCX.i, align 8, !mcsema_real_eip !79
  store i64 %RDX_val.0.i.i, i64* %RDX.i, align 8, !mcsema_real_eip !79
  store i64 %126, i64* %RSI.i, align 8, !mcsema_real_eip !79
  store i64 %124, i64* %RDI.i, align 8, !mcsema_real_eip !79
  store i64 %74, i64* %RSP.i, align 8, !mcsema_real_eip !79
  store i64 %241, i64* %RBP.i, align 8, !mcsema_real_eip !79
  store i64 %132, i64* %R8.i, align 8, !mcsema_real_eip !79
  store i64 %134, i64* %R9.i, align 8, !mcsema_real_eip !79
  store i64 %154, i64* %R10.i, align 8, !mcsema_real_eip !79
  store i64 %155, i64* %R11.i, align 8, !mcsema_real_eip !79
  %242 = bitcast i64* %R12.i to <2 x i64>*
  store <2 x i64> <i64 ptrtoint (%0* @data_0x1ed to i64), i64 40>, <2 x i64>* %242, align 8
  store i64 %141, i64* %R14.i, align 8, !mcsema_real_eip !79
  store i64 add (i64 ptrtoint (%0* @data_0x1ed to i64), i64 48), i64* %R15.i, align 8, !mcsema_real_eip !79
  store i64 %10, i64* %RIP.i, align 8, !mcsema_real_eip !79
  store i1 %231, i1* %CF.i, align 1, !mcsema_real_eip !79
  store i1 %230, i1* %PF.i, align 1, !mcsema_real_eip !79
  store i1 %225, i1* %AF.i, align 1, !mcsema_real_eip !79
  store i1 %226, i1* %ZF.i, align 1, !mcsema_real_eip !79
  store i1 %238, i1* %SF.i, align 1, !mcsema_real_eip !79
  store i1 %238, i1* %OF.i, align 1, !mcsema_real_eip !79
  store i1 %11, i1* %DF.i, align 1, !mcsema_real_eip !79
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %13, i8* nonnull %STi_val.i.0..sroa_cast.i, i32 128, i32 8, i1 false) #2, !mcsema_real_eip !79
  store i1 %14, i1* %FPU_B.i, align 1, !mcsema_real_eip !79
  store i1 %15, i1* %FPU_C3.i, align 1, !mcsema_real_eip !79
  store i3 %16, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !79
  store i1 %17, i1* %FPU_C2.i, align 1, !mcsema_real_eip !79
  store i1 %18, i1* %FPU_C1.i, align 1, !mcsema_real_eip !79
  store i1 %19, i1* %FPU_C0.i, align 1, !mcsema_real_eip !79
  store i1 %20, i1* %FPU_ES.i, align 1, !mcsema_real_eip !79
  store i1 %21, i1* %FPU_SF.i, align 1, !mcsema_real_eip !79
  store i1 %22, i1* %FPU_PE.i, align 1, !mcsema_real_eip !79
  store i1 %23, i1* %FPU_UE.i, align 1, !mcsema_real_eip !79
  store i1 %24, i1* %FPU_OE.i, align 1, !mcsema_real_eip !79
  store i1 %25, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !79
  store i1 %26, i1* %FPU_DE.i, align 1, !mcsema_real_eip !79
  store i1 %27, i1* %FPU_IE.i, align 1, !mcsema_real_eip !79
  store i1 %28, i1* %FPU_X.i, align 1, !mcsema_real_eip !79
  store i2 %29, i2* %FPU_RC.i, align 1, !mcsema_real_eip !79
  store i2 %30, i2* %FPU_PC.i, align 1, !mcsema_real_eip !79
  store i1 %31, i1* %FPU_PM.i, align 1, !mcsema_real_eip !79
  store i1 %32, i1* %FPU_UM.i, align 1, !mcsema_real_eip !79
  store i1 %33, i1* %FPU_OM.i, align 1, !mcsema_real_eip !79
  store i1 %34, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !79
  store i1 %35, i1* %FPU_DM.i, align 1, !mcsema_real_eip !79
  store i1 %36, i1* %FPU_IM.i, align 1, !mcsema_real_eip !79
  store i64 %39, i64* %38, align 4
  store i16 %40, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !79
  store i64 %41, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !79
  store i16 %42, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !79
  store i64 %43, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !79
  store i128 %44, i128* %XMM0.i, align 1, !mcsema_real_eip !79
  store i128 %45, i128* %XMM1.i, align 1, !mcsema_real_eip !79
  store i128 %46, i128* %XMM2.i, align 1, !mcsema_real_eip !79
  store i128 %47, i128* %XMM3.i, align 1, !mcsema_real_eip !79
  store i128 %48, i128* %XMM4.i, align 1, !mcsema_real_eip !79
  store i128 %49, i128* %XMM5.i, align 1, !mcsema_real_eip !79
  store i128 %50, i128* %XMM6.i, align 1, !mcsema_real_eip !79
  store i128 %51, i128* %XMM7.i, align 1, !mcsema_real_eip !79
  store i128 %52, i128* %XMM8.i, align 1, !mcsema_real_eip !79
  store i128 %53, i128* %XMM9.i, align 1, !mcsema_real_eip !79
  store i128 %54, i128* %XMM10.i, align 1, !mcsema_real_eip !79
  store i128 %55, i128* %XMM11.i, align 1, !mcsema_real_eip !79
  store i128 %56, i128* %XMM12.i, align 1, !mcsema_real_eip !79
  store i128 %57, i128* %XMM13.i, align 1, !mcsema_real_eip !79
  store i128 %58, i128* %XMM14.i, align 1, !mcsema_real_eip !79
  store i128 %59, i128* %XMM15.i, align 1, !mcsema_real_eip !79
  store i64 %60, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !79
  store i64 %61, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !79
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast.i)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %13, i32 128, i32 4, i1 false), !mcsema_real_eip !41
  %uadd.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %74, i64 200)
  %243 = extractvalue { i64, i1 } %uadd.i, 0
  %244 = xor i64 %243, %74, !mcsema_real_eip !80
  %245 = and i64 %244, 16, !mcsema_real_eip !80
  %246 = icmp ne i64 %245, 0, !mcsema_real_eip !80
  %247 = icmp slt i64 %243, 0
  %248 = icmp eq i64 %243, 0, !mcsema_real_eip !80
  %249 = add i64 %4, 9223372036854775560
  %250 = and i64 %244, %249, !mcsema_real_eip !80
  %251 = icmp slt i64 %250, 0
  %252 = trunc i64 %243 to i8, !mcsema_real_eip !80
  %253 = tail call i8 @llvm.ctpop.i8(i8 %252), !mcsema_real_eip !80
  %254 = and i8 %253, 1
  %255 = icmp eq i8 %254, 0
  %256 = extractvalue { i64, i1 } %uadd.i, 1
  %257 = inttoptr i64 %243 to i64*, !mcsema_real_eip !81
  %258 = load i64, i64* %257, align 8, !mcsema_real_eip !81
  %259 = add i64 %243, 8, !mcsema_real_eip !81
  %260 = inttoptr i64 %259 to i64*, !mcsema_real_eip !82
  %261 = load i64, i64* %260, align 8, !mcsema_real_eip !82
  %262 = add i64 %243, 16, !mcsema_real_eip !82
  %263 = inttoptr i64 %262 to i64*, !mcsema_real_eip !83
  %264 = load i64, i64* %263, align 8, !mcsema_real_eip !83
  %265 = add i64 %243, 24, !mcsema_real_eip !83
  %266 = inttoptr i64 %265 to i64*, !mcsema_real_eip !84
  %267 = load i64, i64* %266, align 8, !mcsema_real_eip !84
  %268 = add i64 %243, 32, !mcsema_real_eip !84
  %269 = inttoptr i64 %268 to i64*, !mcsema_real_eip !85
  %270 = load i64, i64* %269, align 8, !mcsema_real_eip !85
  %271 = add i64 %243, 40, !mcsema_real_eip !85
  %272 = inttoptr i64 %271 to i64*, !mcsema_real_eip !86
  %273 = load i64, i64* %272, align 8, !mcsema_real_eip !86
  %274 = add i64 %243, 56, !mcsema_real_eip !87
  store i64 %239, i64* %RAX.i, align 8, !mcsema_real_eip !87
  store i64 %258, i64* %RBX.i, align 8, !mcsema_real_eip !87
  store i64 %232, i64* %RCX.i, align 8, !mcsema_real_eip !87
  store i64 %RDX_val.0.i.i, i64* %RDX.i, align 8, !mcsema_real_eip !87
  store i64 %126, i64* %RSI.i, align 8, !mcsema_real_eip !87
  store i64 %124, i64* %RDI.i, align 8, !mcsema_real_eip !87
  store i64 %274, i64* %RSP.i, align 8, !mcsema_real_eip !87
  store i64 %273, i64* %RBP.i, align 8, !mcsema_real_eip !87
  store i64 %132, i64* %R8.i, align 8, !mcsema_real_eip !87
  store i64 %134, i64* %R9.i, align 8, !mcsema_real_eip !87
  store i64 %154, i64* %R10.i, align 8, !mcsema_real_eip !87
  store i64 %155, i64* %R11.i, align 8, !mcsema_real_eip !87
  store i64 %261, i64* %R12.i, align 8, !mcsema_real_eip !87
  store i64 %264, i64* %R13.i, align 8, !mcsema_real_eip !87
  store i64 %267, i64* %R14.i, align 8, !mcsema_real_eip !87
  store i64 %270, i64* %R15.i, align 8, !mcsema_real_eip !87
  store i64 %10, i64* %RIP.i, align 8, !mcsema_real_eip !87
  store i1 %256, i1* %CF.i, align 1, !mcsema_real_eip !87
  store i1 %255, i1* %PF.i, align 1, !mcsema_real_eip !87
  store i1 %246, i1* %AF.i, align 1, !mcsema_real_eip !87
  store i1 %248, i1* %ZF.i, align 1, !mcsema_real_eip !87
  store i1 %247, i1* %SF.i, align 1, !mcsema_real_eip !87
  store i1 %251, i1* %OF.i, align 1, !mcsema_real_eip !87
  store i1 %11, i1* %DF.i, align 1, !mcsema_real_eip !87
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %13, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !87
  store i1 %14, i1* %FPU_B.i, align 1, !mcsema_real_eip !87
  store i1 %15, i1* %FPU_C3.i, align 1, !mcsema_real_eip !87
  store i3 %16, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !87
  store i1 %17, i1* %FPU_C2.i, align 1, !mcsema_real_eip !87
  store i1 %18, i1* %FPU_C1.i, align 1, !mcsema_real_eip !87
  store i1 %19, i1* %FPU_C0.i, align 1, !mcsema_real_eip !87
  store i1 %20, i1* %FPU_ES.i, align 1, !mcsema_real_eip !87
  store i1 %21, i1* %FPU_SF.i, align 1, !mcsema_real_eip !87
  store i1 %22, i1* %FPU_PE.i, align 1, !mcsema_real_eip !87
  store i1 %23, i1* %FPU_UE.i, align 1, !mcsema_real_eip !87
  store i1 %24, i1* %FPU_OE.i, align 1, !mcsema_real_eip !87
  store i1 %25, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !87
  store i1 %26, i1* %FPU_DE.i, align 1, !mcsema_real_eip !87
  store i1 %27, i1* %FPU_IE.i, align 1, !mcsema_real_eip !87
  store i1 %28, i1* %FPU_X.i, align 1, !mcsema_real_eip !87
  store i2 %29, i2* %FPU_RC.i, align 1, !mcsema_real_eip !87
  store i2 %30, i2* %FPU_PC.i, align 1, !mcsema_real_eip !87
  store i1 %31, i1* %FPU_PM.i, align 1, !mcsema_real_eip !87
  store i1 %32, i1* %FPU_UM.i, align 1, !mcsema_real_eip !87
  store i1 %33, i1* %FPU_OM.i, align 1, !mcsema_real_eip !87
  store i1 %34, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !87
  store i1 %35, i1* %FPU_DM.i, align 1, !mcsema_real_eip !87
  store i1 %36, i1* %FPU_IM.i, align 1, !mcsema_real_eip !87
  store i64 %39, i64* %38, align 4
  store i16 %40, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !87
  store i64 %41, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !87
  store i16 %42, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !87
  store i64 %43, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !87
  store i128 %44, i128* %XMM0.i, align 1, !mcsema_real_eip !87
  store i128 %45, i128* %XMM1.i, align 1, !mcsema_real_eip !87
  store i128 %46, i128* %XMM2.i, align 1, !mcsema_real_eip !87
  store i128 %47, i128* %XMM3.i, align 1, !mcsema_real_eip !87
  store i128 %48, i128* %XMM4.i, align 1, !mcsema_real_eip !87
  store i128 %49, i128* %XMM5.i, align 1, !mcsema_real_eip !87
  store i128 %50, i128* %XMM6.i, align 1, !mcsema_real_eip !87
  store i128 %51, i128* %XMM7.i, align 1, !mcsema_real_eip !87
  store i128 %52, i128* %XMM8.i, align 1, !mcsema_real_eip !87
  store i128 %53, i128* %XMM9.i, align 1, !mcsema_real_eip !87
  store i128 %54, i128* %XMM10.i, align 1, !mcsema_real_eip !87
  store i128 %55, i128* %XMM11.i, align 1, !mcsema_real_eip !87
  store i128 %56, i128* %XMM12.i, align 1, !mcsema_real_eip !87
  store i128 %57, i128* %XMM13.i, align 1, !mcsema_real_eip !87
  store i128 %58, i128* %XMM14.i, align 1, !mcsema_real_eip !87
  store i128 %59, i128* %XMM15.i, align 1, !mcsema_real_eip !87
  store i64 %60, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !87
  store i64 %61, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !87
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast)
  ret void
}

; Function Attrs: nounwind readnone
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #0

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #0

attributes #0 = { argmemonly nounwind }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 0, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = !{i64 160, [12 x i8] c"\09pushq\09%rbp\00"}
!4 = !{i64 164, [12 x i8] c"\09pushq\09%r15\00"}
!5 = !{i64 166, [12 x i8] c"\09pushq\09%r14\00"}
!6 = !{i64 168, [12 x i8] c"\09pushq\09%r13\00"}
!7 = !{i64 170, [12 x i8] c"\09pushq\09%r12\00"}
!8 = !{i64 172, [12 x i8] c"\09pushq\09%rbx\00"}
!9 = !{i64 173, [17 x i8] c"\09subq\09$200, %rsp\00"}
!10 = !{i64 219, [23 x i8] c"\09leaq\09-144(%rbp), %rbx\00"}
!11 = !{i64 226, [22 x i8] c"\09leaq\09-96(%rbp), %r14\00"}
!12 = !{i64 259, [20 x i8] c"\09movl\09$0, -44(%rbp)\00"}
!13 = !{i64 266, [22 x i8] c"\09movl\09%edi, -48(%rbp)\00"}
!14 = !{i64 269, [22 x i8] c"\09movq\09%rsi, -56(%rbp)\00"}
!15 = !{i64 282, [23 x i8] c"\09movl\09%edx, -148(%rbp)\00"}
!16 = !{i64 291, [23 x i8] c"\09movq\09%r15, -160(%rbp)\00"}
!17 = !{i64 298, [23 x i8] c"\09movq\09%r13, -168(%rbp)\00"}
!18 = !{i64 305, [23 x i8] c"\09movl\09%eax, -172(%rbp)\00"}
!19 = !{i64 311, [23 x i8] c"\09movl\09%ecx, -176(%rbp)\00"}
!20 = !{i64 317, [23 x i8] c"\09movq\09%r14, -184(%rbp)\00"}
!21 = !{i64 324, [23 x i8] c"\09movl\09%r8d, -188(%rbp)\00"}
!22 = !{i64 331, [23 x i8] c"\09movl\09%r9d, -192(%rbp)\00"}
!23 = !{i64 338, [24 x i8] c"\09movl\09%r10d, -196(%rbp)\00"}
!24 = !{i64 345, [24 x i8] c"\09movl\09%r11d, -200(%rbp)\00"}
!25 = !{i64 352, [23 x i8] c"\09movq\09%rbx, -208(%rbp)\00"}
!26 = !{i64 359, [9 x i8] c"\09callq\090\00"}
!27 = !{i64 364, [23 x i8] c"\09movq\09-208(%rbp), %rdx\00"}
!28 = !{i64 374, [23 x i8] c"\09movq\09-160(%rbp), %rsi\00"}
!29 = !{i64 381, [23 x i8] c"\09movq\09-168(%rbp), %rdx\00"}
!30 = !{i64 388, [9 x i8] c"\09callq\090\00"}
!31 = !{i64 393, [23 x i8] c"\09movl\09-172(%rbp), %edi\00"}
!32 = !{i64 399, [23 x i8] c"\09movl\09-176(%rbp), %esi\00"}
!33 = !{i64 405, [23 x i8] c"\09movl\09-148(%rbp), %edx\00"}
!34 = !{i64 411, [23 x i8] c"\09movl\09-188(%rbp), %ecx\00"}
!35 = !{i64 417, [23 x i8] c"\09movl\09-192(%rbp), %r8d\00"}
!36 = !{i64 424, [23 x i8] c"\09movl\09-196(%rbp), %r9d\00"}
!37 = !{i64 431, [18 x i8] c"\09movl\09$10, (%rsp)\00"}
!38 = !{i64 445, [20 x i8] c"\09movq\09%rbx, 8(%rsp)\00"}
!39 = !{i64 450, [20 x i8] c"\09movl\09$10, 16(%rsp)\00"}
!40 = !{i64 465, [21 x i8] c"\09movq\09%r14, 24(%rsp)\00"}
!41 = !{i64 470, [12 x i8] c"\09callq\09-475\00"}
!42 = !{i64 4, [12 x i8] c"\09pushq\09%rbx\00"}
!43 = !{i64 5, [21 x i8] c"\09movq\0940(%rbp), %rax\00"}
!44 = !{i64 9, [22 x i8] c"\09movl\0932(%rbp), %r10d\00"}
!45 = !{i64 17, [21 x i8] c"\09movl\0916(%rbp), %ebx\00"}
!46 = !{i64 20, [22 x i8] c"\09movl\09%edi, -12(%rbp)\00"}
!47 = !{i64 23, [22 x i8] c"\09movl\09%esi, -16(%rbp)\00"}
!48 = !{i64 26, [22 x i8] c"\09movl\09%edx, -20(%rbp)\00"}
!49 = !{i64 29, [22 x i8] c"\09movl\09%ecx, -24(%rbp)\00"}
!50 = !{i64 32, [22 x i8] c"\09movl\09%r8d, -28(%rbp)\00"}
!51 = !{i64 36, [22 x i8] c"\09movl\09%r9d, -32(%rbp)\00"}
!52 = !{i64 40, [22 x i8] c"\09movl\09%ebx, -36(%rbp)\00"}
!53 = !{i64 43, [22 x i8] c"\09movq\09%r11, -48(%rbp)\00"}
!54 = !{i64 47, [23 x i8] c"\09movl\09%r10d, -52(%rbp)\00"}
!55 = !{i64 51, [22 x i8] c"\09movq\09%rax, -64(%rbp)\00"}
!56 = !{i64 55, [20 x i8] c"\09movl\09$0, -68(%rbp)\00"}
!57 = !{i64 62, [20 x i8] c"\09movl\09$0, -72(%rbp)\00"}
!58 = !{i64 72, [22 x i8] c"\09cmpl\09-36(%rbp), %eax\00"}
!59 = !{i64 75, [8 x i8] c"\09jge\0942\00"}
!60 = !{i64 103, [22 x i8] c"\09addl\09-68(%rbp), %edx\00"}
!61 = !{i64 81, [22 x i8] c"\09movq\09-48(%rbp), %rax\00"}
!62 = !{i64 85, [24 x i8] c"\09movslq\09-72(%rbp), %rcx\00"}
!63 = !{i64 89, [26 x i8] c"\09movl\09(%rax,%rcx,4), %edx\00"}
!64 = !{i64 92, [22 x i8] c"\09movq\09-64(%rbp), %rax\00"}
!65 = !{i64 100, [26 x i8] c"\09subl\09(%rax,%rcx,4), %edx\00"}
!66 = !{i64 106, [22 x i8] c"\09movl\09%edx, -68(%rbp)\00"}
!67 = !{i64 109, [22 x i8] c"\09movl\09-72(%rbp), %eax\00"}
!68 = !{i64 115, [22 x i8] c"\09movl\09%eax, -72(%rbp)\00"}
!69 = !{i64 123, [22 x i8] c"\09movl\09-68(%rbp), %eax\00"}
!70 = !{i64 126, [22 x i8] c"\09movl\09-12(%rbp), %ecx\00"}
!71 = !{i64 129, [22 x i8] c"\09addl\09-16(%rbp), %ecx\00"}
!72 = !{i64 132, [22 x i8] c"\09addl\09-20(%rbp), %ecx\00"}
!73 = !{i64 135, [22 x i8] c"\09addl\09-24(%rbp), %ecx\00"}
!74 = !{i64 138, [22 x i8] c"\09addl\09-28(%rbp), %ecx\00"}
!75 = !{i64 141, [22 x i8] c"\09addl\09-32(%rbp), %ecx\00"}
!76 = !{i64 144, [18 x i8] c"\09imull\09%ecx, %eax\00"}
!77 = !{i64 147, [11 x i8] c"\09popq\09%rbx\00"}
!78 = !{i64 148, [11 x i8] c"\09popq\09%rbp\00"}
!79 = !{i64 149, [6 x i8] c"\09retq\00"}
!80 = !{i64 475, [17 x i8] c"\09addq\09$200, %rsp\00"}
!81 = !{i64 482, [11 x i8] c"\09popq\09%rbx\00"}
!82 = !{i64 483, [11 x i8] c"\09popq\09%r12\00"}
!83 = !{i64 485, [11 x i8] c"\09popq\09%r13\00"}
!84 = !{i64 487, [11 x i8] c"\09popq\09%r14\00"}
!85 = !{i64 489, [11 x i8] c"\09popq\09%r15\00"}
!86 = !{i64 491, [11 x i8] c"\09popq\09%rbp\00"}
!87 = !{i64 492, [6 x i8] c"\09retq\00"}
