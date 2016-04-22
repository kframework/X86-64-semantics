; ModuleID = 'test_20_opt.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%0 = type <{ [450 x i8] }>
%struct.regs = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i1, i1, i1, i1, [8 x x86_fp80], i1, i1, i3, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i2, i2, i1, i1, i1, i1, i1, i1, [8 x i8], i16, i64, i16, i64, i11, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64 }>

@data_0x226 = internal constant %0 <{ [450 x i8] c"Input was zero\00Input was one\00Input was two\00Input was four\00Input was six\00Input was twelve\00Input was thirteen\00Input was nineteen\00\00Input was two hundred fifty-five\00Really big input:  0x12389\00Really big input:  0x1238A\00Really big input:  0x1238B\00Really big input:  0x1238C\00Really big input:  0x1238D\00Really big input:  0x1238F\00Really big input:  0x12390\00Really big input:  0x12391\00Really big input:  0x12392\00Really big input:  0x12393\00Unknown input: %d\0A\00" }>, align 64

declare x86_64_sysvcc i64 @puts(i64 inreg)

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg)

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture readonly, i32, i32, i1) #0

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #1

define void @mcsema_main(%struct.regs*) {
driverBlockRaw:
  %STi_val.i = alloca [8 x x86_fp80], align 16, !mcsema_real_eip !2
  %1 = bitcast [8 x x86_fp80]* %STi_val.i to i8*
  call void @llvm.lifetime.start(i64 128, i8* %1)
  %RAX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 0, !mcsema_real_eip !2
  %RBX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 1, !mcsema_real_eip !2
  %2 = load i64* %RBX.i, align 8, !mcsema_real_eip !2
  %RCX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 2, !mcsema_real_eip !2
  %3 = load i64* %RCX.i, align 8, !mcsema_real_eip !2
  %RDX.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 3, !mcsema_real_eip !2
  %RSI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 4, !mcsema_real_eip !2
  %4 = bitcast i64* %RDX.i to <2 x i64>*
  %5 = load <2 x i64>* %4, align 8
  %RDI.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 5, !mcsema_real_eip !2
  %6 = load i64* %RDI.i, align 8, !mcsema_real_eip !2
  %RSP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2
  %7 = load i64* %RSP.i, align 8, !mcsema_real_eip !2
  %RBP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 7, !mcsema_real_eip !2
  %8 = load i64* %RBP.i, align 8, !mcsema_real_eip !2
  %R8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 8, !mcsema_real_eip !2
  %9 = load i64* %R8.i, align 8, !mcsema_real_eip !2
  %R9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 9, !mcsema_real_eip !2
  %10 = load i64* %R9.i, align 8, !mcsema_real_eip !2
  %R10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 10, !mcsema_real_eip !2
  %11 = load i64* %R10.i, align 8, !mcsema_real_eip !2
  %R11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 11, !mcsema_real_eip !2
  %12 = load i64* %R11.i, align 8, !mcsema_real_eip !2
  %R12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 12, !mcsema_real_eip !2
  %13 = load i64* %R12.i, align 8, !mcsema_real_eip !2
  %R13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 13, !mcsema_real_eip !2
  %14 = load i64* %R13.i, align 8, !mcsema_real_eip !2
  %R14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 14, !mcsema_real_eip !2
  %15 = load i64* %R14.i, align 8, !mcsema_real_eip !2
  %R15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 15, !mcsema_real_eip !2
  %16 = load i64* %R15.i, align 8, !mcsema_real_eip !2
  %RIP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 16, !mcsema_real_eip !2
  %17 = load i64* %RIP.i, align 8, !mcsema_real_eip !2
  %CF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 17, !mcsema_real_eip !2
  %PF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 18, !mcsema_real_eip !2
  %AF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 19, !mcsema_real_eip !2
  %ZF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 20, !mcsema_real_eip !2
  %SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 21, !mcsema_real_eip !2
  %OF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 22, !mcsema_real_eip !2
  %DF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 23, !mcsema_real_eip !2
  %18 = load i1* %DF.i, align 1, !mcsema_real_eip !2
  %19 = getelementptr inbounds %struct.regs* %0, i64 0, i32 24, i64 0, !mcsema_real_eip !2
  %20 = bitcast x86_fp80* %19 to i8*, !mcsema_real_eip !2
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %1, i8* %20, i32 128, i32 4, i1 false), !mcsema_real_eip !2
  %FPU_B.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 25, !mcsema_real_eip !2
  %21 = load i1* %FPU_B.i, align 1, !mcsema_real_eip !2
  %FPU_C3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 26, !mcsema_real_eip !2
  %22 = load i1* %FPU_C3.i, align 1, !mcsema_real_eip !2
  %FPU_TOP.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 27, !mcsema_real_eip !2
  %23 = load i3* %FPU_TOP.i, align 1, !mcsema_real_eip !2
  %FPU_C2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 28, !mcsema_real_eip !2
  %24 = load i1* %FPU_C2.i, align 1, !mcsema_real_eip !2
  %FPU_C1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 29, !mcsema_real_eip !2
  %25 = load i1* %FPU_C1.i, align 1, !mcsema_real_eip !2
  %FPU_C0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 30, !mcsema_real_eip !2
  %26 = load i1* %FPU_C0.i, align 1, !mcsema_real_eip !2
  %FPU_ES.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 31, !mcsema_real_eip !2
  %27 = load i1* %FPU_ES.i, align 1, !mcsema_real_eip !2
  %FPU_SF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 32, !mcsema_real_eip !2
  %28 = load i1* %FPU_SF.i, align 1, !mcsema_real_eip !2
  %FPU_PE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 33, !mcsema_real_eip !2
  %29 = load i1* %FPU_PE.i, align 1, !mcsema_real_eip !2
  %FPU_UE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 34, !mcsema_real_eip !2
  %30 = load i1* %FPU_UE.i, align 1, !mcsema_real_eip !2
  %FPU_OE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 35, !mcsema_real_eip !2
  %31 = load i1* %FPU_OE.i, align 1, !mcsema_real_eip !2
  %FPU_ZE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 36, !mcsema_real_eip !2
  %32 = load i1* %FPU_ZE.i, align 1, !mcsema_real_eip !2
  %FPU_DE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 37, !mcsema_real_eip !2
  %33 = load i1* %FPU_DE.i, align 1, !mcsema_real_eip !2
  %FPU_IE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 38, !mcsema_real_eip !2
  %34 = load i1* %FPU_IE.i, align 1, !mcsema_real_eip !2
  %FPU_X.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 39, !mcsema_real_eip !2
  %35 = load i1* %FPU_X.i, align 1, !mcsema_real_eip !2
  %FPU_RC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 40, !mcsema_real_eip !2
  %36 = load i2* %FPU_RC.i, align 1, !mcsema_real_eip !2
  %FPU_PC.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 41, !mcsema_real_eip !2
  %37 = load i2* %FPU_PC.i, align 1, !mcsema_real_eip !2
  %FPU_PM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 42, !mcsema_real_eip !2
  %38 = load i1* %FPU_PM.i, align 1, !mcsema_real_eip !2
  %FPU_UM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 43, !mcsema_real_eip !2
  %39 = load i1* %FPU_UM.i, align 1, !mcsema_real_eip !2
  %FPU_OM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 44, !mcsema_real_eip !2
  %40 = load i1* %FPU_OM.i, align 1, !mcsema_real_eip !2
  %FPU_ZM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 45, !mcsema_real_eip !2
  %41 = load i1* %FPU_ZM.i, align 1, !mcsema_real_eip !2
  %FPU_DM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 46, !mcsema_real_eip !2
  %42 = load i1* %FPU_DM.i, align 1, !mcsema_real_eip !2
  %FPU_IM.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 47, !mcsema_real_eip !2
  %43 = load i1* %FPU_IM.i, align 1, !mcsema_real_eip !2
  %44 = getelementptr inbounds %struct.regs* %0, i64 0, i32 48, i64 0, !mcsema_real_eip !2
  %45 = bitcast i8* %44 to i64*
  %46 = load i64* %45, align 4
  %FPU_LASTIP_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 49, !mcsema_real_eip !2
  %47 = load i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTIP_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 50, !mcsema_real_eip !2
  %48 = load i64* %FPU_LASTIP_OFF.i, align 8, !mcsema_real_eip !2
  %FPU_LASTDATA_SEG.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 51, !mcsema_real_eip !2
  %49 = load i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !2
  %FPU_LASTDATA_OFF.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 52, !mcsema_real_eip !2
  %50 = load i64* %FPU_LASTDATA_OFF.i, align 8, !mcsema_real_eip !2
  %XMM0.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 54, !mcsema_real_eip !2
  %51 = load i128* %XMM0.i, align 1, !mcsema_real_eip !2
  %XMM1.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 55, !mcsema_real_eip !2
  %52 = load i128* %XMM1.i, align 1, !mcsema_real_eip !2
  %XMM2.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 56, !mcsema_real_eip !2
  %53 = load i128* %XMM2.i, align 1, !mcsema_real_eip !2
  %XMM3.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 57, !mcsema_real_eip !2
  %54 = load i128* %XMM3.i, align 1, !mcsema_real_eip !2
  %XMM4.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 58, !mcsema_real_eip !2
  %55 = load i128* %XMM4.i, align 1, !mcsema_real_eip !2
  %XMM5.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 59, !mcsema_real_eip !2
  %56 = load i128* %XMM5.i, align 1, !mcsema_real_eip !2
  %XMM6.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 60, !mcsema_real_eip !2
  %57 = load i128* %XMM6.i, align 1, !mcsema_real_eip !2
  %XMM7.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 61, !mcsema_real_eip !2
  %58 = load i128* %XMM7.i, align 1, !mcsema_real_eip !2
  %XMM8.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 62, !mcsema_real_eip !2
  %59 = load i128* %XMM8.i, align 1, !mcsema_real_eip !2
  %XMM9.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 63, !mcsema_real_eip !2
  %60 = load i128* %XMM9.i, align 1, !mcsema_real_eip !2
  %XMM10.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 64, !mcsema_real_eip !2
  %61 = load i128* %XMM10.i, align 1, !mcsema_real_eip !2
  %XMM11.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 65, !mcsema_real_eip !2
  %62 = load i128* %XMM11.i, align 1, !mcsema_real_eip !2
  %XMM12.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 66, !mcsema_real_eip !2
  %63 = load i128* %XMM12.i, align 1, !mcsema_real_eip !2
  %XMM13.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 67, !mcsema_real_eip !2
  %64 = load i128* %XMM13.i, align 1, !mcsema_real_eip !2
  %XMM14.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 68, !mcsema_real_eip !2
  %65 = load i128* %XMM14.i, align 1, !mcsema_real_eip !2
  %XMM15.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 69, !mcsema_real_eip !2
  %66 = load i128* %XMM15.i, align 1, !mcsema_real_eip !2
  %STACK_BASE.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 70, !mcsema_real_eip !2
  %67 = load i64* %STACK_BASE.i, align 8, !mcsema_real_eip !2
  %STACK_LIMIT.i = getelementptr inbounds %struct.regs* %0, i64 0, i32 71, !mcsema_real_eip !2
  %68 = load i64* %STACK_LIMIT.i, align 8, !mcsema_real_eip !2
  %69 = add i64 %7, -8
  %70 = inttoptr i64 %69 to i64*, !mcsema_real_eip !2
  store i64 %8, i64* %70, align 8, !mcsema_real_eip !2
  %71 = add i64 %7, -12, !mcsema_real_eip !3
  %72 = trunc i64 %6 to i32, !mcsema_real_eip !3
  %73 = inttoptr i64 %71 to i32*
  store i32 %72, i32* %73, align 4, !mcsema_real_eip !3
  %74 = add i32 %72, -74633
  %75 = xor i32 %74, %72, !mcsema_real_eip !4
  %76 = icmp eq i32 %74, 0, !mcsema_real_eip !4
  br i1 %76, label %block_0x190.i, label %block_0x19.i, !mcsema_real_eip !5

