; ModuleID = 'Output/test_13.clang.opt.bc'
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
define internal x86_64_sysvcc void @checkFn(%RegState*) #1 {
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
define internal x86_64_sysvcc void @doStuff(%RegState*) #1 {
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
  %RBP_val.94 = load i64, i64* %XBP, !mcsema_real_eip !67
  %RSP_val.95 = load i64, i64* %XSP, !mcsema_real_eip !67
  %1 = sub i64 %RSP_val.95, 8, !mcsema_real_eip !67
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !67
  store i64 %RBP_val.94, i64* %2, !mcsema_real_eip !67
  store i64 %1, i64* %XSP, !mcsema_real_eip !67
  store i64 %1, i64* %XBP, !mcsema_real_eip !68
  %3 = sub i64 %1, 32, !mcsema_real_eip !69
  %4 = xor i64 %3, %1, !mcsema_real_eip !69
  %5 = xor i64 %4, 32, !mcsema_real_eip !69
  %6 = and i64 %5, 16, !mcsema_real_eip !69
  %7 = icmp ne i64 %6, 0, !mcsema_real_eip !69
  store i1 %7, i1* %AF, !mcsema_real_eip !69
  %8 = trunc i64 %3 to i8, !mcsema_real_eip !69
  %9 = call i8 @llvm.ctpop.i8(i8 %8), !mcsema_real_eip !69
  %10 = trunc i8 %9 to i1, !mcsema_real_eip !69
  %11 = xor i1 %10, true, !mcsema_real_eip !69
  store i1 %11, i1* %PF, !mcsema_real_eip !69
  %12 = icmp eq i64 %3, 0, !mcsema_real_eip !69
  store i1 %12, i1* %ZF, !mcsema_real_eip !69
  %13 = lshr i64 %3, 63, !mcsema_real_eip !69
  %14 = trunc i64 %13 to i1, !mcsema_real_eip !69
  store i1 %14, i1* %SF, !mcsema_real_eip !69
  %15 = icmp ult i64 %1, 32, !mcsema_real_eip !69
  store i1 %15, i1* %CF, !mcsema_real_eip !69
  %16 = xor i64 %1, 32, !mcsema_real_eip !69
  %17 = and i64 %16, %4, !mcsema_real_eip !69
  %18 = lshr i64 %17, 63, !mcsema_real_eip !69
  %19 = trunc i64 %18 to i1, !mcsema_real_eip !69
  store i1 %19, i1* %OF, !mcsema_real_eip !69
  store i64 %3, i64* %XSP, !mcsema_real_eip !69
  %20 = add i64 %1, -8, !mcsema_real_eip !70
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !70
  %RDI_val.99 = load i64, i64* %XDI, !mcsema_real_eip !70
  store i64 %RDI_val.99, i64* %21, !mcsema_real_eip !70
  %RBP_val.100 = load i64, i64* %XBP, !mcsema_real_eip !71
  %22 = add i64 %RBP_val.100, -12, !mcsema_real_eip !71
  %23 = inttoptr i64 %22 to i64*, !mcsema_real_eip !71
  %ESI.101 = bitcast i64* %XSI to i32*, !mcsema_real_eip !71
  %ESI_val.102 = load i32, i32* %ESI.101, !mcsema_real_eip !71
  %24 = inttoptr i64 %22 to i32*, !mcsema_real_eip !71
  store i32 %ESI_val.102, i32* %24, !mcsema_real_eip !71
  %RBP_val.103 = load i64, i64* %XBP, !mcsema_real_eip !72
  %25 = add i64 %RBP_val.103, -16, !mcsema_real_eip !72
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !72
  %27 = inttoptr i64 %25 to i32*, !mcsema_real_eip !72
  store i32 0, i32* %27, !mcsema_real_eip !72
  %RBP_val.104 = load i64, i64* %XBP, !mcsema_real_eip !73
  %28 = add i64 %RBP_val.104, -12, !mcsema_real_eip !73
  %29 = inttoptr i64 %28 to i64*, !mcsema_real_eip !73
  %30 = inttoptr i64 %28 to i32*, !mcsema_real_eip !73
  %31 = load i32, i32* %30, !mcsema_real_eip !73
  %32 = sext i32 %31 to i64, !mcsema_real_eip !73
  store i64 %32, i64* %XDI, !mcsema_real_eip !73
  %33 = shl i64 %32, 2, !mcsema_real_eip !74
  %34 = and i64 %33, -9223372036854775808, !mcsema_real_eip !74
  %35 = icmp ne i64 %34, 0, !mcsema_real_eip !74
  %36 = load i1, i1* %CF, !mcsema_real_eip !74
  %37 = shl i64 %33, 1, !mcsema_real_eip !74
  %38 = load i1, i1* %OF, !mcsema_real_eip !74
  %39 = and i64 %37, -9223372036854775808, !mcsema_real_eip !74
  %40 = icmp ne i64 %39, 0, !mcsema_real_eip !74
  %41 = xor i1 %40, %35, !mcsema_real_eip !74
  store i1 %35, i1* %CF, !mcsema_real_eip !74
  %42 = load i1, i1* %ZF, !mcsema_real_eip !74
  %43 = icmp eq i64 %37, 0, !mcsema_real_eip !74
  store i1 %43, i1* %ZF, !mcsema_real_eip !74
  %44 = load i1, i1* %SF, !mcsema_real_eip !74
  %45 = icmp slt i64 %37, 0, !mcsema_real_eip !74
  store i1 %45, i1* %SF, !mcsema_real_eip !74
  %46 = load i1, i1* %PF, !mcsema_real_eip !74
  %47 = trunc i64 %37 to i8, !mcsema_real_eip !74
  %48 = call i8 @llvm.ctpop.i8(i8 %47), !mcsema_real_eip !74
  %49 = trunc i8 %48 to i1, !mcsema_real_eip !74
  %50 = xor i1 %49, true, !mcsema_real_eip !74
  store i1 %50, i1* %PF, !mcsema_real_eip !74
  store i64 %37, i64* %XDI, !mcsema_real_eip !74
  %RSP_val.107 = load i64, i64* %XSP, !mcsema_real_eip !75
  %51 = sub i64 %RSP_val.107, 8, !mcsema_real_eip !75
  %52 = inttoptr i64 %51 to i64*, !mcsema_real_eip !75
  store i64 -2415393069852865332, i64* %52, !mcsema_real_eip !75
  store i64 %51, i64* %XSP, !mcsema_real_eip !75
  %53 = call x86_64_sysvcc i64 @_malloc(i64 %37), !mcsema_real_eip !75
  store i64 %53, i64* %XAX, !mcsema_real_eip !75
  %RBP_val.108 = load i64, i64* %XBP, !mcsema_real_eip !76
  %54 = add i64 %RBP_val.108, -24, !mcsema_real_eip !76
  %55 = inttoptr i64 %54 to i64*, !mcsema_real_eip !76
  store i64 %53, i64* %55, !mcsema_real_eip !76
  br label %block_0x27, !mcsema_real_eip !77

