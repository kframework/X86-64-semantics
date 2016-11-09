; ModuleID = 'Output/test_4.clang.opt.bc'
source_filename = "Output/test_4.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%0 = type <{ [88 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0x200 = internal constant %0 <{ [88 x i8] c"\0B\00\00\00\0C\00\00\00\0D\00\00\00\0E\00\00\00\0F\00\00\00\10\00\00\00\11\00\00\00\12\00\00\00\13\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00\07\00\00\00\08\00\00\00\09\00\00\00\0A\00\00\00" }>, align 64

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
  %FPU_FOPCODE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 53, !mcsema_real_eip !3
  %44 = load i11, i11* %FPU_FOPCODE.i, align 1
  %XMM0.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !3
  %45 = load i128, i128* %XMM0.i, align 1
  %XMM1.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !3
  %46 = load i128, i128* %XMM1.i, align 1
  %XMM2.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !3
  %47 = load i128, i128* %XMM2.i, align 1
  %XMM3.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !3
  %48 = load i128, i128* %XMM3.i, align 1
  %XMM4.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !3
  %49 = load i128, i128* %XMM4.i, align 1
  %XMM5.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !3
  %50 = load i128, i128* %XMM5.i, align 1
  %XMM6.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !3
  %51 = load i128, i128* %XMM6.i, align 1
  %XMM7.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !3
  %52 = load i128, i128* %XMM7.i, align 1
  %XMM8.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !3
  %53 = load i128, i128* %XMM8.i, align 1
  %XMM9.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !3
  %54 = load i128, i128* %XMM9.i, align 1
  %XMM10.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !3
  %55 = load i128, i128* %XMM10.i, align 1
  %XMM11.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !3
  %56 = load i128, i128* %XMM11.i, align 1
  %XMM12.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !3
  %57 = load i128, i128* %XMM12.i, align 1
  %XMM13.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !3
  %58 = load i128, i128* %XMM13.i, align 1
  %XMM14.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !3
  %59 = load i128, i128* %XMM14.i, align 1
  %XMM15.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !3
  %60 = load i128, i128* %XMM15.i, align 1
  %STACK_BASE.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !3
  %61 = load i64, i64* %STACK_BASE.i, align 8
  %STACK_LIMIT.i = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !3
  %62 = load i64, i64* %STACK_LIMIT.i, align 8
  %63 = add i64 %4, -8
  %64 = inttoptr i64 %63 to i64*, !mcsema_real_eip !3
  store i64 %5, i64* %64, align 8, !mcsema_real_eip !3
  %65 = add i64 %4, -16
  %66 = inttoptr i64 %65 to i64*, !mcsema_real_eip !4
  store i64 %9, i64* %66, align 8, !mcsema_real_eip !4
  %67 = add i64 %4, -24
  %68 = inttoptr i64 %67 to i64*, !mcsema_real_eip !5
  store i64 %8, i64* %68, align 8, !mcsema_real_eip !5
  %69 = add i64 %4, -32
  %70 = inttoptr i64 %69 to i64*, !mcsema_real_eip !6
  store i64 %7, i64* %70, align 8, !mcsema_real_eip !6
  %71 = add i64 %4, -40
  %72 = inttoptr i64 %71 to i64*, !mcsema_real_eip !7
  store i64 %6, i64* %72, align 8, !mcsema_real_eip !7
  %73 = add i64 %4, -48
  %74 = inttoptr i64 %73 to i64*, !mcsema_real_eip !8
  store i64 %1, i64* %74, align 8, !mcsema_real_eip !8
  %75 = add i64 %4, -248
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
  %88 = add i64 %4, -152, !mcsema_real_eip !10
  %89 = add i64 %4, -104, !mcsema_real_eip !11
  %90 = add i64 %4, -52, !mcsema_real_eip !12
  %91 = inttoptr i64 %90 to i32*
  store i32 0, i32* %91, align 4, !mcsema_real_eip !12
  %92 = add i64 %4, -56, !mcsema_real_eip !13
  %93 = trunc i64 %3 to i32, !mcsema_real_eip !13
  %94 = inttoptr i64 %92 to i32*
  store i32 %93, i32* %94, align 4, !mcsema_real_eip !13
  %95 = add i64 %4, -64, !mcsema_real_eip !14
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !14
  store i64 %2, i64* %96, align 8, !mcsema_real_eip !14
  %97 = add i64 %4, -156, !mcsema_real_eip !15
  %98 = inttoptr i64 %97 to i32*
  store i32 300, i32* %98, align 4, !mcsema_real_eip !15
  %99 = add i64 %4, -168, !mcsema_real_eip !16
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !16
  store i64 add (i64 ptrtoint (%0* @data_0x200 to i64), i64 48), i64* %100, align 8, !mcsema_real_eip !16
  %101 = add i64 %4, -176, !mcsema_real_eip !17
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !17
  store i64 40, i64* %102, align 8, !mcsema_real_eip !17
  %103 = add i64 %4, -180, !mcsema_real_eip !18
  %104 = inttoptr i64 %103 to i32*
  store i32 100, i32* %104, align 4, !mcsema_real_eip !18
  %105 = add i64 %4, -184, !mcsema_real_eip !19
  %106 = inttoptr i64 %105 to i32*
  store i32 200, i32* %106, align 4, !mcsema_real_eip !19
  %107 = add i64 %4, -192, !mcsema_real_eip !20
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !20
  store i64 %89, i64* %108, align 8, !mcsema_real_eip !20
  %109 = add i64 %4, -196, !mcsema_real_eip !21
  %110 = inttoptr i64 %109 to i32*
  store i32 400, i32* %110, align 4, !mcsema_real_eip !21
  %111 = add i64 %4, -200, !mcsema_real_eip !22
  %112 = inttoptr i64 %111 to i32*
  store i32 500, i32* %112, align 4, !mcsema_real_eip !22
  %113 = add i64 %4, -204, !mcsema_real_eip !23
  %114 = inttoptr i64 %113 to i32*
  store i32 600, i32* %114, align 4, !mcsema_real_eip !23
  %115 = add i64 %4, -208, !mcsema_real_eip !24
  %116 = inttoptr i64 %115 to i32*
  store i32 10, i32* %116, align 4, !mcsema_real_eip !24
  %117 = add i64 %4, -216, !mcsema_real_eip !25
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !25
  store i64 %88, i64* %118, align 8, !mcsema_real_eip !25
  %119 = tail call x86_64_sysvcc i64 @memcpy(i64 %89, i64 ptrtoint (%0* @data_0x200 to i64), i64 40), !mcsema_real_eip !26
  %120 = load i64, i64* %118, align 8, !mcsema_real_eip !27
  %121 = load i64, i64* %100, align 8, !mcsema_real_eip !28
  %122 = load i64, i64* %102, align 8, !mcsema_real_eip !29
  %123 = tail call x86_64_sysvcc i64 @memcpy(i64 %120, i64 %121, i64 %122), !mcsema_real_eip !30
  %124 = load i32, i32* %104, align 4, !mcsema_real_eip !31
  %125 = zext i32 %124 to i64
  %126 = load i32, i32* %106, align 4, !mcsema_real_eip !32
  %127 = zext i32 %126 to i64
  %128 = load i32, i32* %98, align 4, !mcsema_real_eip !33
  %129 = zext i32 %128 to i64
  %130 = load i32, i32* %110, align 4, !mcsema_real_eip !34
  %131 = zext i32 %130 to i64
  %132 = load i32, i32* %112, align 4, !mcsema_real_eip !35
  %133 = zext i32 %132 to i64
  %134 = load i32, i32* %114, align 4, !mcsema_real_eip !36
  %135 = zext i32 %134 to i64
  %136 = inttoptr i64 %75 to i32*
  store i32 10, i32* %136, align 4, !mcsema_real_eip !37
  %137 = load i64, i64* %108, align 8
  %138 = add i64 %4, -240, !mcsema_real_eip !38
  %139 = inttoptr i64 %138 to i64*, !mcsema_real_eip !38
  store i64 %137, i64* %139, align 8, !mcsema_real_eip !38
  %140 = add i64 %4, -232, !mcsema_real_eip !39
  %141 = inttoptr i64 %140 to i32*
  store i32 10, i32* %141, align 4, !mcsema_real_eip !39
  %142 = load i64, i64* %118, align 8
  %143 = add i64 %4, -224, !mcsema_real_eip !40
  %144 = inttoptr i64 %143 to i64*, !mcsema_real_eip !40
  store i64 %142, i64* %144, align 8, !mcsema_real_eip !40
  %145 = add i64 %4, -256
  %146 = inttoptr i64 %145 to i64*, !mcsema_real_eip !41
  store i64 -4981261766360305936, i64* %146, align 8, !mcsema_real_eip !41
  store i64 %123, i64* %RAX.i, align 8, !mcsema_real_eip !41
  store i64 %137, i64* %RBX.i, align 8, !mcsema_real_eip !41
  store i64 %131, i64* %RCX.i, align 8, !mcsema_real_eip !41
  store i64 %129, i64* %RDX.i, align 8, !mcsema_real_eip !41
  store i64 %127, i64* %RSI.i, align 8, !mcsema_real_eip !41
  store i64 %125, i64* %RDI.i, align 8, !mcsema_real_eip !41
  store i64 %145, i64* %RSP.i, align 8, !mcsema_real_eip !41
  store i64 %63, i64* %RBP.i, align 8, !mcsema_real_eip !41
  store i64 %133, i64* %R8.i, align 8, !mcsema_real_eip !41
  store i64 %135, i64* %R9.i, align 8, !mcsema_real_eip !41
  %147 = bitcast i64* %R10.i to <2 x i64>*
  store <2 x i64> <i64 600, i64 10>, <2 x i64>* %147, align 8
  %148 = bitcast i64* %R12.i to <2 x i64>*
  store <2 x i64> <i64 40, i64 ptrtoint (%0* @data_0x200 to i64)>, <2 x i64>* %148, align 8
  store i64 %142, i64* %R14.i, align 8, !mcsema_real_eip !41
  store i64 add (i64 ptrtoint (%0* @data_0x200 to i64), i64 48), i64* %R15.i, align 8, !mcsema_real_eip !41
  store i64 %10, i64* %RIP.i, align 8, !mcsema_real_eip !41
  store i1 %85, i1* %CF.i, align 1, !mcsema_real_eip !41
  store i1 %82, i1* %PF.i, align 1, !mcsema_real_eip !41
  store i1 %78, i1* %AF.i, align 1, !mcsema_real_eip !41
  store i1 %83, i1* %ZF.i, align 1, !mcsema_real_eip !41
  store i1 %84, i1* %SF.i, align 1, !mcsema_real_eip !41
  store i1 %87, i1* %OF.i, align 1, !mcsema_real_eip !41
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
  store i11 %44, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !41
  store i128 %45, i128* %XMM0.i, align 1, !mcsema_real_eip !41
  store i128 %46, i128* %XMM1.i, align 1, !mcsema_real_eip !41
  store i128 %47, i128* %XMM2.i, align 1, !mcsema_real_eip !41
  store i128 %48, i128* %XMM3.i, align 1, !mcsema_real_eip !41
  store i128 %49, i128* %XMM4.i, align 1, !mcsema_real_eip !41
  store i128 %50, i128* %XMM5.i, align 1, !mcsema_real_eip !41
  store i128 %51, i128* %XMM6.i, align 1, !mcsema_real_eip !41
  store i128 %52, i128* %XMM7.i, align 1, !mcsema_real_eip !41
  store i128 %53, i128* %XMM8.i, align 1, !mcsema_real_eip !41
  store i128 %54, i128* %XMM9.i, align 1, !mcsema_real_eip !41
  store i128 %55, i128* %XMM10.i, align 1, !mcsema_real_eip !41
  store i128 %56, i128* %XMM11.i, align 1, !mcsema_real_eip !41
  store i128 %57, i128* %XMM12.i, align 1, !mcsema_real_eip !41
  store i128 %58, i128* %XMM13.i, align 1, !mcsema_real_eip !41
  store i128 %59, i128* %XMM14.i, align 1, !mcsema_real_eip !41
  store i128 %60, i128* %XMM15.i, align 1, !mcsema_real_eip !41
  store i64 %61, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !41
  store i64 %62, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !41
  %STi_val.i.0..sroa_cast.i = bitcast [8 x x86_fp80]* %STi_val.i.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* nonnull %STi_val.i.0..sroa_cast.i)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast.i, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 16, i1 false)
  %149 = add i64 %4, -264
  %150 = inttoptr i64 %149 to i64*, !mcsema_real_eip !2
  store i64 %63, i64* %150, align 8, !mcsema_real_eip !2
  %151 = add i64 %4, -272
  %152 = inttoptr i64 %151 to i64*, !mcsema_real_eip !42
  store i64 %137, i64* %152, align 8, !mcsema_real_eip !42
  %153 = load i64, i64* %144, align 8, !mcsema_real_eip !43
  %154 = load i32, i32* %141, align 4, !mcsema_real_eip !44
  %155 = zext i32 %154 to i64
  %156 = load i64, i64* %139, align 8
  %157 = load i32, i32* %136, align 4, !mcsema_real_eip !45
  %158 = add i64 %4, -276, !mcsema_real_eip !46
  %159 = inttoptr i64 %158 to i32*
  store i32 %124, i32* %159, align 4, !mcsema_real_eip !46
  %160 = add i64 %4, -280, !mcsema_real_eip !47
  %161 = inttoptr i64 %160 to i32*
  store i32 %126, i32* %161, align 4, !mcsema_real_eip !47
  %162 = add i64 %4, -284, !mcsema_real_eip !48
  %163 = inttoptr i64 %162 to i32*
  store i32 %128, i32* %163, align 4, !mcsema_real_eip !48
  %164 = add i64 %4, -288, !mcsema_real_eip !49
  %165 = inttoptr i64 %164 to i32*
  store i32 %130, i32* %165, align 4, !mcsema_real_eip !49
  %166 = add i64 %4, -292, !mcsema_real_eip !50
  %167 = inttoptr i64 %166 to i32*
  store i32 %132, i32* %167, align 4, !mcsema_real_eip !50
  %168 = add i64 %4, -296, !mcsema_real_eip !51
  %169 = inttoptr i64 %168 to i32*
  store i32 %134, i32* %169, align 4, !mcsema_real_eip !51
  %170 = add i64 %4, -300, !mcsema_real_eip !52
  %171 = inttoptr i64 %170 to i32*
  store i32 %157, i32* %171, align 4, !mcsema_real_eip !52
  %172 = add i64 %4, -312, !mcsema_real_eip !53
  %173 = inttoptr i64 %172 to i64*, !mcsema_real_eip !53
  store i64 %156, i64* %173, align 8, !mcsema_real_eip !53
  %174 = add i64 %4, -316, !mcsema_real_eip !54
  %175 = inttoptr i64 %174 to i32*
  store i32 %154, i32* %175, align 4, !mcsema_real_eip !54
  %176 = add i64 %4, -328, !mcsema_real_eip !55
  %177 = inttoptr i64 %176 to i64*, !mcsema_real_eip !55
  store i64 %153, i64* %177, align 8, !mcsema_real_eip !55
  %178 = add i64 %4, -332, !mcsema_real_eip !56
  %179 = inttoptr i64 %178 to i32*
  store i32 0, i32* %179, align 4, !mcsema_real_eip !56
  %180 = add i64 %4, -336
  %181 = inttoptr i64 %180 to i32*
  store i32 0, i32* %181, align 4
  %182 = load i32, i32* %171, align 4, !mcsema_real_eip !57
  %183 = sub i32 0, %182, !mcsema_real_eip !57
  %184 = icmp slt i32 %183, 0
  %185 = and i32 %182, %183, !mcsema_real_eip !57
  %186 = icmp slt i32 %185, 0
  %tmp52.i.i = xor i1 %184, %186
  %187 = load i32, i32* %179, align 4
  br i1 %tmp52.i.i, label %block_0x51.i.i.preheader, label %sub_a0.exit, !mcsema_real_eip !58

