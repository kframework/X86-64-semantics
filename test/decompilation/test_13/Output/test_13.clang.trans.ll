; ModuleID = 'Output/test_13.clang.trans.bc'
source_filename = "Output/test_13.clang.bc"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm "  .globl sub_0;"
module asm "  .globl callback_sub_0;"
module asm "  .type callback_sub_0,@function"
module asm "callback_sub_0:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size callback_sub_0,0b-callback_sub_0;"
module asm "  .cfi_endproc;"
module asm "  .globl strlen;"
module asm "  .globl _strlen;"
module asm "  .type _strlen,@function"
module asm "_strlen:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq strlen@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _strlen,0b-_strlen;"
module asm "  .cfi_endproc;"
module asm "  .globl malloc;"
module asm "  .globl _malloc;"
module asm "  .type _malloc,@function"
module asm "_malloc:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq malloc@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _malloc,0b-_malloc;"
module asm "  .cfi_endproc;"
module asm "  .globl sub_0;"
module asm "  .globl doWork;"
module asm "  .type doWork,@function"
module asm "doWork:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size doWork,0b-doWork;"
module asm "  .cfi_endproc;"

%0 = type <{ [32 x i8], i32, [24 x i8], i32, [24 x i8], i32, [20 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x180 = internal constant %0 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"\83\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"l\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\1C\00\00\00T\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [20 x i8] c"|\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

; Function Attrs: naked
declare void @__mcsema_attach_call() #0

; Function Attrs: naked
declare void @__mcsema_attach_ret() #0

; Function Attrs: naked
declare void @__mcsema_detach_call() #0

; Function Attrs: naked
declare void @__mcsema_detach_call_value() #0

; Function Attrs: naked
declare void @__mcsema_detach_ret() #0

; Function Attrs: noinline
define internal x86_64_sysvcc void @sub_90(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !2
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !2
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !2
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !2
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !2
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !2
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !2
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !2
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !2
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !2
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !2
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !2
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !2
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !2
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !2
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !2
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !2
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !2
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !2
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !2
  br label %block_0x90, !mcsema_real_eip !2

block_0x90:                                       ; preds = %entry
  %RBP_val.0 = load i64, i64* %XBP, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, !mcsema_real_eip !2
  %1 = sub i64 %RSP_val.1, 8, !mcsema_real_eip !2
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0, i64* %2, !mcsema_real_eip !2
  store i64 %1, i64* %XSP, !mcsema_real_eip !2
  store i64 %1, i64* %XBP, !mcsema_real_eip !3
  %3 = sub i64 %1, 32, !mcsema_real_eip !4
  %4 = xor i64 %3, %1, !mcsema_real_eip !4
  %5 = xor i64 %4, 32, !mcsema_real_eip !4
  %6 = and i64 %5, 16, !mcsema_real_eip !4
  %7 = icmp ne i64 %6, 0, !mcsema_real_eip !4
  store i1 %7, i1* %AF, !mcsema_real_eip !4
  %8 = trunc i64 %3 to i8, !mcsema_real_eip !4
  %9 = call i8 @llvm.ctpop.i8(i8 %8), !mcsema_real_eip !4
  %10 = trunc i8 %9 to i1, !mcsema_real_eip !4
  %11 = xor i1 %10, true, !mcsema_real_eip !4
  store i1 %11, i1* %PF, !mcsema_real_eip !4
  %12 = icmp eq i64 %3, 0, !mcsema_real_eip !4
  store i1 %12, i1* %ZF, !mcsema_real_eip !4
  %13 = lshr i64 %3, 63, !mcsema_real_eip !4
  %14 = trunc i64 %13 to i1, !mcsema_real_eip !4
  store i1 %14, i1* %SF, !mcsema_real_eip !4
  %15 = icmp ult i64 %1, 32, !mcsema_real_eip !4
  store i1 %15, i1* %CF, !mcsema_real_eip !4
  %16 = xor i64 %1, 32, !mcsema_real_eip !4
  %17 = and i64 %16, %4, !mcsema_real_eip !4
  %18 = lshr i64 %17, 63, !mcsema_real_eip !4
  %19 = trunc i64 %18 to i1, !mcsema_real_eip !4
  store i1 %19, i1* %OF, !mcsema_real_eip !4
  store i64 %3, i64* %XSP, !mcsema_real_eip !4
  %20 = add i64 %1, -8, !mcsema_real_eip !5
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !5
  %RDI_val.5 = load i64, i64* %XDI, !mcsema_real_eip !5
  store i64 %RDI_val.5, i64* %21, !mcsema_real_eip !5
  %RBP_val.6 = load i64, i64* %XBP, !mcsema_real_eip !6
  %22 = add i64 %RBP_val.6, -12, !mcsema_real_eip !6
  %23 = inttoptr i64 %22 to i64*, !mcsema_real_eip !6
  %24 = inttoptr i64 %22 to i32*, !mcsema_real_eip !6
  store i32 1, i32* %24, !mcsema_real_eip !6
  %RBP_val.7 = load i64, i64* %XBP, !mcsema_real_eip !7
  %25 = add i64 %RBP_val.7, -8, !mcsema_real_eip !7
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !7
  %27 = load i64, i64* %26, !mcsema_real_eip !7
  store i64 %27, i64* %XDI, !mcsema_real_eip !7
  %RSP_val.9 = load i64, i64* %XSP, !mcsema_real_eip !8
  %28 = sub i64 %RSP_val.9, 8, !mcsema_real_eip !8
  %29 = inttoptr i64 %28 to i64*, !mcsema_real_eip !8
  store i64 -2415393069852865332, i64* %29, !mcsema_real_eip !8
  store i64 %28, i64* %XSP, !mcsema_real_eip !8
  %30 = call x86_64_sysvcc i64 @_strlen(i64 %27), !mcsema_real_eip !8
  store i64 %30, i64* %XAX, !mcsema_real_eip !8
  %EAX.10 = bitcast i64* %XAX to i32*, !mcsema_real_eip !9
  %EAX_val.11 = load i32, i32* %EAX.10, !mcsema_real_eip !9
  %31 = zext i32 %EAX_val.11 to i64, !mcsema_real_eip !9
  store i64 %31, i64* %XCX, !mcsema_real_eip !9
  %RBP_val.12 = load i64, i64* %XBP, !mcsema_real_eip !10
  %32 = add i64 %RBP_val.12, -16, !mcsema_real_eip !10
  %33 = inttoptr i64 %32 to i64*, !mcsema_real_eip !10
  %ECX.13 = bitcast i64* %XCX to i32*, !mcsema_real_eip !10
  %ECX_val.14 = load i32, i32* %ECX.13, !mcsema_real_eip !10
  %34 = inttoptr i64 %32 to i32*, !mcsema_real_eip !10
  store i32 %ECX_val.14, i32* %34, !mcsema_real_eip !10
  %RBP_val.15 = load i64, i64* %XBP, !mcsema_real_eip !11
  %35 = add i64 %RBP_val.15, -16, !mcsema_real_eip !11
  %36 = inttoptr i64 %35 to i64*, !mcsema_real_eip !11
  %37 = inttoptr i64 %35 to i32*, !mcsema_real_eip !11
  %38 = load i32, i32* %37, !mcsema_real_eip !11
  %39 = sub i32 %38, 1, !mcsema_real_eip !11
  %40 = xor i32 %39, %38, !mcsema_real_eip !11
  %41 = xor i32 %40, 1, !mcsema_real_eip !11
  %42 = and i32 %41, 16, !mcsema_real_eip !11
  %43 = icmp ne i32 %42, 0, !mcsema_real_eip !11
  store i1 %43, i1* %AF, !mcsema_real_eip !11
  %44 = trunc i32 %39 to i8, !mcsema_real_eip !11
  %45 = call i8 @llvm.ctpop.i8(i8 %44), !mcsema_real_eip !11
  %46 = trunc i8 %45 to i1, !mcsema_real_eip !11
  %47 = xor i1 %46, true, !mcsema_real_eip !11
  store i1 %47, i1* %PF, !mcsema_real_eip !11
  %48 = icmp eq i32 %39, 0, !mcsema_real_eip !11
  store i1 %48, i1* %ZF, !mcsema_real_eip !11
  %49 = lshr i32 %39, 31, !mcsema_real_eip !11
  %50 = trunc i32 %49 to i1, !mcsema_real_eip !11
  store i1 %50, i1* %SF, !mcsema_real_eip !11
  %51 = icmp ult i32 %38, 1, !mcsema_real_eip !11
  store i1 %51, i1* %CF, !mcsema_real_eip !11
  %52 = xor i32 %38, 1, !mcsema_real_eip !11
  %53 = and i32 %52, %40, !mcsema_real_eip !11
  %54 = lshr i32 %53, 31, !mcsema_real_eip !11
  %55 = trunc i32 %54 to i1, !mcsema_real_eip !11
  store i1 %55, i1* %OF, !mcsema_real_eip !11
  %56 = icmp eq i1 %50, %55, !mcsema_real_eip !12
  %57 = icmp eq i1 %56, false, !mcsema_real_eip !12
  %58 = or i1 %48, %57, !mcsema_real_eip !12
  br i1 %58, label %block_0xf3, label %block_0xbb, !mcsema_real_eip !12

block_0xbb:                                       ; preds = %block_0x90
  %59 = add i64 %RBP_val.15, -8, !mcsema_real_eip !13
  %60 = inttoptr i64 %59 to i64*, !mcsema_real_eip !13
  %61 = load i64, i64* %60, !mcsema_real_eip !13
  store i64 %61, i64* %XAX, !mcsema_real_eip !13
  %62 = inttoptr i64 %61 to i64*, !mcsema_real_eip !14
  %63 = inttoptr i64 %61 to i8*, !mcsema_real_eip !14
  %64 = load i8, i8* %63, !mcsema_real_eip !14
  %CL.18 = bitcast i64* %XCX to i8*, !mcsema_real_eip !14
  store i8 %64, i8* %CL.18, !mcsema_real_eip !14
  %65 = add i64 %RBP_val.15, -17, !mcsema_real_eip !15
  %66 = inttoptr i64 %65 to i64*, !mcsema_real_eip !15
  %67 = inttoptr i64 %65 to i8*, !mcsema_real_eip !15
  store i8 %64, i8* %67, !mcsema_real_eip !15
  %RBP_val.22 = load i64, i64* %XBP, !mcsema_real_eip !16
  %68 = add i64 %RBP_val.22, -8, !mcsema_real_eip !16
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !16
  %70 = load i64, i64* %69, !mcsema_real_eip !16
  store i64 %70, i64* %XAX, !mcsema_real_eip !16
  %71 = add i64 %RBP_val.22, -16, !mcsema_real_eip !17
  %72 = inttoptr i64 %71 to i64*, !mcsema_real_eip !17
  %73 = inttoptr i64 %71 to i32*, !mcsema_real_eip !17
  %74 = load i32, i32* %73, !mcsema_real_eip !17
  %75 = zext i32 %74 to i64, !mcsema_real_eip !17
  store i64 %75, i64* %XDX, !mcsema_real_eip !17
  %EDX.24 = bitcast i64* %XDX to i32*, !mcsema_real_eip !18
  %EDX_val.25 = load i32, i32* %EDX.24, !mcsema_real_eip !18
  %76 = sub i32 %EDX_val.25, 1, !mcsema_real_eip !18
  %77 = xor i32 %76, %EDX_val.25, !mcsema_real_eip !18
  %78 = xor i32 %77, 1, !mcsema_real_eip !18
  %79 = and i32 %78, 16, !mcsema_real_eip !18
  %80 = icmp ne i32 %79, 0, !mcsema_real_eip !18
  store i1 %80, i1* %AF, !mcsema_real_eip !18
  %81 = trunc i32 %76 to i8, !mcsema_real_eip !18
  %82 = call i8 @llvm.ctpop.i8(i8 %81), !mcsema_real_eip !18
  %83 = trunc i8 %82 to i1, !mcsema_real_eip !18
  %84 = xor i1 %83, true, !mcsema_real_eip !18
  store i1 %84, i1* %PF, !mcsema_real_eip !18
  %85 = icmp eq i32 %76, 0, !mcsema_real_eip !18
  store i1 %85, i1* %ZF, !mcsema_real_eip !18
  %86 = lshr i32 %76, 31, !mcsema_real_eip !18
  %87 = trunc i32 %86 to i1, !mcsema_real_eip !18
  store i1 %87, i1* %SF, !mcsema_real_eip !18
  %88 = icmp ult i32 %EDX_val.25, 1, !mcsema_real_eip !18
  store i1 %88, i1* %CF, !mcsema_real_eip !18
  %89 = xor i32 %EDX_val.25, 1, !mcsema_real_eip !18
  %90 = and i32 %89, %77, !mcsema_real_eip !18
  %91 = lshr i32 %90, 31, !mcsema_real_eip !18
  %92 = trunc i32 %91 to i1, !mcsema_real_eip !18
  store i1 %92, i1* %OF, !mcsema_real_eip !18
  %93 = zext i32 %76 to i64, !mcsema_real_eip !18
  store i64 %93, i64* %XDX, !mcsema_real_eip !18
  %EDX_val.27 = load i32, i32* %EDX.24, !mcsema_real_eip !19
  %94 = sext i32 %EDX_val.27 to i64, !mcsema_real_eip !19
  store i64 %94, i64* %XSI, !mcsema_real_eip !19
  %95 = add i64 %70, %94, !mcsema_real_eip !20
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !20
  %97 = inttoptr i64 %95 to i8*, !mcsema_real_eip !20
  %98 = load i8, i8* %97, !mcsema_real_eip !20
  store i8 %98, i8* %CL.18, !mcsema_real_eip !20
  %99 = add i64 %RBP_val.22, -18, !mcsema_real_eip !21
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !21
  %101 = inttoptr i64 %99 to i8*, !mcsema_real_eip !21
  store i8 %98, i8* %101, !mcsema_real_eip !21
  %RBP_val.34 = load i64, i64* %XBP, !mcsema_real_eip !22
  %102 = add i64 %RBP_val.34, -17, !mcsema_real_eip !22
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !22
  %104 = inttoptr i64 %102 to i8*, !mcsema_real_eip !22
  %105 = load i8, i8* %104, !mcsema_real_eip !22
  %106 = sext i8 %105 to i32, !mcsema_real_eip !22
  %107 = zext i32 %106 to i64, !mcsema_real_eip !22
  store i64 %107, i64* %XDX, !mcsema_real_eip !22
  %108 = add i64 %RBP_val.34, -18, !mcsema_real_eip !23
  %109 = inttoptr i64 %108 to i64*, !mcsema_real_eip !23
  %110 = inttoptr i64 %108 to i8*, !mcsema_real_eip !23
  %111 = load i8, i8* %110, !mcsema_real_eip !23
  %112 = sext i8 %111 to i32, !mcsema_real_eip !23
  %113 = zext i32 %112 to i64, !mcsema_real_eip !23
  store i64 %113, i64* %XDI, !mcsema_real_eip !23
  %EDX_val.37 = load i32, i32* %EDX.24, !mcsema_real_eip !24
  %EDI.38 = bitcast i64* %XDI to i32*, !mcsema_real_eip !24
  %EDI_val.39 = load i32, i32* %EDI.38, !mcsema_real_eip !24
  %114 = sub i32 %EDX_val.37, %EDI_val.39, !mcsema_real_eip !24
  %115 = xor i32 %114, %EDX_val.37, !mcsema_real_eip !24
  %116 = xor i32 %115, %EDI_val.39, !mcsema_real_eip !24
  %117 = and i32 %116, 16, !mcsema_real_eip !24
  %118 = icmp ne i32 %117, 0, !mcsema_real_eip !24
  store i1 %118, i1* %AF, !mcsema_real_eip !24
  %119 = trunc i32 %114 to i8, !mcsema_real_eip !24
  %120 = call i8 @llvm.ctpop.i8(i8 %119), !mcsema_real_eip !24
  %121 = trunc i8 %120 to i1, !mcsema_real_eip !24
  %122 = xor i1 %121, true, !mcsema_real_eip !24
  store i1 %122, i1* %PF, !mcsema_real_eip !24
  %123 = icmp eq i32 %114, 0, !mcsema_real_eip !24
  store i1 %123, i1* %ZF, !mcsema_real_eip !24
  %124 = lshr i32 %114, 31, !mcsema_real_eip !24
  %125 = trunc i32 %124 to i1, !mcsema_real_eip !24
  store i1 %125, i1* %SF, !mcsema_real_eip !24
  %126 = icmp ult i32 %EDX_val.37, %EDI_val.39, !mcsema_real_eip !24
  store i1 %126, i1* %CF, !mcsema_real_eip !24
  %127 = xor i32 %EDX_val.37, %EDI_val.39, !mcsema_real_eip !24
  %128 = and i32 %127, %115, !mcsema_real_eip !24
  %129 = lshr i32 %128, 31, !mcsema_real_eip !24
  %130 = trunc i32 %129 to i1, !mcsema_real_eip !24
  store i1 %130, i1* %OF, !mcsema_real_eip !24
  %131 = icmp eq i1 %123, false, !mcsema_real_eip !25
  br i1 %131, label %block_0xee, label %block_0xe7, !mcsema_real_eip !25

block_0xe7:                                       ; preds = %block_0xbb
  %132 = add i64 %RBP_val.34, -12, !mcsema_real_eip !26
  %133 = inttoptr i64 %132 to i64*, !mcsema_real_eip !26
  %134 = inttoptr i64 %132 to i32*, !mcsema_real_eip !26
  store i32 0, i32* %134, !mcsema_real_eip !26
  br label %block_0xee, !mcsema_real_eip !27

block_0xee:                                       ; preds = %block_0xe7, %block_0xbb
  br label %block_0xf3, !mcsema_real_eip !27

block_0xf3:                                       ; preds = %block_0xee, %block_0x90
  %RBP_val.41 = load i64, i64* %XBP, !mcsema_real_eip !28
  %135 = add i64 %RBP_val.41, -12, !mcsema_real_eip !28
  %136 = inttoptr i64 %135 to i64*, !mcsema_real_eip !28
  %137 = inttoptr i64 %135 to i32*, !mcsema_real_eip !28
  %138 = load i32, i32* %137, !mcsema_real_eip !28
  %139 = zext i32 %138 to i64, !mcsema_real_eip !28
  store i64 %139, i64* %XAX, !mcsema_real_eip !28
  %RSP_val.42 = load i64, i64* %XSP, !mcsema_real_eip !29
  %140 = add i64 32, %RSP_val.42, !mcsema_real_eip !29
  %141 = xor i64 %140, %RSP_val.42, !mcsema_real_eip !29
  %142 = xor i64 %141, 32, !mcsema_real_eip !29
  %143 = and i64 %142, 16, !mcsema_real_eip !29
  %144 = icmp ne i64 %143, 0, !mcsema_real_eip !29
  store i1 %144, i1* %AF, !mcsema_real_eip !29
  %145 = lshr i64 %140, 63, !mcsema_real_eip !29
  %146 = trunc i64 %145 to i1, !mcsema_real_eip !29
  store i1 %146, i1* %SF, !mcsema_real_eip !29
  %147 = icmp eq i64 %140, 0, !mcsema_real_eip !29
  store i1 %147, i1* %ZF, !mcsema_real_eip !29
  %148 = xor i64 %RSP_val.42, 32, !mcsema_real_eip !29
  %149 = xor i64 %148, -1, !mcsema_real_eip !29
  %150 = and i64 %149, %141, !mcsema_real_eip !29
  %151 = lshr i64 %150, 63, !mcsema_real_eip !29
  %152 = and i64 %151, 1, !mcsema_real_eip !29
  %153 = trunc i64 %152 to i1, !mcsema_real_eip !29
  store i1 %153, i1* %OF, !mcsema_real_eip !29
  %154 = trunc i64 %140 to i8, !mcsema_real_eip !29
  %155 = call i8 @llvm.ctpop.i8(i8 %154), !mcsema_real_eip !29
  %156 = trunc i8 %155 to i1, !mcsema_real_eip !29
  %157 = xor i1 %156, true, !mcsema_real_eip !29
  store i1 %157, i1* %PF, !mcsema_real_eip !29
  %158 = icmp ult i64 %140, %RSP_val.42, !mcsema_real_eip !29
  store i1 %158, i1* %CF, !mcsema_real_eip !29
  store i64 %140, i64* %XSP, !mcsema_real_eip !29
  %159 = inttoptr i64 %140 to i64*, !mcsema_real_eip !30
  %160 = load i64, i64* %159, !mcsema_real_eip !30
  store i64 %160, i64* %XBP, !mcsema_real_eip !30
  %161 = add i64 %140, 8, !mcsema_real_eip !30
  store i64 %161, i64* %XSP, !mcsema_real_eip !30
  %162 = add i64 %161, 8, !mcsema_real_eip !31
  %163 = inttoptr i64 %161 to i64*, !mcsema_real_eip !31
  %164 = load i64, i64* %163, !mcsema_real_eip !31
  store i64 %164, i64* %XIP, !mcsema_real_eip !31
  store i64 %162, i64* %XSP, !mcsema_real_eip !31
  ret void, !mcsema_real_eip !31
}

; Function Attrs: noinline
define internal x86_64_sysvcc void @sub_100(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !32
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !32
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !32
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !32
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !32
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !32
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !32
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !32
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !32
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !32
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !32
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !32
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !32
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !32
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !32
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !32
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !32
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !32
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !32
  br label %block_0x100, !mcsema_real_eip !32

block_0x100:                                      ; preds = %entry
  %RBP_val.45 = load i64, i64* %XBP, !mcsema_real_eip !32
  %RSP_val.46 = load i64, i64* %XSP, !mcsema_real_eip !32
  %1 = sub i64 %RSP_val.46, 8, !mcsema_real_eip !32
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !32
  store i64 %RBP_val.45, i64* %2, !mcsema_real_eip !32
  store i64 %1, i64* %XSP, !mcsema_real_eip !32
  store i64 %1, i64* %XBP, !mcsema_real_eip !33
  %3 = add i64 %1, -8, !mcsema_real_eip !34
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !34
  %RDI_val.49 = load i64, i64* %XDI, !mcsema_real_eip !34
  store i64 %RDI_val.49, i64* %4, !mcsema_real_eip !34
  %RBP_val.50 = load i64, i64* %XBP, !mcsema_real_eip !35
  %5 = add i64 %RBP_val.50, -16, !mcsema_real_eip !35
  %6 = inttoptr i64 %5 to i64*, !mcsema_real_eip !35
  %RSI_val.51 = load i64, i64* %XSI, !mcsema_real_eip !35
  store i64 %RSI_val.51, i64* %6, !mcsema_real_eip !35
  %RBP_val.52 = load i64, i64* %XBP, !mcsema_real_eip !36
  %7 = add i64 %RBP_val.52, -8, !mcsema_real_eip !36
  %8 = inttoptr i64 %7 to i64*, !mcsema_real_eip !36
  %9 = load i64, i64* %8, !mcsema_real_eip !36
  store i64 %9, i64* %XSI, !mcsema_real_eip !36
  %10 = add i64 %RBP_val.52, -24, !mcsema_real_eip !37
  %11 = inttoptr i64 %10 to i64*, !mcsema_real_eip !37
  store i64 %9, i64* %11, !mcsema_real_eip !37
  %RBP_val.55 = load i64, i64* %XBP, !mcsema_real_eip !38
  %12 = add i64 %RBP_val.55, -16, !mcsema_real_eip !38
  %13 = inttoptr i64 %12 to i64*, !mcsema_real_eip !38
  %14 = load i64, i64* %13, !mcsema_real_eip !38
  store i64 %14, i64* %XSI, !mcsema_real_eip !38
  %15 = add i64 %RBP_val.55, -32, !mcsema_real_eip !39
  %16 = inttoptr i64 %15 to i64*, !mcsema_real_eip !39
  store i64 %14, i64* %16, !mcsema_real_eip !39
  %RBP_val.58 = load i64, i64* %XBP, !mcsema_real_eip !40
  %17 = add i64 %RBP_val.58, -24, !mcsema_real_eip !40
  %18 = inttoptr i64 %17 to i64*, !mcsema_real_eip !40
  %19 = load i64, i64* %18, !mcsema_real_eip !40
  store i64 %19, i64* %XSI, !mcsema_real_eip !40
  %20 = inttoptr i64 %19 to i64*, !mcsema_real_eip !41
  %21 = inttoptr i64 %19 to i8*, !mcsema_real_eip !41
  %22 = load i8, i8* %21, !mcsema_real_eip !41
  %AL.60 = bitcast i64* %XAX to i8*, !mcsema_real_eip !41
  store i8 %22, i8* %AL.60, !mcsema_real_eip !41
  %23 = add i64 %RBP_val.58, -33, !mcsema_real_eip !42
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !42
  %25 = inttoptr i64 %23 to i8*, !mcsema_real_eip !42
  store i8 %22, i8* %25, !mcsema_real_eip !42
  br label %block_0x125, !mcsema_real_eip !43

block_0x125:                                      ; preds = %block_0x154, %block_0x100
  %RBP_val.64 = load i64, i64* %XBP, !mcsema_real_eip !43
  %26 = add i64 %RBP_val.64, -33, !mcsema_real_eip !43
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !43
  %28 = inttoptr i64 %26 to i8*, !mcsema_real_eip !43
  %29 = load i8, i8* %28, !mcsema_real_eip !43
  %30 = sext i8 %29 to i32, !mcsema_real_eip !43
  %31 = zext i32 %30 to i64, !mcsema_real_eip !43
  store i64 %31, i64* %XAX, !mcsema_real_eip !43
  %EAX.65 = bitcast i64* %XAX to i32*, !mcsema_real_eip !44
  %EAX_val.66 = load i32, i32* %EAX.65, !mcsema_real_eip !44
  store i1 false, i1* %AF, !mcsema_real_eip !44
  %32 = trunc i32 %EAX_val.66 to i8, !mcsema_real_eip !44
  %33 = call i8 @llvm.ctpop.i8(i8 %32), !mcsema_real_eip !44
  %34 = trunc i8 %33 to i1, !mcsema_real_eip !44
  %35 = xor i1 %34, true, !mcsema_real_eip !44
  store i1 %35, i1* %PF, !mcsema_real_eip !44
  %36 = icmp eq i32 %EAX_val.66, 0, !mcsema_real_eip !44
  store i1 %36, i1* %ZF, !mcsema_real_eip !44
  %37 = lshr i32 %EAX_val.66, 31, !mcsema_real_eip !44
  %38 = trunc i32 %37 to i1, !mcsema_real_eip !44
  store i1 %38, i1* %SF, !mcsema_real_eip !44
  store i1 false, i1* %CF, !mcsema_real_eip !44
  store i1 false, i1* %OF, !mcsema_real_eip !44
  br i1 %36, label %block_0x17a, label %block_0x132, !mcsema_real_eip !45

block_0x132:                                      ; preds = %block_0x125
  %39 = load i8, i8* %28, !mcsema_real_eip !46
  %40 = sext i8 %39 to i32, !mcsema_real_eip !46
  %41 = zext i32 %40 to i64, !mcsema_real_eip !46
  store i64 %41, i64* %XAX, !mcsema_real_eip !46
  %EAX_val.69 = load i32, i32* %EAX.65, !mcsema_real_eip !47
  %42 = sub i32 %EAX_val.69, 47, !mcsema_real_eip !47
  %43 = xor i32 %42, %EAX_val.69, !mcsema_real_eip !47
  %44 = xor i32 %43, 47, !mcsema_real_eip !47
  %45 = and i32 %44, 16, !mcsema_real_eip !47
  %46 = icmp ne i32 %45, 0, !mcsema_real_eip !47
  store i1 %46, i1* %AF, !mcsema_real_eip !47
  %47 = trunc i32 %42 to i8, !mcsema_real_eip !47
  %48 = call i8 @llvm.ctpop.i8(i8 %47), !mcsema_real_eip !47
  %49 = trunc i8 %48 to i1, !mcsema_real_eip !47
  %50 = xor i1 %49, true, !mcsema_real_eip !47
  store i1 %50, i1* %PF, !mcsema_real_eip !47
  %51 = icmp eq i32 %42, 0, !mcsema_real_eip !47
  store i1 %51, i1* %ZF, !mcsema_real_eip !47
  %52 = lshr i32 %42, 31, !mcsema_real_eip !47
  %53 = trunc i32 %52 to i1, !mcsema_real_eip !47
  store i1 %53, i1* %SF, !mcsema_real_eip !47
  %54 = icmp ult i32 %EAX_val.69, 47, !mcsema_real_eip !47
  store i1 %54, i1* %CF, !mcsema_real_eip !47
  %55 = xor i32 %EAX_val.69, 47, !mcsema_real_eip !47
  %56 = and i32 %55, %43, !mcsema_real_eip !47
  %57 = lshr i32 %56, 31, !mcsema_real_eip !47
  %58 = trunc i32 %57 to i1, !mcsema_real_eip !47
  store i1 %58, i1* %OF, !mcsema_real_eip !47
  %59 = icmp eq i1 %51, false, !mcsema_real_eip !48
  br i1 %59, label %block_0x14b, label %block_0x13f, !mcsema_real_eip !48

block_0x13f:                                      ; preds = %block_0x132
  %60 = add i64 %RBP_val.64, -32, !mcsema_real_eip !49
  %61 = inttoptr i64 %60 to i64*, !mcsema_real_eip !49
  %62 = load i64, i64* %61, !mcsema_real_eip !49
  store i64 %62, i64* %XAX, !mcsema_real_eip !49
  %63 = inttoptr i64 %62 to i64*, !mcsema_real_eip !50
  %64 = inttoptr i64 %62 to i8*, !mcsema_real_eip !50
  store i8 92, i8* %64, !mcsema_real_eip !50
  br label %block_0x154, !mcsema_real_eip !51

block_0x14b:                                      ; preds = %block_0x132
  %65 = load i8, i8* %28, !mcsema_real_eip !52
  store i8 %65, i8* %AL.60, !mcsema_real_eip !52
  %66 = add i64 %RBP_val.64, -32, !mcsema_real_eip !53
  %67 = inttoptr i64 %66 to i64*, !mcsema_real_eip !53
  %68 = load i64, i64* %67, !mcsema_real_eip !53
  store i64 %68, i64* %XCX, !mcsema_real_eip !53
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !54
  %70 = inttoptr i64 %68 to i8*, !mcsema_real_eip !54
  store i8 %65, i8* %70, !mcsema_real_eip !54
  br label %block_0x154, !mcsema_real_eip !55

block_0x154:                                      ; preds = %block_0x14b, %block_0x13f
  %RBP_val.78 = load i64, i64* %XBP, !mcsema_real_eip !55
  %71 = add i64 %RBP_val.78, -24, !mcsema_real_eip !55
  %72 = inttoptr i64 %71 to i64*, !mcsema_real_eip !55
  %73 = load i64, i64* %72, !mcsema_real_eip !55
  store i64 %73, i64* %XAX, !mcsema_real_eip !55
  %74 = add i64 1, %73, !mcsema_real_eip !56
  %75 = xor i64 %74, %73, !mcsema_real_eip !56
  %76 = xor i64 %75, 1, !mcsema_real_eip !56
  %77 = and i64 %76, 16, !mcsema_real_eip !56
  %78 = icmp ne i64 %77, 0, !mcsema_real_eip !56
  store i1 %78, i1* %AF, !mcsema_real_eip !56
  %79 = lshr i64 %74, 63, !mcsema_real_eip !56
  %80 = trunc i64 %79 to i1, !mcsema_real_eip !56
  store i1 %80, i1* %SF, !mcsema_real_eip !56
  %81 = icmp eq i64 %74, 0, !mcsema_real_eip !56
  store i1 %81, i1* %ZF, !mcsema_real_eip !56
  %82 = xor i64 %73, 1, !mcsema_real_eip !56
  %83 = xor i64 %82, -1, !mcsema_real_eip !56
  %84 = and i64 %83, %75, !mcsema_real_eip !56
  %85 = lshr i64 %84, 63, !mcsema_real_eip !56
  %86 = and i64 %85, 1, !mcsema_real_eip !56
  %87 = trunc i64 %86 to i1, !mcsema_real_eip !56
  store i1 %87, i1* %OF, !mcsema_real_eip !56
  %88 = trunc i64 %74 to i8, !mcsema_real_eip !56
  %89 = call i8 @llvm.ctpop.i8(i8 %88), !mcsema_real_eip !56
  %90 = trunc i8 %89 to i1, !mcsema_real_eip !56
  %91 = xor i1 %90, true, !mcsema_real_eip !56
  store i1 %91, i1* %PF, !mcsema_real_eip !56
  %92 = icmp ult i64 %74, %73, !mcsema_real_eip !56
  store i1 %92, i1* %CF, !mcsema_real_eip !56
  store i64 %74, i64* %XAX, !mcsema_real_eip !56
  store i64 %74, i64* %72, !mcsema_real_eip !57
  %RBP_val.82 = load i64, i64* %XBP, !mcsema_real_eip !58
  %93 = add i64 %RBP_val.82, -32, !mcsema_real_eip !58
  %94 = inttoptr i64 %93 to i64*, !mcsema_real_eip !58
  %95 = load i64, i64* %94, !mcsema_real_eip !58
  store i64 %95, i64* %XAX, !mcsema_real_eip !58
  %96 = add i64 1, %95, !mcsema_real_eip !59
  %97 = xor i64 %96, %95, !mcsema_real_eip !59
  %98 = xor i64 %97, 1, !mcsema_real_eip !59
  %99 = and i64 %98, 16, !mcsema_real_eip !59
  %100 = icmp ne i64 %99, 0, !mcsema_real_eip !59
  store i1 %100, i1* %AF, !mcsema_real_eip !59
  %101 = lshr i64 %96, 63, !mcsema_real_eip !59
  %102 = trunc i64 %101 to i1, !mcsema_real_eip !59
  store i1 %102, i1* %SF, !mcsema_real_eip !59
  %103 = icmp eq i64 %96, 0, !mcsema_real_eip !59
  store i1 %103, i1* %ZF, !mcsema_real_eip !59
  %104 = xor i64 %95, 1, !mcsema_real_eip !59
  %105 = xor i64 %104, -1, !mcsema_real_eip !59
  %106 = and i64 %105, %97, !mcsema_real_eip !59
  %107 = lshr i64 %106, 63, !mcsema_real_eip !59
  %108 = and i64 %107, 1, !mcsema_real_eip !59
  %109 = trunc i64 %108 to i1, !mcsema_real_eip !59
  store i1 %109, i1* %OF, !mcsema_real_eip !59
  %110 = trunc i64 %96 to i8, !mcsema_real_eip !59
  %111 = call i8 @llvm.ctpop.i8(i8 %110), !mcsema_real_eip !59
  %112 = trunc i8 %111 to i1, !mcsema_real_eip !59
  %113 = xor i1 %112, true, !mcsema_real_eip !59
  store i1 %113, i1* %PF, !mcsema_real_eip !59
  %114 = icmp ult i64 %96, %95, !mcsema_real_eip !59
  store i1 %114, i1* %CF, !mcsema_real_eip !59
  store i64 %96, i64* %XAX, !mcsema_real_eip !59
  store i64 %96, i64* %94, !mcsema_real_eip !60
  %RBP_val.86 = load i64, i64* %XBP, !mcsema_real_eip !61
  %115 = add i64 %RBP_val.86, -24, !mcsema_real_eip !61
  %116 = inttoptr i64 %115 to i64*, !mcsema_real_eip !61
  %117 = load i64, i64* %116, !mcsema_real_eip !61
  store i64 %117, i64* %XAX, !mcsema_real_eip !61
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !62
  %119 = inttoptr i64 %117 to i8*, !mcsema_real_eip !62
  %120 = load i8, i8* %119, !mcsema_real_eip !62
  %CL.88 = bitcast i64* %XCX to i8*, !mcsema_real_eip !62
  store i8 %120, i8* %CL.88, !mcsema_real_eip !62
  %121 = add i64 %RBP_val.86, -33, !mcsema_real_eip !63
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !63
  %123 = inttoptr i64 %121 to i8*, !mcsema_real_eip !63
  store i8 %120, i8* %123, !mcsema_real_eip !63
  br label %block_0x125, !mcsema_real_eip !64

block_0x17a:                                      ; preds = %block_0x125
  %RSP_val.92 = load i64, i64* %XSP, !mcsema_real_eip !65
  %124 = inttoptr i64 %RSP_val.92 to i64*, !mcsema_real_eip !65
  %125 = load i64, i64* %124, !mcsema_real_eip !65
  store i64 %125, i64* %XBP, !mcsema_real_eip !65
  %126 = add i64 %RSP_val.92, 8, !mcsema_real_eip !65
  store i64 %126, i64* %XSP, !mcsema_real_eip !65
  %127 = add i64 %126, 8, !mcsema_real_eip !66
  %128 = inttoptr i64 %126 to i64*, !mcsema_real_eip !66
  %129 = load i64, i64* %128, !mcsema_real_eip !66
  store i64 %129, i64* %XIP, !mcsema_real_eip !66
  store i64 %127, i64* %XSP, !mcsema_real_eip !66
  ret void, !mcsema_real_eip !66
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState*) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 48
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 48
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !67
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !67
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !67
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !67
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !67
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !67
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !67
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !67
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !67
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !67
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !67
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !67
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !67
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !67
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !67
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !67
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !67
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !67
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !67
  br label %block_0x0, !mcsema_real_eip !67

block_0x0:                                        ; preds = %entry
  %_load_rbp_ptr_ = load i8*, i8** %_RBP_ptr_
  %RSP_val.95 = load i64, i64* %XSP, !mcsema_real_eip !67
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %1 = sub i64 %RSP_val.95, 8, !mcsema_real_eip !67
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_load_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %1, i64* %XSP, !mcsema_real_eip !67
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %1, i64* %XBP, !mcsema_real_eip !68
  %_load_rsp_ptr_2 = load i8*, i8** %_RSP_ptr_
  %RSP_val.97 = load i64, i64* %XSP, !mcsema_real_eip !69
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -32
  %2 = sub i64 %RSP_val.97, 32, !mcsema_real_eip !69
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 32, !mcsema_real_eip !69
  %4 = and i64 %3, 16, !mcsema_real_eip !69
  %5 = icmp ne i64 %4, 0, !mcsema_real_eip !69
  store i1 %5, i1* %AF, !mcsema_real_eip !69
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %6 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !69
  %7 = trunc i8 %6 to i1, !mcsema_real_eip !69
  %8 = xor i1 %7, true, !mcsema_real_eip !69
  store i1 %8, i1* %PF, !mcsema_real_eip !69
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_, 0
  store i1 %_trans_icmp_eq_, i1* %ZF, !mcsema_real_eip !69
  %9 = lshr i64 %2, 63, !mcsema_real_eip !69
  %10 = trunc i64 %9 to i1, !mcsema_real_eip !69
  store i1 %10, i1* %SF, !mcsema_real_eip !69
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 32
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !69
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 32
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !69
  %12 = lshr i64 %11, 63, !mcsema_real_eip !69
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !69
  store i1 %13, i1* %OF, !mcsema_real_eip !69
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !69
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -8
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %RDI_val.99 = load i64, i64* %XDI, !mcsema_real_eip !70
  store i64 %RDI_val.99, i64* %_allin_new_bt_15, !mcsema_real_eip !70
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -12
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %ESI.101 = bitcast i64* %XSI to i32*, !mcsema_real_eip !71
  %ESI_val.102 = load i32, i32* %ESI.101, !mcsema_real_eip !71
  %14 = ptrtoint i64* %_allin_new_bt_18 to i64, !mcsema_real_eip !71
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !71
  store i32 %ESI_val.102, i32* %15, !mcsema_real_eip !71
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -16
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %16 = ptrtoint i64* %_allin_new_bt_21 to i64, !mcsema_real_eip !72
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !72
  store i32 0, i32* %17, !mcsema_real_eip !72
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -12
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %18 = ptrtoint i64* %_allin_new_bt_24 to i64, !mcsema_real_eip !73
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !73
  %20 = load i32, i32* %19, !mcsema_real_eip !73
  %21 = sext i32 %20 to i64, !mcsema_real_eip !73
  store i64 %21, i64* %XDI, !mcsema_real_eip !73
  %22 = shl i64 %21, 2, !mcsema_real_eip !74
  %23 = and i64 %22, -9223372036854775808, !mcsema_real_eip !74
  %24 = icmp ne i64 %23, 0, !mcsema_real_eip !74
  %25 = load i1, i1* %CF, !mcsema_real_eip !74
  %26 = shl i64 %22, 1, !mcsema_real_eip !74
  %27 = load i1, i1* %OF, !mcsema_real_eip !74
  %28 = and i64 %26, -9223372036854775808, !mcsema_real_eip !74
  %29 = icmp ne i64 %28, 0, !mcsema_real_eip !74
  %30 = xor i1 %29, %24, !mcsema_real_eip !74
  store i1 %24, i1* %CF, !mcsema_real_eip !74
  %31 = load i1, i1* %ZF, !mcsema_real_eip !74
  %32 = icmp eq i64 %26, 0, !mcsema_real_eip !74
  store i1 %32, i1* %ZF, !mcsema_real_eip !74
  %33 = load i1, i1* %SF, !mcsema_real_eip !74
  %34 = icmp slt i64 %26, 0, !mcsema_real_eip !74
  store i1 %34, i1* %SF, !mcsema_real_eip !74
  %35 = load i1, i1* %PF, !mcsema_real_eip !74
  %36 = trunc i64 %26 to i8, !mcsema_real_eip !74
  %37 = call i8 @llvm.ctpop.i8(i8 %36), !mcsema_real_eip !74
  %38 = trunc i8 %37 to i1, !mcsema_real_eip !74
  %39 = xor i1 %38, true, !mcsema_real_eip !74
  store i1 %39, i1* %PF, !mcsema_real_eip !74
  store i64 %26, i64* %XDI, !mcsema_real_eip !74
  %_load_rsp_ptr_25 = load i8*, i8** %_RSP_ptr_
  %RSP_val.107 = load i64, i64* %XSP, !mcsema_real_eip !75
  %_new_gep_26 = getelementptr i8, i8* %_load_rsp_ptr_25, i64 -8
  %40 = sub i64 %RSP_val.107, 8, !mcsema_real_eip !75
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_27, !mcsema_real_eip !75
  store volatile i8* %_new_gep_26, i8** %_RSP_ptr_
  store i64 %40, i64* %XSP, !mcsema_real_eip !75
  %41 = call x86_64_sysvcc i64 @_malloc(i64 %26)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %41, i64* %XAX, !mcsema_real_eip !75
  %_load_rbp_ptr_28 = load i8*, i8** %_RBP_ptr_
  %_new_gep_29 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -24
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  store i64 %41, i64* %_allin_new_bt_30, !mcsema_real_eip !76
  br label %block_0x27, !mcsema_real_eip !77

block_0x27:                                       ; preds = %block_0x67, %block_0x0
  %_load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -16
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  %42 = ptrtoint i64* %_allin_new_bt_33 to i64, !mcsema_real_eip !77
  %43 = inttoptr i64 %42 to i32*, !mcsema_real_eip !77
  %44 = load i32, i32* %43, !mcsema_real_eip !77
  %45 = zext i32 %44 to i64, !mcsema_real_eip !77
  store i64 %45, i64* %XAX, !mcsema_real_eip !77
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -12
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %EAX.112 = bitcast i64* %XAX to i32*, !mcsema_real_eip !78
  %EAX_val.113 = load i32, i32* %EAX.112, !mcsema_real_eip !78
  %46 = ptrtoint i64* %_allin_new_bt_36 to i64, !mcsema_real_eip !78
  %47 = inttoptr i64 %46 to i32*, !mcsema_real_eip !78
  %48 = load i32, i32* %47, !mcsema_real_eip !78
  %49 = sub i32 %EAX_val.113, %48, !mcsema_real_eip !78
  %50 = xor i32 %49, %EAX_val.113, !mcsema_real_eip !78
  %51 = xor i32 %50, %48, !mcsema_real_eip !78
  %52 = and i32 %51, 16, !mcsema_real_eip !78
  %53 = icmp ne i32 %52, 0, !mcsema_real_eip !78
  store i1 %53, i1* %AF, !mcsema_real_eip !78
  %54 = trunc i32 %49 to i8, !mcsema_real_eip !78
  %55 = call i8 @llvm.ctpop.i8(i8 %54), !mcsema_real_eip !78
  %56 = trunc i8 %55 to i1, !mcsema_real_eip !78
  %57 = xor i1 %56, true, !mcsema_real_eip !78
  store i1 %57, i1* %PF, !mcsema_real_eip !78
  %58 = icmp eq i32 %49, 0, !mcsema_real_eip !78
  store i1 %58, i1* %ZF, !mcsema_real_eip !78
  %59 = lshr i32 %49, 31, !mcsema_real_eip !78
  %60 = trunc i32 %59 to i1, !mcsema_real_eip !78
  store i1 %60, i1* %SF, !mcsema_real_eip !78
  %61 = icmp ult i32 %EAX_val.113, %48, !mcsema_real_eip !78
  store i1 %61, i1* %CF, !mcsema_real_eip !78
  %62 = xor i32 %EAX_val.113, %48, !mcsema_real_eip !78
  %63 = and i32 %62, %50, !mcsema_real_eip !78
  %64 = lshr i32 %63, 31, !mcsema_real_eip !78
  %65 = trunc i32 %64 to i1, !mcsema_real_eip !78
  store i1 %65, i1* %OF, !mcsema_real_eip !78
  %66 = icmp eq i1 %60, %65, !mcsema_real_eip !79
  br i1 %66, label %block_0x75, label %block_0x33, !mcsema_real_eip !79

block_0x33:                                       ; preds = %block_0x27
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -8
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %67 = load i64, i64* %_allin_new_bt_39, !mcsema_real_eip !80
  store i64 %67, i64* %XAX, !mcsema_real_eip !80
  %68 = load i32, i32* %43, !mcsema_real_eip !81
  %69 = sext i32 %68 to i64, !mcsema_real_eip !81
  store i64 %69, i64* %XCX, !mcsema_real_eip !81
  %70 = mul i64 %69, 8, !mcsema_real_eip !82
  %71 = add i64 %67, %70, !mcsema_real_eip !82
  %72 = inttoptr i64 %71 to i64*, !mcsema_real_eip !82
  %73 = load i64, i64* %72, !mcsema_real_eip !82
  store i64 %73, i64* %XAX, !mcsema_real_eip !82
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -32
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  store i64 %73, i64* %_allin_new_bt_45, !mcsema_real_eip !83
  %_load_rbp_ptr_46 = load i8*, i8** %_RBP_ptr_
  %_new_gep_47 = getelementptr i8, i8* %_load_rbp_ptr_46, i64 -32
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  %74 = load i64, i64* %_allin_new_bt_48, !mcsema_real_eip !84
  store i64 %74, i64* %XDI, !mcsema_real_eip !84
  %_load_rsp_ptr_49 = load i8*, i8** %_RSP_ptr_
  %RSP_val.121 = load i64, i64* %XSP, !mcsema_real_eip !85
  %_new_gep_50 = getelementptr i8, i8* %_load_rsp_ptr_49, i64 -8
  %75 = sub i64 %RSP_val.121, 8, !mcsema_real_eip !85
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_51, !mcsema_real_eip !85
  store volatile i8* %_new_gep_50, i8** %_RSP_ptr_
  store i64 %75, i64* %XSP, !mcsema_real_eip !85
  %_load_rbp_ptr_92 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_90.1(%RegState* %0, i8* %_new_gep_50, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_92)
  %_rsp_fix_94 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_95 = getelementptr i8, i8* %_rsp_fix_94, i64 8
  store i8* %_gep_fix_95, i8** %_RSP_ptr_
  %EAX_val.123 = load i32, i32* %EAX.112, !mcsema_real_eip !86
  store i1 false, i1* %AF, !mcsema_real_eip !86
  %76 = trunc i32 %EAX_val.123 to i8, !mcsema_real_eip !86
  %77 = call i8 @llvm.ctpop.i8(i8 %76), !mcsema_real_eip !86
  %78 = trunc i8 %77 to i1, !mcsema_real_eip !86
  %79 = xor i1 %78, true, !mcsema_real_eip !86
  store i1 %79, i1* %PF, !mcsema_real_eip !86
  %80 = icmp eq i32 %EAX_val.123, 0, !mcsema_real_eip !86
  store i1 %80, i1* %ZF, !mcsema_real_eip !86
  %81 = lshr i32 %EAX_val.123, 31, !mcsema_real_eip !86
  %82 = trunc i32 %81 to i1, !mcsema_real_eip !86
  store i1 %82, i1* %SF, !mcsema_real_eip !86
  store i1 false, i1* %CF, !mcsema_real_eip !86
  store i1 false, i1* %OF, !mcsema_real_eip !86
  %83 = icmp eq i1 %80, false, !mcsema_real_eip !87
  br i1 %83, label %block_0x62, label %block_0x55, !mcsema_real_eip !87

block_0x55:                                       ; preds = %block_0x33
  %_load_rbp_ptr_52 = load i8*, i8** %_RBP_ptr_
  %_new_gep_53 = getelementptr i8, i8* %_load_rbp_ptr_52, i64 -32
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  %84 = load i64, i64* %_allin_new_bt_54, !mcsema_real_eip !88
  store i64 %84, i64* %XDI, !mcsema_real_eip !88
  %85 = load i64, i64* %_allin_new_bt_54, !mcsema_real_eip !89
  store i64 %85, i64* %XSI, !mcsema_real_eip !89
  %RSP_val.126 = load i64, i64* %XSP, !mcsema_real_eip !90
  %_new_gep_59 = getelementptr i8, i8* %_gep_fix_95, i64 -8
  %86 = sub i64 %RSP_val.126, 8, !mcsema_real_eip !90
  %_allin_new_bt_60 = bitcast i8* %_new_gep_59 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_60, !mcsema_real_eip !90
  store volatile i8* %_new_gep_59, i8** %_RSP_ptr_
  store i64 %86, i64* %XSP, !mcsema_real_eip !90
  %_load_rbp_ptr_96 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_100.2(%RegState* %0, i8* %_new_gep_59, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_96)
  %_rsp_fix_98 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_99 = getelementptr i8, i8* %_rsp_fix_98, i64 8
  store i8* %_gep_fix_99, i8** %_RSP_ptr_
  br label %block_0x62, !mcsema_real_eip !91

block_0x62:                                       ; preds = %block_0x55, %block_0x33
  br label %block_0x67, !mcsema_real_eip !91

block_0x67:                                       ; preds = %block_0x62
  %_load_rbp_ptr_61 = load i8*, i8** %_RBP_ptr_
  %_new_gep_62 = getelementptr i8, i8* %_load_rbp_ptr_61, i64 -16
  %_allin_new_bt_63 = bitcast i8* %_new_gep_62 to i64*
  %87 = ptrtoint i64* %_allin_new_bt_63 to i64, !mcsema_real_eip !92
  %88 = inttoptr i64 %87 to i32*, !mcsema_real_eip !92
  %89 = load i32, i32* %88, !mcsema_real_eip !92
  %90 = zext i32 %89 to i64, !mcsema_real_eip !92
  store i64 %90, i64* %XAX, !mcsema_real_eip !92
  %EAX_val.129 = load i32, i32* %EAX.112, !mcsema_real_eip !93
  %91 = add i32 1, %EAX_val.129, !mcsema_real_eip !93
  %92 = xor i32 %91, %EAX_val.129, !mcsema_real_eip !93
  %93 = xor i32 %92, 1, !mcsema_real_eip !93
  %94 = and i32 %93, 16, !mcsema_real_eip !93
  %95 = icmp ne i32 %94, 0, !mcsema_real_eip !93
  store i1 %95, i1* %AF, !mcsema_real_eip !93
  %96 = lshr i32 %91, 31, !mcsema_real_eip !93
  %97 = trunc i32 %96 to i1, !mcsema_real_eip !93
  store i1 %97, i1* %SF, !mcsema_real_eip !93
  %98 = icmp eq i32 %91, 0, !mcsema_real_eip !93
  store i1 %98, i1* %ZF, !mcsema_real_eip !93
  %99 = xor i32 %EAX_val.129, 1, !mcsema_real_eip !93
  %100 = xor i32 %99, -1, !mcsema_real_eip !93
  %101 = and i32 %100, %92, !mcsema_real_eip !93
  %102 = lshr i32 %101, 31, !mcsema_real_eip !93
  %103 = and i32 %102, 1, !mcsema_real_eip !93
  %104 = trunc i32 %103 to i1, !mcsema_real_eip !93
  store i1 %104, i1* %OF, !mcsema_real_eip !93
  %105 = trunc i32 %91 to i8, !mcsema_real_eip !93
  %106 = call i8 @llvm.ctpop.i8(i8 %105), !mcsema_real_eip !93
  %107 = trunc i8 %106 to i1, !mcsema_real_eip !93
  %108 = xor i1 %107, true, !mcsema_real_eip !93
  store i1 %108, i1* %PF, !mcsema_real_eip !93
  %109 = icmp ult i32 %91, %EAX_val.129, !mcsema_real_eip !93
  store i1 %109, i1* %CF, !mcsema_real_eip !93
  %110 = zext i32 %91 to i64, !mcsema_real_eip !93
  store i64 %110, i64* %XAX, !mcsema_real_eip !93
  %EAX_val.132 = load i32, i32* %EAX.112, !mcsema_real_eip !94
  store i32 %EAX_val.132, i32* %88, !mcsema_real_eip !94
  br label %block_0x27, !mcsema_real_eip !95

block_0x75:                                       ; preds = %block_0x27
  %_new_gep_68 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -24
  %_allin_new_bt_69 = bitcast i8* %_new_gep_68 to i64*
  %111 = load i64, i64* %_allin_new_bt_69, !mcsema_real_eip !96
  store i64 %111, i64* %XAX, !mcsema_real_eip !96
  %112 = add i64 %111, 1, !mcsema_real_eip !97
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !97
  %114 = inttoptr i64 %112 to i8*, !mcsema_real_eip !97
  store i8 2, i8* %114, !mcsema_real_eip !97
  %_load_rsp_ptr_70 = load i8*, i8** %_RSP_ptr_
  %RSP_val.135 = load i64, i64* %XSP, !mcsema_real_eip !98
  %_new_gep_71 = getelementptr i8, i8* %_load_rsp_ptr_70, i64 32
  %115 = add i64 32, %RSP_val.135, !mcsema_real_eip !98
  %_trans_p2i_72 = ptrtoint i8* %_new_gep_71 to i64
  %_trans_p2i_73 = ptrtoint i8* %_load_rsp_ptr_70 to i64
  %_trans_xor_74 = xor i64 %_trans_p2i_72, %_trans_p2i_73
  %116 = xor i64 %_trans_xor_74, 32, !mcsema_real_eip !98
  %117 = and i64 %116, 16, !mcsema_real_eip !98
  %118 = icmp ne i64 %117, 0, !mcsema_real_eip !98
  store i1 %118, i1* %AF, !mcsema_real_eip !98
  %119 = lshr i64 %115, 63, !mcsema_real_eip !98
  %120 = trunc i64 %119 to i1, !mcsema_real_eip !98
  store i1 %120, i1* %SF, !mcsema_real_eip !98
  %_trans_icmp_eq_76 = icmp eq i64 %_trans_p2i_72, 0
  store i1 %_trans_icmp_eq_76, i1* %ZF, !mcsema_real_eip !98
  %_trans_xor_78 = xor i64 %_trans_p2i_73, 32
  %121 = xor i64 %_trans_xor_78, -1, !mcsema_real_eip !98
  %122 = and i64 %121, %_trans_xor_74, !mcsema_real_eip !98
  %123 = lshr i64 %122, 63, !mcsema_real_eip !98
  %124 = and i64 %123, 1, !mcsema_real_eip !98
  %125 = trunc i64 %124 to i1, !mcsema_real_eip !98
  store i1 %125, i1* %OF, !mcsema_real_eip !98
  %_trans_trunc_83 = trunc i64 %_trans_p2i_72 to i8
  %126 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_83), !mcsema_real_eip !98
  %127 = trunc i8 %126 to i1, !mcsema_real_eip !98
  %128 = xor i1 %127, true, !mcsema_real_eip !98
  store i1 %128, i1* %PF, !mcsema_real_eip !98
  %_trans_icmp_ne_85 = icmp ne i64 %_trans_p2i_72, %RSP_val.135
  store i1 %_trans_icmp_ne_85, i1* %CF, !mcsema_real_eip !98
  store volatile i8* %_new_gep_71, i8** %_RSP_ptr_
  store i64 %115, i64* %XSP, !mcsema_real_eip !98
  %_allin_new_bt_87 = bitcast i8* %_new_gep_71 to i64*
  %129 = load i64, i64* %_allin_new_bt_87, !mcsema_real_eip !99
  %_new_int2ptr_ = inttoptr i64 %129 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %129, i64* %XBP, !mcsema_real_eip !99
  %_new_gep_88 = getelementptr i8, i8* %_new_gep_71, i64 8
  %130 = add i64 %115, 8, !mcsema_real_eip !99
  store volatile i8* %_new_gep_88, i8** %_RSP_ptr_
  store i64 %130, i64* %XSP, !mcsema_real_eip !99
  %_new_gep_90 = getelementptr i8, i8* %_new_gep_88, i64 8
  %131 = add i64 %130, 8, !mcsema_real_eip !100
  %_allin_new_bt_91 = bitcast i8* %_new_gep_88 to i64*
  %132 = load i64, i64* %_allin_new_bt_91, !mcsema_real_eip !100
  store i64 %132, i64* %XIP, !mcsema_real_eip !100
  store volatile i8* %_new_gep_90, i8** %_RSP_ptr_
  store i64 %131, i64* %XSP, !mcsema_real_eip !100
  ret void, !mcsema_real_eip !100
}