block_0x27:                                       ; preds = %block_0x67, %block_0x0
  %RBP_val.110 = load i64, i64* %XBP, !mcsema_real_eip !77
  %56 = add i64 %RBP_val.110, -16, !mcsema_real_eip !77
  %57 = inttoptr i64 %56 to i64*, !mcsema_real_eip !77
  %58 = inttoptr i64 %56 to i32*, !mcsema_real_eip !77
  %59 = load i32, i32* %58, !mcsema_real_eip !77
  %60 = zext i32 %59 to i64, !mcsema_real_eip !77
  store i64 %60, i64* %XAX, !mcsema_real_eip !77
  %61 = add i64 %RBP_val.110, -12, !mcsema_real_eip !78
  %62 = inttoptr i64 %61 to i64*, !mcsema_real_eip !78
  %EAX.112 = bitcast i64* %XAX to i32*, !mcsema_real_eip !78
  %EAX_val.113 = load i32, i32* %EAX.112, !mcsema_real_eip !78
  %63 = inttoptr i64 %61 to i32*, !mcsema_real_eip !78
  %64 = load i32, i32* %63, !mcsema_real_eip !78
  %65 = sub i32 %EAX_val.113, %64, !mcsema_real_eip !78
  %66 = xor i32 %65, %EAX_val.113, !mcsema_real_eip !78
  %67 = xor i32 %66, %64, !mcsema_real_eip !78
  %68 = and i32 %67, 16, !mcsema_real_eip !78
  %69 = icmp ne i32 %68, 0, !mcsema_real_eip !78
  store i1 %69, i1* %AF, !mcsema_real_eip !78
  %70 = trunc i32 %65 to i8, !mcsema_real_eip !78
  %71 = call i8 @llvm.ctpop.i8(i8 %70), !mcsema_real_eip !78
  %72 = trunc i8 %71 to i1, !mcsema_real_eip !78
  %73 = xor i1 %72, true, !mcsema_real_eip !78
  store i1 %73, i1* %PF, !mcsema_real_eip !78
  %74 = icmp eq i32 %65, 0, !mcsema_real_eip !78
  store i1 %74, i1* %ZF, !mcsema_real_eip !78
  %75 = lshr i32 %65, 31, !mcsema_real_eip !78
  %76 = trunc i32 %75 to i1, !mcsema_real_eip !78
  store i1 %76, i1* %SF, !mcsema_real_eip !78
  %77 = icmp ult i32 %EAX_val.113, %64, !mcsema_real_eip !78
  store i1 %77, i1* %CF, !mcsema_real_eip !78
  %78 = xor i32 %EAX_val.113, %64, !mcsema_real_eip !78
  %79 = and i32 %78, %66, !mcsema_real_eip !78
  %80 = lshr i32 %79, 31, !mcsema_real_eip !78
  %81 = trunc i32 %80 to i1, !mcsema_real_eip !78
  store i1 %81, i1* %OF, !mcsema_real_eip !78
  %82 = icmp eq i1 %76, %81, !mcsema_real_eip !79
  br i1 %82, label %block_0x75, label %block_0x33, !mcsema_real_eip !79