block_0x190.i:                                    ; preds = %driverBlockRaw
  %77 = and i32 %75, %72, !mcsema_real_eip !4
  %78 = icmp slt i32 %77, 0
  %79 = icmp ult i32 %72, 74633, !mcsema_real_eip !4
  %80 = and i32 %75, 16, !mcsema_real_eip !4
  %81 = icmp ne i32 %80, 0, !mcsema_real_eip !4
  %82 = tail call x86_64_sysvcc i64 @puts(i64 zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 161) to i64)), !mcsema_real_eip !6
  br label %block_0x21f.i, !mcsema_real_eip !7

block_0x19.i:                                     ; preds = %driverBlockRaw
  %83 = icmp slt i32 %74, 0
  %84 = sub i32 74632, %72
  %85 = and i32 %84, %72
  %86 = icmp slt i32 %85, 0
  %tmp.i = xor i1 %83, %86
  br i1 %tmp.i, label %block_0x20.i, label %block_0x95.i, !mcsema_real_eip !8

block_0x95.i:                                     ; preds = %block_0x19.i
  %87 = add i32 %72, -74639
  %88 = xor i32 %87, %72, !mcsema_real_eip !9
  %89 = icmp eq i32 %87, 0, !mcsema_real_eip !9
  %90 = icmp slt i32 %87, 0
  %91 = and i32 %88, %72, !mcsema_real_eip !9
  %92 = icmp slt i32 %91, 0
  br i1 %89, label %block_0x1cf.i, label %block_0xa0.i, !mcsema_real_eip !10

block_0x20.i:                                     ; preds = %block_0x19.i
  %93 = add i32 %72, -6
  %94 = xor i32 %93, %72, !mcsema_real_eip !11
  %95 = icmp eq i32 %93, 0, !mcsema_real_eip !11
  %96 = icmp slt i32 %93, 0
  %97 = and i32 %94, %72, !mcsema_real_eip !11
  %98 = icmp slt i32 %97, 0
  br i1 %95, label %block_0x145.i, label %block_0x29.i, !mcsema_real_eip !12