declare x86_64_sysvcc i64 @malloc(i64 inreg)

declare x86_64_sysvcc i64 @strlen(i64 inreg)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_strlen(i64) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_malloc(i64) #2

; Function Attrs: naked noinline
declare void @doWork() #2

; Function Attrs: noinline
define internal x86_64_sysvcc void @sub_90.1(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 48
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 48
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !2
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !2
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !2
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !2
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !2
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !2
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !2
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !2
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !2
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !2
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !2
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !2
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !2
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !2
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !2
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !2
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !2
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !2
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !2
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !2
  br label %block_0x90, !mcsema_real_eip !2

block_0x90:                                       ; preds = %entry
  %RSP_val.1 = load i64, i64* %XSP, !mcsema_real_eip !2
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %1 = sub i64 %RSP_val.1, 8, !mcsema_real_eip !2
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %1, i64* %XSP, !mcsema_real_eip !2
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %1, i64* %XBP, !mcsema_real_eip !3
  %_load_rsp_ptr_2 = load i8*, i8** %_RSP_ptr_
  %RSP_val.3 = load i64, i64* %XSP, !mcsema_real_eip !4
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -32
  %2 = sub i64 %RSP_val.3, 32, !mcsema_real_eip !4
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 32, !mcsema_real_eip !4
  %4 = and i64 %3, 16, !mcsema_real_eip !4
  %5 = icmp ne i64 %4, 0, !mcsema_real_eip !4
  store i1 %5, i1* %AF, !mcsema_real_eip !4
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %6 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !4
  %7 = trunc i8 %6 to i1, !mcsema_real_eip !4
  %8 = xor i1 %7, true, !mcsema_real_eip !4
  store i1 %8, i1* %PF, !mcsema_real_eip !4
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_, 0
  store i1 %_trans_icmp_eq_, i1* %ZF, !mcsema_real_eip !4
  %9 = lshr i64 %2, 63, !mcsema_real_eip !4
  %10 = trunc i64 %9 to i1, !mcsema_real_eip !4
  store i1 %10, i1* %SF, !mcsema_real_eip !4
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 32
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !4
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 32
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !4
  %12 = lshr i64 %11, 63, !mcsema_real_eip !4
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !4
  store i1 %13, i1* %OF, !mcsema_real_eip !4
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !4
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -8
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %RDI_val.5 = load i64, i64* %XDI, !mcsema_real_eip !5
  store i64 %RDI_val.5, i64* %_allin_new_bt_15, !mcsema_real_eip !5
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -12
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %14 = ptrtoint i64* %_allin_new_bt_18 to i64, !mcsema_real_eip !6
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !6
  store i32 1, i32* %15, !mcsema_real_eip !6
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -8
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %_ptr_to_int_ = ptrtoint i64* %_allin_new_bt_21 to i64
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_new_gep_20, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_new_gep_20, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_new_gep_20, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %16, label %17

; <label>:16:                                     ; preds = %block_0x90
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  br label %17

; <label>:17:                                     ; preds = %block_0x90, %16
  %18 = phi i64* [ %_allin_new_bt_21, %block_0x90 ], [ %_address_in_parent_stack_bt_, %16 ]
  %_new_load_ = load i64, i64* %18
  store i64 %_new_load_, i64* %XDI, !mcsema_real_eip !7
  %_load_rsp_ptr_22 = load i8*, i8** %_RSP_ptr_
  %RSP_val.9 = load i64, i64* %XSP, !mcsema_real_eip !8
  %_new_gep_23 = getelementptr i8, i8* %_load_rsp_ptr_22, i64 -8
  %19 = sub i64 %RSP_val.9, 8, !mcsema_real_eip !8
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_24, !mcsema_real_eip !8
  store volatile i8* %_new_gep_23, i8** %_RSP_ptr_
  store i64 %19, i64* %XSP, !mcsema_real_eip !8
  %20 = call x86_64_sysvcc i64 @_strlen(i64 %_new_load_)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %20, i64* %XAX, !mcsema_real_eip !8
  %EAX.10 = bitcast i64* %XAX to i32*, !mcsema_real_eip !9
  %EAX_val.11 = load i32, i32* %EAX.10, !mcsema_real_eip !9
  %21 = zext i32 %EAX_val.11 to i64, !mcsema_real_eip !9
  store i64 %21, i64* %XCX, !mcsema_real_eip !9
  %_load_rbp_ptr_25 = load i8*, i8** %_RBP_ptr_
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -16
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %ECX.13 = bitcast i64* %XCX to i32*, !mcsema_real_eip !10
  %ECX_val.14 = load i32, i32* %ECX.13, !mcsema_real_eip !10
  %22 = ptrtoint i64* %_allin_new_bt_27 to i64, !mcsema_real_eip !10
  %23 = inttoptr i64 %22 to i32*, !mcsema_real_eip !10
  store i32 %ECX_val.14, i32* %23, !mcsema_real_eip !10
  %_load_rbp_ptr_28 = load i8*, i8** %_RBP_ptr_
  %_new_gep_29 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -16
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %24 = ptrtoint i64* %_allin_new_bt_30 to i64, !mcsema_real_eip !11
  %25 = inttoptr i64 %24 to i32*, !mcsema_real_eip !11
  %_ptr_bt_82 = bitcast i32* %25 to i8*
  %_offset_above_rbp_83 = sub i64 %24, %_local_end_to_int_
  %_pot_address_in_parent_stack_84 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_83
  %_cond1_85 = icmp ugt i8* %_ptr_bt_82, %_local_stack_end_ptr_
  %_cond2_1_86 = icmp ugt i8* %_ptr_bt_82, %_parent_stack_end_ptr_
  %_cond2_2_87 = icmp ult i8* %_ptr_bt_82, %_parent_stack_start_ptr_
  %_cond2_88 = or i1 %_cond2_1_86, %_cond2_2_87
  %_cond4_89 = icmp ule i8* %_pot_address_in_parent_stack_84, %_parent_stack_end_ptr_
  %_cond1_n_cond2_90 = and i1 %_cond1_85, %_cond2_88
  %_cond1_n_cond2_cond3_91 = and i1 %_cond1_n_cond2_90, %_cond4_89
  br i1 %_cond1_n_cond2_cond3_91, label %26, label %27

; <label>:26:                                     ; preds = %17
  %_address_in_parent_stack_bt_93 = bitcast i8* %_pot_address_in_parent_stack_84 to i32*
  br label %27

; <label>:27:                                     ; preds = %17, %26
  %28 = phi i32* [ %25, %17 ], [ %_address_in_parent_stack_bt_93, %26 ]
  %_new_load_94 = load i32, i32* %28
  %29 = sub i32 %_new_load_94, 1, !mcsema_real_eip !11
  %30 = xor i32 %29, %_new_load_94, !mcsema_real_eip !11
  %31 = xor i32 %30, 1, !mcsema_real_eip !11
  %32 = and i32 %31, 16, !mcsema_real_eip !11
  %33 = icmp ne i32 %32, 0, !mcsema_real_eip !11
  store i1 %33, i1* %AF, !mcsema_real_eip !11
  %34 = trunc i32 %29 to i8, !mcsema_real_eip !11
  %35 = call i8 @llvm.ctpop.i8(i8 %34), !mcsema_real_eip !11
  %36 = trunc i8 %35 to i1, !mcsema_real_eip !11
  %37 = xor i1 %36, true, !mcsema_real_eip !11
  store i1 %37, i1* %PF, !mcsema_real_eip !11
  %38 = icmp eq i32 %29, 0, !mcsema_real_eip !11
  store i1 %38, i1* %ZF, !mcsema_real_eip !11
  %39 = lshr i32 %29, 31, !mcsema_real_eip !11
  %40 = trunc i32 %39 to i1, !mcsema_real_eip !11
  store i1 %40, i1* %SF, !mcsema_real_eip !11
  %41 = icmp ult i32 %_new_load_94, 1, !mcsema_real_eip !11
  store i1 %41, i1* %CF, !mcsema_real_eip !11
  %42 = xor i32 %_new_load_94, 1, !mcsema_real_eip !11
  %43 = and i32 %42, %30, !mcsema_real_eip !11
  %44 = lshr i32 %43, 31, !mcsema_real_eip !11
  %45 = trunc i32 %44 to i1, !mcsema_real_eip !11
  store i1 %45, i1* %OF, !mcsema_real_eip !11
  %46 = icmp eq i1 %40, %45, !mcsema_real_eip !12
  %47 = icmp eq i1 %46, false, !mcsema_real_eip !12
  %48 = or i1 %38, %47, !mcsema_real_eip !12
  br i1 %48, label %block_0xf3, label %block_0xbb, !mcsema_real_eip !12

block_0xbb:                                       ; preds = %27
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -8
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  %_ptr_to_int_95 = ptrtoint i64* %_allin_new_bt_33 to i64
  %_offset_above_rbp_98 = sub i64 %_ptr_to_int_95, %_local_end_to_int_
  %_pot_address_in_parent_stack_99 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_98
  %_cond1_100 = icmp ugt i8* %_new_gep_32, %_local_stack_end_ptr_
  %_cond2_1_101 = icmp ugt i8* %_new_gep_32, %_parent_stack_end_ptr_
  %_cond2_2_102 = icmp ult i8* %_new_gep_32, %_parent_stack_start_ptr_
  %_cond2_103 = or i1 %_cond2_1_101, %_cond2_2_102
  %_cond4_104 = icmp ule i8* %_pot_address_in_parent_stack_99, %_parent_stack_end_ptr_
  %_cond1_n_cond2_105 = and i1 %_cond1_100, %_cond2_103
  %_cond1_n_cond2_cond3_106 = and i1 %_cond1_n_cond2_105, %_cond4_104
  br i1 %_cond1_n_cond2_cond3_106, label %49, label %50

; <label>:49:                                     ; preds = %block_0xbb
  %_address_in_parent_stack_bt_108 = bitcast i8* %_pot_address_in_parent_stack_99 to i64*
  br label %50

; <label>:50:                                     ; preds = %block_0xbb, %49
  %51 = phi i64* [ %_allin_new_bt_33, %block_0xbb ], [ %_address_in_parent_stack_bt_108, %49 ]
  %_new_load_109 = load i64, i64* %51
  store i64 %_new_load_109, i64* %XAX, !mcsema_real_eip !13
  %52 = inttoptr i64 %_new_load_109 to i64*, !mcsema_real_eip !14
  %53 = inttoptr i64 %_new_load_109 to i8*, !mcsema_real_eip !14
  %_offset_above_rbp_112 = sub i64 %_new_load_109, %_local_end_to_int_
  %_pot_address_in_parent_stack_113 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_112
  %_cond1_114 = icmp ugt i8* %53, %_local_stack_end_ptr_
  %_cond2_1_115 = icmp ugt i8* %53, %_parent_stack_end_ptr_
  %_cond2_2_116 = icmp ult i8* %53, %_parent_stack_start_ptr_
  %_cond2_117 = or i1 %_cond2_1_115, %_cond2_2_116
  %_cond4_118 = icmp ule i8* %_pot_address_in_parent_stack_113, %_parent_stack_end_ptr_
  %_cond1_n_cond2_119 = and i1 %_cond1_114, %_cond2_117
  %_cond1_n_cond2_cond3_120 = and i1 %_cond1_n_cond2_119, %_cond4_118
  br i1 %_cond1_n_cond2_cond3_120, label %54, label %55

; <label>:54:                                     ; preds = %50
  br label %55

; <label>:55:                                     ; preds = %50, %54
  %56 = phi i8* [ %53, %50 ], [ %_pot_address_in_parent_stack_113, %54 ]
  %_new_load_122 = load i8, i8* %56
  %CL.18 = bitcast i64* %XCX to i8*, !mcsema_real_eip !14
  store i8 %_new_load_122, i8* %CL.18, !mcsema_real_eip !14
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -17
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %57 = ptrtoint i64* %_allin_new_bt_36 to i64, !mcsema_real_eip !15
  %58 = inttoptr i64 %57 to i8*, !mcsema_real_eip !15
  store i8 %_new_load_122, i8* %58, !mcsema_real_eip !15
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -8
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %_ptr_to_int_123 = ptrtoint i64* %_allin_new_bt_39 to i64
  %_offset_above_rbp_126 = sub i64 %_ptr_to_int_123, %_local_end_to_int_
  %_pot_address_in_parent_stack_127 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_126
  %_cond1_128 = icmp ugt i8* %_new_gep_38, %_local_stack_end_ptr_
  %_cond2_1_129 = icmp ugt i8* %_new_gep_38, %_parent_stack_end_ptr_
  %_cond2_2_130 = icmp ult i8* %_new_gep_38, %_parent_stack_start_ptr_
  %_cond2_131 = or i1 %_cond2_1_129, %_cond2_2_130
  %_cond4_132 = icmp ule i8* %_pot_address_in_parent_stack_127, %_parent_stack_end_ptr_
  %_cond1_n_cond2_133 = and i1 %_cond1_128, %_cond2_131
  %_cond1_n_cond2_cond3_134 = and i1 %_cond1_n_cond2_133, %_cond4_132
  br i1 %_cond1_n_cond2_cond3_134, label %59, label %60

; <label>:59:                                     ; preds = %55
  %_address_in_parent_stack_bt_136 = bitcast i8* %_pot_address_in_parent_stack_127 to i64*
  br label %60

; <label>:60:                                     ; preds = %55, %59
  %61 = phi i64* [ %_allin_new_bt_39, %55 ], [ %_address_in_parent_stack_bt_136, %59 ]
  %_new_load_137 = load i64, i64* %61
  store i64 %_new_load_137, i64* %XAX, !mcsema_real_eip !16
  %_new_gep_41 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -16
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %62 = ptrtoint i64* %_allin_new_bt_42 to i64, !mcsema_real_eip !17
  %63 = inttoptr i64 %62 to i32*, !mcsema_real_eip !17
  %_ptr_bt_140 = bitcast i32* %63 to i8*
  %_offset_above_rbp_141 = sub i64 %62, %_local_end_to_int_
  %_pot_address_in_parent_stack_142 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_141
  %_cond1_143 = icmp ugt i8* %_ptr_bt_140, %_local_stack_end_ptr_
  %_cond2_1_144 = icmp ugt i8* %_ptr_bt_140, %_parent_stack_end_ptr_
  %_cond2_2_145 = icmp ult i8* %_ptr_bt_140, %_parent_stack_start_ptr_
  %_cond2_146 = or i1 %_cond2_1_144, %_cond2_2_145
  %_cond4_147 = icmp ule i8* %_pot_address_in_parent_stack_142, %_parent_stack_end_ptr_
  %_cond1_n_cond2_148 = and i1 %_cond1_143, %_cond2_146
  %_cond1_n_cond2_cond3_149 = and i1 %_cond1_n_cond2_148, %_cond4_147
  br i1 %_cond1_n_cond2_cond3_149, label %64, label %65

; <label>:64:                                     ; preds = %60
  %_address_in_parent_stack_bt_151 = bitcast i8* %_pot_address_in_parent_stack_142 to i32*
  br label %65

; <label>:65:                                     ; preds = %60, %64
  %66 = phi i32* [ %63, %60 ], [ %_address_in_parent_stack_bt_151, %64 ]
  %_new_load_152 = load i32, i32* %66
  %67 = zext i32 %_new_load_152 to i64, !mcsema_real_eip !17
  store i64 %67, i64* %XDX, !mcsema_real_eip !17
  %EDX.24 = bitcast i64* %XDX to i32*, !mcsema_real_eip !18
  %EDX_val.25 = load i32, i32* %EDX.24, !mcsema_real_eip !18
  %68 = sub i32 %EDX_val.25, 1, !mcsema_real_eip !18
  %69 = xor i32 %68, %EDX_val.25, !mcsema_real_eip !18
  %70 = xor i32 %69, 1, !mcsema_real_eip !18
  %71 = and i32 %70, 16, !mcsema_real_eip !18
  %72 = icmp ne i32 %71, 0, !mcsema_real_eip !18
  store i1 %72, i1* %AF, !mcsema_real_eip !18
  %73 = trunc i32 %68 to i8, !mcsema_real_eip !18
  %74 = call i8 @llvm.ctpop.i8(i8 %73), !mcsema_real_eip !18
  %75 = trunc i8 %74 to i1, !mcsema_real_eip !18
  %76 = xor i1 %75, true, !mcsema_real_eip !18
  store i1 %76, i1* %PF, !mcsema_real_eip !18
  %77 = icmp eq i32 %68, 0, !mcsema_real_eip !18
  store i1 %77, i1* %ZF, !mcsema_real_eip !18
  %78 = lshr i32 %68, 31, !mcsema_real_eip !18
  %79 = trunc i32 %78 to i1, !mcsema_real_eip !18
  store i1 %79, i1* %SF, !mcsema_real_eip !18
  %80 = icmp ult i32 %EDX_val.25, 1, !mcsema_real_eip !18
  store i1 %80, i1* %CF, !mcsema_real_eip !18
  %81 = xor i32 %EDX_val.25, 1, !mcsema_real_eip !18
  %82 = and i32 %81, %69, !mcsema_real_eip !18
  %83 = lshr i32 %82, 31, !mcsema_real_eip !18
  %84 = trunc i32 %83 to i1, !mcsema_real_eip !18
  store i1 %84, i1* %OF, !mcsema_real_eip !18
  %85 = zext i32 %68 to i64, !mcsema_real_eip !18
  store i64 %85, i64* %XDX, !mcsema_real_eip !18
  %EDX_val.27 = load i32, i32* %EDX.24, !mcsema_real_eip !19
  %86 = sext i32 %EDX_val.27 to i64, !mcsema_real_eip !19
  store i64 %86, i64* %XSI, !mcsema_real_eip !19
  %87 = add i64 %_new_load_137, %86, !mcsema_real_eip !20
  %88 = inttoptr i64 %87 to i64*, !mcsema_real_eip !20
  %89 = inttoptr i64 %87 to i8*, !mcsema_real_eip !20
  %_offset_above_rbp_155 = sub i64 %87, %_local_end_to_int_
  %_pot_address_in_parent_stack_156 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_155
  %_cond1_157 = icmp ugt i8* %89, %_local_stack_end_ptr_
  %_cond2_1_158 = icmp ugt i8* %89, %_parent_stack_end_ptr_
  %_cond2_2_159 = icmp ult i8* %89, %_parent_stack_start_ptr_
  %_cond2_160 = or i1 %_cond2_1_158, %_cond2_2_159
  %_cond4_161 = icmp ule i8* %_pot_address_in_parent_stack_156, %_parent_stack_end_ptr_
  %_cond1_n_cond2_162 = and i1 %_cond1_157, %_cond2_160
  %_cond1_n_cond2_cond3_163 = and i1 %_cond1_n_cond2_162, %_cond4_161
  br i1 %_cond1_n_cond2_cond3_163, label %90, label %91

; <label>:90:                                     ; preds = %65
  br label %91

; <label>:91:                                     ; preds = %65, %90
  %92 = phi i8* [ %89, %65 ], [ %_pot_address_in_parent_stack_156, %90 ]
  %_new_load_165 = load i8, i8* %92
  store i8 %_new_load_165, i8* %CL.18, !mcsema_real_eip !20
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -18
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %93 = ptrtoint i64* %_allin_new_bt_45 to i64, !mcsema_real_eip !21
  %94 = inttoptr i64 %93 to i8*, !mcsema_real_eip !21
  store i8 %_new_load_165, i8* %94, !mcsema_real_eip !21
  %_load_rbp_ptr_46 = load i8*, i8** %_RBP_ptr_
  %_new_gep_47 = getelementptr i8, i8* %_load_rbp_ptr_46, i64 -17
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  %95 = ptrtoint i64* %_allin_new_bt_48 to i64, !mcsema_real_eip !22
  %96 = inttoptr i64 %95 to i8*, !mcsema_real_eip !22
  %_offset_above_rbp_168 = sub i64 %95, %_local_end_to_int_
  %_pot_address_in_parent_stack_169 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_168
  %_cond1_170 = icmp ugt i8* %96, %_local_stack_end_ptr_
  %_cond2_1_171 = icmp ugt i8* %96, %_parent_stack_end_ptr_
  %_cond2_2_172 = icmp ult i8* %96, %_parent_stack_start_ptr_
  %_cond2_173 = or i1 %_cond2_1_171, %_cond2_2_172
  %_cond4_174 = icmp ule i8* %_pot_address_in_parent_stack_169, %_parent_stack_end_ptr_
  %_cond1_n_cond2_175 = and i1 %_cond1_170, %_cond2_173
  %_cond1_n_cond2_cond3_176 = and i1 %_cond1_n_cond2_175, %_cond4_174
  br i1 %_cond1_n_cond2_cond3_176, label %97, label %98

; <label>:97:                                     ; preds = %91
  br label %98

; <label>:98:                                     ; preds = %91, %97
  %99 = phi i8* [ %96, %91 ], [ %_pot_address_in_parent_stack_169, %97 ]
  %_new_load_178 = load i8, i8* %99
  %100 = sext i8 %_new_load_178 to i32, !mcsema_real_eip !22
  %101 = zext i32 %100 to i64, !mcsema_real_eip !22
  store i64 %101, i64* %XDX, !mcsema_real_eip !22
  %_new_gep_50 = getelementptr i8, i8* %_load_rbp_ptr_46, i64 -18
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  %102 = ptrtoint i64* %_allin_new_bt_51 to i64, !mcsema_real_eip !23
  %103 = inttoptr i64 %102 to i8*, !mcsema_real_eip !23
  %_offset_above_rbp_181 = sub i64 %102, %_local_end_to_int_
  %_pot_address_in_parent_stack_182 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_181
  %_cond1_183 = icmp ugt i8* %103, %_local_stack_end_ptr_
  %_cond2_1_184 = icmp ugt i8* %103, %_parent_stack_end_ptr_
  %_cond2_2_185 = icmp ult i8* %103, %_parent_stack_start_ptr_
  %_cond2_186 = or i1 %_cond2_1_184, %_cond2_2_185
  %_cond4_187 = icmp ule i8* %_pot_address_in_parent_stack_182, %_parent_stack_end_ptr_
  %_cond1_n_cond2_188 = and i1 %_cond1_183, %_cond2_186
  %_cond1_n_cond2_cond3_189 = and i1 %_cond1_n_cond2_188, %_cond4_187
  br i1 %_cond1_n_cond2_cond3_189, label %104, label %105

; <label>:104:                                    ; preds = %98
  br label %105

; <label>:105:                                    ; preds = %98, %104
  %106 = phi i8* [ %103, %98 ], [ %_pot_address_in_parent_stack_182, %104 ]
  %_new_load_191 = load i8, i8* %106
  %107 = sext i8 %_new_load_191 to i32, !mcsema_real_eip !23
  %108 = zext i32 %107 to i64, !mcsema_real_eip !23
  store i64 %108, i64* %XDI, !mcsema_real_eip !23
  %EDX_val.37 = load i32, i32* %EDX.24, !mcsema_real_eip !24
  %EDI.38 = bitcast i64* %XDI to i32*, !mcsema_real_eip !24
  %EDI_val.39 = load i32, i32* %EDI.38, !mcsema_real_eip !24
  %109 = sub i32 %EDX_val.37, %EDI_val.39, !mcsema_real_eip !24
  %110 = xor i32 %109, %EDX_val.37, !mcsema_real_eip !24
  %111 = xor i32 %110, %EDI_val.39, !mcsema_real_eip !24
  %112 = and i32 %111, 16, !mcsema_real_eip !24
  %113 = icmp ne i32 %112, 0, !mcsema_real_eip !24
  store i1 %113, i1* %AF, !mcsema_real_eip !24
  %114 = trunc i32 %109 to i8, !mcsema_real_eip !24
  %115 = call i8 @llvm.ctpop.i8(i8 %114), !mcsema_real_eip !24
  %116 = trunc i8 %115 to i1, !mcsema_real_eip !24
  %117 = xor i1 %116, true, !mcsema_real_eip !24
  store i1 %117, i1* %PF, !mcsema_real_eip !24
  %118 = icmp eq i32 %109, 0, !mcsema_real_eip !24
  store i1 %118, i1* %ZF, !mcsema_real_eip !24
  %119 = lshr i32 %109, 31, !mcsema_real_eip !24
  %120 = trunc i32 %119 to i1, !mcsema_real_eip !24
  store i1 %120, i1* %SF, !mcsema_real_eip !24
  %121 = icmp ult i32 %EDX_val.37, %EDI_val.39, !mcsema_real_eip !24
  store i1 %121, i1* %CF, !mcsema_real_eip !24
  %122 = xor i32 %EDX_val.37, %EDI_val.39, !mcsema_real_eip !24
  %123 = and i32 %122, %110, !mcsema_real_eip !24
  %124 = lshr i32 %123, 31, !mcsema_real_eip !24
  %125 = trunc i32 %124 to i1, !mcsema_real_eip !24
  store i1 %125, i1* %OF, !mcsema_real_eip !24
  %126 = icmp eq i1 %118, false, !mcsema_real_eip !25
  br i1 %126, label %block_0xee, label %block_0xe7, !mcsema_real_eip !25

block_0xe7:                                       ; preds = %105
  %_new_gep_53 = getelementptr i8, i8* %_load_rbp_ptr_46, i64 -12
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  %127 = ptrtoint i64* %_allin_new_bt_54 to i64, !mcsema_real_eip !26
  %128 = inttoptr i64 %127 to i32*, !mcsema_real_eip !26
  store i32 0, i32* %128, !mcsema_real_eip !26
  br label %block_0xee, !mcsema_real_eip !27

block_0xee:                                       ; preds = %block_0xe7, %105
  br label %block_0xf3, !mcsema_real_eip !27

block_0xf3:                                       ; preds = %block_0xee, %27
  %_load_rbp_ptr_55 = load i8*, i8** %_RBP_ptr_
  %_new_gep_56 = getelementptr i8, i8* %_load_rbp_ptr_55, i64 -12
  %_allin_new_bt_57 = bitcast i8* %_new_gep_56 to i64*
  %129 = ptrtoint i64* %_allin_new_bt_57 to i64, !mcsema_real_eip !28
  %130 = inttoptr i64 %129 to i32*, !mcsema_real_eip !28
  %_ptr_bt_194 = bitcast i32* %130 to i8*
  %_offset_above_rbp_195 = sub i64 %129, %_local_end_to_int_
  %_pot_address_in_parent_stack_196 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_195
  %_cond1_197 = icmp ugt i8* %_ptr_bt_194, %_local_stack_end_ptr_
  %_cond2_1_198 = icmp ugt i8* %_ptr_bt_194, %_parent_stack_end_ptr_
  %_cond2_2_199 = icmp ult i8* %_ptr_bt_194, %_parent_stack_start_ptr_
  %_cond2_200 = or i1 %_cond2_1_198, %_cond2_2_199
  %_cond4_201 = icmp ule i8* %_pot_address_in_parent_stack_196, %_parent_stack_end_ptr_
  %_cond1_n_cond2_202 = and i1 %_cond1_197, %_cond2_200
  %_cond1_n_cond2_cond3_203 = and i1 %_cond1_n_cond2_202, %_cond4_201
  br i1 %_cond1_n_cond2_cond3_203, label %131, label %132

; <label>:131:                                    ; preds = %block_0xf3
  %_address_in_parent_stack_bt_205 = bitcast i8* %_pot_address_in_parent_stack_196 to i32*
  br label %132

; <label>:132:                                    ; preds = %block_0xf3, %131
  %133 = phi i32* [ %130, %block_0xf3 ], [ %_address_in_parent_stack_bt_205, %131 ]
  %_new_load_206 = load i32, i32* %133
  %134 = zext i32 %_new_load_206 to i64, !mcsema_real_eip !28
  store i64 %134, i64* %XAX, !mcsema_real_eip !28
  %_load_rsp_ptr_58 = load i8*, i8** %_RSP_ptr_
  %RSP_val.42 = load i64, i64* %XSP, !mcsema_real_eip !29
  %_new_gep_59 = getelementptr i8, i8* %_load_rsp_ptr_58, i64 32
  %135 = add i64 32, %RSP_val.42, !mcsema_real_eip !29
  %_trans_p2i_60 = ptrtoint i8* %_new_gep_59 to i64
  %_trans_p2i_61 = ptrtoint i8* %_load_rsp_ptr_58 to i64
  %_trans_xor_62 = xor i64 %_trans_p2i_60, %_trans_p2i_61
  %136 = xor i64 %_trans_xor_62, 32, !mcsema_real_eip !29
  %137 = and i64 %136, 16, !mcsema_real_eip !29
  %138 = icmp ne i64 %137, 0, !mcsema_real_eip !29
  store i1 %138, i1* %AF, !mcsema_real_eip !29
  %139 = lshr i64 %135, 63, !mcsema_real_eip !29
  %140 = trunc i64 %139 to i1, !mcsema_real_eip !29
  store i1 %140, i1* %SF, !mcsema_real_eip !29
  %_trans_icmp_eq_64 = icmp eq i64 %_trans_p2i_60, 0
  store i1 %_trans_icmp_eq_64, i1* %ZF, !mcsema_real_eip !29
  %_trans_xor_66 = xor i64 %_trans_p2i_61, 32
  %141 = xor i64 %_trans_xor_66, -1, !mcsema_real_eip !29
  %142 = and i64 %141, %_trans_xor_62, !mcsema_real_eip !29
  %143 = lshr i64 %142, 63, !mcsema_real_eip !29
  %144 = and i64 %143, 1, !mcsema_real_eip !29
  %145 = trunc i64 %144 to i1, !mcsema_real_eip !29
  store i1 %145, i1* %OF, !mcsema_real_eip !29
  %_trans_trunc_71 = trunc i64 %_trans_p2i_60 to i8
  %146 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_71), !mcsema_real_eip !29
  %147 = trunc i8 %146 to i1, !mcsema_real_eip !29
  %148 = xor i1 %147, true, !mcsema_real_eip !29
  store i1 %148, i1* %PF, !mcsema_real_eip !29
  %_trans_icmp_ne_73 = icmp ne i64 %_trans_p2i_60, %RSP_val.42
  store i1 %_trans_icmp_ne_73, i1* %CF, !mcsema_real_eip !29
  store volatile i8* %_new_gep_59, i8** %_RSP_ptr_
  store i64 %135, i64* %XSP, !mcsema_real_eip !29
  %_allin_new_bt_75 = bitcast i8* %_new_gep_59 to i64*
  %_ptr_to_int_207 = ptrtoint i64* %_allin_new_bt_75 to i64
  %_offset_above_rbp_210 = sub i64 %_ptr_to_int_207, %_local_end_to_int_
  %_pot_address_in_parent_stack_211 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_210
  %_cond1_212 = icmp ugt i8* %_new_gep_59, %_local_stack_end_ptr_
  %_cond2_1_213 = icmp ugt i8* %_new_gep_59, %_parent_stack_end_ptr_
  %_cond2_2_214 = icmp ult i8* %_new_gep_59, %_parent_stack_start_ptr_
  %_cond2_215 = or i1 %_cond2_1_213, %_cond2_2_214
  %_cond4_216 = icmp ule i8* %_pot_address_in_parent_stack_211, %_parent_stack_end_ptr_
  %_cond1_n_cond2_217 = and i1 %_cond1_212, %_cond2_215
  %_cond1_n_cond2_cond3_218 = and i1 %_cond1_n_cond2_217, %_cond4_216
  br i1 %_cond1_n_cond2_cond3_218, label %149, label %150

