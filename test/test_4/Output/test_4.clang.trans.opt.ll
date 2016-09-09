; ModuleID = 'Output/test_4.clang.trans.opt.bc'
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

; Function Attrs: noreturn
define void @mcsema_main(%struct.regs*) #2 {
driverBlockRaw:
  %_local_stack_alloc_130.i = alloca [256 x i64], align 8
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %1 = bitcast [256 x i64]* %_local_stack_alloc_130.i to i8*
  call void @llvm.lifetime.start(i64 2048, i8* %1)
  %STi_val.i.0..sroa_cast = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* %STi_val.i.0..sroa_cast)
  %_local_stack_start_.i = ptrtoint [256 x i64]* %_local_stack_alloc_130.i to i64
  %RAX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RBX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %2 = load i64* %RBX.i, align 8, !mcsema_real_eip !2
  %RCX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %RDX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %RSI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %3 = load i64* %RSI.i, align 8, !mcsema_real_eip !2
  %RDI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %4 = load i64* %RDI.i, align 8, !mcsema_real_eip !2
  %RSP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %RBP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %5 = load i64* %RBP.i, align 8, !mcsema_real_eip !2
  %R8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %R9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !2
  %R10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %R11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !2
  %R12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %6 = load i64* %R12.i, align 8, !mcsema_real_eip !2
  %R13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !2
  %7 = load i64* %R13.i, align 8, !mcsema_real_eip !2
  %R14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %8 = load i64* %R14.i, align 8, !mcsema_real_eip !2
  %R15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !2
  %9 = load i64* %R15.i, align 8, !mcsema_real_eip !2
  %RIP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %10 = load i64* %RIP.i, align 8, !mcsema_real_eip !2
  %CF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %PF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %AF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %ZF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %OF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %DF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %11 = load i1* %DF.i, align 1, !mcsema_real_eip !2
  %12 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %13 = bitcast x86_fp80* %12 to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %STi_val.i.0..sroa_cast, i8* %13, i32 128, i32 4, i1 false), !mcsema_real_eip !2
  %FPU_B.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %14 = load i1* %FPU_B.i, align 1, !mcsema_real_eip !2
  %FPU_C3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %15 = load i1* %FPU_C3.i, align 1, !mcsema_real_eip !2
  %FPU_TOP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %16 = load i3* %FPU_TOP.i, align 1, !mcsema_real_eip !2
  %FPU_C2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %17 = load i1* %FPU_C2.i, align 1, !mcsema_real_eip !2
  %FPU_C1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %18 = load i1* %FPU_C1.i, align 1, !mcsema_real_eip !2
  %FPU_C0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %19 = load i1* %FPU_C0.i, align 1, !mcsema_real_eip !2
  %FPU_ES.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %20 = load i1* %FPU_ES.i, align 1, !mcsema_real_eip !2
  %FPU_SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %21 = load i1* %FPU_SF.i, align 1, !mcsema_real_eip !2
  %FPU_PE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %22 = load i1* %FPU_PE.i, align 1, !mcsema_real_eip !2
  %FPU_UE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %23 = load i1* %FPU_UE.i, align 1, !mcsema_real_eip !2
  %FPU_OE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %24 = load i1* %FPU_OE.i, align 1, !mcsema_real_eip !2
  %FPU_ZE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %25 = load i1* %FPU_ZE.i, align 1, !mcsema_real_eip !2
  %FPU_DE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %26 = load i1* %FPU_DE.i, align 1, !mcsema_real_eip !2
  %FPU_IE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %27 = load i1* %FPU_IE.i, align 1, !mcsema_real_eip !2
  %FPU_X.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %28 = load i1* %FPU_X.i, align 1, !mcsema_real_eip !2
  %FPU_RC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %29 = load i2* %FPU_RC.i, align 1, !mcsema_real_eip !2
  %FPU_PC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %30 = load i2* %FPU_PC.i, align 1, !mcsema_real_eip !2
  %FPU_PM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %31 = load i1* %FPU_PM.i, align 1, !mcsema_real_eip !2
  %FPU_UM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %32 = load i1* %FPU_UM.i, align 1, !mcsema_real_eip !2
  %FPU_OM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %33 = load i1* %FPU_OM.i, align 1, !mcsema_real_eip !2
  %FPU_ZM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %34 = load i1* %FPU_ZM.i, align 1, !mcsema_real_eip !2
  %FPU_DM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %35 = load i1* %FPU_DM.i, align 1, !mcsema_real_eip !2
  %FPU_IM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %36 = load i1* %FPU_IM.i, align 1, !mcsema_real_eip !2
  %37 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %38 = bitcast i8* %37 to i64*
  %39 = load i64* %38, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %40 = load i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %41 = load i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %42 = load i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %43 = load i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !2
  %XMM0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %44 = load i128* %XMM0.i, align 1, !mcsema_real_eip !2
  %XMM1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %45 = load i128* %XMM1.i, align 1, !mcsema_real_eip !2
  %XMM2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %46 = load i128* %XMM2.i, align 1, !mcsema_real_eip !2
  %XMM3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %47 = load i128* %XMM3.i, align 1, !mcsema_real_eip !2
  %XMM4.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %48 = load i128* %XMM4.i, align 1, !mcsema_real_eip !2
  %XMM5.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %49 = load i128* %XMM5.i, align 1, !mcsema_real_eip !2
  %XMM6.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %50 = load i128* %XMM6.i, align 1, !mcsema_real_eip !2
  %XMM7.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %51 = load i128* %XMM7.i, align 1, !mcsema_real_eip !2
  %XMM8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %52 = load i128* %XMM8.i, align 1, !mcsema_real_eip !2
  %XMM9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %53 = load i128* %XMM9.i, align 1, !mcsema_real_eip !2
  %XMM10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %54 = load i128* %XMM10.i, align 1, !mcsema_real_eip !2
  %XMM11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %55 = load i128* %XMM11.i, align 1, !mcsema_real_eip !2
  %XMM12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %56 = load i128* %XMM12.i, align 1, !mcsema_real_eip !2
  %XMM13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %57 = load i128* %XMM13.i, align 1, !mcsema_real_eip !2
  %XMM14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %58 = load i128* %XMM14.i, align 1, !mcsema_real_eip !2
  %XMM15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %59 = load i128* %XMM15.i, align 1, !mcsema_real_eip !2
  %STACK_BASE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %60 = bitcast i64* %STACK_BASE.i to <2 x i64>*
  %61 = load <2 x i64>* %60, align 8
  %62 = add i64 %_local_stack_start_.i, 248
  %63 = inttoptr i64 %62 to i64*, !mcsema_real_eip !2
  store i64 %5, i64* %63, align 8, !mcsema_real_eip !2
  %64 = add i64 %_local_stack_start_.i, 240
  %65 = inttoptr i64 %64 to i64*, !mcsema_real_eip !3
  store i64 %9, i64* %65, align 8, !mcsema_real_eip !3
  %66 = add i64 %_local_stack_start_.i, 232
  %67 = inttoptr i64 %66 to i64*, !mcsema_real_eip !4
  store i64 %8, i64* %67, align 8, !mcsema_real_eip !4
  %68 = add i64 %_local_stack_start_.i, 224
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !5
  store i64 %7, i64* %69, align 8, !mcsema_real_eip !5
  %70 = add i64 %_local_stack_start_.i, 216
  %71 = inttoptr i64 %70 to i64*, !mcsema_real_eip !6
  store i64 %6, i64* %71, align 8, !mcsema_real_eip !6
  %72 = add i64 %_local_stack_start_.i, 208
  %73 = inttoptr i64 %72 to i64*, !mcsema_real_eip !7
  store i64 %2, i64* %73, align 8, !mcsema_real_eip !7
  %74 = add i64 %_local_stack_start_.i, 8
  %75 = xor i64 %74, %72, !mcsema_real_eip !8
  %76 = and i64 %75, 16, !mcsema_real_eip !8
  %77 = icmp ne i64 %76, 0, !mcsema_real_eip !8
  %78 = trunc i64 %74 to i8, !mcsema_real_eip !8
  %79 = tail call i8 @llvm.ctpop.i8(i8 %78), !mcsema_real_eip !8
  %80 = and i8 %79, 1
  %81 = icmp eq i8 %80, 0
  %82 = icmp eq i64 %74, 0, !mcsema_real_eip !8
  %83 = icmp slt i64 %74, 0
  %84 = icmp ult i64 %72, 200, !mcsema_real_eip !8
  %85 = and i64 %75, %72, !mcsema_real_eip !8
  %86 = icmp slt i64 %85, 0
  %87 = add i64 %_local_stack_start_.i, 104, !mcsema_real_eip !9
  %88 = add i64 %_local_stack_start_.i, 152, !mcsema_real_eip !10
  %89 = add i64 %_local_stack_start_.i, 204, !mcsema_real_eip !11
  %90 = inttoptr i64 %89 to i32*
  store i32 0, i32* %90, align 4, !mcsema_real_eip !11
  %91 = add i64 %_local_stack_start_.i, 200, !mcsema_real_eip !12
  %92 = trunc i64 %4 to i32, !mcsema_real_eip !12
  %93 = inttoptr i64 %91 to i32*
  store i32 %92, i32* %93, align 8, !mcsema_real_eip !12
  %94 = add i64 %_local_stack_start_.i, 192, !mcsema_real_eip !13
  %95 = inttoptr i64 %94 to i64*, !mcsema_real_eip !13
  store i64 %3, i64* %95, align 8, !mcsema_real_eip !13
  %96 = add i64 %_local_stack_start_.i, 100, !mcsema_real_eip !14
  %97 = inttoptr i64 %96 to i32*
  store i32 300, i32* %97, align 4, !mcsema_real_eip !14
  %98 = add i64 %_local_stack_start_.i, 88, !mcsema_real_eip !15
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !15
  store i64 add (i64 ptrtoint (%0* @data_0x1ee to i64), i64 48), i64* %99, align 8, !mcsema_real_eip !15
  %100 = add i64 %_local_stack_start_.i, 80, !mcsema_real_eip !16
  %101 = inttoptr i64 %100 to i64*, !mcsema_real_eip !16
  store i64 40, i64* %101, align 8, !mcsema_real_eip !16
  %102 = add i64 %_local_stack_start_.i, 76, !mcsema_real_eip !17
  %103 = inttoptr i64 %102 to i32*
  store i32 100, i32* %103, align 4, !mcsema_real_eip !17
  %104 = add i64 %_local_stack_start_.i, 72, !mcsema_real_eip !18
  %105 = inttoptr i64 %104 to i32*
  store i32 200, i32* %105, align 8, !mcsema_real_eip !18
  %106 = add i64 %_local_stack_start_.i, 64, !mcsema_real_eip !19
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !19
  store i64 %88, i64* %107, align 8, !mcsema_real_eip !19
  %108 = add i64 %_local_stack_start_.i, 60, !mcsema_real_eip !20
  %109 = inttoptr i64 %108 to i32*
  store i32 400, i32* %109, align 4, !mcsema_real_eip !20
  %110 = add i64 %_local_stack_start_.i, 56, !mcsema_real_eip !21
  %111 = inttoptr i64 %110 to i32*
  store i32 500, i32* %111, align 8, !mcsema_real_eip !21
  %112 = add i64 %_local_stack_start_.i, 52, !mcsema_real_eip !22
  %113 = inttoptr i64 %112 to i32*
  store i32 600, i32* %113, align 4, !mcsema_real_eip !22
  %114 = add i64 %_local_stack_start_.i, 48, !mcsema_real_eip !23
  %115 = inttoptr i64 %114 to i32*
  store i32 10, i32* %115, align 8, !mcsema_real_eip !23
  %116 = add i64 %_local_stack_start_.i, 40, !mcsema_real_eip !24
  %117 = inttoptr i64 %116 to i64*, !mcsema_real_eip !24
  store i64 %87, i64* %117, align 8, !mcsema_real_eip !24
  %118 = tail call x86_64_sysvcc i64 @memcpy(i64 %88, i64 ptrtoint (%0* @data_0x1ee to i64), i64 40), !mcsema_real_eip !25
  %119 = load i64* %117, align 8, !mcsema_real_eip !26
  %120 = load i64* %99, align 8, !mcsema_real_eip !27
  %121 = load i64* %101, align 8, !mcsema_real_eip !28
  %122 = tail call x86_64_sysvcc i64 @memcpy(i64 %119, i64 %120, i64 %121), !mcsema_real_eip !29
  %123 = load i32* %103, align 4, !mcsema_real_eip !30
  %124 = zext i32 %123 to i64, !mcsema_real_eip !30
  %125 = load i32* %105, align 8, !mcsema_real_eip !31
  %126 = zext i32 %125 to i64, !mcsema_real_eip !31
  %127 = load i32* %97, align 4, !mcsema_real_eip !32
  %128 = zext i32 %127 to i64, !mcsema_real_eip !32
  %129 = load i32* %109, align 4, !mcsema_real_eip !33
  %130 = zext i32 %129 to i64, !mcsema_real_eip !33
  %131 = load i32* %111, align 8, !mcsema_real_eip !34
  %132 = zext i32 %131 to i64, !mcsema_real_eip !34
  %133 = load i32* %113, align 4, !mcsema_real_eip !35
  %134 = zext i32 %133 to i64, !mcsema_real_eip !35
  %135 = inttoptr i64 %74 to i32*
  store i32 10, i32* %135, align 8, !mcsema_real_eip !36
  %136 = load i64* %107, align 8, !mcsema_real_eip !37
  %137 = add i64 %_local_stack_start_.i, 16, !mcsema_real_eip !38
  %138 = inttoptr i64 %137 to i64*, !mcsema_real_eip !38
  store i64 %136, i64* %138, align 8, !mcsema_real_eip !38
  %139 = add i64 %_local_stack_start_.i, 24, !mcsema_real_eip !39
  %140 = inttoptr i64 %139 to i32*
  store i32 10, i32* %140, align 8, !mcsema_real_eip !39
  %141 = load i64* %117, align 8, !mcsema_real_eip !40
  %142 = add i64 %_local_stack_start_.i, 32, !mcsema_real_eip !41
  %143 = inttoptr i64 %142 to i64*, !mcsema_real_eip !41
  store i64 %141, i64* %143, align 8, !mcsema_real_eip !41
  %144 = getelementptr inbounds [256 x i64]* %_local_stack_alloc_130.i, i64 0, i64 0
  store i64 -4981261766360305936, i64* %144, align 8, !mcsema_real_eip !42
  store i64 %122, i64* %RAX.i, align 8, !mcsema_real_eip !42
  store i64 %136, i64* %RBX.i, align 8, !mcsema_real_eip !42
  store i64 %130, i64* %RCX.i, align 8, !mcsema_real_eip !42
  store i64 %128, i64* %RDX.i, align 8, !mcsema_real_eip !42
  store i64 %126, i64* %RSI.i, align 8, !mcsema_real_eip !42
  store i64 %124, i64* %RDI.i, align 8, !mcsema_real_eip !42
  store i64 %_local_stack_start_.i, i64* %RSP.i, align 8, !mcsema_real_eip !42
  store i64 %62, i64* %RBP.i, align 8, !mcsema_real_eip !42
  store i64 %132, i64* %R8.i, align 8, !mcsema_real_eip !42
  store i64 %134, i64* %R9.i, align 8, !mcsema_real_eip !42
  store i64 600, i64* %R10.i, align 8, !mcsema_real_eip !42
  store i64 10, i64* %R11.i, align 8, !mcsema_real_eip !42
  store i64 40, i64* %R12.i, align 8, !mcsema_real_eip !42
  store i64 ptrtoint (%0* @data_0x1ee to i64), i64* %R13.i, align 8, !mcsema_real_eip !42
  store i64 %141, i64* %R14.i, align 8, !mcsema_real_eip !42
  store i64 add (i64 ptrtoint (%0* @data_0x1ee to i64), i64 48), i64* %R15.i, align 8, !mcsema_real_eip !42
  store i64 %10, i64* %RIP.i, align 8, !mcsema_real_eip !42
  store i1 %84, i1* %CF.i, align 1, !mcsema_real_eip !42
  store i1 %81, i1* %PF.i, align 1, !mcsema_real_eip !42
  store i1 %77, i1* %AF.i, align 1, !mcsema_real_eip !42
  store i1 %82, i1* %ZF.i, align 1, !mcsema_real_eip !42
  store i1 %83, i1* %SF.i, align 1, !mcsema_real_eip !42
  store i1 %86, i1* %OF.i, align 1, !mcsema_real_eip !42
  store i1 %11, i1* %DF.i, align 1, !mcsema_real_eip !42
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %13, i8* %STi_val.i.0..sroa_cast, i32 128, i32 8, i1 false), !mcsema_real_eip !42
  store i1 %14, i1* %FPU_B.i, align 1, !mcsema_real_eip !42
  store i1 %15, i1* %FPU_C3.i, align 1, !mcsema_real_eip !42
  store i3 %16, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !42
  store i1 %17, i1* %FPU_C2.i, align 1, !mcsema_real_eip !42
  store i1 %18, i1* %FPU_C1.i, align 1, !mcsema_real_eip !42
  store i1 %19, i1* %FPU_C0.i, align 1, !mcsema_real_eip !42
  store i1 %20, i1* %FPU_ES.i, align 1, !mcsema_real_eip !42
  store i1 %21, i1* %FPU_SF.i, align 1, !mcsema_real_eip !42
  store i1 %22, i1* %FPU_PE.i, align 1, !mcsema_real_eip !42
  store i1 %23, i1* %FPU_UE.i, align 1, !mcsema_real_eip !42
  store i1 %24, i1* %FPU_OE.i, align 1, !mcsema_real_eip !42
  store i1 %25, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !42
  store i1 %26, i1* %FPU_DE.i, align 1, !mcsema_real_eip !42
  store i1 %27, i1* %FPU_IE.i, align 1, !mcsema_real_eip !42
  store i1 %28, i1* %FPU_X.i, align 1, !mcsema_real_eip !42
  store i2 %29, i2* %FPU_RC.i, align 1, !mcsema_real_eip !42
  store i2 %30, i2* %FPU_PC.i, align 1, !mcsema_real_eip !42
  store i1 %31, i1* %FPU_PM.i, align 1, !mcsema_real_eip !42
  store i1 %32, i1* %FPU_UM.i, align 1, !mcsema_real_eip !42
  store i1 %33, i1* %FPU_OM.i, align 1, !mcsema_real_eip !42
  store i1 %34, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !42
  store i1 %35, i1* %FPU_DM.i, align 1, !mcsema_real_eip !42
  store i1 %36, i1* %FPU_IM.i, align 1, !mcsema_real_eip !42
  store i64 %39, i64* %38, align 4
  store i16 %40, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !42
  store i64 %41, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !42
  store i16 %42, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !42
  store i64 %43, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !42
  store i128 %44, i128* %XMM0.i, align 1, !mcsema_real_eip !42
  store i128 %45, i128* %XMM1.i, align 1, !mcsema_real_eip !42
  store i128 %46, i128* %XMM2.i, align 1, !mcsema_real_eip !42
  store i128 %47, i128* %XMM3.i, align 1, !mcsema_real_eip !42
  store i128 %48, i128* %XMM4.i, align 1, !mcsema_real_eip !42
  store i128 %49, i128* %XMM5.i, align 1, !mcsema_real_eip !42
  store i128 %50, i128* %XMM6.i, align 1, !mcsema_real_eip !42
  store i128 %51, i128* %XMM7.i, align 1, !mcsema_real_eip !42
  store i128 %52, i128* %XMM8.i, align 1, !mcsema_real_eip !42
  store i128 %53, i128* %XMM9.i, align 1, !mcsema_real_eip !42
  store i128 %54, i128* %XMM10.i, align 1, !mcsema_real_eip !42
  store i128 %55, i128* %XMM11.i, align 1, !mcsema_real_eip !42
  store i128 %56, i128* %XMM12.i, align 1, !mcsema_real_eip !42
  store i128 %57, i128* %XMM13.i, align 1, !mcsema_real_eip !42
  store i128 %58, i128* %XMM14.i, align 1, !mcsema_real_eip !42
  store i128 %59, i128* %XMM15.i, align 1, !mcsema_real_eip !42
  store <2 x i64> %61, <2 x i64>* %60, align 1
  call void @llvm.trap()
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @llvm.trap() #3

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #0