block_0x21f.i:                                    ; preds = %block_0x1ff.i, %block_0x1c3.i, %block_0x181.i, %block_0x136.i, %block_0x1f3.i, %block_0x1b7.i, %block_0x172.i, %block_0x154.i, %block_0x127.i, %block_0x109.i, %block_0x1db.i, %block_0x19f.i, %block_0x1e7.i, %block_0x1ab.i, %block_0x163.i, %block_0x118.i, %block_0x1cf.i, %block_0x145.i, %block_0x190.i
  %ZF_val.0.i = phi i1 [ true, %block_0x190.i ], [ true, %block_0x145.i ], [ true, %block_0x118.i ], [ true, %block_0x109.i ], [ true, %block_0x127.i ], [ true, %block_0x136.i ], [ true, %block_0x163.i ], [ true, %block_0x154.i ], [ true, %block_0x172.i ], [ true, %block_0x181.i ], [ true, %block_0x1cf.i ], [ true, %block_0x1ab.i ], [ false, %block_0x19f.i ], [ true, %block_0x1b7.i ], [ true, %block_0x1c3.i ], [ true, %block_0x1e7.i ], [ false, %block_0x1db.i ], [ true, %block_0x1f3.i ], [ true, %block_0x1ff.i ]
  %PF_val.0.i = phi i1 [ true, %block_0x190.i ], [ true, %block_0x145.i ], [ true, %block_0x118.i ], [ %166, %block_0x109.i ], [ true, %block_0x127.i ], [ %205, %block_0x136.i ], [ true, %block_0x163.i ], [ %177, %block_0x154.i ], [ true, %block_0x172.i ], [ %225, %block_0x181.i ], [ true, %block_0x1cf.i ], [ %144, %block_0x1ab.i ], [ %144, %block_0x19f.i ], [ true, %block_0x1b7.i ], [ %244, %block_0x1c3.i ], [ %131, %block_0x1e7.i ], [ %131, %block_0x1db.i ], [ true, %block_0x1f3.i ], [ %263, %block_0x1ff.i ]
  %AF_val.0.i = phi i1 [ %81, %block_0x190.i ], [ %103, %block_0x145.i ], [ %118, %block_0x118.i ], [ %118, %block_0x109.i ], [ %196, %block_0x127.i ], [ %201, %block_0x136.i ], [ %153, %block_0x163.i ], [ %173, %block_0x154.i ], [ %216, %block_0x172.i ], [ %221, %block_0x181.i ], [ %107, %block_0x1cf.i ], [ %140, %block_0x1ab.i ], [ %140, %block_0x19f.i ], [ %235, %block_0x1b7.i ], [ %240, %block_0x1c3.i ], [ %127, %block_0x1e7.i ], [ %127, %block_0x1db.i ], [ %254, %block_0x1f3.i ], [ %259, %block_0x1ff.i ]
  %RDI_val.0.i = phi i64 [ zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 161) to i64), %block_0x190.i ], [ zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 58) to i64), %block_0x145.i ], [ zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 15) to i64), %block_0x118.i ], [ zext (i32 ptrtoint (%0* @data_0x226 to i32) to i64), %block_0x109.i ], [ zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 29) to i64), %block_0x127.i ], [ zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 43) to i64), %block_0x136.i ], [ zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 89) to i64), %block_0x163.i ], [ zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 72) to i64), %block_0x154.i ], [ zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 108) to i64), %block_0x172.i ], [ zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 128) to i64), %block_0x181.i ], [ zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 296) to i64), %block_0x1cf.i ], [ zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 215) to i64), %block_0x1ab.i ], [ zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 188) to i64), %block_0x19f.i ], [ zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 242) to i64), %block_0x1b7.i ], [ zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 269) to i64), %block_0x1c3.i ], [ zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 350) to i64), %block_0x1e7.i ], [ zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 323) to i64), %block_0x1db.i ], [ zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 377) to i64), %block_0x1f3.i ], [ zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 404) to i64), %block_0x1ff.i ]
  %CF_val.0.i = phi i1 [ %79, %block_0x190.i ], [ %101, %block_0x145.i ], [ %121, %block_0x118.i ], [ false, %block_0x109.i ], [ %194, %block_0x127.i ], [ %208, %block_0x136.i ], [ %151, %block_0x163.i ], [ %180, %block_0x154.i ], [ %214, %block_0x172.i ], [ %228, %block_0x181.i ], [ %105, %block_0x1cf.i ], [ %147, %block_0x1ab.i ], [ %147, %block_0x19f.i ], [ %233, %block_0x1b7.i ], [ %247, %block_0x1c3.i ], [ %134, %block_0x1e7.i ], [ %134, %block_0x1db.i ], [ %252, %block_0x1f3.i ], [ %266, %block_0x1ff.i ]
  %SF_val.0.i = phi i1 [ false, %block_0x190.i ], [ %96, %block_0x145.i ], [ %120, %block_0x118.i ], [ %162, %block_0x109.i ], [ false, %block_0x127.i ], [ %207, %block_0x136.i ], [ %112, %block_0x163.i ], [ %179, %block_0x154.i ], [ false, %block_0x172.i ], [ %227, %block_0x181.i ], [ %90, %block_0x1cf.i ], [ %146, %block_0x1ab.i ], [ %146, %block_0x19f.i ], [ false, %block_0x1b7.i ], [ %246, %block_0x1c3.i ], [ %133, %block_0x1e7.i ], [ %133, %block_0x1db.i ], [ false, %block_0x1f3.i ], [ %265, %block_0x1ff.i ]
  %OF_val.0.i = phi i1 [ %78, %block_0x190.i ], [ %98, %block_0x145.i ], [ %123, %block_0x118.i ], [ false, %block_0x109.i ], [ %193, %block_0x127.i ], [ %210, %block_0x136.i ], [ %114, %block_0x163.i ], [ %182, %block_0x154.i ], [ %213, %block_0x172.i ], [ %230, %block_0x181.i ], [ %92, %block_0x1cf.i ], [ %149, %block_0x1ab.i ], [ %149, %block_0x19f.i ], [ %232, %block_0x1b7.i ], [ %249, %block_0x1c3.i ], [ %136, %block_0x1e7.i ], [ %136, %block_0x1db.i ], [ %251, %block_0x1f3.i ], [ %268, %block_0x1ff.i ]
  %99 = load i64* %70, align 8, !mcsema_real_eip !13
  %100 = add i64 %7, 8, !mcsema_real_eip !14
  store i64 0, i64* %RAX.i, align 8, !mcsema_real_eip !14
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !14
  store i64 %3, i64* %RCX.i, align 8, !mcsema_real_eip !14
  store <2 x i64> %5, <2 x i64>* %4, align 8
  store i64 %RDI_val.0.i, i64* %RDI.i, align 8, !mcsema_real_eip !14
  store i64 %100, i64* %RSP.i, align 8, !mcsema_real_eip !14
  store i64 %99, i64* %RBP.i, align 8, !mcsema_real_eip !14
  store i64 %9, i64* %R8.i, align 8, !mcsema_real_eip !14
  store i64 %10, i64* %R9.i, align 8, !mcsema_real_eip !14
  store i64 %11, i64* %R10.i, align 8, !mcsema_real_eip !14
  store i64 %12, i64* %R11.i, align 8, !mcsema_real_eip !14
  store i64 %13, i64* %R12.i, align 8, !mcsema_real_eip !14
  store i64 %14, i64* %R13.i, align 8, !mcsema_real_eip !14
  store i64 %15, i64* %R14.i, align 8, !mcsema_real_eip !14
  store i64 %16, i64* %R15.i, align 8, !mcsema_real_eip !14
  store i64 %17, i64* %RIP.i, align 8, !mcsema_real_eip !14
  store i1 %CF_val.0.i, i1* %CF.i, align 1, !mcsema_real_eip !14
  store i1 %PF_val.0.i, i1* %PF.i, align 1, !mcsema_real_eip !14
  store i1 %AF_val.0.i, i1* %AF.i, align 1, !mcsema_real_eip !14
  store i1 %ZF_val.0.i, i1* %ZF.i, align 1, !mcsema_real_eip !14
  store i1 %SF_val.0.i, i1* %SF.i, align 1, !mcsema_real_eip !14
  store i1 %OF_val.0.i, i1* %OF.i, align 1, !mcsema_real_eip !14
  store i1 %18, i1* %DF.i, align 1, !mcsema_real_eip !14
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %1, i32 128, i32 8, i1 false), !mcsema_real_eip !14
  store i1 %21, i1* %FPU_B.i, align 1, !mcsema_real_eip !14
  store i1 %22, i1* %FPU_C3.i, align 1, !mcsema_real_eip !14
  store i3 %23, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !14
  store i1 %24, i1* %FPU_C2.i, align 1, !mcsema_real_eip !14
  store i1 %25, i1* %FPU_C1.i, align 1, !mcsema_real_eip !14
  store i1 %26, i1* %FPU_C0.i, align 1, !mcsema_real_eip !14
  store i1 %27, i1* %FPU_ES.i, align 1, !mcsema_real_eip !14
  store i1 %28, i1* %FPU_SF.i, align 1, !mcsema_real_eip !14
  store i1 %29, i1* %FPU_PE.i, align 1, !mcsema_real_eip !14
  store i1 %30, i1* %FPU_UE.i, align 1, !mcsema_real_eip !14
  store i1 %31, i1* %FPU_OE.i, align 1, !mcsema_real_eip !14
  store i1 %32, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !14
  store i1 %33, i1* %FPU_DE.i, align 1, !mcsema_real_eip !14
  store i1 %34, i1* %FPU_IE.i, align 1, !mcsema_real_eip !14
  store i1 %35, i1* %FPU_X.i, align 1, !mcsema_real_eip !14
  store i2 %36, i2* %FPU_RC.i, align 1, !mcsema_real_eip !14
  store i2 %37, i2* %FPU_PC.i, align 1, !mcsema_real_eip !14
  store i1 %38, i1* %FPU_PM.i, align 1, !mcsema_real_eip !14
  store i1 %39, i1* %FPU_UM.i, align 1, !mcsema_real_eip !14
  store i1 %40, i1* %FPU_OM.i, align 1, !mcsema_real_eip !14
  store i1 %41, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !14
  store i1 %42, i1* %FPU_DM.i, align 1, !mcsema_real_eip !14
  store i1 %43, i1* %FPU_IM.i, align 1, !mcsema_real_eip !14
  store i64 %46, i64* %45, align 4
  store i16 %47, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !14
  store i64 %48, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !14
  store i16 %49, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !14
  store i64 %50, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !14
  store i128 %51, i128* %XMM0.i, align 1, !mcsema_real_eip !14
  store i128 %52, i128* %XMM1.i, align 1, !mcsema_real_eip !14
  store i128 %53, i128* %XMM2.i, align 1, !mcsema_real_eip !14
  store i128 %54, i128* %XMM3.i, align 1, !mcsema_real_eip !14
  store i128 %55, i128* %XMM4.i, align 1, !mcsema_real_eip !14
  store i128 %56, i128* %XMM5.i, align 1, !mcsema_real_eip !14
  store i128 %57, i128* %XMM6.i, align 1, !mcsema_real_eip !14
  store i128 %58, i128* %XMM7.i, align 1, !mcsema_real_eip !14
  store i128 %59, i128* %XMM8.i, align 1, !mcsema_real_eip !14
  store i128 %60, i128* %XMM9.i, align 1, !mcsema_real_eip !14
  store i128 %61, i128* %XMM10.i, align 1, !mcsema_real_eip !14
  store i128 %62, i128* %XMM11.i, align 1, !mcsema_real_eip !14
  store i128 %63, i128* %XMM12.i, align 1, !mcsema_real_eip !14
  store i128 %64, i128* %XMM13.i, align 1, !mcsema_real_eip !14
  store i128 %65, i128* %XMM14.i, align 1, !mcsema_real_eip !14
  store i128 %66, i128* %XMM15.i, align 1, !mcsema_real_eip !14
  store i64 %67, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !14
  store i64 %68, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !14
  call void @llvm.lifetime.end(i64 128, i8* %1)
  br label %sub_0.exit