; <label>:149:                                    ; preds = %132
  %_address_in_parent_stack_bt_220 = bitcast i8* %_pot_address_in_parent_stack_211 to i64*
  br label %150

; <label>:150:                                    ; preds = %132, %149
  %151 = phi i64* [ %_allin_new_bt_75, %132 ], [ %_address_in_parent_stack_bt_220, %149 ]
  %_new_load_221 = load i64, i64* %151
  %_new_int2ptr_ = inttoptr i64 %_new_load_221 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_221, i64* %XBP, !mcsema_real_eip !30
  %_new_gep_76 = getelementptr i8, i8* %_new_gep_59, i64 8
  %152 = add i64 %135, 8, !mcsema_real_eip !30
  store volatile i8* %_new_gep_76, i8** %_RSP_ptr_
  store i64 %152, i64* %XSP, !mcsema_real_eip !30
  %_new_gep_78 = getelementptr i8, i8* %_new_gep_76, i64 8
  %153 = add i64 %152, 8, !mcsema_real_eip !31
  %_allin_new_bt_79 = bitcast i8* %_new_gep_76 to i64*
  %_ptr_to_int_222 = ptrtoint i64* %_allin_new_bt_79 to i64
  %_offset_above_rbp_225 = sub i64 %_ptr_to_int_222, %_local_end_to_int_
  %_pot_address_in_parent_stack_226 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_225
  %_cond1_227 = icmp ugt i8* %_new_gep_76, %_local_stack_end_ptr_
  %_cond2_1_228 = icmp ugt i8* %_new_gep_76, %_parent_stack_end_ptr_
  %_cond2_2_229 = icmp ult i8* %_new_gep_76, %_parent_stack_start_ptr_
  %_cond2_230 = or i1 %_cond2_1_228, %_cond2_2_229
  %_cond4_231 = icmp ule i8* %_pot_address_in_parent_stack_226, %_parent_stack_end_ptr_
  %_cond1_n_cond2_232 = and i1 %_cond1_227, %_cond2_230
  %_cond1_n_cond2_cond3_233 = and i1 %_cond1_n_cond2_232, %_cond4_231
  br i1 %_cond1_n_cond2_cond3_233, label %154, label %155