block_0x33:                                       ; preds = %block_0x27
  %83 = add i64 %RBP_val.110, -8, !mcsema_real_eip !80
  %84 = inttoptr i64 %83 to i64*, !mcsema_real_eip !80
  %85 = load i64, i64* %84, !mcsema_real_eip !80
  store i64 %85, i64* %XAX, !mcsema_real_eip !80
  %86 = load i32, i32* %58, !mcsema_real_eip !81
  %87 = sext i32 %86 to i64, !mcsema_real_eip !81
  store i64 %87, i64* %XCX, !mcsema_real_eip !81
  %88 = mul i64 %87, 8, !mcsema_real_eip !82
  %89 = add i64 %85, %88, !mcsema_real_eip !82
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !82
  %91 = load i64, i64* %90, !mcsema_real_eip !82
  store i64 %91, i64* %XAX, !mcsema_real_eip !82
  %92 = add i64 %RBP_val.110, -32, !mcsema_real_eip !83
  %93 = inttoptr i64 %92 to i64*, !mcsema_real_eip !83
  store i64 %91, i64* %93, !mcsema_real_eip !83
  %RBP_val.120 = load i64, i64* %XBP, !mcsema_real_eip !84
  %94 = add i64 %RBP_val.120, -32, !mcsema_real_eip !84
  %95 = inttoptr i64 %94 to i64*, !mcsema_real_eip !84
  %96 = load i64, i64* %95, !mcsema_real_eip !84
  store i64 %96, i64* %XDI, !mcsema_real_eip !84
  %RSP_val.121 = load i64, i64* %XSP, !mcsema_real_eip !85
  %97 = sub i64 %RSP_val.121, 8, !mcsema_real_eip !85
  %98 = inttoptr i64 %97 to i64*, !mcsema_real_eip !85
  store i64 -4981261766360305936, i64* %98, !mcsema_real_eip !85
  store i64 %97, i64* %XSP, !mcsema_real_eip !85
  call x86_64_sysvcc void @checkFn(%RegState* %0), !mcsema_real_eip !85
  %EAX_val.123 = load i32, i32* %EAX.112, !mcsema_real_eip !86
  store i1 false, i1* %AF, !mcsema_real_eip !86
  %99 = trunc i32 %EAX_val.123 to i8, !mcsema_real_eip !86
  %100 = call i8 @llvm.ctpop.i8(i8 %99), !mcsema_real_eip !86
  %101 = trunc i8 %100 to i1, !mcsema_real_eip !86
  %102 = xor i1 %101, true, !mcsema_real_eip !86
  store i1 %102, i1* %PF, !mcsema_real_eip !86
  %103 = icmp eq i32 %EAX_val.123, 0, !mcsema_real_eip !86
  store i1 %103, i1* %ZF, !mcsema_real_eip !86
  %104 = lshr i32 %EAX_val.123, 31, !mcsema_real_eip !86
  %105 = trunc i32 %104 to i1, !mcsema_real_eip !86
  store i1 %105, i1* %SF, !mcsema_real_eip !86
  store i1 false, i1* %CF, !mcsema_real_eip !86
  store i1 false, i1* %OF, !mcsema_real_eip !86
  %106 = icmp eq i1 %103, false, !mcsema_real_eip !87
  br i1 %106, label %block_0x62, label %block_0x55, !mcsema_real_eip !87