block_0x145.i:                                    ; preds = %block_0x20.i
  %101 = icmp ult i32 %72, 6, !mcsema_real_eip !11
  %102 = and i32 %94, 16, !mcsema_real_eip !11
  %103 = icmp ne i32 %102, 0, !mcsema_real_eip !11
  %104 = tail call x86_64_sysvcc i64 @puts(i64 zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 58) to i64)), !mcsema_real_eip !15
  br label %block_0x21f.i, !mcsema_real_eip !16

block_0x29.i:                                     ; preds = %block_0x20.i
  %tmp140.i = xor i1 %96, %98
  br i1 %tmp140.i, label %block_0x2e.i, label %block_0x60.i, !mcsema_real_eip !17

block_0x1cf.i:                                    ; preds = %block_0x95.i
  %105 = icmp ult i32 %72, 74639, !mcsema_real_eip !9
  %106 = and i32 %88, 16, !mcsema_real_eip !9
  %107 = icmp ne i32 %106, 0, !mcsema_real_eip !9
  %108 = tail call x86_64_sysvcc i64 @puts(i64 zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 296) to i64)), !mcsema_real_eip !18
  br label %block_0x21f.i, !mcsema_real_eip !19

block_0xa0.i:                                     ; preds = %block_0x95.i
  %tmp149.i = xor i1 %90, %92
  br i1 %tmp149.i, label %block_0xa7.i, label %block_0xd8.i, !mcsema_real_eip !20

block_0x60.i:                                     ; preds = %block_0x29.i
  %109 = add i32 %72, -13
  %110 = xor i32 %109, %72, !mcsema_real_eip !21
  %111 = icmp eq i32 %109, 0, !mcsema_real_eip !21
  %112 = icmp slt i32 %109, 0
  %113 = and i32 %110, %72, !mcsema_real_eip !21
  %114 = icmp slt i32 %113, 0
  br i1 %111, label %block_0x163.i, label %block_0x69.i, !mcsema_real_eip !22

block_0x2e.i:                                     ; preds = %block_0x29.i
  %115 = add i32 %72, -1
  %116 = xor i32 %115, %72, !mcsema_real_eip !23
  %117 = and i32 %116, 16, !mcsema_real_eip !23
  %118 = icmp ne i32 %117, 0, !mcsema_real_eip !23
  %119 = icmp eq i32 %115, 0, !mcsema_real_eip !23
  %120 = icmp slt i32 %115, 0
  %121 = icmp eq i32 %72, 0
  %122 = and i32 %116, %72, !mcsema_real_eip !23
  %123 = icmp slt i32 %122, 0
  br i1 %119, label %block_0x118.i, label %block_0x37.i, !mcsema_real_eip !24

block_0xd8.i:                                     ; preds = %block_0xa0.i
  %124 = add i32 %72, -74641
  %125 = xor i32 %124, %72, !mcsema_real_eip !25
  %126 = and i32 %125, 16
  %127 = icmp eq i32 %126, 0
  %128 = trunc i32 %124 to i8, !mcsema_real_eip !25
  %129 = tail call i8 @llvm.ctpop.i8(i8 %128), !mcsema_real_eip !25
  %130 = and i8 %129, 1
  %131 = icmp eq i8 %130, 0
  %132 = icmp eq i32 %124, 0, !mcsema_real_eip !25
  %133 = icmp slt i32 %124, 0
  %134 = icmp ult i32 %72, 74641, !mcsema_real_eip !25
  %135 = and i32 %125, %72, !mcsema_real_eip !25
  %136 = icmp slt i32 %135, 0
  br i1 %132, label %block_0x1e7.i, label %block_0xe3.i, !mcsema_real_eip !26