block_0x51.i.i.preheader:                         ; preds = %driverBlockRaw
  br label %block_0x51.i.i

block_0x51.i.i:                                   ; preds = %block_0x51.i.i.preheader, %block_0x51.i.i
  %188 = phi i32 [ %210, %block_0x51.i.i ], [ %187, %block_0x51.i.i.preheader ]
  %.sink53.i.i = phi i32 [ %202, %block_0x51.i.i ], [ 0, %block_0x51.i.i.preheader ]
  %189 = sext i32 %.sink53.i.i to i64, !mcsema_real_eip !59
  %190 = load i64, i64* %173, align 8, !mcsema_real_eip !60
  %191 = shl nsw i64 %189, 2
  %192 = add i64 %191, %190, !mcsema_real_eip !61
  %193 = inttoptr i64 %192 to i32*
  %194 = load i32, i32* %193, align 4, !mcsema_real_eip !61
  %195 = load i64, i64* %177, align 8, !mcsema_real_eip !62
  %196 = add i64 %195, %191, !mcsema_real_eip !63
  %197 = inttoptr i64 %196 to i32*
  %198 = load i32, i32* %197, align 4, !mcsema_real_eip !63
  %199 = sub i32 %194, %198, !mcsema_real_eip !63
  %200 = add i32 %199, %188
  store i32 %200, i32* %179, align 4, !mcsema_real_eip !64
  %201 = load i32, i32* %181, align 4, !mcsema_real_eip !65
  %202 = add i32 %201, 1
  store i32 %202, i32* %181, align 4
  %203 = load i32, i32* %171, align 4, !mcsema_real_eip !57
  %204 = sub i32 %202, %203, !mcsema_real_eip !57
  %205 = xor i32 %204, %202, !mcsema_real_eip !57
  %206 = icmp slt i32 %204, 0
  %207 = xor i32 %203, %202, !mcsema_real_eip !57
  %208 = and i32 %205, %207, !mcsema_real_eip !57
  %209 = icmp slt i32 %208, 0
  %tmp.i.i = xor i1 %206, %209
  %210 = load i32, i32* %179, align 4
  br i1 %tmp.i.i, label %block_0x51.i.i, label %block_0x45.block_0x7f_crit_edge.i.i, !mcsema_real_eip !58