block_0x55:                                       ; preds = %block_0x33
  %RBP_val.124 = load i64, i64* %XBP, !mcsema_real_eip !88
  %107 = add i64 %RBP_val.124, -32, !mcsema_real_eip !88
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !88
  %109 = load i64, i64* %108, !mcsema_real_eip !88
  store i64 %109, i64* %XDI, !mcsema_real_eip !88
  %110 = load i64, i64* %108, !mcsema_real_eip !89
  store i64 %110, i64* %XSI, !mcsema_real_eip !89
  %RSP_val.126 = load i64, i64* %XSP, !mcsema_real_eip !90
  %111 = sub i64 %RSP_val.126, 8, !mcsema_real_eip !90
  %112 = inttoptr i64 %111 to i64*, !mcsema_real_eip !90
  store i64 -4981261766360305936, i64* %112, !mcsema_real_eip !90
  store i64 %111, i64* %XSP, !mcsema_real_eip !90
  call x86_64_sysvcc void @doStuff(%RegState* %0), !mcsema_real_eip !90
  br label %block_0x62, !mcsema_real_eip !91

block_0x62:                                       ; preds = %block_0x55, %block_0x33
  br label %block_0x67, !mcsema_real_eip !91

block_0x67:                                       ; preds = %block_0x62
  %RBP_val.127 = load i64, i64* %XBP, !mcsema_real_eip !92
  %113 = add i64 %RBP_val.127, -16, !mcsema_real_eip !92
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !92
  %115 = inttoptr i64 %113 to i32*, !mcsema_real_eip !92
  %116 = load i32, i32* %115, !mcsema_real_eip !92
  %117 = zext i32 %116 to i64, !mcsema_real_eip !92
  store i64 %117, i64* %XAX, !mcsema_real_eip !92
  %EAX_val.129 = load i32, i32* %EAX.112, !mcsema_real_eip !93
  %118 = add i32 1, %EAX_val.129, !mcsema_real_eip !93
  %119 = xor i32 %118, %EAX_val.129, !mcsema_real_eip !93
  %120 = xor i32 %119, 1, !mcsema_real_eip !93
  %121 = and i32 %120, 16, !mcsema_real_eip !93
  %122 = icmp ne i32 %121, 0, !mcsema_real_eip !93
  store i1 %122, i1* %AF, !mcsema_real_eip !93
  %123 = lshr i32 %118, 31, !mcsema_real_eip !93
  %124 = trunc i32 %123 to i1, !mcsema_real_eip !93
  store i1 %124, i1* %SF, !mcsema_real_eip !93
  %125 = icmp eq i32 %118, 0, !mcsema_real_eip !93
  store i1 %125, i1* %ZF, !mcsema_real_eip !93
  %126 = xor i32 %EAX_val.129, 1, !mcsema_real_eip !93
  %127 = xor i32 %126, -1, !mcsema_real_eip !93
  %128 = and i32 %127, %119, !mcsema_real_eip !93
  %129 = lshr i32 %128, 31, !mcsema_real_eip !93
  %130 = and i32 %129, 1, !mcsema_real_eip !93
  %131 = trunc i32 %130 to i1, !mcsema_real_eip !93
  store i1 %131, i1* %OF, !mcsema_real_eip !93
  %132 = trunc i32 %118 to i8, !mcsema_real_eip !93
  %133 = call i8 @llvm.ctpop.i8(i8 %132), !mcsema_real_eip !93
  %134 = trunc i8 %133 to i1, !mcsema_real_eip !93
  %135 = xor i1 %134, true, !mcsema_real_eip !93
  store i1 %135, i1* %PF, !mcsema_real_eip !93
  %136 = icmp ult i32 %118, %EAX_val.129, !mcsema_real_eip !93
  store i1 %136, i1* %CF, !mcsema_real_eip !93
  %137 = zext i32 %118 to i64, !mcsema_real_eip !93
  store i64 %137, i64* %XAX, !mcsema_real_eip !93
  %EAX_val.132 = load i32, i32* %EAX.112, !mcsema_real_eip !94
  store i32 %EAX_val.132, i32* %115, !mcsema_real_eip !94
  br label %block_0x27, !mcsema_real_eip !95