block_0xa7.i:                                     ; preds = %block_0xa0.i
  %137 = add i32 %72, -74635
  %138 = xor i32 %137, %72, !mcsema_real_eip !27
  %139 = and i32 %138, 16, !mcsema_real_eip !27
  %140 = icmp ne i32 %139, 0, !mcsema_real_eip !27
  %141 = trunc i32 %137 to i8, !mcsema_real_eip !27
  %142 = tail call i8 @llvm.ctpop.i8(i8 %141), !mcsema_real_eip !27
  %143 = and i8 %142, 1
  %144 = icmp eq i8 %143, 0
  %145 = icmp eq i32 %137, 0, !mcsema_real_eip !27
  %146 = icmp slt i32 %137, 0
  %147 = icmp ult i32 %72, 74635, !mcsema_real_eip !27
  %148 = and i32 %138, %72, !mcsema_real_eip !27
  %149 = icmp slt i32 %148, 0
  br i1 %145, label %block_0x1ab.i, label %block_0xb2.i, !mcsema_real_eip !28

block_0x118.i:                                    ; preds = %block_0x2e.i
  %150 = tail call x86_64_sysvcc i64 @puts(i64 zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 15) to i64)), !mcsema_real_eip !29
  br label %block_0x21f.i, !mcsema_real_eip !30

block_0x37.i:                                     ; preds = %block_0x2e.i
  %tmp143.i = xor i1 %120, %123
  br i1 %tmp143.i, label %block_0x3c.i, label %block_0x49.i, !mcsema_real_eip !31

block_0x163.i:                                    ; preds = %block_0x60.i
  %151 = icmp ult i32 %72, 13, !mcsema_real_eip !21
  %152 = and i32 %110, 16, !mcsema_real_eip !21
  %153 = icmp ne i32 %152, 0, !mcsema_real_eip !21
  %154 = tail call x86_64_sysvcc i64 @puts(i64 zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 89) to i64)), !mcsema_real_eip !32
  br label %block_0x21f.i, !mcsema_real_eip !33

block_0x69.i:                                     ; preds = %block_0x60.i
  %tmp146.i = xor i1 %112, %114
  br i1 %tmp146.i, label %block_0x6e.i, label %block_0x7c.i, !mcsema_real_eip !34

block_0x1ab.i:                                    ; preds = %block_0xa7.i
  %155 = tail call x86_64_sysvcc i64 @puts(i64 zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 215) to i64)), !mcsema_real_eip !35
  br label %block_0x21f.i, !mcsema_real_eip !36

block_0xb2.i:                                     ; preds = %block_0xa7.i
  %156 = xor i1 %146, %149
  br i1 %156, label %block_0x19f.i, label %block_0xbd.i, !mcsema_real_eip !37

block_0x1e7.i:                                    ; preds = %block_0xd8.i
  %157 = tail call x86_64_sysvcc i64 @puts(i64 zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 350) to i64)), !mcsema_real_eip !38
  br label %block_0x21f.i, !mcsema_real_eip !39

block_0xe3.i:                                     ; preds = %block_0xd8.i
  %158 = xor i1 %133, %136
  br i1 %158, label %block_0x1db.i, label %block_0xee.i, !mcsema_real_eip !40

block_0x49.i:                                     ; preds = %block_0x37.i
  %159 = add i32 %72, -2
  %160 = xor i32 %159, %72, !mcsema_real_eip !41
  %161 = icmp eq i32 %159, 0, !mcsema_real_eip !41
  br i1 %161, label %block_0x127.i, label %block_0x52.i, !mcsema_real_eip !42

block_0x3c.i:                                     ; preds = %block_0x37.i
  %162 = icmp slt i32 %72, 0
  %163 = trunc i64 %6 to i8
  %164 = tail call i8 @llvm.ctpop.i8(i8 %163), !mcsema_real_eip !43
  %165 = and i8 %164, 1
  %166 = icmp eq i8 %165, 0
  br i1 %121, label %block_0x109.i, label %block_0x20b.i, !mcsema_real_eip !44

block_0x7c.i:                                     ; preds = %block_0x69.i
  %167 = add i32 %72, -19
  %168 = xor i32 %167, %72, !mcsema_real_eip !45
  %169 = icmp eq i32 %167, 0, !mcsema_real_eip !45
  br i1 %169, label %block_0x172.i, label %block_0x85.i, !mcsema_real_eip !46

block_0x6e.i:                                     ; preds = %block_0x69.i
  %170 = add i32 %72, -12
  %171 = xor i32 %170, %72, !mcsema_real_eip !47
  %172 = and i32 %171, 16, !mcsema_real_eip !47
  %173 = icmp ne i32 %172, 0, !mcsema_real_eip !47
  %174 = trunc i32 %170 to i8, !mcsema_real_eip !47
  %175 = tail call i8 @llvm.ctpop.i8(i8 %174), !mcsema_real_eip !47
  %176 = and i8 %175, 1
  %177 = icmp eq i8 %176, 0
  %178 = icmp eq i32 %170, 0, !mcsema_real_eip !47
  %179 = icmp slt i32 %170, 0
  %180 = icmp ult i32 %72, 12, !mcsema_real_eip !47
  %181 = and i32 %171, %72, !mcsema_real_eip !47
  %182 = icmp slt i32 %181, 0
  br i1 %178, label %block_0x154.i, label %block_0x20b.i, !mcsema_real_eip !48

block_0x19f.i:                                    ; preds = %block_0xb2.i
  %183 = tail call x86_64_sysvcc i64 @puts(i64 zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 188) to i64)), !mcsema_real_eip !49
  br label %block_0x21f.i, !mcsema_real_eip !50

block_0xbd.i:                                     ; preds = %block_0xb2.i
  %184 = add i32 %72, -74636
  %185 = xor i32 %184, %72, !mcsema_real_eip !51
  %186 = icmp eq i32 %184, 0, !mcsema_real_eip !51
  br i1 %186, label %block_0x1b7.i, label %block_0xc8.i, !mcsema_real_eip !52

block_0x1db.i:                                    ; preds = %block_0xe3.i
  %187 = tail call x86_64_sysvcc i64 @puts(i64 zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 323) to i64)), !mcsema_real_eip !53
  br label %block_0x21f.i, !mcsema_real_eip !54

block_0xee.i:                                     ; preds = %block_0xe3.i
  %188 = add i32 %72, -74642
  %189 = xor i32 %188, %72, !mcsema_real_eip !55
  %190 = icmp eq i32 %188, 0, !mcsema_real_eip !55
  br i1 %190, label %block_0x1f3.i, label %block_0xf9.i, !mcsema_real_eip !56

block_0x109.i:                                    ; preds = %block_0x3c.i
  %191 = tail call x86_64_sysvcc i64 @puts(i64 zext (i32 ptrtoint (%0* @data_0x226 to i32) to i64)), !mcsema_real_eip !57
  br label %block_0x21f.i, !mcsema_real_eip !58

block_0x127.i:                                    ; preds = %block_0x49.i
  %192 = and i32 %160, %72, !mcsema_real_eip !41
  %193 = icmp slt i32 %192, 0
  %194 = icmp ult i32 %72, 2, !mcsema_real_eip !41
  %195 = and i32 %160, 16, !mcsema_real_eip !41
  %196 = icmp ne i32 %195, 0, !mcsema_real_eip !41
  %197 = tail call x86_64_sysvcc i64 @puts(i64 zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 29) to i64)), !mcsema_real_eip !59
  br label %block_0x21f.i, !mcsema_real_eip !60