attributes #0 = { nounwind }
attributes #1 = { nounwind readnone }
attributes #2 = { noreturn }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}

!0 = metadata !{i32 1, metadata !"Debug Info Version", i32 1}
!1 = metadata !{i32 1, metadata !"Dwarf Version", i32 3}
!2 = metadata !{i64 160, [12 x i8] c"\09pushq\09%rbp\00"}
!3 = metadata !{i64 164, [12 x i8] c"\09pushq\09%r15\00"}
!4 = metadata !{i64 166, [12 x i8] c"\09pushq\09%r14\00"}
!5 = metadata !{i64 168, [12 x i8] c"\09pushq\09%r13\00"}
!6 = metadata !{i64 170, [12 x i8] c"\09pushq\09%r12\00"}
!7 = metadata !{i64 172, [12 x i8] c"\09pushq\09%rbx\00"}
!8 = metadata !{i64 173, [17 x i8] c"\09subq\09$200, %rsp\00"}
!9 = metadata !{i64 219, [23 x i8] c"\09leaq\09-144(%rbp), %rbx\00"}
!10 = metadata !{i64 226, [22 x i8] c"\09leaq\09-96(%rbp), %r14\00"}
!11 = metadata !{i64 260, [20 x i8] c"\09movl\09$0, -44(%rbp)\00"}
!12 = metadata !{i64 267, [22 x i8] c"\09movl\09%edi, -48(%rbp)\00"}
!13 = metadata !{i64 270, [22 x i8] c"\09movq\09%rsi, -56(%rbp)\00"}
!14 = metadata !{i64 283, [23 x i8] c"\09movl\09%edx, -148(%rbp)\00"}
!15 = metadata !{i64 292, [23 x i8] c"\09movq\09%r15, -160(%rbp)\00"}
!16 = metadata !{i64 299, [23 x i8] c"\09movq\09%r12, -168(%rbp)\00"}
!17 = metadata !{i64 306, [23 x i8] c"\09movl\09%eax, -172(%rbp)\00"}
!18 = metadata !{i64 312, [23 x i8] c"\09movl\09%ecx, -176(%rbp)\00"}
!19 = metadata !{i64 318, [23 x i8] c"\09movq\09%r14, -184(%rbp)\00"}
!20 = metadata !{i64 325, [23 x i8] c"\09movl\09%r8d, -188(%rbp)\00"}
!21 = metadata !{i64 332, [23 x i8] c"\09movl\09%r9d, -192(%rbp)\00"}
!22 = metadata !{i64 339, [24 x i8] c"\09movl\09%r10d, -196(%rbp)\00"}
!23 = metadata !{i64 346, [24 x i8] c"\09movl\09%r11d, -200(%rbp)\00"}
!24 = metadata !{i64 353, [23 x i8] c"\09movq\09%rbx, -208(%rbp)\00"}
!25 = metadata !{i64 360, [9 x i8] c"\09callq\090\00"}
!26 = metadata !{i64 365, [23 x i8] c"\09movq\09-208(%rbp), %rdx\00"}
!27 = metadata !{i64 375, [23 x i8] c"\09movq\09-160(%rbp), %rsi\00"}
!28 = metadata !{i64 382, [23 x i8] c"\09movq\09-168(%rbp), %rdx\00"}
!29 = metadata !{i64 389, [9 x i8] c"\09callq\090\00"}
!30 = metadata !{i64 394, [23 x i8] c"\09movl\09-172(%rbp), %edi\00"}
!31 = metadata !{i64 400, [23 x i8] c"\09movl\09-176(%rbp), %esi\00"}
!32 = metadata !{i64 406, [23 x i8] c"\09movl\09-148(%rbp), %edx\00"}
!33 = metadata !{i64 412, [23 x i8] c"\09movl\09-188(%rbp), %ecx\00"}
!34 = metadata !{i64 418, [23 x i8] c"\09movl\09-192(%rbp), %r8d\00"}
!35 = metadata !{i64 425, [23 x i8] c"\09movl\09-196(%rbp), %r9d\00"}
!36 = metadata !{i64 432, [18 x i8] c"\09movl\09$10, (%rsp)\00"}
!37 = metadata !{i64 439, [23 x i8] c"\09movq\09-184(%rbp), %rbx\00"}
!38 = metadata !{i64 446, [20 x i8] c"\09movq\09%rbx, 8(%rsp)\00"}
!39 = metadata !{i64 451, [20 x i8] c"\09movl\09$10, 16(%rsp)\00"}
!40 = metadata !{i64 459, [23 x i8] c"\09movq\09-208(%rbp), %r14\00"}
!41 = metadata !{i64 466, [21 x i8] c"\09movq\09%r14, 24(%rsp)\00"}
!42 = metadata !{i64 471, [12 x i8] c"\09callq\09-476\00"}