block_0x75:                                       ; preds = %block_0x27
  %138 = add i64 %RBP_val.110, -24, !mcsema_real_eip !96
  %139 = inttoptr i64 %138 to i64*, !mcsema_real_eip !96
  %140 = load i64, i64* %139, !mcsema_real_eip !96
  store i64 %140, i64* %XAX, !mcsema_real_eip !96
  %141 = add i64 %140, 1, !mcsema_real_eip !97
  %142 = inttoptr i64 %141 to i64*, !mcsema_real_eip !97
  %143 = inttoptr i64 %141 to i8*, !mcsema_real_eip !97
  store i8 2, i8* %143, !mcsema_real_eip !97
  %RSP_val.135 = load i64, i64* %XSP, !mcsema_real_eip !98
  %144 = add i64 32, %RSP_val.135, !mcsema_real_eip !98
  %145 = xor i64 %144, %RSP_val.135, !mcsema_real_eip !98
  %146 = xor i64 %145, 32, !mcsema_real_eip !98
  %147 = and i64 %146, 16, !mcsema_real_eip !98
  %148 = icmp ne i64 %147, 0, !mcsema_real_eip !98
  store i1 %148, i1* %AF, !mcsema_real_eip !98
  %149 = lshr i64 %144, 63, !mcsema_real_eip !98
  %150 = trunc i64 %149 to i1, !mcsema_real_eip !98
  store i1 %150, i1* %SF, !mcsema_real_eip !98
  %151 = icmp eq i64 %144, 0, !mcsema_real_eip !98
  store i1 %151, i1* %ZF, !mcsema_real_eip !98
  %152 = xor i64 %RSP_val.135, 32, !mcsema_real_eip !98
  %153 = xor i64 %152, -1, !mcsema_real_eip !98
  %154 = and i64 %153, %145, !mcsema_real_eip !98
  %155 = lshr i64 %154, 63, !mcsema_real_eip !98
  %156 = and i64 %155, 1, !mcsema_real_eip !98
  %157 = trunc i64 %156 to i1, !mcsema_real_eip !98
  store i1 %157, i1* %OF, !mcsema_real_eip !98
  %158 = trunc i64 %144 to i8, !mcsema_real_eip !98
  %159 = call i8 @llvm.ctpop.i8(i8 %158), !mcsema_real_eip !98
  %160 = trunc i8 %159 to i1, !mcsema_real_eip !98
  %161 = xor i1 %160, true, !mcsema_real_eip !98
  store i1 %161, i1* %PF, !mcsema_real_eip !98
  %162 = icmp ult i64 %144, %RSP_val.135, !mcsema_real_eip !98
  store i1 %162, i1* %CF, !mcsema_real_eip !98
  store i64 %144, i64* %XSP, !mcsema_real_eip !98
  %163 = inttoptr i64 %144 to i64*, !mcsema_real_eip !99
  %164 = load i64, i64* %163, !mcsema_real_eip !99
  store i64 %164, i64* %XBP, !mcsema_real_eip !99
  %165 = add i64 %144, 8, !mcsema_real_eip !99
  store i64 %165, i64* %XSP, !mcsema_real_eip !99
  %166 = add i64 %165, 8, !mcsema_real_eip !100
  %167 = inttoptr i64 %165 to i64*, !mcsema_real_eip !100
  %168 = load i64, i64* %167, !mcsema_real_eip !100
  store i64 %168, i64* %XIP, !mcsema_real_eip !100
  store i64 %166, i64* %XSP, !mcsema_real_eip !100
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