block_0x52.i:                                     ; preds = %block_0x49.i
  %198 = add i32 %72, -4
  %199 = xor i32 %198, %72, !mcsema_real_eip !61
  %200 = and i32 %199, 16, !mcsema_real_eip !61
  %201 = icmp ne i32 %200, 0, !mcsema_real_eip !61
  %202 = trunc i32 %198 to i8, !mcsema_real_eip !61
  %203 = tail call i8 @llvm.ctpop.i8(i8 %202), !mcsema_real_eip !61
  %204 = and i8 %203, 1
  %205 = icmp eq i8 %204, 0
  %206 = icmp eq i32 %198, 0, !mcsema_real_eip !61
  %207 = icmp slt i32 %198, 0
  %208 = icmp ult i32 %72, 4, !mcsema_real_eip !61
  %209 = and i32 %199, %72, !mcsema_real_eip !61
  %210 = icmp slt i32 %209, 0
  br i1 %206, label %block_0x136.i, label %block_0x20b.i, !mcsema_real_eip !62

block_0x154.i:                                    ; preds = %block_0x6e.i
  %211 = tail call x86_64_sysvcc i64 @puts(i64 zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 72) to i64)), !mcsema_real_eip !63
  br label %block_0x21f.i, !mcsema_real_eip !64

block_0x172.i:                                    ; preds = %block_0x7c.i
  %212 = and i32 %168, %72, !mcsema_real_eip !45
  %213 = icmp slt i32 %212, 0
  %214 = icmp ult i32 %72, 19, !mcsema_real_eip !45
  %215 = and i32 %168, 16
  %216 = icmp eq i32 %215, 0
  %217 = tail call x86_64_sysvcc i64 @puts(i64 zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 108) to i64)), !mcsema_real_eip !65
  br label %block_0x21f.i, !mcsema_real_eip !66

block_0x85.i:                                     ; preds = %block_0x7c.i
  %218 = add i32 %72, -255
  %219 = xor i32 %218, %72, !mcsema_real_eip !67
  %220 = and i32 %219, 16
  %221 = icmp eq i32 %220, 0
  %222 = trunc i32 %218 to i8, !mcsema_real_eip !67
  %223 = tail call i8 @llvm.ctpop.i8(i8 %222), !mcsema_real_eip !67
  %224 = and i8 %223, 1
  %225 = icmp eq i8 %224, 0
  %226 = icmp eq i32 %218, 0, !mcsema_real_eip !67
  %227 = icmp slt i32 %218, 0
  %228 = icmp ult i32 %72, 255, !mcsema_real_eip !67
  %229 = and i32 %219, %72, !mcsema_real_eip !67
  %230 = icmp slt i32 %229, 0
  br i1 %226, label %block_0x181.i, label %block_0x20b.i, !mcsema_real_eip !68

block_0x1b7.i:                                    ; preds = %block_0xbd.i
  %231 = and i32 %185, %72, !mcsema_real_eip !51
  %232 = icmp slt i32 %231, 0
  %233 = icmp ult i32 %72, 74636, !mcsema_real_eip !51
  %234 = and i32 %185, 16, !mcsema_real_eip !51
  %235 = icmp ne i32 %234, 0, !mcsema_real_eip !51
  %236 = tail call x86_64_sysvcc i64 @puts(i64 zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 242) to i64)), !mcsema_real_eip !69
  br label %block_0x21f.i, !mcsema_real_eip !70

block_0xc8.i:                                     ; preds = %block_0xbd.i
  %237 = add i32 %72, -74637
  %238 = xor i32 %237, %72, !mcsema_real_eip !71
  %239 = and i32 %238, 16, !mcsema_real_eip !71
  %240 = icmp ne i32 %239, 0, !mcsema_real_eip !71
  %241 = trunc i32 %237 to i8, !mcsema_real_eip !71
  %242 = tail call i8 @llvm.ctpop.i8(i8 %241), !mcsema_real_eip !71
  %243 = and i8 %242, 1
  %244 = icmp eq i8 %243, 0
  %245 = icmp eq i32 %237, 0, !mcsema_real_eip !71
  %246 = icmp slt i32 %237, 0
  %247 = icmp ult i32 %72, 74637, !mcsema_real_eip !71
  %248 = and i32 %238, %72, !mcsema_real_eip !71
  %249 = icmp slt i32 %248, 0
  br i1 %245, label %block_0x1c3.i, label %block_0x20b.i, !mcsema_real_eip !72

block_0x1f3.i:                                    ; preds = %block_0xee.i
  %250 = and i32 %189, %72, !mcsema_real_eip !55
  %251 = icmp slt i32 %250, 0
  %252 = icmp ult i32 %72, 74642, !mcsema_real_eip !55
  %253 = and i32 %189, 16
  %254 = icmp eq i32 %253, 0
  %255 = tail call x86_64_sysvcc i64 @puts(i64 zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 377) to i64)), !mcsema_real_eip !73
  br label %block_0x21f.i, !mcsema_real_eip !74

block_0xf9.i:                                     ; preds = %block_0xee.i
  %256 = add i32 %72, -74643
  %257 = xor i32 %256, %72, !mcsema_real_eip !75
  %258 = and i32 %257, 16
  %259 = icmp eq i32 %258, 0
  %260 = trunc i32 %256 to i8, !mcsema_real_eip !75
  %261 = tail call i8 @llvm.ctpop.i8(i8 %260), !mcsema_real_eip !75
  %262 = and i8 %261, 1
  %263 = icmp eq i8 %262, 0
  %264 = icmp eq i32 %256, 0, !mcsema_real_eip !75
  %265 = icmp slt i32 %256, 0
  %266 = icmp ult i32 %72, 74643, !mcsema_real_eip !75
  %267 = and i32 %257, %72, !mcsema_real_eip !75
  %268 = icmp slt i32 %267, 0
  br i1 %264, label %block_0x1ff.i, label %block_0x20b.i, !mcsema_real_eip !76