; <label>:154:                                    ; preds = %150
  %_address_in_parent_stack_bt_235 = bitcast i8* %_pot_address_in_parent_stack_226 to i64*
  br label %155

; <label>:155:                                    ; preds = %150, %154
  %156 = phi i64* [ %_allin_new_bt_79, %150 ], [ %_address_in_parent_stack_bt_235, %154 ]
  %_new_load_236 = load i64, i64* %156
  store i64 %_new_load_236, i64* %XIP, !mcsema_real_eip !31
  store volatile i8* %_new_gep_78, i8** %_RSP_ptr_
  store i64 %153, i64* %XSP, !mcsema_real_eip !31
  ret void, !mcsema_real_eip !31
}

; Function Attrs: noinline
define internal x86_64_sysvcc void @sub_100.2(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 41
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 41
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !32
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !32
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !32
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !32
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !32
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !32
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !32
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !32
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !32
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !32
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !32
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !32
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !32
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !32
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !32
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !32
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !32
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !32
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !32
  br label %block_0x100, !mcsema_real_eip !32

block_0x100:                                      ; preds = %entry
  %RSP_val.46 = load i64, i64* %XSP, !mcsema_real_eip !32
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %1 = sub i64 %RSP_val.46, 8, !mcsema_real_eip !32
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %1, i64* %XSP, !mcsema_real_eip !32
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %1, i64* %XBP, !mcsema_real_eip !33
  %_new_gep_3 = getelementptr i8, i8* %_new_gep_, i64 -8
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  %RDI_val.49 = load i64, i64* %XDI, !mcsema_real_eip !34
  store i64 %RDI_val.49, i64* %_allin_new_bt_4, !mcsema_real_eip !34
  %_load_rbp_ptr_5 = load i8*, i8** %_RBP_ptr_
  %_new_gep_6 = getelementptr i8, i8* %_load_rbp_ptr_5, i64 -16
  %_allin_new_bt_7 = bitcast i8* %_new_gep_6 to i64*
  %RSI_val.51 = load i64, i64* %XSI, !mcsema_real_eip !35
  store i64 %RSI_val.51, i64* %_allin_new_bt_7, !mcsema_real_eip !35
  %_load_rbp_ptr_8 = load i8*, i8** %_RBP_ptr_
  %_new_gep_9 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 -8
  %_allin_new_bt_10 = bitcast i8* %_new_gep_9 to i64*
  %_ptr_to_int_ = ptrtoint i64* %_allin_new_bt_10 to i64
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_new_gep_9, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_new_gep_9, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_new_gep_9, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %2, label %3

; <label>:2:                                      ; preds = %block_0x100
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  br label %3

; <label>:3:                                      ; preds = %block_0x100, %2
  %4 = phi i64* [ %_allin_new_bt_10, %block_0x100 ], [ %_address_in_parent_stack_bt_, %2 ]
  %_new_load_ = load i64, i64* %4
  store i64 %_new_load_, i64* %XSI, !mcsema_real_eip !36
  %_new_gep_12 = getelementptr i8, i8* %_load_rbp_ptr_8, i64 -24
  %_allin_new_bt_13 = bitcast i8* %_new_gep_12 to i64*
  store i64 %_new_load_, i64* %_allin_new_bt_13, !mcsema_real_eip !37
  %_load_rbp_ptr_14 = load i8*, i8** %_RBP_ptr_
  %_new_gep_15 = getelementptr i8, i8* %_load_rbp_ptr_14, i64 -16
  %_allin_new_bt_16 = bitcast i8* %_new_gep_15 to i64*
  %_ptr_to_int_65 = ptrtoint i64* %_allin_new_bt_16 to i64
  %_offset_above_rbp_68 = sub i64 %_ptr_to_int_65, %_local_end_to_int_
  %_pot_address_in_parent_stack_69 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_68
  %_cond1_70 = icmp ugt i8* %_new_gep_15, %_local_stack_end_ptr_
  %_cond2_1_71 = icmp ugt i8* %_new_gep_15, %_parent_stack_end_ptr_
  %_cond2_2_72 = icmp ult i8* %_new_gep_15, %_parent_stack_start_ptr_
  %_cond2_73 = or i1 %_cond2_1_71, %_cond2_2_72
  %_cond4_74 = icmp ule i8* %_pot_address_in_parent_stack_69, %_parent_stack_end_ptr_
  %_cond1_n_cond2_75 = and i1 %_cond1_70, %_cond2_73
  %_cond1_n_cond2_cond3_76 = and i1 %_cond1_n_cond2_75, %_cond4_74
  br i1 %_cond1_n_cond2_cond3_76, label %5, label %6

; <label>:5:                                      ; preds = %3
  %_address_in_parent_stack_bt_78 = bitcast i8* %_pot_address_in_parent_stack_69 to i64*
  br label %6

; <label>:6:                                      ; preds = %3, %5
  %7 = phi i64* [ %_allin_new_bt_16, %3 ], [ %_address_in_parent_stack_bt_78, %5 ]
  %_new_load_79 = load i64, i64* %7
  store i64 %_new_load_79, i64* %XSI, !mcsema_real_eip !38
  %_new_gep_18 = getelementptr i8, i8* %_load_rbp_ptr_14, i64 -32
  %_allin_new_bt_19 = bitcast i8* %_new_gep_18 to i64*
  store i64 %_new_load_79, i64* %_allin_new_bt_19, !mcsema_real_eip !39
  %_load_rbp_ptr_20 = load i8*, i8** %_RBP_ptr_
  %_new_gep_21 = getelementptr i8, i8* %_load_rbp_ptr_20, i64 -24
  %_allin_new_bt_22 = bitcast i8* %_new_gep_21 to i64*
  %_ptr_to_int_80 = ptrtoint i64* %_allin_new_bt_22 to i64
  %_offset_above_rbp_83 = sub i64 %_ptr_to_int_80, %_local_end_to_int_
  %_pot_address_in_parent_stack_84 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_83
  %_cond1_85 = icmp ugt i8* %_new_gep_21, %_local_stack_end_ptr_
  %_cond2_1_86 = icmp ugt i8* %_new_gep_21, %_parent_stack_end_ptr_
  %_cond2_2_87 = icmp ult i8* %_new_gep_21, %_parent_stack_start_ptr_
  %_cond2_88 = or i1 %_cond2_1_86, %_cond2_2_87
  %_cond4_89 = icmp ule i8* %_pot_address_in_parent_stack_84, %_parent_stack_end_ptr_
  %_cond1_n_cond2_90 = and i1 %_cond1_85, %_cond2_88
  %_cond1_n_cond2_cond3_91 = and i1 %_cond1_n_cond2_90, %_cond4_89
  br i1 %_cond1_n_cond2_cond3_91, label %8, label %9

; <label>:8:                                      ; preds = %6
  %_address_in_parent_stack_bt_93 = bitcast i8* %_pot_address_in_parent_stack_84 to i64*
  br label %9

; <label>:9:                                      ; preds = %6, %8
  %10 = phi i64* [ %_allin_new_bt_22, %6 ], [ %_address_in_parent_stack_bt_93, %8 ]
  %_new_load_94 = load i64, i64* %10
  store i64 %_new_load_94, i64* %XSI, !mcsema_real_eip !40
  %11 = inttoptr i64 %_new_load_94 to i64*, !mcsema_real_eip !41
  %12 = inttoptr i64 %_new_load_94 to i8*, !mcsema_real_eip !41
  %_offset_above_rbp_97 = sub i64 %_new_load_94, %_local_end_to_int_
  %_pot_address_in_parent_stack_98 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_97
  %_cond1_99 = icmp ugt i8* %12, %_local_stack_end_ptr_
  %_cond2_1_100 = icmp ugt i8* %12, %_parent_stack_end_ptr_
  %_cond2_2_101 = icmp ult i8* %12, %_parent_stack_start_ptr_
  %_cond2_102 = or i1 %_cond2_1_100, %_cond2_2_101
  %_cond4_103 = icmp ule i8* %_pot_address_in_parent_stack_98, %_parent_stack_end_ptr_
  %_cond1_n_cond2_104 = and i1 %_cond1_99, %_cond2_102
  %_cond1_n_cond2_cond3_105 = and i1 %_cond1_n_cond2_104, %_cond4_103
  br i1 %_cond1_n_cond2_cond3_105, label %13, label %14

; <label>:13:                                     ; preds = %9
  br label %14

; <label>:14:                                     ; preds = %9, %13
  %15 = phi i8* [ %12, %9 ], [ %_pot_address_in_parent_stack_98, %13 ]
  %_new_load_107 = load i8, i8* %15
  %AL.60 = bitcast i64* %XAX to i8*, !mcsema_real_eip !41
  store i8 %_new_load_107, i8* %AL.60, !mcsema_real_eip !41
  %_new_gep_24 = getelementptr i8, i8* %_load_rbp_ptr_20, i64 -33
  %_allin_new_bt_25 = bitcast i8* %_new_gep_24 to i64*
  %16 = ptrtoint i64* %_allin_new_bt_25 to i64, !mcsema_real_eip !42
  %17 = inttoptr i64 %16 to i8*, !mcsema_real_eip !42
  store i8 %_new_load_107, i8* %17, !mcsema_real_eip !42
  br label %block_0x125, !mcsema_real_eip !43

block_0x125:                                      ; preds = %118, %14
  %_load_rbp_ptr_26 = load i8*, i8** %_RBP_ptr_
  %_new_gep_27 = getelementptr i8, i8* %_load_rbp_ptr_26, i64 -33
  %_allin_new_bt_28 = bitcast i8* %_new_gep_27 to i64*
  %18 = ptrtoint i64* %_allin_new_bt_28 to i64, !mcsema_real_eip !43
  %19 = inttoptr i64 %18 to i8*, !mcsema_real_eip !43
  %_offset_above_rbp_110 = sub i64 %18, %_local_end_to_int_
  %_pot_address_in_parent_stack_111 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_110
  %_cond1_112 = icmp ugt i8* %19, %_local_stack_end_ptr_
  %_cond2_1_113 = icmp ugt i8* %19, %_parent_stack_end_ptr_
  %_cond2_2_114 = icmp ult i8* %19, %_parent_stack_start_ptr_
  %_cond2_115 = or i1 %_cond2_1_113, %_cond2_2_114
  %_cond4_116 = icmp ule i8* %_pot_address_in_parent_stack_111, %_parent_stack_end_ptr_
  %_cond1_n_cond2_117 = and i1 %_cond1_112, %_cond2_115
  %_cond1_n_cond2_cond3_118 = and i1 %_cond1_n_cond2_117, %_cond4_116
  br i1 %_cond1_n_cond2_cond3_118, label %20, label %21

; <label>:20:                                     ; preds = %block_0x125
  br label %21

; <label>:21:                                     ; preds = %block_0x125, %20
  %22 = phi i8* [ %19, %block_0x125 ], [ %_pot_address_in_parent_stack_111, %20 ]
  %_new_load_120 = load i8, i8* %22
  %23 = sext i8 %_new_load_120 to i32, !mcsema_real_eip !43
  %24 = zext i32 %23 to i64, !mcsema_real_eip !43
  store i64 %24, i64* %XAX, !mcsema_real_eip !43
  %EAX.65 = bitcast i64* %XAX to i32*, !mcsema_real_eip !44
  %EAX_val.66 = load i32, i32* %EAX.65, !mcsema_real_eip !44
  store i1 false, i1* %AF, !mcsema_real_eip !44
  %25 = trunc i32 %EAX_val.66 to i8, !mcsema_real_eip !44
  %26 = call i8 @llvm.ctpop.i8(i8 %25), !mcsema_real_eip !44
  %27 = trunc i8 %26 to i1, !mcsema_real_eip !44
  %28 = xor i1 %27, true, !mcsema_real_eip !44
  store i1 %28, i1* %PF, !mcsema_real_eip !44
  %29 = icmp eq i32 %EAX_val.66, 0, !mcsema_real_eip !44
  store i1 %29, i1* %ZF, !mcsema_real_eip !44
  %30 = lshr i32 %EAX_val.66, 31, !mcsema_real_eip !44
  %31 = trunc i32 %30 to i1, !mcsema_real_eip !44
  store i1 %31, i1* %SF, !mcsema_real_eip !44
  store i1 false, i1* %CF, !mcsema_real_eip !44
  store i1 false, i1* %OF, !mcsema_real_eip !44
  br i1 %29, label %block_0x17a, label %block_0x132, !mcsema_real_eip !45

block_0x132:                                      ; preds = %21
  br i1 %_cond1_n_cond2_cond3_118, label %32, label %33

; <label>:32:                                     ; preds = %block_0x132
  br label %33

; <label>:33:                                     ; preds = %block_0x132, %32
  %34 = phi i8* [ %19, %block_0x132 ], [ %_pot_address_in_parent_stack_111, %32 ]
  %_new_load_133 = load i8, i8* %34
  %35 = sext i8 %_new_load_133 to i32, !mcsema_real_eip !46
  %36 = zext i32 %35 to i64, !mcsema_real_eip !46
  store i64 %36, i64* %XAX, !mcsema_real_eip !46
  %EAX_val.69 = load i32, i32* %EAX.65, !mcsema_real_eip !47
  %37 = sub i32 %EAX_val.69, 47, !mcsema_real_eip !47
  %38 = xor i32 %37, %EAX_val.69, !mcsema_real_eip !47
  %39 = xor i32 %38, 47, !mcsema_real_eip !47
  %40 = and i32 %39, 16, !mcsema_real_eip !47
  %41 = icmp ne i32 %40, 0, !mcsema_real_eip !47
  store i1 %41, i1* %AF, !mcsema_real_eip !47
  %42 = trunc i32 %37 to i8, !mcsema_real_eip !47
  %43 = call i8 @llvm.ctpop.i8(i8 %42), !mcsema_real_eip !47
  %44 = trunc i8 %43 to i1, !mcsema_real_eip !47
  %45 = xor i1 %44, true, !mcsema_real_eip !47
  store i1 %45, i1* %PF, !mcsema_real_eip !47
  %46 = icmp eq i32 %37, 0, !mcsema_real_eip !47
  store i1 %46, i1* %ZF, !mcsema_real_eip !47
  %47 = lshr i32 %37, 31, !mcsema_real_eip !47
  %48 = trunc i32 %47 to i1, !mcsema_real_eip !47
  store i1 %48, i1* %SF, !mcsema_real_eip !47
  %49 = icmp ult i32 %EAX_val.69, 47, !mcsema_real_eip !47
  store i1 %49, i1* %CF, !mcsema_real_eip !47
  %50 = xor i32 %EAX_val.69, 47, !mcsema_real_eip !47
  %51 = and i32 %50, %38, !mcsema_real_eip !47
  %52 = lshr i32 %51, 31, !mcsema_real_eip !47
  %53 = trunc i32 %52 to i1, !mcsema_real_eip !47
  store i1 %53, i1* %OF, !mcsema_real_eip !47
  %54 = icmp eq i1 %46, false, !mcsema_real_eip !48
  br i1 %54, label %block_0x14b, label %block_0x13f, !mcsema_real_eip !48

block_0x13f:                                      ; preds = %33
  %_new_gep_33 = getelementptr i8, i8* %_load_rbp_ptr_26, i64 -32
  %_allin_new_bt_34 = bitcast i8* %_new_gep_33 to i64*
  %_ptr_to_int_134 = ptrtoint i64* %_allin_new_bt_34 to i64
  %_offset_above_rbp_137 = sub i64 %_ptr_to_int_134, %_local_end_to_int_
  %_pot_address_in_parent_stack_138 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_137
  %_cond1_139 = icmp ugt i8* %_new_gep_33, %_local_stack_end_ptr_
  %_cond2_1_140 = icmp ugt i8* %_new_gep_33, %_parent_stack_end_ptr_
  %_cond2_2_141 = icmp ult i8* %_new_gep_33, %_parent_stack_start_ptr_
  %_cond2_142 = or i1 %_cond2_1_140, %_cond2_2_141
  %_cond4_143 = icmp ule i8* %_pot_address_in_parent_stack_138, %_parent_stack_end_ptr_
  %_cond1_n_cond2_144 = and i1 %_cond1_139, %_cond2_142
  %_cond1_n_cond2_cond3_145 = and i1 %_cond1_n_cond2_144, %_cond4_143
  br i1 %_cond1_n_cond2_cond3_145, label %55, label %56

; <label>:55:                                     ; preds = %block_0x13f
  %_address_in_parent_stack_bt_147 = bitcast i8* %_pot_address_in_parent_stack_138 to i64*
  br label %56

; <label>:56:                                     ; preds = %block_0x13f, %55
  %57 = phi i64* [ %_allin_new_bt_34, %block_0x13f ], [ %_address_in_parent_stack_bt_147, %55 ]
  %_new_load_148 = load i64, i64* %57
  store i64 %_new_load_148, i64* %XAX, !mcsema_real_eip !49
  %58 = inttoptr i64 %_new_load_148 to i64*, !mcsema_real_eip !50
  %59 = inttoptr i64 %_new_load_148 to i8*, !mcsema_real_eip !50
  store i8 92, i8* %59, !mcsema_real_eip !50
  br label %block_0x154, !mcsema_real_eip !51

block_0x14b:                                      ; preds = %33
  br i1 %_cond1_n_cond2_cond3_118, label %60, label %61

; <label>:60:                                     ; preds = %block_0x14b
  br label %61

; <label>:61:                                     ; preds = %block_0x14b, %60
  %62 = phi i8* [ %19, %block_0x14b ], [ %_pot_address_in_parent_stack_111, %60 ]
  %_new_load_161 = load i8, i8* %62
  store i8 %_new_load_161, i8* %AL.60, !mcsema_real_eip !52
  %_new_gep_39 = getelementptr i8, i8* %_load_rbp_ptr_26, i64 -32
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  %_ptr_to_int_162 = ptrtoint i64* %_allin_new_bt_40 to i64
  %_offset_above_rbp_165 = sub i64 %_ptr_to_int_162, %_local_end_to_int_
  %_pot_address_in_parent_stack_166 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_165
  %_cond1_167 = icmp ugt i8* %_new_gep_39, %_local_stack_end_ptr_
  %_cond2_1_168 = icmp ugt i8* %_new_gep_39, %_parent_stack_end_ptr_
  %_cond2_2_169 = icmp ult i8* %_new_gep_39, %_parent_stack_start_ptr_
  %_cond2_170 = or i1 %_cond2_1_168, %_cond2_2_169
  %_cond4_171 = icmp ule i8* %_pot_address_in_parent_stack_166, %_parent_stack_end_ptr_
  %_cond1_n_cond2_172 = and i1 %_cond1_167, %_cond2_170
  %_cond1_n_cond2_cond3_173 = and i1 %_cond1_n_cond2_172, %_cond4_171
  br i1 %_cond1_n_cond2_cond3_173, label %63, label %64

; <label>:63:                                     ; preds = %61
  %_address_in_parent_stack_bt_175 = bitcast i8* %_pot_address_in_parent_stack_166 to i64*
  br label %64

; <label>:64:                                     ; preds = %61, %63
  %65 = phi i64* [ %_allin_new_bt_40, %61 ], [ %_address_in_parent_stack_bt_175, %63 ]
  %_new_load_176 = load i64, i64* %65
  store i64 %_new_load_176, i64* %XCX, !mcsema_real_eip !53
  %66 = inttoptr i64 %_new_load_176 to i64*, !mcsema_real_eip !54
  %67 = inttoptr i64 %_new_load_176 to i8*, !mcsema_real_eip !54
  store i8 %_new_load_161, i8* %67, !mcsema_real_eip !54
  br label %block_0x154, !mcsema_real_eip !55

block_0x154:                                      ; preds = %64, %56
  %_load_rbp_ptr_41 = load i8*, i8** %_RBP_ptr_
  %_new_gep_42 = getelementptr i8, i8* %_load_rbp_ptr_41, i64 -24
  %_allin_new_bt_43 = bitcast i8* %_new_gep_42 to i64*
  %_ptr_to_int_177 = ptrtoint i64* %_allin_new_bt_43 to i64
  %_offset_above_rbp_180 = sub i64 %_ptr_to_int_177, %_local_end_to_int_
  %_pot_address_in_parent_stack_181 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_180
  %_cond1_182 = icmp ugt i8* %_new_gep_42, %_local_stack_end_ptr_
  %_cond2_1_183 = icmp ugt i8* %_new_gep_42, %_parent_stack_end_ptr_
  %_cond2_2_184 = icmp ult i8* %_new_gep_42, %_parent_stack_start_ptr_
  %_cond2_185 = or i1 %_cond2_1_183, %_cond2_2_184
  %_cond4_186 = icmp ule i8* %_pot_address_in_parent_stack_181, %_parent_stack_end_ptr_
  %_cond1_n_cond2_187 = and i1 %_cond1_182, %_cond2_185
  %_cond1_n_cond2_cond3_188 = and i1 %_cond1_n_cond2_187, %_cond4_186
  br i1 %_cond1_n_cond2_cond3_188, label %68, label %69

; <label>:68:                                     ; preds = %block_0x154
  %_address_in_parent_stack_bt_190 = bitcast i8* %_pot_address_in_parent_stack_181 to i64*
  br label %69

; <label>:69:                                     ; preds = %block_0x154, %68
  %70 = phi i64* [ %_allin_new_bt_43, %block_0x154 ], [ %_address_in_parent_stack_bt_190, %68 ]
  %_new_load_191 = load i64, i64* %70
  store i64 %_new_load_191, i64* %XAX, !mcsema_real_eip !55
  %71 = add i64 1, %_new_load_191, !mcsema_real_eip !56
  %72 = xor i64 %71, %_new_load_191, !mcsema_real_eip !56
  %73 = xor i64 %72, 1, !mcsema_real_eip !56
  %74 = and i64 %73, 16, !mcsema_real_eip !56
  %75 = icmp ne i64 %74, 0, !mcsema_real_eip !56
  store i1 %75, i1* %AF, !mcsema_real_eip !56
  %76 = lshr i64 %71, 63, !mcsema_real_eip !56
  %77 = trunc i64 %76 to i1, !mcsema_real_eip !56
  store i1 %77, i1* %SF, !mcsema_real_eip !56
  %78 = icmp eq i64 %71, 0, !mcsema_real_eip !56
  store i1 %78, i1* %ZF, !mcsema_real_eip !56
  %79 = xor i64 %_new_load_191, 1, !mcsema_real_eip !56
  %80 = xor i64 %79, -1, !mcsema_real_eip !56
  %81 = and i64 %80, %72, !mcsema_real_eip !56
  %82 = lshr i64 %81, 63, !mcsema_real_eip !56
  %83 = and i64 %82, 1, !mcsema_real_eip !56
  %84 = trunc i64 %83 to i1, !mcsema_real_eip !56
  store i1 %84, i1* %OF, !mcsema_real_eip !56
  %85 = trunc i64 %71 to i8, !mcsema_real_eip !56
  %86 = call i8 @llvm.ctpop.i8(i8 %85), !mcsema_real_eip !56
  %87 = trunc i8 %86 to i1, !mcsema_real_eip !56
  %88 = xor i1 %87, true, !mcsema_real_eip !56
  store i1 %88, i1* %PF, !mcsema_real_eip !56
  %89 = icmp ult i64 %71, %_new_load_191, !mcsema_real_eip !56
  store i1 %89, i1* %CF, !mcsema_real_eip !56
  store i64 %71, i64* %XAX, !mcsema_real_eip !56
  store i64 %71, i64* %_allin_new_bt_43, !mcsema_real_eip !57
  %_load_rbp_ptr_47 = load i8*, i8** %_RBP_ptr_
  %_new_gep_48 = getelementptr i8, i8* %_load_rbp_ptr_47, i64 -32
  %_allin_new_bt_49 = bitcast i8* %_new_gep_48 to i64*
  %_ptr_to_int_192 = ptrtoint i64* %_allin_new_bt_49 to i64
  %_offset_above_rbp_195 = sub i64 %_ptr_to_int_192, %_local_end_to_int_
  %_pot_address_in_parent_stack_196 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_195
  %_cond1_197 = icmp ugt i8* %_new_gep_48, %_local_stack_end_ptr_
  %_cond2_1_198 = icmp ugt i8* %_new_gep_48, %_parent_stack_end_ptr_
  %_cond2_2_199 = icmp ult i8* %_new_gep_48, %_parent_stack_start_ptr_
  %_cond2_200 = or i1 %_cond2_1_198, %_cond2_2_199
  %_cond4_201 = icmp ule i8* %_pot_address_in_parent_stack_196, %_parent_stack_end_ptr_
  %_cond1_n_cond2_202 = and i1 %_cond1_197, %_cond2_200
  %_cond1_n_cond2_cond3_203 = and i1 %_cond1_n_cond2_202, %_cond4_201
  br i1 %_cond1_n_cond2_cond3_203, label %90, label %91

; <label>:90:                                     ; preds = %69
  %_address_in_parent_stack_bt_205 = bitcast i8* %_pot_address_in_parent_stack_196 to i64*
  br label %91

; <label>:91:                                     ; preds = %69, %90
  %92 = phi i64* [ %_allin_new_bt_49, %69 ], [ %_address_in_parent_stack_bt_205, %90 ]
  %_new_load_206 = load i64, i64* %92
  store i64 %_new_load_206, i64* %XAX, !mcsema_real_eip !58
  %93 = add i64 1, %_new_load_206, !mcsema_real_eip !59
  %94 = xor i64 %93, %_new_load_206, !mcsema_real_eip !59
  %95 = xor i64 %94, 1, !mcsema_real_eip !59
  %96 = and i64 %95, 16, !mcsema_real_eip !59
  %97 = icmp ne i64 %96, 0, !mcsema_real_eip !59
  store i1 %97, i1* %AF, !mcsema_real_eip !59
  %98 = lshr i64 %93, 63, !mcsema_real_eip !59
  %99 = trunc i64 %98 to i1, !mcsema_real_eip !59
  store i1 %99, i1* %SF, !mcsema_real_eip !59
  %100 = icmp eq i64 %93, 0, !mcsema_real_eip !59
  store i1 %100, i1* %ZF, !mcsema_real_eip !59
  %101 = xor i64 %_new_load_206, 1, !mcsema_real_eip !59
  %102 = xor i64 %101, -1, !mcsema_real_eip !59
  %103 = and i64 %102, %94, !mcsema_real_eip !59
  %104 = lshr i64 %103, 63, !mcsema_real_eip !59
  %105 = and i64 %104, 1, !mcsema_real_eip !59
  %106 = trunc i64 %105 to i1, !mcsema_real_eip !59
  store i1 %106, i1* %OF, !mcsema_real_eip !59
  %107 = trunc i64 %93 to i8, !mcsema_real_eip !59
  %108 = call i8 @llvm.ctpop.i8(i8 %107), !mcsema_real_eip !59
  %109 = trunc i8 %108 to i1, !mcsema_real_eip !59
  %110 = xor i1 %109, true, !mcsema_real_eip !59
  store i1 %110, i1* %PF, !mcsema_real_eip !59
  %111 = icmp ult i64 %93, %_new_load_206, !mcsema_real_eip !59
  store i1 %111, i1* %CF, !mcsema_real_eip !59
  store i64 %93, i64* %XAX, !mcsema_real_eip !59
  store i64 %93, i64* %_allin_new_bt_49, !mcsema_real_eip !60
  %_load_rbp_ptr_53 = load i8*, i8** %_RBP_ptr_
  %_new_gep_54 = getelementptr i8, i8* %_load_rbp_ptr_53, i64 -24
  %_allin_new_bt_55 = bitcast i8* %_new_gep_54 to i64*
  %_ptr_to_int_207 = ptrtoint i64* %_allin_new_bt_55 to i64
  %_offset_above_rbp_210 = sub i64 %_ptr_to_int_207, %_local_end_to_int_
  %_pot_address_in_parent_stack_211 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_210
  %_cond1_212 = icmp ugt i8* %_new_gep_54, %_local_stack_end_ptr_
  %_cond2_1_213 = icmp ugt i8* %_new_gep_54, %_parent_stack_end_ptr_
  %_cond2_2_214 = icmp ult i8* %_new_gep_54, %_parent_stack_start_ptr_
  %_cond2_215 = or i1 %_cond2_1_213, %_cond2_2_214
  %_cond4_216 = icmp ule i8* %_pot_address_in_parent_stack_211, %_parent_stack_end_ptr_
  %_cond1_n_cond2_217 = and i1 %_cond1_212, %_cond2_215
  %_cond1_n_cond2_cond3_218 = and i1 %_cond1_n_cond2_217, %_cond4_216
  br i1 %_cond1_n_cond2_cond3_218, label %112, label %113

; <label>:112:                                    ; preds = %91
  %_address_in_parent_stack_bt_220 = bitcast i8* %_pot_address_in_parent_stack_211 to i64*
  br label %113

; <label>:113:                                    ; preds = %91, %112
  %114 = phi i64* [ %_allin_new_bt_55, %91 ], [ %_address_in_parent_stack_bt_220, %112 ]
  %_new_load_221 = load i64, i64* %114
  store i64 %_new_load_221, i64* %XAX, !mcsema_real_eip !61
  %115 = inttoptr i64 %_new_load_221 to i64*, !mcsema_real_eip !62
  %116 = inttoptr i64 %_new_load_221 to i8*, !mcsema_real_eip !62
  %_offset_above_rbp_224 = sub i64 %_new_load_221, %_local_end_to_int_
  %_pot_address_in_parent_stack_225 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_224
  %_cond1_226 = icmp ugt i8* %116, %_local_stack_end_ptr_
  %_cond2_1_227 = icmp ugt i8* %116, %_parent_stack_end_ptr_
  %_cond2_2_228 = icmp ult i8* %116, %_parent_stack_start_ptr_
  %_cond2_229 = or i1 %_cond2_1_227, %_cond2_2_228
  %_cond4_230 = icmp ule i8* %_pot_address_in_parent_stack_225, %_parent_stack_end_ptr_
  %_cond1_n_cond2_231 = and i1 %_cond1_226, %_cond2_229
  %_cond1_n_cond2_cond3_232 = and i1 %_cond1_n_cond2_231, %_cond4_230
  br i1 %_cond1_n_cond2_cond3_232, label %117, label %118

; <label>:117:                                    ; preds = %113
  br label %118

; <label>:118:                                    ; preds = %113, %117
  %119 = phi i8* [ %116, %113 ], [ %_pot_address_in_parent_stack_225, %117 ]
  %_new_load_234 = load i8, i8* %119
  %CL.88 = bitcast i64* %XCX to i8*, !mcsema_real_eip !62
  store i8 %_new_load_234, i8* %CL.88, !mcsema_real_eip !62
  %_new_gep_57 = getelementptr i8, i8* %_load_rbp_ptr_53, i64 -33
  %_allin_new_bt_58 = bitcast i8* %_new_gep_57 to i64*
  %120 = ptrtoint i64* %_allin_new_bt_58 to i64, !mcsema_real_eip !63
  %121 = inttoptr i64 %120 to i8*, !mcsema_real_eip !63
  store i8 %_new_load_234, i8* %121, !mcsema_real_eip !63
  br label %block_0x125, !mcsema_real_eip !64

block_0x17a:                                      ; preds = %21
  %_load_rsp_ptr_59 = load i8*, i8** %_RSP_ptr_
  %RSP_val.92 = load i64, i64* %XSP, !mcsema_real_eip !65
  %_allin_new_bt_60 = bitcast i8* %_load_rsp_ptr_59 to i64*
  %_ptr_to_int_235 = ptrtoint i64* %_allin_new_bt_60 to i64
  %_offset_above_rbp_238 = sub i64 %_ptr_to_int_235, %_local_end_to_int_
  %_pot_address_in_parent_stack_239 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_238
  %_cond1_240 = icmp ugt i8* %_load_rsp_ptr_59, %_local_stack_end_ptr_
  %_cond2_1_241 = icmp ugt i8* %_load_rsp_ptr_59, %_parent_stack_end_ptr_
  %_cond2_2_242 = icmp ult i8* %_load_rsp_ptr_59, %_parent_stack_start_ptr_
  %_cond2_243 = or i1 %_cond2_1_241, %_cond2_2_242
  %_cond4_244 = icmp ule i8* %_pot_address_in_parent_stack_239, %_parent_stack_end_ptr_
  %_cond1_n_cond2_245 = and i1 %_cond1_240, %_cond2_243
  %_cond1_n_cond2_cond3_246 = and i1 %_cond1_n_cond2_245, %_cond4_244
  br i1 %_cond1_n_cond2_cond3_246, label %122, label %123

; <label>:122:                                    ; preds = %block_0x17a
  %_address_in_parent_stack_bt_248 = bitcast i8* %_pot_address_in_parent_stack_239 to i64*
  br label %123

; <label>:123:                                    ; preds = %block_0x17a, %122
  %124 = phi i64* [ %_allin_new_bt_60, %block_0x17a ], [ %_address_in_parent_stack_bt_248, %122 ]
  %_new_load_249 = load i64, i64* %124
  %_new_int2ptr_ = inttoptr i64 %_new_load_249 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_249, i64* %XBP, !mcsema_real_eip !65
  %_new_gep_61 = getelementptr i8, i8* %_load_rsp_ptr_59, i64 8
  %125 = add i64 %RSP_val.92, 8, !mcsema_real_eip !65
  store volatile i8* %_new_gep_61, i8** %_RSP_ptr_
  store i64 %125, i64* %XSP, !mcsema_real_eip !65
  %_new_gep_63 = getelementptr i8, i8* %_new_gep_61, i64 8
  %126 = add i64 %125, 8, !mcsema_real_eip !66
  %_allin_new_bt_64 = bitcast i8* %_new_gep_61 to i64*
  %_ptr_to_int_250 = ptrtoint i64* %_allin_new_bt_64 to i64
  %_offset_above_rbp_253 = sub i64 %_ptr_to_int_250, %_local_end_to_int_
  %_pot_address_in_parent_stack_254 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_253
  %_cond1_255 = icmp ugt i8* %_new_gep_61, %_local_stack_end_ptr_
  %_cond2_1_256 = icmp ugt i8* %_new_gep_61, %_parent_stack_end_ptr_
  %_cond2_2_257 = icmp ult i8* %_new_gep_61, %_parent_stack_start_ptr_
  %_cond2_258 = or i1 %_cond2_1_256, %_cond2_2_257
  %_cond4_259 = icmp ule i8* %_pot_address_in_parent_stack_254, %_parent_stack_end_ptr_
  %_cond1_n_cond2_260 = and i1 %_cond1_255, %_cond2_258
  %_cond1_n_cond2_cond3_261 = and i1 %_cond1_n_cond2_260, %_cond4_259
  br i1 %_cond1_n_cond2_cond3_261, label %127, label %128

; <label>:127:                                    ; preds = %123
  %_address_in_parent_stack_bt_263 = bitcast i8* %_pot_address_in_parent_stack_254 to i64*
  br label %128

; <label>:128:                                    ; preds = %123, %127
  %129 = phi i64* [ %_allin_new_bt_64, %123 ], [ %_address_in_parent_stack_bt_263, %127 ]
  %_new_load_264 = load i64, i64* %129
  store i64 %_new_load_264, i64* %XIP, !mcsema_real_eip !66
  store volatile i8* %_new_gep_63, i8** %_RSP_ptr_
  store i64 %126, i64* %XSP, !mcsema_real_eip !66
  ret void, !mcsema_real_eip !66
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0.3(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 48
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 48
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !67
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !67
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !67
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !67
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !67
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !67
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !67
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !67
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !67
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !67
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !67
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !67
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !67
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !67
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !67
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !67
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !67
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !67
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !67
  br label %block_0x0, !mcsema_real_eip !67

block_0x0:                                        ; preds = %entry
  %RSP_val.95 = load i64, i64* %XSP, !mcsema_real_eip !67
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %1 = sub i64 %RSP_val.95, 8, !mcsema_real_eip !67
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %1, i64* %XSP, !mcsema_real_eip !67
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %1, i64* %XBP, !mcsema_real_eip !68
  %_load_rsp_ptr_2 = load i8*, i8** %_RSP_ptr_
  %RSP_val.97 = load i64, i64* %XSP, !mcsema_real_eip !69
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -32
  %2 = sub i64 %RSP_val.97, 32, !mcsema_real_eip !69
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 32, !mcsema_real_eip !69
  %4 = and i64 %3, 16, !mcsema_real_eip !69
  %5 = icmp ne i64 %4, 0, !mcsema_real_eip !69
  store i1 %5, i1* %AF, !mcsema_real_eip !69
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %6 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !69
  %7 = trunc i8 %6 to i1, !mcsema_real_eip !69
  %8 = xor i1 %7, true, !mcsema_real_eip !69
  store i1 %8, i1* %PF, !mcsema_real_eip !69
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_, 0
  store i1 %_trans_icmp_eq_, i1* %ZF, !mcsema_real_eip !69
  %9 = lshr i64 %2, 63, !mcsema_real_eip !69
  %10 = trunc i64 %9 to i1, !mcsema_real_eip !69
  store i1 %10, i1* %SF, !mcsema_real_eip !69
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 32
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !69
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 32
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !69
  %12 = lshr i64 %11, 63, !mcsema_real_eip !69
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !69
  store i1 %13, i1* %OF, !mcsema_real_eip !69
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !69
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -8
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %RDI_val.99 = load i64, i64* %XDI, !mcsema_real_eip !70
  store i64 %RDI_val.99, i64* %_allin_new_bt_15, !mcsema_real_eip !70
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -12
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %ESI.101 = bitcast i64* %XSI to i32*, !mcsema_real_eip !71
  %ESI_val.102 = load i32, i32* %ESI.101, !mcsema_real_eip !71
  %14 = ptrtoint i64* %_allin_new_bt_18 to i64, !mcsema_real_eip !71
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !71
  store i32 %ESI_val.102, i32* %15, !mcsema_real_eip !71
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -16
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %16 = ptrtoint i64* %_allin_new_bt_21 to i64, !mcsema_real_eip !72
  %17 = inttoptr i64 %16 to i32*, !mcsema_real_eip !72
  store i32 0, i32* %17, !mcsema_real_eip !72
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -12
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %18 = ptrtoint i64* %_allin_new_bt_24 to i64, !mcsema_real_eip !73
  %19 = inttoptr i64 %18 to i32*, !mcsema_real_eip !73
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_ = bitcast i32* %19 to i8*
  %_offset_above_rbp_ = sub i64 %18, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_ptr_bt_, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_ptr_bt_, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_ptr_bt_, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %20, label %21

; <label>:20:                                     ; preds = %block_0x0
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %21

; <label>:21:                                     ; preds = %block_0x0, %20
  %22 = phi i32* [ %19, %block_0x0 ], [ %_address_in_parent_stack_bt_, %20 ]
  %_new_load_ = load i32, i32* %22
  %23 = sext i32 %_new_load_ to i64, !mcsema_real_eip !73
  store i64 %23, i64* %XDI, !mcsema_real_eip !73
  %24 = shl i64 %23, 2, !mcsema_real_eip !74
  %25 = and i64 %24, -9223372036854775808, !mcsema_real_eip !74
  %26 = icmp ne i64 %25, 0, !mcsema_real_eip !74
  %27 = load i1, i1* %CF, !mcsema_real_eip !74
  %28 = shl i64 %24, 1, !mcsema_real_eip !74
  %29 = load i1, i1* %OF, !mcsema_real_eip !74
  %30 = and i64 %28, -9223372036854775808, !mcsema_real_eip !74
  %31 = icmp ne i64 %30, 0, !mcsema_real_eip !74
  %32 = xor i1 %31, %26, !mcsema_real_eip !74
  store i1 %26, i1* %CF, !mcsema_real_eip !74
  %33 = load i1, i1* %ZF, !mcsema_real_eip !74
  %34 = icmp eq i64 %28, 0, !mcsema_real_eip !74
  store i1 %34, i1* %ZF, !mcsema_real_eip !74
  %35 = load i1, i1* %SF, !mcsema_real_eip !74
  %36 = icmp slt i64 %28, 0, !mcsema_real_eip !74
  store i1 %36, i1* %SF, !mcsema_real_eip !74
  %37 = load i1, i1* %PF, !mcsema_real_eip !74
  %38 = trunc i64 %28 to i8, !mcsema_real_eip !74
  %39 = call i8 @llvm.ctpop.i8(i8 %38), !mcsema_real_eip !74
  %40 = trunc i8 %39 to i1, !mcsema_real_eip !74
  %41 = xor i1 %40, true, !mcsema_real_eip !74
  store i1 %41, i1* %PF, !mcsema_real_eip !74
  store i64 %28, i64* %XDI, !mcsema_real_eip !74
  %_load_rsp_ptr_25 = load i8*, i8** %_RSP_ptr_
  %RSP_val.107 = load i64, i64* %XSP, !mcsema_real_eip !75
  %_new_gep_26 = getelementptr i8, i8* %_load_rsp_ptr_25, i64 -8
  %42 = sub i64 %RSP_val.107, 8, !mcsema_real_eip !75
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_27, !mcsema_real_eip !75
  store volatile i8* %_new_gep_26, i8** %_RSP_ptr_
  store i64 %42, i64* %XSP, !mcsema_real_eip !75
  %43 = call x86_64_sysvcc i64 @_malloc(i64 %28)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %43, i64* %XAX, !mcsema_real_eip !75
  %_load_rbp_ptr_28 = load i8*, i8** %_RBP_ptr_
  %_new_gep_29 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -24
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  store i64 %43, i64* %_allin_new_bt_30, !mcsema_real_eip !76
  br label %block_0x27, !mcsema_real_eip !77

block_0x27:                                       ; preds = %108, %21
  %_load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -16
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  %44 = ptrtoint i64* %_allin_new_bt_33 to i64, !mcsema_real_eip !77
  %45 = inttoptr i64 %44 to i32*, !mcsema_real_eip !77
  %_ptr_bt_102 = bitcast i32* %45 to i8*
  %_offset_above_rbp_103 = sub i64 %44, %_local_end_to_int_
  %_pot_address_in_parent_stack_104 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_103
  %_cond1_105 = icmp ugt i8* %_ptr_bt_102, %_local_stack_end_ptr_
  %_cond2_1_106 = icmp ugt i8* %_ptr_bt_102, %_parent_stack_end_ptr_
  %_cond2_2_107 = icmp ult i8* %_ptr_bt_102, %_parent_stack_start_ptr_
  %_cond2_108 = or i1 %_cond2_1_106, %_cond2_2_107
  %_cond4_109 = icmp ule i8* %_pot_address_in_parent_stack_104, %_parent_stack_end_ptr_
  %_cond1_n_cond2_110 = and i1 %_cond1_105, %_cond2_108
  %_cond1_n_cond2_cond3_111 = and i1 %_cond1_n_cond2_110, %_cond4_109
  br i1 %_cond1_n_cond2_cond3_111, label %46, label %47

; <label>:46:                                     ; preds = %block_0x27
  %_address_in_parent_stack_bt_113 = bitcast i8* %_pot_address_in_parent_stack_104 to i32*
  br label %47

; <label>:47:                                     ; preds = %block_0x27, %46
  %48 = phi i32* [ %45, %block_0x27 ], [ %_address_in_parent_stack_bt_113, %46 ]
  %_new_load_114 = load i32, i32* %48
  %49 = zext i32 %_new_load_114 to i64, !mcsema_real_eip !77
  store i64 %49, i64* %XAX, !mcsema_real_eip !77
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -12
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %EAX.112 = bitcast i64* %XAX to i32*, !mcsema_real_eip !78
  %EAX_val.113 = load i32, i32* %EAX.112, !mcsema_real_eip !78
  %50 = ptrtoint i64* %_allin_new_bt_36 to i64, !mcsema_real_eip !78
  %51 = inttoptr i64 %50 to i32*, !mcsema_real_eip !78
  %_ptr_bt_117 = bitcast i32* %51 to i8*
  %_offset_above_rbp_118 = sub i64 %50, %_local_end_to_int_
  %_pot_address_in_parent_stack_119 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_118
  %_cond1_120 = icmp ugt i8* %_ptr_bt_117, %_local_stack_end_ptr_
  %_cond2_1_121 = icmp ugt i8* %_ptr_bt_117, %_parent_stack_end_ptr_
  %_cond2_2_122 = icmp ult i8* %_ptr_bt_117, %_parent_stack_start_ptr_
  %_cond2_123 = or i1 %_cond2_1_121, %_cond2_2_122
  %_cond4_124 = icmp ule i8* %_pot_address_in_parent_stack_119, %_parent_stack_end_ptr_
  %_cond1_n_cond2_125 = and i1 %_cond1_120, %_cond2_123
  %_cond1_n_cond2_cond3_126 = and i1 %_cond1_n_cond2_125, %_cond4_124
  br i1 %_cond1_n_cond2_cond3_126, label %52, label %53

; <label>:52:                                     ; preds = %47
  %_address_in_parent_stack_bt_128 = bitcast i8* %_pot_address_in_parent_stack_119 to i32*
  br label %53

; <label>:53:                                     ; preds = %47, %52
  %54 = phi i32* [ %51, %47 ], [ %_address_in_parent_stack_bt_128, %52 ]
  %_new_load_129 = load i32, i32* %54
  %55 = sub i32 %EAX_val.113, %_new_load_129, !mcsema_real_eip !78
  %56 = xor i32 %55, %EAX_val.113, !mcsema_real_eip !78
  %57 = xor i32 %56, %_new_load_129, !mcsema_real_eip !78
  %58 = and i32 %57, 16, !mcsema_real_eip !78
  %59 = icmp ne i32 %58, 0, !mcsema_real_eip !78
  store i1 %59, i1* %AF, !mcsema_real_eip !78
  %60 = trunc i32 %55 to i8, !mcsema_real_eip !78
  %61 = call i8 @llvm.ctpop.i8(i8 %60), !mcsema_real_eip !78
  %62 = trunc i8 %61 to i1, !mcsema_real_eip !78
  %63 = xor i1 %62, true, !mcsema_real_eip !78
  store i1 %63, i1* %PF, !mcsema_real_eip !78
  %64 = icmp eq i32 %55, 0, !mcsema_real_eip !78
  store i1 %64, i1* %ZF, !mcsema_real_eip !78
  %65 = lshr i32 %55, 31, !mcsema_real_eip !78
  %66 = trunc i32 %65 to i1, !mcsema_real_eip !78
  store i1 %66, i1* %SF, !mcsema_real_eip !78
  %67 = icmp ult i32 %EAX_val.113, %_new_load_129, !mcsema_real_eip !78
  store i1 %67, i1* %CF, !mcsema_real_eip !78
  %68 = xor i32 %EAX_val.113, %_new_load_129, !mcsema_real_eip !78
  %69 = and i32 %68, %56, !mcsema_real_eip !78
  %70 = lshr i32 %69, 31, !mcsema_real_eip !78
  %71 = trunc i32 %70 to i1, !mcsema_real_eip !78
  store i1 %71, i1* %OF, !mcsema_real_eip !78
  %72 = icmp eq i1 %66, %71, !mcsema_real_eip !79
  br i1 %72, label %block_0x75, label %block_0x33, !mcsema_real_eip !79

block_0x33:                                       ; preds = %53
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -8
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %_ptr_to_int_130 = ptrtoint i64* %_allin_new_bt_39 to i64
  %_offset_above_rbp_133 = sub i64 %_ptr_to_int_130, %_local_end_to_int_
  %_pot_address_in_parent_stack_134 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_133
  %_cond1_135 = icmp ugt i8* %_new_gep_38, %_local_stack_end_ptr_
  %_cond2_1_136 = icmp ugt i8* %_new_gep_38, %_parent_stack_end_ptr_
  %_cond2_2_137 = icmp ult i8* %_new_gep_38, %_parent_stack_start_ptr_
  %_cond2_138 = or i1 %_cond2_1_136, %_cond2_2_137
  %_cond4_139 = icmp ule i8* %_pot_address_in_parent_stack_134, %_parent_stack_end_ptr_
  %_cond1_n_cond2_140 = and i1 %_cond1_135, %_cond2_138
  %_cond1_n_cond2_cond3_141 = and i1 %_cond1_n_cond2_140, %_cond4_139
  br i1 %_cond1_n_cond2_cond3_141, label %73, label %74

; <label>:73:                                     ; preds = %block_0x33
  %_address_in_parent_stack_bt_143 = bitcast i8* %_pot_address_in_parent_stack_134 to i64*
  br label %74

; <label>:74:                                     ; preds = %block_0x33, %73
  %75 = phi i64* [ %_allin_new_bt_39, %block_0x33 ], [ %_address_in_parent_stack_bt_143, %73 ]
  %_new_load_144 = load i64, i64* %75
  store i64 %_new_load_144, i64* %XAX, !mcsema_real_eip !80
  br i1 %_cond1_n_cond2_cond3_111, label %76, label %77

; <label>:76:                                     ; preds = %74
  %_address_in_parent_stack_bt_158 = bitcast i8* %_pot_address_in_parent_stack_104 to i32*
  br label %77

; <label>:77:                                     ; preds = %74, %76
  %78 = phi i32* [ %45, %74 ], [ %_address_in_parent_stack_bt_158, %76 ]
  %_new_load_159 = load i32, i32* %78
  %79 = sext i32 %_new_load_159 to i64, !mcsema_real_eip !81
  store i64 %79, i64* %XCX, !mcsema_real_eip !81
  %80 = mul i64 %79, 8, !mcsema_real_eip !82
  %81 = add i64 %_new_load_144, %80, !mcsema_real_eip !82
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !82
  %_ptr_bt_162 = bitcast i64* %82 to i8*
  %_offset_above_rbp_163 = sub i64 %81, %_local_end_to_int_
  %_pot_address_in_parent_stack_164 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_163
  %_cond1_165 = icmp ugt i8* %_ptr_bt_162, %_local_stack_end_ptr_
  %_cond2_1_166 = icmp ugt i8* %_ptr_bt_162, %_parent_stack_end_ptr_
  %_cond2_2_167 = icmp ult i8* %_ptr_bt_162, %_parent_stack_start_ptr_
  %_cond2_168 = or i1 %_cond2_1_166, %_cond2_2_167
  %_cond4_169 = icmp ule i8* %_pot_address_in_parent_stack_164, %_parent_stack_end_ptr_
  %_cond1_n_cond2_170 = and i1 %_cond1_165, %_cond2_168
  %_cond1_n_cond2_cond3_171 = and i1 %_cond1_n_cond2_170, %_cond4_169
  br i1 %_cond1_n_cond2_cond3_171, label %83, label %84

; <label>:83:                                     ; preds = %77
  %_address_in_parent_stack_bt_173 = bitcast i8* %_pot_address_in_parent_stack_164 to i64*
  br label %84

; <label>:84:                                     ; preds = %77, %83
  %85 = phi i64* [ %82, %77 ], [ %_address_in_parent_stack_bt_173, %83 ]
  %_new_load_174 = load i64, i64* %85
  store i64 %_new_load_174, i64* %XAX, !mcsema_real_eip !82
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -32
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  store i64 %_new_load_174, i64* %_allin_new_bt_45, !mcsema_real_eip !83
  %_load_rbp_ptr_46 = load i8*, i8** %_RBP_ptr_
  %_new_gep_47 = getelementptr i8, i8* %_load_rbp_ptr_46, i64 -32
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  %_ptr_to_int_175 = ptrtoint i64* %_allin_new_bt_48 to i64
  %_offset_above_rbp_178 = sub i64 %_ptr_to_int_175, %_local_end_to_int_
  %_pot_address_in_parent_stack_179 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_178
  %_cond1_180 = icmp ugt i8* %_new_gep_47, %_local_stack_end_ptr_
  %_cond2_1_181 = icmp ugt i8* %_new_gep_47, %_parent_stack_end_ptr_
  %_cond2_2_182 = icmp ult i8* %_new_gep_47, %_parent_stack_start_ptr_
  %_cond2_183 = or i1 %_cond2_1_181, %_cond2_2_182
  %_cond4_184 = icmp ule i8* %_pot_address_in_parent_stack_179, %_parent_stack_end_ptr_
  %_cond1_n_cond2_185 = and i1 %_cond1_180, %_cond2_183
  %_cond1_n_cond2_cond3_186 = and i1 %_cond1_n_cond2_185, %_cond4_184
  br i1 %_cond1_n_cond2_cond3_186, label %86, label %87

; <label>:86:                                     ; preds = %84
  %_address_in_parent_stack_bt_188 = bitcast i8* %_pot_address_in_parent_stack_179 to i64*
  br label %87

; <label>:87:                                     ; preds = %84, %86
  %88 = phi i64* [ %_allin_new_bt_48, %84 ], [ %_address_in_parent_stack_bt_188, %86 ]
  %_new_load_189 = load i64, i64* %88
  store i64 %_new_load_189, i64* %XDI, !mcsema_real_eip !84
  %_load_rsp_ptr_49 = load i8*, i8** %_RSP_ptr_
  %RSP_val.121 = load i64, i64* %XSP, !mcsema_real_eip !85
  %_new_gep_50 = getelementptr i8, i8* %_load_rsp_ptr_49, i64 -8
  %89 = sub i64 %RSP_val.121, 8, !mcsema_real_eip !85
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_51, !mcsema_real_eip !85
  store volatile i8* %_new_gep_50, i8** %_RSP_ptr_
  store i64 %89, i64* %XSP, !mcsema_real_eip !85
  %_load_rbp_ptr_92 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_90.1(%RegState* %0, i8* %_new_gep_50, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_92)
  %_rsp_fix_94 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_95 = getelementptr i8, i8* %_rsp_fix_94, i64 8
  store i8* %_gep_fix_95, i8** %_RSP_ptr_
  %EAX_val.123 = load i32, i32* %EAX.112, !mcsema_real_eip !86
  store i1 false, i1* %AF, !mcsema_real_eip !86
  %90 = trunc i32 %EAX_val.123 to i8, !mcsema_real_eip !86
  %91 = call i8 @llvm.ctpop.i8(i8 %90), !mcsema_real_eip !86
  %92 = trunc i8 %91 to i1, !mcsema_real_eip !86
  %93 = xor i1 %92, true, !mcsema_real_eip !86
  store i1 %93, i1* %PF, !mcsema_real_eip !86
  %94 = icmp eq i32 %EAX_val.123, 0, !mcsema_real_eip !86
  store i1 %94, i1* %ZF, !mcsema_real_eip !86
  %95 = lshr i32 %EAX_val.123, 31, !mcsema_real_eip !86
  %96 = trunc i32 %95 to i1, !mcsema_real_eip !86
  store i1 %96, i1* %SF, !mcsema_real_eip !86
  store i1 false, i1* %CF, !mcsema_real_eip !86
  store i1 false, i1* %OF, !mcsema_real_eip !86
  %97 = icmp eq i1 %94, false, !mcsema_real_eip !87
  br i1 %97, label %block_0x62, label %block_0x55, !mcsema_real_eip !87

block_0x55:                                       ; preds = %87
  %_load_rbp_ptr_52 = load i8*, i8** %_RBP_ptr_
  %_new_gep_53 = getelementptr i8, i8* %_load_rbp_ptr_52, i64 -32
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  %_ptr_to_int_190 = ptrtoint i64* %_allin_new_bt_54 to i64
  %_offset_above_rbp_193 = sub i64 %_ptr_to_int_190, %_local_end_to_int_
  %_pot_address_in_parent_stack_194 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_193
  %_cond1_195 = icmp ugt i8* %_new_gep_53, %_local_stack_end_ptr_
  %_cond2_1_196 = icmp ugt i8* %_new_gep_53, %_parent_stack_end_ptr_
  %_cond2_2_197 = icmp ult i8* %_new_gep_53, %_parent_stack_start_ptr_
  %_cond2_198 = or i1 %_cond2_1_196, %_cond2_2_197
  %_cond4_199 = icmp ule i8* %_pot_address_in_parent_stack_194, %_parent_stack_end_ptr_
  %_cond1_n_cond2_200 = and i1 %_cond1_195, %_cond2_198
  %_cond1_n_cond2_cond3_201 = and i1 %_cond1_n_cond2_200, %_cond4_199
  br i1 %_cond1_n_cond2_cond3_201, label %98, label %99

; <label>:98:                                     ; preds = %block_0x55
  %_address_in_parent_stack_bt_203 = bitcast i8* %_pot_address_in_parent_stack_194 to i64*
  br label %99

; <label>:99:                                     ; preds = %block_0x55, %98
  %100 = phi i64* [ %_allin_new_bt_54, %block_0x55 ], [ %_address_in_parent_stack_bt_203, %98 ]
  %_new_load_204 = load i64, i64* %100
  store i64 %_new_load_204, i64* %XDI, !mcsema_real_eip !88
  br i1 %_cond1_n_cond2_cond3_201, label %101, label %102

; <label>:101:                                    ; preds = %99
  %_address_in_parent_stack_bt_218 = bitcast i8* %_pot_address_in_parent_stack_194 to i64*
  br label %102

; <label>:102:                                    ; preds = %99, %101
  %103 = phi i64* [ %_allin_new_bt_54, %99 ], [ %_address_in_parent_stack_bt_218, %101 ]
  %_new_load_219 = load i64, i64* %103
  store i64 %_new_load_219, i64* %XSI, !mcsema_real_eip !89
  %RSP_val.126 = load i64, i64* %XSP, !mcsema_real_eip !90
  %_new_gep_59 = getelementptr i8, i8* %_gep_fix_95, i64 -8
  %104 = sub i64 %RSP_val.126, 8, !mcsema_real_eip !90
  %_allin_new_bt_60 = bitcast i8* %_new_gep_59 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_60, !mcsema_real_eip !90
  store volatile i8* %_new_gep_59, i8** %_RSP_ptr_
  store i64 %104, i64* %XSP, !mcsema_real_eip !90
  %_load_rbp_ptr_96 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_100.2(%RegState* %0, i8* %_new_gep_59, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_96)
  %_rsp_fix_98 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_99 = getelementptr i8, i8* %_rsp_fix_98, i64 8
  store i8* %_gep_fix_99, i8** %_RSP_ptr_
  br label %block_0x62, !mcsema_real_eip !91

block_0x62:                                       ; preds = %102, %87
  br label %block_0x67, !mcsema_real_eip !91

block_0x67:                                       ; preds = %block_0x62
  %_load_rbp_ptr_61 = load i8*, i8** %_RBP_ptr_
  %_new_gep_62 = getelementptr i8, i8* %_load_rbp_ptr_61, i64 -16
  %_allin_new_bt_63 = bitcast i8* %_new_gep_62 to i64*
  %105 = ptrtoint i64* %_allin_new_bt_63 to i64, !mcsema_real_eip !92
  %106 = inttoptr i64 %105 to i32*, !mcsema_real_eip !92
  %_ptr_bt_222 = bitcast i32* %106 to i8*
  %_offset_above_rbp_223 = sub i64 %105, %_local_end_to_int_
  %_pot_address_in_parent_stack_224 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_223
  %_cond1_225 = icmp ugt i8* %_ptr_bt_222, %_local_stack_end_ptr_
  %_cond2_1_226 = icmp ugt i8* %_ptr_bt_222, %_parent_stack_end_ptr_
  %_cond2_2_227 = icmp ult i8* %_ptr_bt_222, %_parent_stack_start_ptr_
  %_cond2_228 = or i1 %_cond2_1_226, %_cond2_2_227
  %_cond4_229 = icmp ule i8* %_pot_address_in_parent_stack_224, %_parent_stack_end_ptr_
  %_cond1_n_cond2_230 = and i1 %_cond1_225, %_cond2_228
  %_cond1_n_cond2_cond3_231 = and i1 %_cond1_n_cond2_230, %_cond4_229
  br i1 %_cond1_n_cond2_cond3_231, label %107, label %108

; <label>:107:                                    ; preds = %block_0x67
  %_address_in_parent_stack_bt_233 = bitcast i8* %_pot_address_in_parent_stack_224 to i32*
  br label %108

; <label>:108:                                    ; preds = %block_0x67, %107
  %109 = phi i32* [ %106, %block_0x67 ], [ %_address_in_parent_stack_bt_233, %107 ]
  %_new_load_234 = load i32, i32* %109
  %110 = zext i32 %_new_load_234 to i64, !mcsema_real_eip !92
  store i64 %110, i64* %XAX, !mcsema_real_eip !92
  %EAX_val.129 = load i32, i32* %EAX.112, !mcsema_real_eip !93
  %111 = add i32 1, %EAX_val.129, !mcsema_real_eip !93
  %112 = xor i32 %111, %EAX_val.129, !mcsema_real_eip !93
  %113 = xor i32 %112, 1, !mcsema_real_eip !93
  %114 = and i32 %113, 16, !mcsema_real_eip !93
  %115 = icmp ne i32 %114, 0, !mcsema_real_eip !93
  store i1 %115, i1* %AF, !mcsema_real_eip !93
  %116 = lshr i32 %111, 31, !mcsema_real_eip !93
  %117 = trunc i32 %116 to i1, !mcsema_real_eip !93
  store i1 %117, i1* %SF, !mcsema_real_eip !93
  %118 = icmp eq i32 %111, 0, !mcsema_real_eip !93
  store i1 %118, i1* %ZF, !mcsema_real_eip !93
  %119 = xor i32 %EAX_val.129, 1, !mcsema_real_eip !93
  %120 = xor i32 %119, -1, !mcsema_real_eip !93
  %121 = and i32 %120, %112, !mcsema_real_eip !93
  %122 = lshr i32 %121, 31, !mcsema_real_eip !93
  %123 = and i32 %122, 1, !mcsema_real_eip !93
  %124 = trunc i32 %123 to i1, !mcsema_real_eip !93
  store i1 %124, i1* %OF, !mcsema_real_eip !93
  %125 = trunc i32 %111 to i8, !mcsema_real_eip !93
  %126 = call i8 @llvm.ctpop.i8(i8 %125), !mcsema_real_eip !93
  %127 = trunc i8 %126 to i1, !mcsema_real_eip !93
  %128 = xor i1 %127, true, !mcsema_real_eip !93
  store i1 %128, i1* %PF, !mcsema_real_eip !93
  %129 = icmp ult i32 %111, %EAX_val.129, !mcsema_real_eip !93
  store i1 %129, i1* %CF, !mcsema_real_eip !93
  %130 = zext i32 %111 to i64, !mcsema_real_eip !93
  store i64 %130, i64* %XAX, !mcsema_real_eip !93
  %EAX_val.132 = load i32, i32* %EAX.112, !mcsema_real_eip !94
  store i32 %EAX_val.132, i32* %106, !mcsema_real_eip !94
  br label %block_0x27, !mcsema_real_eip !95

block_0x75:                                       ; preds = %53
  %_new_gep_68 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -24
  %_allin_new_bt_69 = bitcast i8* %_new_gep_68 to i64*
  %_ptr_to_int_235 = ptrtoint i64* %_allin_new_bt_69 to i64
  %_offset_above_rbp_238 = sub i64 %_ptr_to_int_235, %_local_end_to_int_
  %_pot_address_in_parent_stack_239 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_238
  %_cond1_240 = icmp ugt i8* %_new_gep_68, %_local_stack_end_ptr_
  %_cond2_1_241 = icmp ugt i8* %_new_gep_68, %_parent_stack_end_ptr_
  %_cond2_2_242 = icmp ult i8* %_new_gep_68, %_parent_stack_start_ptr_
  %_cond2_243 = or i1 %_cond2_1_241, %_cond2_2_242
  %_cond4_244 = icmp ule i8* %_pot_address_in_parent_stack_239, %_parent_stack_end_ptr_
  %_cond1_n_cond2_245 = and i1 %_cond1_240, %_cond2_243
  %_cond1_n_cond2_cond3_246 = and i1 %_cond1_n_cond2_245, %_cond4_244
  br i1 %_cond1_n_cond2_cond3_246, label %131, label %132

; <label>:131:                                    ; preds = %block_0x75
  %_address_in_parent_stack_bt_248 = bitcast i8* %_pot_address_in_parent_stack_239 to i64*
  br label %132

; <label>:132:                                    ; preds = %block_0x75, %131
  %133 = phi i64* [ %_allin_new_bt_69, %block_0x75 ], [ %_address_in_parent_stack_bt_248, %131 ]
  %_new_load_249 = load i64, i64* %133
  store i64 %_new_load_249, i64* %XAX, !mcsema_real_eip !96
  %134 = add i64 %_new_load_249, 1, !mcsema_real_eip !97
  %135 = inttoptr i64 %134 to i64*, !mcsema_real_eip !97
  %136 = inttoptr i64 %134 to i8*, !mcsema_real_eip !97
  store i8 2, i8* %136, !mcsema_real_eip !97
  %_load_rsp_ptr_70 = load i8*, i8** %_RSP_ptr_
  %RSP_val.135 = load i64, i64* %XSP, !mcsema_real_eip !98
  %_new_gep_71 = getelementptr i8, i8* %_load_rsp_ptr_70, i64 32
  %137 = add i64 32, %RSP_val.135, !mcsema_real_eip !98
  %_trans_p2i_72 = ptrtoint i8* %_new_gep_71 to i64
  %_trans_p2i_73 = ptrtoint i8* %_load_rsp_ptr_70 to i64
  %_trans_xor_74 = xor i64 %_trans_p2i_72, %_trans_p2i_73
  %138 = xor i64 %_trans_xor_74, 32, !mcsema_real_eip !98
  %139 = and i64 %138, 16, !mcsema_real_eip !98
  %140 = icmp ne i64 %139, 0, !mcsema_real_eip !98
  store i1 %140, i1* %AF, !mcsema_real_eip !98
  %141 = lshr i64 %137, 63, !mcsema_real_eip !98
  %142 = trunc i64 %141 to i1, !mcsema_real_eip !98
  store i1 %142, i1* %SF, !mcsema_real_eip !98
  %_trans_icmp_eq_76 = icmp eq i64 %_trans_p2i_72, 0
  store i1 %_trans_icmp_eq_76, i1* %ZF, !mcsema_real_eip !98
  %_trans_xor_78 = xor i64 %_trans_p2i_73, 32
  %143 = xor i64 %_trans_xor_78, -1, !mcsema_real_eip !98
  %144 = and i64 %143, %_trans_xor_74, !mcsema_real_eip !98
  %145 = lshr i64 %144, 63, !mcsema_real_eip !98
  %146 = and i64 %145, 1, !mcsema_real_eip !98
  %147 = trunc i64 %146 to i1, !mcsema_real_eip !98
  store i1 %147, i1* %OF, !mcsema_real_eip !98
  %_trans_trunc_83 = trunc i64 %_trans_p2i_72 to i8
  %148 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_83), !mcsema_real_eip !98
  %149 = trunc i8 %148 to i1, !mcsema_real_eip !98
  %150 = xor i1 %149, true, !mcsema_real_eip !98
  store i1 %150, i1* %PF, !mcsema_real_eip !98
  %_trans_icmp_ne_85 = icmp ne i64 %_trans_p2i_72, %RSP_val.135
  store i1 %_trans_icmp_ne_85, i1* %CF, !mcsema_real_eip !98
  store volatile i8* %_new_gep_71, i8** %_RSP_ptr_
  store i64 %137, i64* %XSP, !mcsema_real_eip !98
  %_allin_new_bt_87 = bitcast i8* %_new_gep_71 to i64*
  %_ptr_to_int_250 = ptrtoint i64* %_allin_new_bt_87 to i64
  %_offset_above_rbp_253 = sub i64 %_ptr_to_int_250, %_local_end_to_int_
  %_pot_address_in_parent_stack_254 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_253
  %_cond1_255 = icmp ugt i8* %_new_gep_71, %_local_stack_end_ptr_
  %_cond2_1_256 = icmp ugt i8* %_new_gep_71, %_parent_stack_end_ptr_
  %_cond2_2_257 = icmp ult i8* %_new_gep_71, %_parent_stack_start_ptr_
  %_cond2_258 = or i1 %_cond2_1_256, %_cond2_2_257
  %_cond4_259 = icmp ule i8* %_pot_address_in_parent_stack_254, %_parent_stack_end_ptr_
  %_cond1_n_cond2_260 = and i1 %_cond1_255, %_cond2_258
  %_cond1_n_cond2_cond3_261 = and i1 %_cond1_n_cond2_260, %_cond4_259
  br i1 %_cond1_n_cond2_cond3_261, label %151, label %152

; <label>:151:                                    ; preds = %132
  %_address_in_parent_stack_bt_263 = bitcast i8* %_pot_address_in_parent_stack_254 to i64*
  br label %152

; <label>:152:                                    ; preds = %132, %151
  %153 = phi i64* [ %_allin_new_bt_87, %132 ], [ %_address_in_parent_stack_bt_263, %151 ]
  %_new_load_264 = load i64, i64* %153
  %_new_int2ptr_ = inttoptr i64 %_new_load_264 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_264, i64* %XBP, !mcsema_real_eip !99
  %_new_gep_88 = getelementptr i8, i8* %_new_gep_71, i64 8
  %154 = add i64 %137, 8, !mcsema_real_eip !99
  store volatile i8* %_new_gep_88, i8** %_RSP_ptr_
  store i64 %154, i64* %XSP, !mcsema_real_eip !99
  %_new_gep_90 = getelementptr i8, i8* %_new_gep_88, i64 8
  %155 = add i64 %154, 8, !mcsema_real_eip !100
  %_allin_new_bt_91 = bitcast i8* %_new_gep_88 to i64*
  %_ptr_to_int_265 = ptrtoint i64* %_allin_new_bt_91 to i64
  %_offset_above_rbp_268 = sub i64 %_ptr_to_int_265, %_local_end_to_int_
  %_pot_address_in_parent_stack_269 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_268
  %_cond1_270 = icmp ugt i8* %_new_gep_88, %_local_stack_end_ptr_
  %_cond2_1_271 = icmp ugt i8* %_new_gep_88, %_parent_stack_end_ptr_
  %_cond2_2_272 = icmp ult i8* %_new_gep_88, %_parent_stack_start_ptr_
  %_cond2_273 = or i1 %_cond2_1_271, %_cond2_2_272
  %_cond4_274 = icmp ule i8* %_pot_address_in_parent_stack_269, %_parent_stack_end_ptr_
  %_cond1_n_cond2_275 = and i1 %_cond1_270, %_cond2_273
  %_cond1_n_cond2_cond3_276 = and i1 %_cond1_n_cond2_275, %_cond4_274
  br i1 %_cond1_n_cond2_cond3_276, label %156, label %157

; <label>:156:                                    ; preds = %152
  %_address_in_parent_stack_bt_278 = bitcast i8* %_pot_address_in_parent_stack_269 to i64*
  br label %157

; <label>:157:                                    ; preds = %152, %156
  %158 = phi i64* [ %_allin_new_bt_91, %152 ], [ %_address_in_parent_stack_bt_278, %156 ]
  %_new_load_279 = load i64, i64* %158
  store i64 %_new_load_279, i64* %XIP, !mcsema_real_eip !100
  store volatile i8* %_new_gep_90, i8** %_RSP_ptr_
  store i64 %155, i64* %XSP, !mcsema_real_eip !100
  ret void, !mcsema_real_eip !100
}