block_0x45.block_0x7f_crit_edge.i.i:              ; preds = %block_0x51.i.i
  %211 = zext i32 %199 to i64, !mcsema_real_eip !63
  %212 = zext i32 %200 to i64, !mcsema_real_eip !66
  br label %sub_a0.exit

sub_a0.exit:                                      ; preds = %driverBlockRaw, %block_0x45.block_0x7f_crit_edge.i.i
  %RSI_val.0.lcssa.i.i = phi i64 [ %212, %block_0x45.block_0x7f_crit_edge.i.i ], [ %127, %driverBlockRaw ]
  %RDX_val.0.lcssa.i.i = phi i64 [ %211, %block_0x45.block_0x7f_crit_edge.i.i ], [ %129, %driverBlockRaw ]
  %.lcssa.i.i = phi i32 [ %210, %block_0x45.block_0x7f_crit_edge.i.i ], [ %187, %driverBlockRaw ]
  %213 = load i32, i32* %159, align 4, !mcsema_real_eip !67
  %214 = load i32, i32* %161, align 4, !mcsema_real_eip !68
  %215 = add i32 %214, %213
  %216 = load i32, i32* %163, align 4, !mcsema_real_eip !69
  %217 = add i32 %215, %216
  %218 = load i32, i32* %165, align 4, !mcsema_real_eip !70
  %219 = add i32 %217, %218
  %220 = load i32, i32* %167, align 4, !mcsema_real_eip !71
  %221 = add i32 %219, %220
  %222 = load i32, i32* %169, align 4, !mcsema_real_eip !72
  %uadd76.i.i = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %221, i32 %222) #2
  %223 = extractvalue { i32, i1 } %uadd76.i.i, 0
  %224 = xor i32 %221, %222, !mcsema_real_eip !72
  %225 = xor i32 %224, %223, !mcsema_real_eip !72
  %226 = and i32 %225, 16, !mcsema_real_eip !72
  %227 = icmp ne i32 %226, 0, !mcsema_real_eip !72
  %228 = icmp eq i32 %223, 0, !mcsema_real_eip !72
  %229 = trunc i32 %223 to i8, !mcsema_real_eip !72
  %230 = tail call i8 @llvm.ctpop.i8(i8 %229) #2, !mcsema_real_eip !72
  %231 = and i8 %230, 1
  %232 = icmp eq i8 %231, 0
  %233 = extractvalue { i32, i1 } %uadd76.i.i, 1
  %234 = zext i32 %223 to i64
  %235 = sext i32 %.lcssa.i.i to i64, !mcsema_real_eip !73
  %236 = sext i32 %223 to i64, !mcsema_real_eip !73
  %237 = mul nsw i64 %236, %235, !mcsema_real_eip !73
  %238 = mul i32 %223, %.lcssa.i.i, !mcsema_real_eip !73
  %239 = sext i32 %238 to i64, !mcsema_real_eip !73
  %240 = icmp ne i64 %239, %237, !mcsema_real_eip !73
  %241 = zext i32 %238 to i64
  %242 = load i64, i64* %152, align 8, !mcsema_real_eip !74
  %243 = load i64, i64* %150, align 8, !mcsema_real_eip !75
  store i64 %241, i64* %RAX.i, align 8, !mcsema_real_eip !76
  store i64 %242, i64* %RBX.i, align 8, !mcsema_real_eip !76
  store i64 %234, i64* %RCX.i, align 8, !mcsema_real_eip !76
  store i64 %RDX_val.0.lcssa.i.i, i64* %RDX.i, align 8, !mcsema_real_eip !76
  store i64 %RSI_val.0.lcssa.i.i, i64* %RSI.i, align 8, !mcsema_real_eip !76
  store i64 %125, i64* %RDI.i, align 8, !mcsema_real_eip !76
  store i64 %75, i64* %RSP.i, align 8, !mcsema_real_eip !76
  store i64 %243, i64* %RBP.i, align 8, !mcsema_real_eip !76
  store i64 %133, i64* %R8.i, align 8, !mcsema_real_eip !76
  store i64 %135, i64* %R9.i, align 8, !mcsema_real_eip !76
  store i64 %155, i64* %R10.i, align 8, !mcsema_real_eip !76
  store i64 %156, i64* %R11.i, align 8, !mcsema_real_eip !76
  %244 = bitcast i64* %R12.i to <2 x i64>*
  store <2 x i64> <i64 40, i64 ptrtoint (%0* @data_0x200 to i64)>, <2 x i64>* %244, align 8
  store i64 %142, i64* %R14.i, align 8, !mcsema_real_eip !76
  store i64 add (i64 ptrtoint (%0* @data_0x200 to i64), i64 48), i64* %R15.i, align 8, !mcsema_real_eip !76
  store i64 %10, i64* %RIP.i, align 8, !mcsema_real_eip !76
  store i1 %233, i1* %CF.i, align 1, !mcsema_real_eip !76
  store i1 %232, i1* %PF.i, align 1, !mcsema_real_eip !76
  store i1 %227, i1* %AF.i, align 1, !mcsema_real_eip !76
  store i1 %228, i1* %ZF.i, align 1, !mcsema_real_eip !76
  store i1 %240, i1* %SF.i, align 1, !mcsema_real_eip !76
  store i1 %240, i1* %OF.i, align 1, !mcsema_real_eip !76
  store i1 %11, i1* %DF.i, align 1, !mcsema_real_eip !76
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %13, i8* nonnull %STi_val.i.0..sroa_cast.i, i32 128, i32 8, i1 false) #2, !mcsema_real_eip !76
  store i1 %14, i1* %FPU_B.i, align 1, !mcsema_real_eip !76
  store i1 %15, i1* %FPU_C3.i, align 1, !mcsema_real_eip !76
  store i3 %16, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !76
  store i1 %17, i1* %FPU_C2.i, align 1, !mcsema_real_eip !76
  store i1 %18, i1* %FPU_C1.i, align 1, !mcsema_real_eip !76
  store i1 %19, i1* %FPU_C0.i, align 1, !mcsema_real_eip !76
  store i1 %20, i1* %FPU_ES.i, align 1, !mcsema_real_eip !76
  store i1 %21, i1* %FPU_SF.i, align 1, !mcsema_real_eip !76
  store i1 %22, i1* %FPU_PE.i, align 1, !mcsema_real_eip !76
  store i1 %23, i1* %FPU_UE.i, align 1, !mcsema_real_eip !76
  store i1 %24, i1* %FPU_OE.i, align 1, !mcsema_real_eip !76
  store i1 %25, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !76
  store i1 %26, i1* %FPU_DE.i, align 1, !mcsema_real_eip !76
  store i1 %27, i1* %FPU_IE.i, align 1, !mcsema_real_eip !76
  store i1 %28, i1* %FPU_X.i, align 1, !mcsema_real_eip !76
  store i2 %29, i2* %FPU_RC.i, align 1, !mcsema_real_eip !76
  store i2 %30, i2* %FPU_PC.i, align 1, !mcsema_real_eip !76
  store i1 %31, i1* %FPU_PM.i, align 1, !mcsema_real_eip !76
  store i1 %32, i1* %FPU_UM.i, align 1, !mcsema_real_eip !76
  store i1 %33, i1* %FPU_OM.i, align 1, !mcsema_real_eip !76
  store i1 %34, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !76
  store i1 %35, i1* %FPU_DM.i, align 1, !mcsema_real_eip !76
  store i1 %36, i1* %FPU_IM.i, align 1, !mcsema_real_eip !76
  store i64 %39, i64* %38, align 4
  store i16 %40, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !76
  store i64 %41, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !76
  store i16 %42, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !76
  store i64 %43, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !76
  store i11 %44, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !76
  store i128 %45, i128* %XMM0.i, align 1, !mcsema_real_eip !76
  store i128 %46, i128* %XMM1.i, align 1, !mcsema_real_eip !76
  store i128 %47, i128* %XMM2.i, align 1, !mcsema_real_eip !76
  store i128 %48, i128* %XMM3.i, align 1, !mcsema_real_eip !76
  store i128 %49, i128* %XMM4.i, align 1, !mcsema_real_eip !76
  store i128 %50, i128* %XMM5.i, align 1, !mcsema_real_eip !76
  store i128 %51, i128* %XMM6.i, align 1, !mcsema_real_eip !76
  store i128 %52, i128* %XMM7.i, align 1, !mcsema_real_eip !76
  store i128 %53, i128* %XMM8.i, align 1, !mcsema_real_eip !76
  store i128 %54, i128* %XMM9.i, align 1, !mcsema_real_eip !76
  store i128 %55, i128* %XMM10.i, align 1, !mcsema_real_eip !76
  store i128 %56, i128* %XMM11.i, align 1, !mcsema_real_eip !76
  store i128 %57, i128* %XMM12.i, align 1, !mcsema_real_eip !76
  store i128 %58, i128* %XMM13.i, align 1, !mcsema_real_eip !76
  store i128 %59, i128* %XMM14.i, align 1, !mcsema_real_eip !76
  store i128 %60, i128* %XMM15.i, align 1, !mcsema_real_eip !76
  store i64 %61, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !76
  store i64 %62, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !76
  call void @llvm.lifetime.end(i64 128, i8* nonnull %STi_val.i.0..sroa_cast.i)
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull %STi_val.i.0..sroa_cast, i8* %13, i32 128, i32 4, i1 false), !mcsema_real_eip !41
  %uadd.i = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %75, i64 200)
  %245 = extractvalue { i64, i1 } %uadd.i, 0
  %246 = xor i64 %245, %75, !mcsema_real_eip !77
  %247 = and i64 %246, 16, !mcsema_real_eip !77
  %248 = icmp ne i64 %247, 0, !mcsema_real_eip !77
  %249 = icmp slt i64 %245, 0
  %250 = icmp eq i64 %245, 0, !mcsema_real_eip !77
  %251 = add i64 %4, 9223372036854775560
  %252 = and i64 %246, %251, !mcsema_real_eip !77
  %253 = icmp slt i64 %252, 0
  %254 = trunc i64 %245 to i8, !mcsema_real_eip !77
  %255 = tail call i8 @llvm.ctpop.i8(i8 %254), !mcsema_real_eip !77
  %256 = and i8 %255, 1
  %257 = icmp eq i8 %256, 0
  %258 = extractvalue { i64, i1 } %uadd.i, 1
  %259 = inttoptr i64 %245 to i64*, !mcsema_real_eip !78
  %260 = load i64, i64* %259, align 8, !mcsema_real_eip !78
  %261 = add i64 %245, 8, !mcsema_real_eip !78
  %262 = inttoptr i64 %261 to i64*, !mcsema_real_eip !79
  %263 = load i64, i64* %262, align 8, !mcsema_real_eip !79
  %264 = add i64 %245, 16, !mcsema_real_eip !79
  %265 = inttoptr i64 %264 to i64*, !mcsema_real_eip !80
  %266 = load i64, i64* %265, align 8, !mcsema_real_eip !80
  %267 = add i64 %245, 24, !mcsema_real_eip !80
  %268 = inttoptr i64 %267 to i64*, !mcsema_real_eip !81
  %269 = load i64, i64* %268, align 8, !mcsema_real_eip !81
  %270 = add i64 %245, 32, !mcsema_real_eip !81
  %271 = inttoptr i64 %270 to i64*, !mcsema_real_eip !82
  %272 = load i64, i64* %271, align 8, !mcsema_real_eip !82
  %273 = add i64 %245, 40, !mcsema_real_eip !82
  %274 = inttoptr i64 %273 to i64*, !mcsema_real_eip !83
  %275 = load i64, i64* %274, align 8, !mcsema_real_eip !83
  %276 = add i64 %245, 56, !mcsema_real_eip !84
  store i64 %241, i64* %RAX.i, align 8, !mcsema_real_eip !84
  store i64 %260, i64* %RBX.i, align 8, !mcsema_real_eip !84
  store i64 %234, i64* %RCX.i, align 8, !mcsema_real_eip !84
  store i64 %RDX_val.0.lcssa.i.i, i64* %RDX.i, align 8, !mcsema_real_eip !84
  store i64 %RSI_val.0.lcssa.i.i, i64* %RSI.i, align 8, !mcsema_real_eip !84
  store i64 %125, i64* %RDI.i, align 8, !mcsema_real_eip !84
  store i64 %276, i64* %RSP.i, align 8, !mcsema_real_eip !84
  store i64 %275, i64* %RBP.i, align 8, !mcsema_real_eip !84
  store i64 %133, i64* %R8.i, align 8, !mcsema_real_eip !84
  store i64 %135, i64* %R9.i, align 8, !mcsema_real_eip !84
  store i64 %155, i64* %R10.i, align 8, !mcsema_real_eip !84
  store i64 %156, i64* %R11.i, align 8, !mcsema_real_eip !84
  store i64 %263, i64* %R12.i, align 8, !mcsema_real_eip !84
  store i64 %266, i64* %R13.i, align 8, !mcsema_real_eip !84
  store i64 %269, i64* %R14.i, align 8, !mcsema_real_eip !84
  store i64 %272, i64* %R15.i, align 8, !mcsema_real_eip !84
  store i64 %10, i64* %RIP.i, align 8, !mcsema_real_eip !84
  store i1 %258, i1* %CF.i, align 1, !mcsema_real_eip !84
  store i1 %257, i1* %PF.i, align 1, !mcsema_real_eip !84
  store i1 %248, i1* %AF.i, align 1, !mcsema_real_eip !84
  store i1 %250, i1* %ZF.i, align 1, !mcsema_real_eip !84
  store i1 %249, i1* %SF.i, align 1, !mcsema_real_eip !84
  store i1 %253, i1* %OF.i, align 1, !mcsema_real_eip !84
  store i1 %11, i1* %DF.i, align 1, !mcsema_real_eip !84
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %13, i8* nonnull %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !84
  store i1 %14, i1* %FPU_B.i, align 1, !mcsema_real_eip !84
  store i1 %15, i1* %FPU_C3.i, align 1, !mcsema_real_eip !84
  store i3 %16, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !84
  store i1 %17, i1* %FPU_C2.i, align 1, !mcsema_real_eip !84
  store i1 %18, i1* %FPU_C1.i, align 1, !mcsema_real_eip !84
  store i1 %19, i1* %FPU_C0.i, align 1, !mcsema_real_eip !84
  store i1 %20, i1* %FPU_ES.i, align 1, !mcsema_real_eip !84
  store i1 %21, i1* %FPU_SF.i, align 1, !mcsema_real_eip !84
  store i1 %22, i1* %FPU_PE.i, align 1, !mcsema_real_eip !84
  store i1 %23, i1* %FPU_UE.i, align 1, !mcsema_real_eip !84
  store i1 %24, i1* %FPU_OE.i, align 1, !mcsema_real_eip !84
  store i1 %25, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !84
  store i1 %26, i1* %FPU_DE.i, align 1, !mcsema_real_eip !84
  store i1 %27, i1* %FPU_IE.i, align 1, !mcsema_real_eip !84
  store i1 %28, i1* %FPU_X.i, align 1, !mcsema_real_eip !84
  store i2 %29, i2* %FPU_RC.i, align 1, !mcsema_real_eip !84
  store i2 %30, i2* %FPU_PC.i, align 1, !mcsema_real_eip !84
  store i1 %31, i1* %FPU_PM.i, align 1, !mcsema_real_eip !84
  store i1 %32, i1* %FPU_UM.i, align 1, !mcsema_real_eip !84
  store i1 %33, i1* %FPU_OM.i, align 1, !mcsema_real_eip !84
  store i1 %34, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !84
  store i1 %35, i1* %FPU_DM.i, align 1, !mcsema_real_eip !84
  store i1 %36, i1* %FPU_IM.i, align 1, !mcsema_real_eip !84
  store i64 %39, i64* %38, align 4
  store i16 %40, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !84
  store i64 %41, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !84
  store i16 %42, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !84
  store i64 %43, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !84
  store i11 %44, i11* %FPU_FOPCODE.i, align 1, !mcsema_real_eip !84
  store i128 %45, i128* %XMM0.i, align 1, !mcsema_real_eip !84
  store i128 %46, i128* %XMM1.i, align 1, !mcsema_real_eip !84
  store i128 %47, i128* %XMM2.i, align 1, !mcsema_real_eip !84
  store i128 %48, i128* %XMM3.i, align 1, !mcsema_real_eip !84
  store i128 %49, i128* %XMM4.i, align 1, !mcsema_real_eip !84
  store i128 %50, i128* %XMM5.i, align 1, !mcsema_real_eip !84
  store i128 %51, i128* %XMM6.i, align 1, !mcsema_real_eip !84
  store i128 %52, i128* %XMM7.i, align 1, !mcsema_real_eip !84
  store i128 %53, i128* %XMM8.i, align 1, !mcsema_real_eip !84
  store i128 %54, i128* %XMM9.i, align 1, !mcsema_real_eip !84
  store i128 %55, i128* %XMM10.i, align 1, !mcsema_real_eip !84
  store i128 %56, i128* %XMM11.i, align 1, !mcsema_real_eip !84
  store i128 %57, i128* %XMM12.i, align 1, !mcsema_real_eip !84
  store i128 %58, i128* %XMM13.i, align 1, !mcsema_real_eip !84
  store i128 %59, i128* %XMM14.i, align 1, !mcsema_real_eip !84
  store i128 %60, i128* %XMM15.i, align 1, !mcsema_real_eip !84
  store i64 %61, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !84
  store i64 %62, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !84
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
!2 = !{i64 0}
!3 = !{i64 160}
!4 = !{i64 164}
!5 = !{i64 166}
!6 = !{i64 168}
!7 = !{i64 170}
!8 = !{i64 172}
!9 = !{i64 173}
!10 = !{i64 219}
!11 = !{i64 226}
!12 = !{i64 260}
!13 = !{i64 267}
!14 = !{i64 270}
!15 = !{i64 283}
!16 = !{i64 292}
!17 = !{i64 299}
!18 = !{i64 306}
!19 = !{i64 312}
!20 = !{i64 318}
!21 = !{i64 325}
!22 = !{i64 332}
!23 = !{i64 339}
!24 = !{i64 346}
!25 = !{i64 353}
!26 = !{i64 360}
!27 = !{i64 365}
!28 = !{i64 375}
!29 = !{i64 382}
!30 = !{i64 389}
!31 = !{i64 394}
!32 = !{i64 400}
!33 = !{i64 406}
!34 = !{i64 412}
!35 = !{i64 418}
!36 = !{i64 425}
!37 = !{i64 432}
!38 = !{i64 446}
!39 = !{i64 451}
!40 = !{i64 466}
!41 = !{i64 471}
!42 = !{i64 4}
!43 = !{i64 5}
!44 = !{i64 9}
!45 = !{i64 17}
!46 = !{i64 20}
!47 = !{i64 23}
!48 = !{i64 26}
!49 = !{i64 29}
!50 = !{i64 32}
!51 = !{i64 36}
!52 = !{i64 40}
!53 = !{i64 43}
!54 = !{i64 47}
!55 = !{i64 51}
!56 = !{i64 55}
!57 = !{i64 72}
!58 = !{i64 75}
!59 = !{i64 81}
!60 = !{i64 85}
!61 = !{i64 89}
!62 = !{i64 96}
!63 = !{i64 100}
!64 = !{i64 108}
!65 = !{i64 111}
!66 = !{i64 106}
!67 = !{i64 130}
!68 = !{i64 133}
!69 = !{i64 136}
!70 = !{i64 139}
!71 = !{i64 142}
!72 = !{i64 145}
!73 = !{i64 148}
!74 = !{i64 151}
!75 = !{i64 152}
!76 = !{i64 153}
!77 = !{i64 476}
!78 = !{i64 483}
!79 = !{i64 484}
!80 = !{i64 486}
!81 = !{i64 488}
!82 = !{i64 490}
!83 = !{i64 492}
!84 = !{i64 493}