block_0x20b.i:                                    ; preds = %block_0xf9.i, %block_0xc8.i, %block_0x85.i, %block_0x52.i, %block_0x6e.i, %block_0x3c.i
  %PF_val.1.i = phi i1 [ %166, %block_0x3c.i ], [ %205, %block_0x52.i ], [ %177, %block_0x6e.i ], [ %225, %block_0x85.i ], [ %244, %block_0xc8.i ], [ %263, %block_0xf9.i ]
  %AF_val.1.i = phi i1 [ %118, %block_0x3c.i ], [ %201, %block_0x52.i ], [ %173, %block_0x6e.i ], [ %221, %block_0x85.i ], [ %240, %block_0xc8.i ], [ %259, %block_0xf9.i ]
  %CF_val.1.i = phi i1 [ false, %block_0x3c.i ], [ %208, %block_0x52.i ], [ %180, %block_0x6e.i ], [ %228, %block_0x85.i ], [ %247, %block_0xc8.i ], [ %266, %block_0xf9.i ]
  %SF_val.1.i = phi i1 [ %162, %block_0x3c.i ], [ %207, %block_0x52.i ], [ %179, %block_0x6e.i ], [ %227, %block_0x85.i ], [ %246, %block_0xc8.i ], [ %265, %block_0xf9.i ]
  %OF_val.1.i = phi i1 [ false, %block_0x3c.i ], [ %210, %block_0x52.i ], [ %182, %block_0x6e.i ], [ %230, %block_0x85.i ], [ %249, %block_0xc8.i ], [ %268, %block_0xf9.i ]
  %269 = and i64 %6, 4294967295
  %270 = extractelement <2 x i64> %5, i32 0
  %271 = tail call x86_64_sysvcc i64 @printf(i64 zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 431) to i64), i64 %269, i64 %270, i64 %3), !mcsema_real_eip !77
  %272 = load i64* %70, align 8, !mcsema_real_eip !13
  %273 = add i64 %7, 8, !mcsema_real_eip !14
  store i64 0, i64* %RAX.i, align 8, !mcsema_real_eip !14
  store i64 %2, i64* %RBX.i, align 8, !mcsema_real_eip !14
  store i64 %3, i64* %RCX.i, align 8, !mcsema_real_eip !14
  store i64 %270, i64* %RDX.i, align 8, !mcsema_real_eip !14
  store i64 %269, i64* %RSI.i, align 8, !mcsema_real_eip !14
  store i64 zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 431) to i64), i64* %RDI.i, align 8, !mcsema_real_eip !14
  store i64 %273, i64* %RSP.i, align 8, !mcsema_real_eip !14
  store i64 %272, i64* %RBP.i, align 8, !mcsema_real_eip !14
  store i64 %9, i64* %R8.i, align 8, !mcsema_real_eip !14
  store i64 %10, i64* %R9.i, align 8, !mcsema_real_eip !14
  store i64 %11, i64* %R10.i, align 8, !mcsema_real_eip !14
  store i64 %12, i64* %R11.i, align 8, !mcsema_real_eip !14
  store i64 %13, i64* %R12.i, align 8, !mcsema_real_eip !14
  store i64 %14, i64* %R13.i, align 8, !mcsema_real_eip !14
  store i64 %15, i64* %R14.i, align 8, !mcsema_real_eip !14
  store i64 %16, i64* %R15.i, align 8, !mcsema_real_eip !14
  store i64 %17, i64* %RIP.i, align 8, !mcsema_real_eip !14
  store i1 %CF_val.1.i, i1* %CF.i, align 1, !mcsema_real_eip !14
  store i1 %PF_val.1.i, i1* %PF.i, align 1, !mcsema_real_eip !14
  store i1 %AF_val.1.i, i1* %AF.i, align 1, !mcsema_real_eip !14
  store i1 false, i1* %ZF.i, align 1, !mcsema_real_eip !14
  store i1 %SF_val.1.i, i1* %SF.i, align 1, !mcsema_real_eip !14
  store i1 %OF_val.1.i, i1* %OF.i, align 1, !mcsema_real_eip !14
  store i1 %18, i1* %DF.i, align 1, !mcsema_real_eip !14
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %20, i8* %1, i32 128, i32 8, i1 false), !mcsema_real_eip !14
  store i1 %21, i1* %FPU_B.i, align 1, !mcsema_real_eip !14
  store i1 %22, i1* %FPU_C3.i, align 1, !mcsema_real_eip !14
  store i3 %23, i3* %FPU_TOP.i, align 1, !mcsema_real_eip !14
  store i1 %24, i1* %FPU_C2.i, align 1, !mcsema_real_eip !14
  store i1 %25, i1* %FPU_C1.i, align 1, !mcsema_real_eip !14
  store i1 %26, i1* %FPU_C0.i, align 1, !mcsema_real_eip !14
  store i1 %27, i1* %FPU_ES.i, align 1, !mcsema_real_eip !14
  store i1 %28, i1* %FPU_SF.i, align 1, !mcsema_real_eip !14
  store i1 %29, i1* %FPU_PE.i, align 1, !mcsema_real_eip !14
  store i1 %30, i1* %FPU_UE.i, align 1, !mcsema_real_eip !14
  store i1 %31, i1* %FPU_OE.i, align 1, !mcsema_real_eip !14
  store i1 %32, i1* %FPU_ZE.i, align 1, !mcsema_real_eip !14
  store i1 %33, i1* %FPU_DE.i, align 1, !mcsema_real_eip !14
  store i1 %34, i1* %FPU_IE.i, align 1, !mcsema_real_eip !14
  store i1 %35, i1* %FPU_X.i, align 1, !mcsema_real_eip !14
  store i2 %36, i2* %FPU_RC.i, align 1, !mcsema_real_eip !14
  store i2 %37, i2* %FPU_PC.i, align 1, !mcsema_real_eip !14
  store i1 %38, i1* %FPU_PM.i, align 1, !mcsema_real_eip !14
  store i1 %39, i1* %FPU_UM.i, align 1, !mcsema_real_eip !14
  store i1 %40, i1* %FPU_OM.i, align 1, !mcsema_real_eip !14
  store i1 %41, i1* %FPU_ZM.i, align 1, !mcsema_real_eip !14
  store i1 %42, i1* %FPU_DM.i, align 1, !mcsema_real_eip !14
  store i1 %43, i1* %FPU_IM.i, align 1, !mcsema_real_eip !14
  store i64 %46, i64* %45, align 4
  store i16 %47, i16* %FPU_LASTIP_SEG.i, align 1, !mcsema_real_eip !14
  store i64 %48, i64* %FPU_LASTIP_OFF.i, align 1, !mcsema_real_eip !14
  store i16 %49, i16* %FPU_LASTDATA_SEG.i, align 1, !mcsema_real_eip !14
  store i64 %50, i64* %FPU_LASTDATA_OFF.i, align 1, !mcsema_real_eip !14
  store i128 %51, i128* %XMM0.i, align 1, !mcsema_real_eip !14
  store i128 %52, i128* %XMM1.i, align 1, !mcsema_real_eip !14
  store i128 %53, i128* %XMM2.i, align 1, !mcsema_real_eip !14
  store i128 %54, i128* %XMM3.i, align 1, !mcsema_real_eip !14
  store i128 %55, i128* %XMM4.i, align 1, !mcsema_real_eip !14
  store i128 %56, i128* %XMM5.i, align 1, !mcsema_real_eip !14
  store i128 %57, i128* %XMM6.i, align 1, !mcsema_real_eip !14
  store i128 %58, i128* %XMM7.i, align 1, !mcsema_real_eip !14
  store i128 %59, i128* %XMM8.i, align 1, !mcsema_real_eip !14
  store i128 %60, i128* %XMM9.i, align 1, !mcsema_real_eip !14
  store i128 %61, i128* %XMM10.i, align 1, !mcsema_real_eip !14
  store i128 %62, i128* %XMM11.i, align 1, !mcsema_real_eip !14
  store i128 %63, i128* %XMM12.i, align 1, !mcsema_real_eip !14
  store i128 %64, i128* %XMM13.i, align 1, !mcsema_real_eip !14
  store i128 %65, i128* %XMM14.i, align 1, !mcsema_real_eip !14
  store i128 %66, i128* %XMM15.i, align 1, !mcsema_real_eip !14
  store i64 %67, i64* %STACK_BASE.i, align 1, !mcsema_real_eip !14
  store i64 %68, i64* %STACK_LIMIT.i, align 1, !mcsema_real_eip !14
  call void @llvm.lifetime.end(i64 128, i8* %1)
  br label %sub_0.exit

block_0x136.i:                                    ; preds = %block_0x52.i
  %274 = tail call x86_64_sysvcc i64 @puts(i64 zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 43) to i64)), !mcsema_real_eip !78
  br label %block_0x21f.i, !mcsema_real_eip !79

block_0x181.i:                                    ; preds = %block_0x85.i
  %275 = tail call x86_64_sysvcc i64 @puts(i64 zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 128) to i64)), !mcsema_real_eip !80
  br label %block_0x21f.i, !mcsema_real_eip !81

block_0x1c3.i:                                    ; preds = %block_0xc8.i
  %276 = tail call x86_64_sysvcc i64 @puts(i64 zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 269) to i64)), !mcsema_real_eip !82
  br label %block_0x21f.i, !mcsema_real_eip !83

block_0x1ff.i:                                    ; preds = %block_0xf9.i
  %277 = tail call x86_64_sysvcc i64 @puts(i64 zext (i32 add (i32 ptrtoint (%0* @data_0x226 to i32), i32 404) to i64)), !mcsema_real_eip !84
  br label %block_0x21f.i, !mcsema_real_eip !85