attributes #0 = { naked }
attributes #1 = { noinline }
attributes #2 = { naked noinline }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 144}
!3 = !{i64 145}
!4 = !{i64 148}
!5 = !{i64 152}
!6 = !{i64 156}
!7 = !{i64 163}
!8 = !{i64 167}
!9 = !{i64 172}
!10 = !{i64 174}
!11 = !{i64 177}
!12 = !{i64 181}
!13 = !{i64 187}
!14 = !{i64 191}
!15 = !{i64 193}
!16 = !{i64 196}
!17 = !{i64 200}
!18 = !{i64 203}
!19 = !{i64 206}
!20 = !{i64 209}
!21 = !{i64 212}
!22 = !{i64 215}
!23 = !{i64 219}
!24 = !{i64 223}
!25 = !{i64 225}
!26 = !{i64 231}
!27 = !{i64 238}
!28 = !{i64 243}
!29 = !{i64 246}
!30 = !{i64 250}
!31 = !{i64 251}
!32 = !{i64 256}
!33 = !{i64 257}
!34 = !{i64 260}
!35 = !{i64 264}
!36 = !{i64 268}
!37 = !{i64 272}
!38 = !{i64 276}
!39 = !{i64 280}
!40 = !{i64 284}
!41 = !{i64 288}
!42 = !{i64 290}
!43 = !{i64 293}
!44 = !{i64 297}
!45 = !{i64 300}
!46 = !{i64 306}
!47 = !{i64 310}
!48 = !{i64 313}
!49 = !{i64 319}
!50 = !{i64 323}
!51 = !{i64 326}
!52 = !{i64 331}
!53 = !{i64 334}
!54 = !{i64 338}
!55 = !{i64 340}
!56 = !{i64 344}
!57 = !{i64 348}
!58 = !{i64 352}
!59 = !{i64 356}
!60 = !{i64 360}
!61 = !{i64 364}
!62 = !{i64 368}
!63 = !{i64 370}
!64 = !{i64 373}
!65 = !{i64 378}
!66 = !{i64 379}
!67 = !{i64 0}
!68 = !{i64 1}
!69 = !{i64 4}
!70 = !{i64 8}
!71 = !{i64 12}
!72 = !{i64 15}
!73 = !{i64 22}
!74 = !{i64 26}
!75 = !{i64 30}
!76 = !{i64 35}
!77 = !{i64 39}
!78 = !{i64 42}
!79 = !{i64 45}
!80 = !{i64 51}
!81 = !{i64 55}
!82 = !{i64 59}
!83 = !{i64 63}
!84 = !{i64 67}
!85 = !{i64 71}
!86 = !{i64 76}
!87 = !{i64 79}
!88 = !{i64 85}
!89 = !{i64 89}
!90 = !{i64 93}
!91 = !{i64 98}
!92 = !{i64 103}
!93 = !{i64 106}
!94 = !{i64 109}
!95 = !{i64 112}
!96 = !{i64 117}
!97 = !{i64 121}
!98 = !{i64 125}
!99 = !{i64 129}
!100 = !{i64 130}