sub_0.exit:                                       ; preds = %block_0x20b.i, %block_0x21f.i
  ret void
}

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
!3 = metadata !{i64 8, [21 x i8] c"\09movl\09%edi, -4(%rbp)\00"}
!4 = metadata !{i64 14, [19 x i8] c"\09cmpl\09$74633, %eax\00"}
!5 = metadata !{i64 19, [8 x i8] c"\09je\09375\00"}
!6 = metadata !{i64 405, [9 x i8] c"\09callq\090\00"}
!7 = metadata !{i64 410, [9 x i8] c"\09jmp\09128\00"}
!8 = metadata !{i64 30, [8 x i8] c"\09jg\09117\00"}
!9 = metadata !{i64 149, [19 x i8] c"\09cmpl\09$74639, %eax\00"}
!10 = metadata !{i64 154, [8 x i8] c"\09je\09303\00"}
!11 = metadata !{i64 32, [15 x i8] c"\09cmpl\09$6, %eax\00"}
!12 = metadata !{i64 35, [8 x i8] c"\09je\09284\00"}
!13 = metadata !{i64 548, [7 x i8] c"\09leave\00"}
!14 = metadata !{i64 549, [6 x i8] c"\09retq\00"}
!15 = metadata !{i64 330, [9 x i8] c"\09callq\090\00"}
!16 = metadata !{i64 335, [9 x i8] c"\09jmp\09203\00"}
!17 = metadata !{i64 44, [7 x i8] c"\09jg\0950\00"}
!18 = metadata !{i64 468, [9 x i8] c"\09callq\090\00"}
!19 = metadata !{i64 473, [8 x i8] c"\09jmp\0968\00"}
!20 = metadata !{i64 165, [7 x i8] c"\09jg\0949\00"}
!21 = metadata !{i64 96, [16 x i8] c"\09cmpl\09$13, %eax\00"}
!22 = metadata !{i64 99, [8 x i8] c"\09je\09250\00"}
!23 = metadata !{i64 46, [15 x i8] c"\09cmpl\09$1, %eax\00"}
!24 = metadata !{i64 49, [8 x i8] c"\09je\09225\00"}
!25 = metadata !{i64 216, [19 x i8] c"\09cmpl\09$74641, %eax\00"}
!26 = metadata !{i64 221, [8 x i8] c"\09je\09260\00"}
!27 = metadata !{i64 167, [19 x i8] c"\09cmpl\09$74635, %eax\00"}
!28 = metadata !{i64 172, [8 x i8] c"\09je\09249\00"}
!29 = metadata !{i64 285, [9 x i8] c"\09callq\090\00"}
!30 = metadata !{i64 290, [9 x i8] c"\09jmp\09248\00"}
!31 = metadata !{i64 58, [7 x i8] c"\09jg\0913\00"}
!32 = metadata !{i64 360, [9 x i8] c"\09callq\090\00"}
!33 = metadata !{i64 365, [9 x i8] c"\09jmp\09173\00"}
!34 = metadata !{i64 108, [7 x i8] c"\09jg\0914\00"}
!35 = metadata !{i64 432, [9 x i8] c"\09callq\090\00"}
!36 = metadata !{i64 437, [9 x i8] c"\09jmp\09104\00"}
!37 = metadata !{i64 183, [8 x i8] c"\09jl\09226\00"}
!38 = metadata !{i64 492, [9 x i8] c"\09callq\090\00"}
!39 = metadata !{i64 497, [8 x i8] c"\09jmp\0944\00"}
!40 = metadata !{i64 232, [8 x i8] c"\09jl\09237\00"}
!41 = metadata !{i64 73, [15 x i8] c"\09cmpl\09$2, %eax\00"}
!42 = metadata !{i64 76, [8 x i8] c"\09je\09213\00"}
!43 = metadata !{i64 60, [18 x i8] c"\09testl\09%eax, %eax\00"}
!44 = metadata !{i64 62, [8 x i8] c"\09je\09197\00"}
!45 = metadata !{i64 124, [16 x i8] c"\09cmpl\09$19, %eax\00"}
!46 = metadata !{i64 127, [8 x i8] c"\09je\09237\00"}
!47 = metadata !{i64 110, [16 x i8] c"\09cmpl\09$12, %eax\00"}
!48 = metadata !{i64 113, [8 x i8] c"\09je\09221\00"}
!49 = metadata !{i64 420, [9 x i8] c"\09callq\090\00"}
!50 = metadata !{i64 425, [9 x i8] c"\09jmp\09116\00"}
!51 = metadata !{i64 189, [19 x i8] c"\09cmpl\09$74636, %eax\00"}
!52 = metadata !{i64 194, [8 x i8] c"\09je\09239\00"}
!53 = metadata !{i64 480, [9 x i8] c"\09callq\090\00"}
!54 = metadata !{i64 485, [8 x i8] c"\09jmp\0956\00"}
!55 = metadata !{i64 238, [19 x i8] c"\09cmpl\09$74642, %eax\00"}
!56 = metadata !{i64 243, [8 x i8] c"\09je\09250\00"}
!57 = metadata !{i64 270, [9 x i8] c"\09callq\090\00"}
!58 = metadata !{i64 275, [9 x i8] c"\09jmp\09263\00"}
!59 = metadata !{i64 300, [9 x i8] c"\09callq\090\00"}
!60 = metadata !{i64 305, [9 x i8] c"\09jmp\09233\00"}
!61 = metadata !{i64 82, [15 x i8] c"\09cmpl\09$4, %eax\00"}
!62 = metadata !{i64 85, [8 x i8] c"\09je\09219\00"}
!63 = metadata !{i64 345, [9 x i8] c"\09callq\090\00"}
!64 = metadata !{i64 350, [9 x i8] c"\09jmp\09188\00"}
!65 = metadata !{i64 375, [9 x i8] c"\09callq\090\00"}
!66 = metadata !{i64 380, [9 x i8] c"\09jmp\09158\00"}
!67 = metadata !{i64 133, [17 x i8] c"\09cmpl\09$255, %eax\00"}
!68 = metadata !{i64 138, [8 x i8] c"\09je\09241\00"}
!69 = metadata !{i64 444, [9 x i8] c"\09callq\090\00"}
!70 = metadata !{i64 449, [8 x i8] c"\09jmp\0992\00"}
!71 = metadata !{i64 200, [19 x i8] c"\09cmpl\09$74637, %eax\00"}
!72 = metadata !{i64 205, [8 x i8] c"\09je\09240\00"}
!73 = metadata !{i64 504, [9 x i8] c"\09callq\090\00"}
!74 = metadata !{i64 509, [8 x i8] c"\09jmp\0932\00"}
!75 = metadata !{i64 249, [19 x i8] c"\09cmpl\09$74643, %eax\00"}
!76 = metadata !{i64 254, [8 x i8] c"\09je\09251\00"}
!77 = metadata !{i64 538, [9 x i8] c"\09callq\090\00"}
!78 = metadata !{i64 315, [9 x i8] c"\09callq\090\00"}
!79 = metadata !{i64 320, [9 x i8] c"\09jmp\09218\00"}
!80 = metadata !{i64 390, [9 x i8] c"\09callq\090\00"}
!81 = metadata !{i64 395, [9 x i8] c"\09jmp\09143\00"}
!82 = metadata !{i64 456, [9 x i8] c"\09callq\090\00"}
!83 = metadata !{i64 461, [8 x i8] c"\09jmp\0980\00"}
!84 = metadata !{i64 516, [9 x i8] c"\09callq\090\00"}
!85 = metadata !{i64 521, [8 x i8] c"\09jmp\0920\00"}
