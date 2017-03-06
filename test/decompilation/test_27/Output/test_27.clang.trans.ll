; ModuleID = 'Output/test_27.clang.trans.bc'
source_filename = "Output/test_27.clang.bc"
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
module asm "  .globl printf;"
module asm "  .globl _printf;"
module asm "  .type _printf,@function"
module asm "_printf:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq printf@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _printf,0b-_printf;"
module asm "  .cfi_endproc;"
module asm "  .globl sub_100;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_100(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [5 x i8] }>
%1 = type <{ [32 x i8], i32, [28 x i8], i32, [20 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x212 = internal constant %0 <{ [5 x i8] c"%lu\0A\00" }>, align 64
@data_0x218 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\1C\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [28 x i8] c"\FF\00\00\00\00A\0E\10\86\02C\0D\06I\83\05\8E\04\8F\03\1C\00\00\00<\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [20 x i8] c"\12\01\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00" }>, align 64

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
define x86_64_sysvcc void @sub_0(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !2
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !2
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !2
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
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !2
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !2
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !2
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !2
  %R14 = getelementptr %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !2
  %R15 = getelementptr %RegState, %RegState* %0, i32 0, i32 71, !mcsema_real_eip !2
  br label %block_0x0, !mcsema_real_eip !2

block_0x0:                                        ; preds = %entry
  %RBP_val.0 = load i64, i64* %XBP, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, !mcsema_real_eip !2
  %1 = sub i64 %RSP_val.1, 8, !mcsema_real_eip !2
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0, i64* %2, !mcsema_real_eip !2
  store i64 %1, i64* %XSP, !mcsema_real_eip !2
  store i64 %1, i64* %XBP, !mcsema_real_eip !3
  %R15_val.3 = load i64, i64* %R15, !mcsema_real_eip !4
  %3 = sub i64 %1, 8, !mcsema_real_eip !4
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !4
  store i64 %R15_val.3, i64* %4, !mcsema_real_eip !4
  store i64 %3, i64* %XSP, !mcsema_real_eip !4
  %R14_val.5 = load i64, i64* %R14, !mcsema_real_eip !5
  %5 = sub i64 %3, 8, !mcsema_real_eip !5
  %6 = inttoptr i64 %5 to i64*, !mcsema_real_eip !5
  store i64 %R14_val.5, i64* %6, !mcsema_real_eip !5
  store i64 %5, i64* %XSP, !mcsema_real_eip !5
  %RBX_val.7 = load i64, i64* %XBX, !mcsema_real_eip !6
  %7 = sub i64 %5, 8, !mcsema_real_eip !6
  %8 = inttoptr i64 %7 to i64*, !mcsema_real_eip !6
  store i64 %RBX_val.7, i64* %8, !mcsema_real_eip !6
  store i64 %7, i64* %XSP, !mcsema_real_eip !6
  %9 = sub i64 %7, 104, !mcsema_real_eip !7
  %10 = xor i64 %9, %7, !mcsema_real_eip !7
  %11 = xor i64 %10, 104, !mcsema_real_eip !7
  %12 = and i64 %11, 16, !mcsema_real_eip !7
  %13 = icmp ne i64 %12, 0, !mcsema_real_eip !7
  store i1 %13, i1* %AF, !mcsema_real_eip !7
  %14 = trunc i64 %9 to i8, !mcsema_real_eip !7
  %15 = call i8 @llvm.ctpop.i8(i8 %14), !mcsema_real_eip !7
  %16 = trunc i8 %15 to i1, !mcsema_real_eip !7
  %17 = xor i1 %16, true, !mcsema_real_eip !7
  store i1 %17, i1* %PF, !mcsema_real_eip !7
  %18 = icmp eq i64 %9, 0, !mcsema_real_eip !7
  store i1 %18, i1* %ZF, !mcsema_real_eip !7
  %19 = lshr i64 %9, 63, !mcsema_real_eip !7
  %20 = trunc i64 %19 to i1, !mcsema_real_eip !7
  store i1 %20, i1* %SF, !mcsema_real_eip !7
  %21 = icmp ult i64 %7, 104, !mcsema_real_eip !7
  store i1 %21, i1* %CF, !mcsema_real_eip !7
  %22 = xor i64 %7, 104, !mcsema_real_eip !7
  %23 = and i64 %22, %10, !mcsema_real_eip !7
  %24 = lshr i64 %23, 63, !mcsema_real_eip !7
  %25 = trunc i64 %24 to i1, !mcsema_real_eip !7
  store i1 %25, i1* %OF, !mcsema_real_eip !7
  store i64 %9, i64* %XSP, !mcsema_real_eip !7
  %RBP_val.10 = load i64, i64* %XBP, !mcsema_real_eip !8
  %26 = add i64 %RBP_val.10, 48, !mcsema_real_eip !8
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !8
  %28 = load i64, i64* %27, !mcsema_real_eip !8
  store i64 %28, i64* %XAX, !mcsema_real_eip !8
  %29 = add i64 %RBP_val.10, 40, !mcsema_real_eip !9
  %30 = inttoptr i64 %29 to i64*, !mcsema_real_eip !9
  %31 = load i64, i64* %30, !mcsema_real_eip !9
  store i64 %31, i64* %R10, !mcsema_real_eip !9
  %32 = add i64 %RBP_val.10, 24, !mcsema_real_eip !10
  %33 = inttoptr i64 %32 to i64*, !mcsema_real_eip !10
  store i64 %32, i64* %R11, !mcsema_real_eip !10
  %34 = add i64 %RBP_val.10, 16, !mcsema_real_eip !11
  %35 = inttoptr i64 %34 to i64*, !mcsema_real_eip !11
  %36 = inttoptr i64 %34 to i32*, !mcsema_real_eip !11
  %37 = load i32, i32* %36, !mcsema_real_eip !11
  %38 = zext i32 %37 to i64, !mcsema_real_eip !11
  store i64 %38, i64* %XBX, !mcsema_real_eip !11
  store i64 12, i64* %R14, !mcsema_real_eip !12
  %R14D.14 = bitcast i64* %R14 to i32*, !mcsema_real_eip !13
  %R14D_val.15 = load i32, i32* %R14D.14, !mcsema_real_eip !13
  %39 = zext i32 %R14D_val.15 to i64, !mcsema_real_eip !13
  store i64 %39, i64* %R15, !mcsema_real_eip !13
  %40 = add i64 %RBP_val.10, -56, !mcsema_real_eip !14
  %41 = inttoptr i64 %40 to i64*, !mcsema_real_eip !14
  %RDI_val.17 = load i64, i64* %XDI, !mcsema_real_eip !14
  store i64 %RDI_val.17, i64* %41, !mcsema_real_eip !14
  %RBP_val.18 = load i64, i64* %XBP, !mcsema_real_eip !15
  %42 = add i64 %RBP_val.18, -48, !mcsema_real_eip !15
  %43 = inttoptr i64 %42 to i64*, !mcsema_real_eip !15
  %ESI.19 = bitcast i64* %XSI to i32*, !mcsema_real_eip !15
  %ESI_val.20 = load i32, i32* %ESI.19, !mcsema_real_eip !15
  %44 = inttoptr i64 %42 to i32*, !mcsema_real_eip !15
  store i32 %ESI_val.20, i32* %44, !mcsema_real_eip !15
  %RBP_val.21 = load i64, i64* %XBP, !mcsema_real_eip !16
  %45 = add i64 %RBP_val.21, -56, !mcsema_real_eip !16
  %46 = inttoptr i64 %45 to i64*, !mcsema_real_eip !16
  %47 = load i64, i64* %46, !mcsema_real_eip !16
  store i64 %47, i64* %XDI, !mcsema_real_eip !16
  %48 = add i64 %RBP_val.21, -40, !mcsema_real_eip !17
  %49 = inttoptr i64 %48 to i64*, !mcsema_real_eip !17
  store i64 %47, i64* %49, !mcsema_real_eip !17
  %RBP_val.24 = load i64, i64* %XBP, !mcsema_real_eip !18
  %50 = add i64 %RBP_val.24, -48, !mcsema_real_eip !18
  %51 = inttoptr i64 %50 to i64*, !mcsema_real_eip !18
  %52 = inttoptr i64 %50 to i32*, !mcsema_real_eip !18
  %53 = load i32, i32* %52, !mcsema_real_eip !18
  %54 = zext i32 %53 to i64, !mcsema_real_eip !18
  store i64 %54, i64* %XSI, !mcsema_real_eip !18
  %55 = add i64 %RBP_val.24, -32, !mcsema_real_eip !19
  %56 = inttoptr i64 %55 to i64*, !mcsema_real_eip !19
  %ESI_val.27 = load i32, i32* %ESI.19, !mcsema_real_eip !19
  %57 = inttoptr i64 %55 to i32*, !mcsema_real_eip !19
  store i32 %ESI_val.27, i32* %57, !mcsema_real_eip !19
  %RBP_val.28 = load i64, i64* %XBP, !mcsema_real_eip !20
  %58 = add i64 %RBP_val.28, -64, !mcsema_real_eip !20
  %59 = inttoptr i64 %58 to i64*, !mcsema_real_eip !20
  %RDX_val.29 = load i64, i64* %XDX, !mcsema_real_eip !20
  store i64 %RDX_val.29, i64* %59, !mcsema_real_eip !20
  %RBP_val.30 = load i64, i64* %XBP, !mcsema_real_eip !21
  %60 = add i64 %RBP_val.30, -72, !mcsema_real_eip !21
  %61 = inttoptr i64 %60 to i64*, !mcsema_real_eip !21
  %RCX_val.31 = load i64, i64* %XCX, !mcsema_real_eip !21
  store i64 %RCX_val.31, i64* %61, !mcsema_real_eip !21
  %RBP_val.32 = load i64, i64* %XBP, !mcsema_real_eip !22
  %62 = add i64 %RBP_val.32, -76, !mcsema_real_eip !22
  %63 = inttoptr i64 %62 to i64*, !mcsema_real_eip !22
  %R8D.33 = bitcast i64* %R8 to i32*, !mcsema_real_eip !22
  %R8D_val.34 = load i32, i32* %R8D.33, !mcsema_real_eip !22
  %64 = inttoptr i64 %62 to i32*, !mcsema_real_eip !22
  store i32 %R8D_val.34, i32* %64, !mcsema_real_eip !22
  %RBP_val.35 = load i64, i64* %XBP, !mcsema_real_eip !23
  %65 = add i64 %RBP_val.35, -80, !mcsema_real_eip !23
  %66 = inttoptr i64 %65 to i64*, !mcsema_real_eip !23
  %R9D.36 = bitcast i64* %R9 to i32*, !mcsema_real_eip !23
  %R9D_val.37 = load i32, i32* %R9D.36, !mcsema_real_eip !23
  %67 = inttoptr i64 %65 to i32*, !mcsema_real_eip !23
  store i32 %R9D_val.37, i32* %67, !mcsema_real_eip !23
  %RBP_val.38 = load i64, i64* %XBP, !mcsema_real_eip !24
  %68 = add i64 %RBP_val.38, -84, !mcsema_real_eip !24
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !24
  %EBX.39 = bitcast i64* %XBX to i32*, !mcsema_real_eip !24
  %EBX_val.40 = load i32, i32* %EBX.39, !mcsema_real_eip !24
  %70 = inttoptr i64 %68 to i32*, !mcsema_real_eip !24
  store i32 %EBX_val.40, i32* %70, !mcsema_real_eip !24
  %RBP_val.41 = load i64, i64* %XBP, !mcsema_real_eip !25
  %71 = add i64 %RBP_val.41, -96, !mcsema_real_eip !25
  %72 = inttoptr i64 %71 to i64*, !mcsema_real_eip !25
  %R10_val.42 = load i64, i64* %R10, !mcsema_real_eip !25
  store i64 %R10_val.42, i64* %72, !mcsema_real_eip !25
  %RBP_val.43 = load i64, i64* %XBP, !mcsema_real_eip !26
  %73 = add i64 %RBP_val.43, -104, !mcsema_real_eip !26
  %74 = inttoptr i64 %73 to i64*, !mcsema_real_eip !26
  %RAX_val.44 = load i64, i64* %XAX, !mcsema_real_eip !26
  store i64 %RAX_val.44, i64* %74, !mcsema_real_eip !26
  %R15_val.45 = load i64, i64* %R15, !mcsema_real_eip !27
  store i64 %R15_val.45, i64* %XDI, !mcsema_real_eip !27
  %RBP_val.46 = load i64, i64* %XBP, !mcsema_real_eip !28
  %75 = add i64 %RBP_val.46, -120, !mcsema_real_eip !28
  %76 = inttoptr i64 %75 to i64*, !mcsema_real_eip !28
  %R11_val.47 = load i64, i64* %R11, !mcsema_real_eip !28
  store i64 %R11_val.47, i64* %76, !mcsema_real_eip !28
  %RDI_val.48 = load i64, i64* %XDI, !mcsema_real_eip !29
  %RSP_val.49 = load i64, i64* %XSP, !mcsema_real_eip !29
  %77 = sub i64 %RSP_val.49, 8, !mcsema_real_eip !29
  %78 = inttoptr i64 %77 to i64*, !mcsema_real_eip !29
  store i64 -2415393069852865332, i64* %78, !mcsema_real_eip !29
  store i64 %77, i64* %XSP, !mcsema_real_eip !29
  %79 = call x86_64_sysvcc i64 @_malloc(i64 %RDI_val.48), !mcsema_real_eip !29
  store i64 %79, i64* %XAX, !mcsema_real_eip !29
  %RBP_val.50 = load i64, i64* %XBP, !mcsema_real_eip !30
  %80 = add i64 %RBP_val.50, -112, !mcsema_real_eip !30
  %81 = inttoptr i64 %80 to i64*, !mcsema_real_eip !30
  store i64 %79, i64* %81, !mcsema_real_eip !30
  %RBP_val.52 = load i64, i64* %XBP, !mcsema_real_eip !31
  %82 = add i64 %RBP_val.52, -40, !mcsema_real_eip !31
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !31
  %84 = inttoptr i64 %82 to i32*, !mcsema_real_eip !31
  %85 = load i32, i32* %84, !mcsema_real_eip !31
  %86 = zext i32 %85 to i64, !mcsema_real_eip !31
  store i64 %86, i64* %XSI, !mcsema_real_eip !31
  %87 = add i64 %RBP_val.52, -64, !mcsema_real_eip !32
  %88 = inttoptr i64 %87 to i64*, !mcsema_real_eip !32
  %89 = load i64, i64* %88, !mcsema_real_eip !32
  store i64 %89, i64* %XAX, !mcsema_real_eip !32
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !33
  %91 = inttoptr i64 %89 to i32*, !mcsema_real_eip !33
  %92 = load i32, i32* %91, !mcsema_real_eip !33
  %ESI_val.56 = load i32, i32* %ESI.19, !mcsema_real_eip !33
  %93 = add i32 %ESI_val.56, %92, !mcsema_real_eip !33
  %94 = xor i32 %93, %92, !mcsema_real_eip !33
  %95 = xor i32 %94, %ESI_val.56, !mcsema_real_eip !33
  %96 = and i32 %95, 16, !mcsema_real_eip !33
  %97 = icmp ne i32 %96, 0, !mcsema_real_eip !33
  store i1 %97, i1* %AF, !mcsema_real_eip !33
  %98 = lshr i32 %93, 31, !mcsema_real_eip !33
  %99 = trunc i32 %98 to i1, !mcsema_real_eip !33
  store i1 %99, i1* %SF, !mcsema_real_eip !33
  %100 = icmp eq i32 %93, 0, !mcsema_real_eip !33
  store i1 %100, i1* %ZF, !mcsema_real_eip !33
  %101 = xor i32 %92, %ESI_val.56, !mcsema_real_eip !33
  %102 = xor i32 %101, -1, !mcsema_real_eip !33
  %103 = and i32 %102, %94, !mcsema_real_eip !33
  %104 = lshr i32 %103, 31, !mcsema_real_eip !33
  %105 = and i32 %104, 1, !mcsema_real_eip !33
  %106 = trunc i32 %105 to i1, !mcsema_real_eip !33
  store i1 %106, i1* %OF, !mcsema_real_eip !33
  %107 = trunc i32 %93 to i8, !mcsema_real_eip !33
  %108 = call i8 @llvm.ctpop.i8(i8 %107), !mcsema_real_eip !33
  %109 = trunc i8 %108 to i1, !mcsema_real_eip !33
  %110 = xor i1 %109, true, !mcsema_real_eip !33
  store i1 %110, i1* %PF, !mcsema_real_eip !33
  %111 = icmp ult i32 %93, %92, !mcsema_real_eip !33
  store i1 %111, i1* %CF, !mcsema_real_eip !33
  %112 = zext i32 %93 to i64, !mcsema_real_eip !33
  store i64 %112, i64* %XSI, !mcsema_real_eip !33
  %113 = add i64 %RBP_val.52, -72, !mcsema_real_eip !34
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !34
  %115 = load i64, i64* %114, !mcsema_real_eip !34
  store i64 %115, i64* %XAX, !mcsema_real_eip !34
  %116 = inttoptr i64 %115 to i64*, !mcsema_real_eip !35
  %117 = inttoptr i64 %115 to i32*, !mcsema_real_eip !35
  %118 = load i32, i32* %117, !mcsema_real_eip !35
  %ESI_val.60 = load i32, i32* %ESI.19, !mcsema_real_eip !35
  %119 = add i32 %ESI_val.60, %118, !mcsema_real_eip !35
  %120 = xor i32 %119, %118, !mcsema_real_eip !35
  %121 = xor i32 %120, %ESI_val.60, !mcsema_real_eip !35
  %122 = and i32 %121, 16, !mcsema_real_eip !35
  %123 = icmp ne i32 %122, 0, !mcsema_real_eip !35
  store i1 %123, i1* %AF, !mcsema_real_eip !35
  %124 = lshr i32 %119, 31, !mcsema_real_eip !35
  %125 = trunc i32 %124 to i1, !mcsema_real_eip !35
  store i1 %125, i1* %SF, !mcsema_real_eip !35
  %126 = icmp eq i32 %119, 0, !mcsema_real_eip !35
  store i1 %126, i1* %ZF, !mcsema_real_eip !35
  %127 = xor i32 %118, %ESI_val.60, !mcsema_real_eip !35
  %128 = xor i32 %127, -1, !mcsema_real_eip !35
  %129 = and i32 %128, %120, !mcsema_real_eip !35
  %130 = lshr i32 %129, 31, !mcsema_real_eip !35
  %131 = and i32 %130, 1, !mcsema_real_eip !35
  %132 = trunc i32 %131 to i1, !mcsema_real_eip !35
  store i1 %132, i1* %OF, !mcsema_real_eip !35
  %133 = trunc i32 %119 to i8, !mcsema_real_eip !35
  %134 = call i8 @llvm.ctpop.i8(i8 %133), !mcsema_real_eip !35
  %135 = trunc i8 %134 to i1, !mcsema_real_eip !35
  %136 = xor i1 %135, true, !mcsema_real_eip !35
  store i1 %136, i1* %PF, !mcsema_real_eip !35
  %137 = icmp ult i32 %119, %118, !mcsema_real_eip !35
  store i1 %137, i1* %CF, !mcsema_real_eip !35
  %138 = zext i32 %119 to i64, !mcsema_real_eip !35
  store i64 %138, i64* %XSI, !mcsema_real_eip !35
  %139 = add i64 %RBP_val.52, -120, !mcsema_real_eip !36
  %140 = inttoptr i64 %139 to i64*, !mcsema_real_eip !36
  %141 = load i64, i64* %140, !mcsema_real_eip !36
  store i64 %141, i64* %XAX, !mcsema_real_eip !36
  %142 = inttoptr i64 %141 to i64*, !mcsema_real_eip !37
  %143 = inttoptr i64 %141 to i32*, !mcsema_real_eip !37
  %144 = load i32, i32* %143, !mcsema_real_eip !37
  %145 = zext i32 %144 to i64, !mcsema_real_eip !37
  store i64 %145, i64* %R8, !mcsema_real_eip !37
  %146 = add i64 %RBP_val.52, -96, !mcsema_real_eip !38
  %147 = inttoptr i64 %146 to i64*, !mcsema_real_eip !38
  %148 = load i64, i64* %147, !mcsema_real_eip !38
  store i64 %148, i64* %XCX, !mcsema_real_eip !38
  %149 = inttoptr i64 %148 to i64*, !mcsema_real_eip !39
  %150 = inttoptr i64 %148 to i32*, !mcsema_real_eip !39
  %151 = load i32, i32* %150, !mcsema_real_eip !39
  %R8D_val.66 = load i32, i32* %R8D.33, !mcsema_real_eip !39
  %152 = add i32 %R8D_val.66, %151, !mcsema_real_eip !39
  %153 = xor i32 %152, %151, !mcsema_real_eip !39
  %154 = xor i32 %153, %R8D_val.66, !mcsema_real_eip !39
  %155 = and i32 %154, 16, !mcsema_real_eip !39
  %156 = icmp ne i32 %155, 0, !mcsema_real_eip !39
  store i1 %156, i1* %AF, !mcsema_real_eip !39
  %157 = lshr i32 %152, 31, !mcsema_real_eip !39
  %158 = trunc i32 %157 to i1, !mcsema_real_eip !39
  store i1 %158, i1* %SF, !mcsema_real_eip !39
  %159 = icmp eq i32 %152, 0, !mcsema_real_eip !39
  store i1 %159, i1* %ZF, !mcsema_real_eip !39
  %160 = xor i32 %151, %R8D_val.66, !mcsema_real_eip !39
  %161 = xor i32 %160, -1, !mcsema_real_eip !39
  %162 = and i32 %161, %153, !mcsema_real_eip !39
  %163 = lshr i32 %162, 31, !mcsema_real_eip !39
  %164 = and i32 %163, 1, !mcsema_real_eip !39
  %165 = trunc i32 %164 to i1, !mcsema_real_eip !39
  store i1 %165, i1* %OF, !mcsema_real_eip !39
  %166 = trunc i32 %152 to i8, !mcsema_real_eip !39
  %167 = call i8 @llvm.ctpop.i8(i8 %166), !mcsema_real_eip !39
  %168 = trunc i8 %167 to i1, !mcsema_real_eip !39
  %169 = xor i1 %168, true, !mcsema_real_eip !39
  store i1 %169, i1* %PF, !mcsema_real_eip !39
  %170 = icmp ult i32 %152, %151, !mcsema_real_eip !39
  store i1 %170, i1* %CF, !mcsema_real_eip !39
  %171 = zext i32 %152 to i64, !mcsema_real_eip !39
  store i64 %171, i64* %R8, !mcsema_real_eip !39
  %172 = add i64 %RBP_val.52, -104, !mcsema_real_eip !40
  %173 = inttoptr i64 %172 to i64*, !mcsema_real_eip !40
  %174 = load i64, i64* %173, !mcsema_real_eip !40
  store i64 %174, i64* %XCX, !mcsema_real_eip !40
  %175 = inttoptr i64 %174 to i64*, !mcsema_real_eip !41
  %176 = inttoptr i64 %174 to i32*, !mcsema_real_eip !41
  %177 = load i32, i32* %176, !mcsema_real_eip !41
  %R8D_val.70 = load i32, i32* %R8D.33, !mcsema_real_eip !41
  %178 = add i32 %R8D_val.70, %177, !mcsema_real_eip !41
  %179 = xor i32 %178, %177, !mcsema_real_eip !41
  %180 = xor i32 %179, %R8D_val.70, !mcsema_real_eip !41
  %181 = and i32 %180, 16, !mcsema_real_eip !41
  %182 = icmp ne i32 %181, 0, !mcsema_real_eip !41
  store i1 %182, i1* %AF, !mcsema_real_eip !41
  %183 = lshr i32 %178, 31, !mcsema_real_eip !41
  %184 = trunc i32 %183 to i1, !mcsema_real_eip !41
  store i1 %184, i1* %SF, !mcsema_real_eip !41
  %185 = icmp eq i32 %178, 0, !mcsema_real_eip !41
  store i1 %185, i1* %ZF, !mcsema_real_eip !41
  %186 = xor i32 %177, %R8D_val.70, !mcsema_real_eip !41
  %187 = xor i32 %186, -1, !mcsema_real_eip !41
  %188 = and i32 %187, %179, !mcsema_real_eip !41
  %189 = lshr i32 %188, 31, !mcsema_real_eip !41
  %190 = and i32 %189, 1, !mcsema_real_eip !41
  %191 = trunc i32 %190 to i1, !mcsema_real_eip !41
  store i1 %191, i1* %OF, !mcsema_real_eip !41
  %192 = trunc i32 %178 to i8, !mcsema_real_eip !41
  %193 = call i8 @llvm.ctpop.i8(i8 %192), !mcsema_real_eip !41
  %194 = trunc i8 %193 to i1, !mcsema_real_eip !41
  %195 = xor i1 %194, true, !mcsema_real_eip !41
  store i1 %195, i1* %PF, !mcsema_real_eip !41
  %196 = icmp ult i32 %178, %177, !mcsema_real_eip !41
  store i1 %196, i1* %CF, !mcsema_real_eip !41
  %197 = zext i32 %178 to i64, !mcsema_real_eip !41
  store i64 %197, i64* %R8, !mcsema_real_eip !41
  %ESI_val.72 = load i32, i32* %ESI.19, !mcsema_real_eip !42
  %R8D_val.74 = load i32, i32* %R8D.33, !mcsema_real_eip !42
  %198 = add i32 %R8D_val.74, %ESI_val.72, !mcsema_real_eip !42
  %199 = xor i32 %198, %ESI_val.72, !mcsema_real_eip !42
  %200 = xor i32 %199, %R8D_val.74, !mcsema_real_eip !42
  %201 = and i32 %200, 16, !mcsema_real_eip !42
  %202 = icmp ne i32 %201, 0, !mcsema_real_eip !42
  store i1 %202, i1* %AF, !mcsema_real_eip !42
  %203 = lshr i32 %198, 31, !mcsema_real_eip !42
  %204 = trunc i32 %203 to i1, !mcsema_real_eip !42
  store i1 %204, i1* %SF, !mcsema_real_eip !42
  %205 = icmp eq i32 %198, 0, !mcsema_real_eip !42
  store i1 %205, i1* %ZF, !mcsema_real_eip !42
  %206 = xor i32 %ESI_val.72, %R8D_val.74, !mcsema_real_eip !42
  %207 = xor i32 %206, -1, !mcsema_real_eip !42
  %208 = and i32 %207, %199, !mcsema_real_eip !42
  %209 = lshr i32 %208, 31, !mcsema_real_eip !42
  %210 = and i32 %209, 1, !mcsema_real_eip !42
  %211 = trunc i32 %210 to i1, !mcsema_real_eip !42
  store i1 %211, i1* %OF, !mcsema_real_eip !42
  %212 = trunc i32 %198 to i8, !mcsema_real_eip !42
  %213 = call i8 @llvm.ctpop.i8(i8 %212), !mcsema_real_eip !42
  %214 = trunc i8 %213 to i1, !mcsema_real_eip !42
  %215 = xor i1 %214, true, !mcsema_real_eip !42
  store i1 %215, i1* %PF, !mcsema_real_eip !42
  %216 = icmp ult i32 %198, %ESI_val.72, !mcsema_real_eip !42
  store i1 %216, i1* %CF, !mcsema_real_eip !42
  %217 = zext i32 %198 to i64, !mcsema_real_eip !42
  store i64 %217, i64* %XSI, !mcsema_real_eip !42
  %218 = add i64 %RBP_val.52, -112, !mcsema_real_eip !43
  %219 = inttoptr i64 %218 to i64*, !mcsema_real_eip !43
  %220 = load i64, i64* %219, !mcsema_real_eip !43
  store i64 %220, i64* %XCX, !mcsema_real_eip !43
  %221 = inttoptr i64 %220 to i64*, !mcsema_real_eip !44
  %ESI_val.78 = load i32, i32* %ESI.19, !mcsema_real_eip !44
  %222 = inttoptr i64 %220 to i32*, !mcsema_real_eip !44
  store i32 %ESI_val.78, i32* %222, !mcsema_real_eip !44
  %RBP_val.79 = load i64, i64* %XBP, !mcsema_real_eip !45
  %223 = add i64 %RBP_val.79, -36, !mcsema_real_eip !45
  %224 = inttoptr i64 %223 to i64*, !mcsema_real_eip !45
  %225 = inttoptr i64 %223 to i32*, !mcsema_real_eip !45
  %226 = load i32, i32* %225, !mcsema_real_eip !45
  %227 = zext i32 %226 to i64, !mcsema_real_eip !45
  store i64 %227, i64* %XSI, !mcsema_real_eip !45
  %228 = add i64 %RBP_val.79, -64, !mcsema_real_eip !46
  %229 = inttoptr i64 %228 to i64*, !mcsema_real_eip !46
  %230 = load i64, i64* %229, !mcsema_real_eip !46
  store i64 %230, i64* %XCX, !mcsema_real_eip !46
  %231 = add i64 %230, 4, !mcsema_real_eip !47
  %232 = inttoptr i64 %231 to i64*, !mcsema_real_eip !47
  %233 = inttoptr i64 %231 to i32*, !mcsema_real_eip !47
  %234 = load i32, i32* %233, !mcsema_real_eip !47
  %ESI_val.83 = load i32, i32* %ESI.19, !mcsema_real_eip !47
  %235 = add i32 %ESI_val.83, %234, !mcsema_real_eip !47
  %236 = xor i32 %235, %234, !mcsema_real_eip !47
  %237 = xor i32 %236, %ESI_val.83, !mcsema_real_eip !47
  %238 = and i32 %237, 16, !mcsema_real_eip !47
  %239 = icmp ne i32 %238, 0, !mcsema_real_eip !47
  store i1 %239, i1* %AF, !mcsema_real_eip !47
  %240 = lshr i32 %235, 31, !mcsema_real_eip !47
  %241 = trunc i32 %240 to i1, !mcsema_real_eip !47
  store i1 %241, i1* %SF, !mcsema_real_eip !47
  %242 = icmp eq i32 %235, 0, !mcsema_real_eip !47
  store i1 %242, i1* %ZF, !mcsema_real_eip !47
  %243 = xor i32 %234, %ESI_val.83, !mcsema_real_eip !47
  %244 = xor i32 %243, -1, !mcsema_real_eip !47
  %245 = and i32 %244, %236, !mcsema_real_eip !47
  %246 = lshr i32 %245, 31, !mcsema_real_eip !47
  %247 = and i32 %246, 1, !mcsema_real_eip !47
  %248 = trunc i32 %247 to i1, !mcsema_real_eip !47
  store i1 %248, i1* %OF, !mcsema_real_eip !47
  %249 = trunc i32 %235 to i8, !mcsema_real_eip !47
  %250 = call i8 @llvm.ctpop.i8(i8 %249), !mcsema_real_eip !47
  %251 = trunc i8 %250 to i1, !mcsema_real_eip !47
  %252 = xor i1 %251, true, !mcsema_real_eip !47
  store i1 %252, i1* %PF, !mcsema_real_eip !47
  %253 = icmp ult i32 %235, %234, !mcsema_real_eip !47
  store i1 %253, i1* %CF, !mcsema_real_eip !47
  %254 = zext i32 %235 to i64, !mcsema_real_eip !47
  store i64 %254, i64* %XSI, !mcsema_real_eip !47
  %255 = add i64 %RBP_val.79, -72, !mcsema_real_eip !48
  %256 = inttoptr i64 %255 to i64*, !mcsema_real_eip !48
  %257 = load i64, i64* %256, !mcsema_real_eip !48
  store i64 %257, i64* %XCX, !mcsema_real_eip !48
  %258 = add i64 %257, 4, !mcsema_real_eip !49
  %259 = inttoptr i64 %258 to i64*, !mcsema_real_eip !49
  %260 = inttoptr i64 %258 to i32*, !mcsema_real_eip !49
  %261 = load i32, i32* %260, !mcsema_real_eip !49
  %ESI_val.87 = load i32, i32* %ESI.19, !mcsema_real_eip !49
  %262 = add i32 %ESI_val.87, %261, !mcsema_real_eip !49
  %263 = xor i32 %262, %261, !mcsema_real_eip !49
  %264 = xor i32 %263, %ESI_val.87, !mcsema_real_eip !49
  %265 = and i32 %264, 16, !mcsema_real_eip !49
  %266 = icmp ne i32 %265, 0, !mcsema_real_eip !49
  store i1 %266, i1* %AF, !mcsema_real_eip !49
  %267 = lshr i32 %262, 31, !mcsema_real_eip !49
  %268 = trunc i32 %267 to i1, !mcsema_real_eip !49
  store i1 %268, i1* %SF, !mcsema_real_eip !49
  %269 = icmp eq i32 %262, 0, !mcsema_real_eip !49
  store i1 %269, i1* %ZF, !mcsema_real_eip !49
  %270 = xor i32 %261, %ESI_val.87, !mcsema_real_eip !49
  %271 = xor i32 %270, -1, !mcsema_real_eip !49
  %272 = and i32 %271, %263, !mcsema_real_eip !49
  %273 = lshr i32 %272, 31, !mcsema_real_eip !49
  %274 = and i32 %273, 1, !mcsema_real_eip !49
  %275 = trunc i32 %274 to i1, !mcsema_real_eip !49
  store i1 %275, i1* %OF, !mcsema_real_eip !49
  %276 = trunc i32 %262 to i8, !mcsema_real_eip !49
  %277 = call i8 @llvm.ctpop.i8(i8 %276), !mcsema_real_eip !49
  %278 = trunc i8 %277 to i1, !mcsema_real_eip !49
  %279 = xor i1 %278, true, !mcsema_real_eip !49
  store i1 %279, i1* %PF, !mcsema_real_eip !49
  %280 = icmp ult i32 %262, %261, !mcsema_real_eip !49
  store i1 %280, i1* %CF, !mcsema_real_eip !49
  %281 = zext i32 %262 to i64, !mcsema_real_eip !49
  store i64 %281, i64* %XSI, !mcsema_real_eip !49
  %RAX_val.88 = load i64, i64* %XAX, !mcsema_real_eip !50
  %282 = add i64 %RAX_val.88, 4, !mcsema_real_eip !50
  %283 = inttoptr i64 %282 to i64*, !mcsema_real_eip !50
  %284 = inttoptr i64 %282 to i32*, !mcsema_real_eip !50
  %285 = load i32, i32* %284, !mcsema_real_eip !50
  %286 = zext i32 %285 to i64, !mcsema_real_eip !50
  store i64 %286, i64* %R8, !mcsema_real_eip !50
  %287 = add i64 %RBP_val.79, -96, !mcsema_real_eip !51
  %288 = inttoptr i64 %287 to i64*, !mcsema_real_eip !51
  %289 = load i64, i64* %288, !mcsema_real_eip !51
  store i64 %289, i64* %XCX, !mcsema_real_eip !51
  %290 = add i64 %289, 4, !mcsema_real_eip !52
  %291 = inttoptr i64 %290 to i64*, !mcsema_real_eip !52
  %292 = inttoptr i64 %290 to i32*, !mcsema_real_eip !52
  %293 = load i32, i32* %292, !mcsema_real_eip !52
  %R8D_val.92 = load i32, i32* %R8D.33, !mcsema_real_eip !52
  %294 = add i32 %R8D_val.92, %293, !mcsema_real_eip !52
  %295 = xor i32 %294, %293, !mcsema_real_eip !52
  %296 = xor i32 %295, %R8D_val.92, !mcsema_real_eip !52
  %297 = and i32 %296, 16, !mcsema_real_eip !52
  %298 = icmp ne i32 %297, 0, !mcsema_real_eip !52
  store i1 %298, i1* %AF, !mcsema_real_eip !52
  %299 = lshr i32 %294, 31, !mcsema_real_eip !52
  %300 = trunc i32 %299 to i1, !mcsema_real_eip !52
  store i1 %300, i1* %SF, !mcsema_real_eip !52
  %301 = icmp eq i32 %294, 0, !mcsema_real_eip !52
  store i1 %301, i1* %ZF, !mcsema_real_eip !52
  %302 = xor i32 %293, %R8D_val.92, !mcsema_real_eip !52
  %303 = xor i32 %302, -1, !mcsema_real_eip !52
  %304 = and i32 %303, %295, !mcsema_real_eip !52
  %305 = lshr i32 %304, 31, !mcsema_real_eip !52
  %306 = and i32 %305, 1, !mcsema_real_eip !52
  %307 = trunc i32 %306 to i1, !mcsema_real_eip !52
  store i1 %307, i1* %OF, !mcsema_real_eip !52
  %308 = trunc i32 %294 to i8, !mcsema_real_eip !52
  %309 = call i8 @llvm.ctpop.i8(i8 %308), !mcsema_real_eip !52
  %310 = trunc i8 %309 to i1, !mcsema_real_eip !52
  %311 = xor i1 %310, true, !mcsema_real_eip !52
  store i1 %311, i1* %PF, !mcsema_real_eip !52
  %312 = icmp ult i32 %294, %293, !mcsema_real_eip !52
  store i1 %312, i1* %CF, !mcsema_real_eip !52
  %313 = zext i32 %294 to i64, !mcsema_real_eip !52
  store i64 %313, i64* %R8, !mcsema_real_eip !52
  %314 = add i64 %RBP_val.79, -104, !mcsema_real_eip !53
  %315 = inttoptr i64 %314 to i64*, !mcsema_real_eip !53
  %316 = load i64, i64* %315, !mcsema_real_eip !53
  store i64 %316, i64* %XCX, !mcsema_real_eip !53
  %317 = add i64 %316, 4, !mcsema_real_eip !54
  %318 = inttoptr i64 %317 to i64*, !mcsema_real_eip !54
  %319 = inttoptr i64 %317 to i32*, !mcsema_real_eip !54
  %320 = load i32, i32* %319, !mcsema_real_eip !54
  %R8D_val.96 = load i32, i32* %R8D.33, !mcsema_real_eip !54
  %321 = add i32 %R8D_val.96, %320, !mcsema_real_eip !54
  %322 = xor i32 %321, %320, !mcsema_real_eip !54
  %323 = xor i32 %322, %R8D_val.96, !mcsema_real_eip !54
  %324 = and i32 %323, 16, !mcsema_real_eip !54
  %325 = icmp ne i32 %324, 0, !mcsema_real_eip !54
  store i1 %325, i1* %AF, !mcsema_real_eip !54
  %326 = lshr i32 %321, 31, !mcsema_real_eip !54
  %327 = trunc i32 %326 to i1, !mcsema_real_eip !54
  store i1 %327, i1* %SF, !mcsema_real_eip !54
  %328 = icmp eq i32 %321, 0, !mcsema_real_eip !54
  store i1 %328, i1* %ZF, !mcsema_real_eip !54
  %329 = xor i32 %320, %R8D_val.96, !mcsema_real_eip !54
  %330 = xor i32 %329, -1, !mcsema_real_eip !54
  %331 = and i32 %330, %322, !mcsema_real_eip !54
  %332 = lshr i32 %331, 31, !mcsema_real_eip !54
  %333 = and i32 %332, 1, !mcsema_real_eip !54
  %334 = trunc i32 %333 to i1, !mcsema_real_eip !54
  store i1 %334, i1* %OF, !mcsema_real_eip !54
  %335 = trunc i32 %321 to i8, !mcsema_real_eip !54
  %336 = call i8 @llvm.ctpop.i8(i8 %335), !mcsema_real_eip !54
  %337 = trunc i8 %336 to i1, !mcsema_real_eip !54
  %338 = xor i1 %337, true, !mcsema_real_eip !54
  store i1 %338, i1* %PF, !mcsema_real_eip !54
  %339 = icmp ult i32 %321, %320, !mcsema_real_eip !54
  store i1 %339, i1* %CF, !mcsema_real_eip !54
  %340 = zext i32 %321 to i64, !mcsema_real_eip !54
  store i64 %340, i64* %R8, !mcsema_real_eip !54
  %ESI_val.98 = load i32, i32* %ESI.19, !mcsema_real_eip !55
  %R8D_val.100 = load i32, i32* %R8D.33, !mcsema_real_eip !55
  %341 = add i32 %R8D_val.100, %ESI_val.98, !mcsema_real_eip !55
  %342 = xor i32 %341, %ESI_val.98, !mcsema_real_eip !55
  %343 = xor i32 %342, %R8D_val.100, !mcsema_real_eip !55
  %344 = and i32 %343, 16, !mcsema_real_eip !55
  %345 = icmp ne i32 %344, 0, !mcsema_real_eip !55
  store i1 %345, i1* %AF, !mcsema_real_eip !55
  %346 = lshr i32 %341, 31, !mcsema_real_eip !55
  %347 = trunc i32 %346 to i1, !mcsema_real_eip !55
  store i1 %347, i1* %SF, !mcsema_real_eip !55
  %348 = icmp eq i32 %341, 0, !mcsema_real_eip !55
  store i1 %348, i1* %ZF, !mcsema_real_eip !55
  %349 = xor i32 %ESI_val.98, %R8D_val.100, !mcsema_real_eip !55
  %350 = xor i32 %349, -1, !mcsema_real_eip !55
  %351 = and i32 %350, %342, !mcsema_real_eip !55
  %352 = lshr i32 %351, 31, !mcsema_real_eip !55
  %353 = and i32 %352, 1, !mcsema_real_eip !55
  %354 = trunc i32 %353 to i1, !mcsema_real_eip !55
  store i1 %354, i1* %OF, !mcsema_real_eip !55
  %355 = trunc i32 %341 to i8, !mcsema_real_eip !55
  %356 = call i8 @llvm.ctpop.i8(i8 %355), !mcsema_real_eip !55
  %357 = trunc i8 %356 to i1, !mcsema_real_eip !55
  %358 = xor i1 %357, true, !mcsema_real_eip !55
  store i1 %358, i1* %PF, !mcsema_real_eip !55
  %359 = icmp ult i32 %341, %ESI_val.98, !mcsema_real_eip !55
  store i1 %359, i1* %CF, !mcsema_real_eip !55
  %360 = zext i32 %341 to i64, !mcsema_real_eip !55
  store i64 %360, i64* %XSI, !mcsema_real_eip !55
  %361 = add i64 %RBP_val.79, -112, !mcsema_real_eip !56
  %362 = inttoptr i64 %361 to i64*, !mcsema_real_eip !56
  %363 = load i64, i64* %362, !mcsema_real_eip !56
  store i64 %363, i64* %XCX, !mcsema_real_eip !56
  %364 = add i64 %363, 4, !mcsema_real_eip !57
  %365 = inttoptr i64 %364 to i64*, !mcsema_real_eip !57
  %ESI_val.104 = load i32, i32* %ESI.19, !mcsema_real_eip !57
  %366 = inttoptr i64 %364 to i32*, !mcsema_real_eip !57
  store i32 %ESI_val.104, i32* %366, !mcsema_real_eip !57
  %RBP_val.105 = load i64, i64* %XBP, !mcsema_real_eip !58
  %367 = add i64 %RBP_val.105, -32, !mcsema_real_eip !58
  %368 = inttoptr i64 %367 to i64*, !mcsema_real_eip !58
  %369 = inttoptr i64 %367 to i32*, !mcsema_real_eip !58
  %370 = load i32, i32* %369, !mcsema_real_eip !58
  %371 = zext i32 %370 to i64, !mcsema_real_eip !58
  store i64 %371, i64* %XSI, !mcsema_real_eip !58
  %372 = add i64 %RBP_val.105, -64, !mcsema_real_eip !59
  %373 = inttoptr i64 %372 to i64*, !mcsema_real_eip !59
  %374 = load i64, i64* %373, !mcsema_real_eip !59
  store i64 %374, i64* %XCX, !mcsema_real_eip !59
  %375 = add i64 %374, 8, !mcsema_real_eip !60
  %376 = inttoptr i64 %375 to i64*, !mcsema_real_eip !60
  %377 = inttoptr i64 %375 to i32*, !mcsema_real_eip !60
  %378 = load i32, i32* %377, !mcsema_real_eip !60
  %ESI_val.109 = load i32, i32* %ESI.19, !mcsema_real_eip !60
  %379 = add i32 %ESI_val.109, %378, !mcsema_real_eip !60
  %380 = xor i32 %379, %378, !mcsema_real_eip !60
  %381 = xor i32 %380, %ESI_val.109, !mcsema_real_eip !60
  %382 = and i32 %381, 16, !mcsema_real_eip !60
  %383 = icmp ne i32 %382, 0, !mcsema_real_eip !60
  store i1 %383, i1* %AF, !mcsema_real_eip !60
  %384 = lshr i32 %379, 31, !mcsema_real_eip !60
  %385 = trunc i32 %384 to i1, !mcsema_real_eip !60
  store i1 %385, i1* %SF, !mcsema_real_eip !60
  %386 = icmp eq i32 %379, 0, !mcsema_real_eip !60
  store i1 %386, i1* %ZF, !mcsema_real_eip !60
  %387 = xor i32 %378, %ESI_val.109, !mcsema_real_eip !60
  %388 = xor i32 %387, -1, !mcsema_real_eip !60
  %389 = and i32 %388, %380, !mcsema_real_eip !60
  %390 = lshr i32 %389, 31, !mcsema_real_eip !60
  %391 = and i32 %390, 1, !mcsema_real_eip !60
  %392 = trunc i32 %391 to i1, !mcsema_real_eip !60
  store i1 %392, i1* %OF, !mcsema_real_eip !60
  %393 = trunc i32 %379 to i8, !mcsema_real_eip !60
  %394 = call i8 @llvm.ctpop.i8(i8 %393), !mcsema_real_eip !60
  %395 = trunc i8 %394 to i1, !mcsema_real_eip !60
  %396 = xor i1 %395, true, !mcsema_real_eip !60
  store i1 %396, i1* %PF, !mcsema_real_eip !60
  %397 = icmp ult i32 %379, %378, !mcsema_real_eip !60
  store i1 %397, i1* %CF, !mcsema_real_eip !60
  %398 = zext i32 %379 to i64, !mcsema_real_eip !60
  store i64 %398, i64* %XSI, !mcsema_real_eip !60
  %399 = add i64 %RBP_val.105, -72, !mcsema_real_eip !61
  %400 = inttoptr i64 %399 to i64*, !mcsema_real_eip !61
  %401 = load i64, i64* %400, !mcsema_real_eip !61
  store i64 %401, i64* %XCX, !mcsema_real_eip !61
  %402 = add i64 %401, 8, !mcsema_real_eip !62
  %403 = inttoptr i64 %402 to i64*, !mcsema_real_eip !62
  %404 = inttoptr i64 %402 to i32*, !mcsema_real_eip !62
  %405 = load i32, i32* %404, !mcsema_real_eip !62
  %ESI_val.113 = load i32, i32* %ESI.19, !mcsema_real_eip !62
  %406 = add i32 %ESI_val.113, %405, !mcsema_real_eip !62
  %407 = xor i32 %406, %405, !mcsema_real_eip !62
  %408 = xor i32 %407, %ESI_val.113, !mcsema_real_eip !62
  %409 = and i32 %408, 16, !mcsema_real_eip !62
  %410 = icmp ne i32 %409, 0, !mcsema_real_eip !62
  store i1 %410, i1* %AF, !mcsema_real_eip !62
  %411 = lshr i32 %406, 31, !mcsema_real_eip !62
  %412 = trunc i32 %411 to i1, !mcsema_real_eip !62
  store i1 %412, i1* %SF, !mcsema_real_eip !62
  %413 = icmp eq i32 %406, 0, !mcsema_real_eip !62
  store i1 %413, i1* %ZF, !mcsema_real_eip !62
  %414 = xor i32 %405, %ESI_val.113, !mcsema_real_eip !62
  %415 = xor i32 %414, -1, !mcsema_real_eip !62
  %416 = and i32 %415, %407, !mcsema_real_eip !62
  %417 = lshr i32 %416, 31, !mcsema_real_eip !62
  %418 = and i32 %417, 1, !mcsema_real_eip !62
  %419 = trunc i32 %418 to i1, !mcsema_real_eip !62
  store i1 %419, i1* %OF, !mcsema_real_eip !62
  %420 = trunc i32 %406 to i8, !mcsema_real_eip !62
  %421 = call i8 @llvm.ctpop.i8(i8 %420), !mcsema_real_eip !62
  %422 = trunc i8 %421 to i1, !mcsema_real_eip !62
  %423 = xor i1 %422, true, !mcsema_real_eip !62
  store i1 %423, i1* %PF, !mcsema_real_eip !62
  %424 = icmp ult i32 %406, %405, !mcsema_real_eip !62
  store i1 %424, i1* %CF, !mcsema_real_eip !62
  %425 = zext i32 %406 to i64, !mcsema_real_eip !62
  store i64 %425, i64* %XSI, !mcsema_real_eip !62
  %RAX_val.114 = load i64, i64* %XAX, !mcsema_real_eip !63
  %426 = add i64 %RAX_val.114, 8, !mcsema_real_eip !63
  %427 = inttoptr i64 %426 to i64*, !mcsema_real_eip !63
  %428 = inttoptr i64 %426 to i32*, !mcsema_real_eip !63
  %429 = load i32, i32* %428, !mcsema_real_eip !63
  %430 = zext i32 %429 to i64, !mcsema_real_eip !63
  store i64 %430, i64* %R8, !mcsema_real_eip !63
  %431 = add i64 %RBP_val.105, -96, !mcsema_real_eip !64
  %432 = inttoptr i64 %431 to i64*, !mcsema_real_eip !64
  %433 = load i64, i64* %432, !mcsema_real_eip !64
  store i64 %433, i64* %XCX, !mcsema_real_eip !64
  %434 = add i64 %433, 8, !mcsema_real_eip !65
  %435 = inttoptr i64 %434 to i64*, !mcsema_real_eip !65
  %436 = inttoptr i64 %434 to i32*, !mcsema_real_eip !65
  %437 = load i32, i32* %436, !mcsema_real_eip !65
  %R8D_val.118 = load i32, i32* %R8D.33, !mcsema_real_eip !65
  %438 = add i32 %R8D_val.118, %437, !mcsema_real_eip !65
  %439 = xor i32 %438, %437, !mcsema_real_eip !65
  %440 = xor i32 %439, %R8D_val.118, !mcsema_real_eip !65
  %441 = and i32 %440, 16, !mcsema_real_eip !65
  %442 = icmp ne i32 %441, 0, !mcsema_real_eip !65
  store i1 %442, i1* %AF, !mcsema_real_eip !65
  %443 = lshr i32 %438, 31, !mcsema_real_eip !65
  %444 = trunc i32 %443 to i1, !mcsema_real_eip !65
  store i1 %444, i1* %SF, !mcsema_real_eip !65
  %445 = icmp eq i32 %438, 0, !mcsema_real_eip !65
  store i1 %445, i1* %ZF, !mcsema_real_eip !65
  %446 = xor i32 %437, %R8D_val.118, !mcsema_real_eip !65
  %447 = xor i32 %446, -1, !mcsema_real_eip !65
  %448 = and i32 %447, %439, !mcsema_real_eip !65
  %449 = lshr i32 %448, 31, !mcsema_real_eip !65
  %450 = and i32 %449, 1, !mcsema_real_eip !65
  %451 = trunc i32 %450 to i1, !mcsema_real_eip !65
  store i1 %451, i1* %OF, !mcsema_real_eip !65
  %452 = trunc i32 %438 to i8, !mcsema_real_eip !65
  %453 = call i8 @llvm.ctpop.i8(i8 %452), !mcsema_real_eip !65
  %454 = trunc i8 %453 to i1, !mcsema_real_eip !65
  %455 = xor i1 %454, true, !mcsema_real_eip !65
  store i1 %455, i1* %PF, !mcsema_real_eip !65
  %456 = icmp ult i32 %438, %437, !mcsema_real_eip !65
  store i1 %456, i1* %CF, !mcsema_real_eip !65
  %457 = zext i32 %438 to i64, !mcsema_real_eip !65
  store i64 %457, i64* %R8, !mcsema_real_eip !65
  %458 = add i64 %RBP_val.105, -104, !mcsema_real_eip !66
  %459 = inttoptr i64 %458 to i64*, !mcsema_real_eip !66
  %460 = load i64, i64* %459, !mcsema_real_eip !66
  store i64 %460, i64* %XCX, !mcsema_real_eip !66
  %461 = add i64 %460, 8, !mcsema_real_eip !67
  %462 = inttoptr i64 %461 to i64*, !mcsema_real_eip !67
  %463 = inttoptr i64 %461 to i32*, !mcsema_real_eip !67
  %464 = load i32, i32* %463, !mcsema_real_eip !67
  %R8D_val.122 = load i32, i32* %R8D.33, !mcsema_real_eip !67
  %465 = add i32 %R8D_val.122, %464, !mcsema_real_eip !67
  %466 = xor i32 %465, %464, !mcsema_real_eip !67
  %467 = xor i32 %466, %R8D_val.122, !mcsema_real_eip !67
  %468 = and i32 %467, 16, !mcsema_real_eip !67
  %469 = icmp ne i32 %468, 0, !mcsema_real_eip !67
  store i1 %469, i1* %AF, !mcsema_real_eip !67
  %470 = lshr i32 %465, 31, !mcsema_real_eip !67
  %471 = trunc i32 %470 to i1, !mcsema_real_eip !67
  store i1 %471, i1* %SF, !mcsema_real_eip !67
  %472 = icmp eq i32 %465, 0, !mcsema_real_eip !67
  store i1 %472, i1* %ZF, !mcsema_real_eip !67
  %473 = xor i32 %464, %R8D_val.122, !mcsema_real_eip !67
  %474 = xor i32 %473, -1, !mcsema_real_eip !67
  %475 = and i32 %474, %466, !mcsema_real_eip !67
  %476 = lshr i32 %475, 31, !mcsema_real_eip !67
  %477 = and i32 %476, 1, !mcsema_real_eip !67
  %478 = trunc i32 %477 to i1, !mcsema_real_eip !67
  store i1 %478, i1* %OF, !mcsema_real_eip !67
  %479 = trunc i32 %465 to i8, !mcsema_real_eip !67
  %480 = call i8 @llvm.ctpop.i8(i8 %479), !mcsema_real_eip !67
  %481 = trunc i8 %480 to i1, !mcsema_real_eip !67
  %482 = xor i1 %481, true, !mcsema_real_eip !67
  store i1 %482, i1* %PF, !mcsema_real_eip !67
  %483 = icmp ult i32 %465, %464, !mcsema_real_eip !67
  store i1 %483, i1* %CF, !mcsema_real_eip !67
  %484 = zext i32 %465 to i64, !mcsema_real_eip !67
  store i64 %484, i64* %R8, !mcsema_real_eip !67
  %ESI_val.124 = load i32, i32* %ESI.19, !mcsema_real_eip !68
  %R8D_val.126 = load i32, i32* %R8D.33, !mcsema_real_eip !68
  %485 = add i32 %R8D_val.126, %ESI_val.124, !mcsema_real_eip !68
  %486 = xor i32 %485, %ESI_val.124, !mcsema_real_eip !68
  %487 = xor i32 %486, %R8D_val.126, !mcsema_real_eip !68
  %488 = and i32 %487, 16, !mcsema_real_eip !68
  %489 = icmp ne i32 %488, 0, !mcsema_real_eip !68
  store i1 %489, i1* %AF, !mcsema_real_eip !68
  %490 = lshr i32 %485, 31, !mcsema_real_eip !68
  %491 = trunc i32 %490 to i1, !mcsema_real_eip !68
  store i1 %491, i1* %SF, !mcsema_real_eip !68
  %492 = icmp eq i32 %485, 0, !mcsema_real_eip !68
  store i1 %492, i1* %ZF, !mcsema_real_eip !68
  %493 = xor i32 %ESI_val.124, %R8D_val.126, !mcsema_real_eip !68
  %494 = xor i32 %493, -1, !mcsema_real_eip !68
  %495 = and i32 %494, %486, !mcsema_real_eip !68
  %496 = lshr i32 %495, 31, !mcsema_real_eip !68
  %497 = and i32 %496, 1, !mcsema_real_eip !68
  %498 = trunc i32 %497 to i1, !mcsema_real_eip !68
  store i1 %498, i1* %OF, !mcsema_real_eip !68
  %499 = trunc i32 %485 to i8, !mcsema_real_eip !68
  %500 = call i8 @llvm.ctpop.i8(i8 %499), !mcsema_real_eip !68
  %501 = trunc i8 %500 to i1, !mcsema_real_eip !68
  %502 = xor i1 %501, true, !mcsema_real_eip !68
  store i1 %502, i1* %PF, !mcsema_real_eip !68
  %503 = icmp ult i32 %485, %ESI_val.124, !mcsema_real_eip !68
  store i1 %503, i1* %CF, !mcsema_real_eip !68
  %504 = zext i32 %485 to i64, !mcsema_real_eip !68
  store i64 %504, i64* %XSI, !mcsema_real_eip !68
  %505 = add i64 %RBP_val.105, -112, !mcsema_real_eip !69
  %506 = inttoptr i64 %505 to i64*, !mcsema_real_eip !69
  %507 = load i64, i64* %506, !mcsema_real_eip !69
  store i64 %507, i64* %XCX, !mcsema_real_eip !69
  %508 = add i64 %507, 8, !mcsema_real_eip !70
  %509 = inttoptr i64 %508 to i64*, !mcsema_real_eip !70
  %ESI_val.130 = load i32, i32* %ESI.19, !mcsema_real_eip !70
  %510 = inttoptr i64 %508 to i32*, !mcsema_real_eip !70
  store i32 %ESI_val.130, i32* %510, !mcsema_real_eip !70
  %RBP_val.131 = load i64, i64* %XBP, !mcsema_real_eip !71
  %511 = add i64 %RBP_val.131, -112, !mcsema_real_eip !71
  %512 = inttoptr i64 %511 to i64*, !mcsema_real_eip !71
  %513 = load i64, i64* %512, !mcsema_real_eip !71
  store i64 %513, i64* %XAX, !mcsema_real_eip !71
  %RSP_val.132 = load i64, i64* %XSP, !mcsema_real_eip !72
  %514 = add i64 104, %RSP_val.132, !mcsema_real_eip !72
  %515 = xor i64 %514, %RSP_val.132, !mcsema_real_eip !72
  %516 = xor i64 %515, 104, !mcsema_real_eip !72
  %517 = and i64 %516, 16, !mcsema_real_eip !72
  %518 = icmp ne i64 %517, 0, !mcsema_real_eip !72
  store i1 %518, i1* %AF, !mcsema_real_eip !72
  %519 = lshr i64 %514, 63, !mcsema_real_eip !72
  %520 = trunc i64 %519 to i1, !mcsema_real_eip !72
  store i1 %520, i1* %SF, !mcsema_real_eip !72
  %521 = icmp eq i64 %514, 0, !mcsema_real_eip !72
  store i1 %521, i1* %ZF, !mcsema_real_eip !72
  %522 = xor i64 %RSP_val.132, 104, !mcsema_real_eip !72
  %523 = xor i64 %522, -1, !mcsema_real_eip !72
  %524 = and i64 %523, %515, !mcsema_real_eip !72
  %525 = lshr i64 %524, 63, !mcsema_real_eip !72
  %526 = and i64 %525, 1, !mcsema_real_eip !72
  %527 = trunc i64 %526 to i1, !mcsema_real_eip !72
  store i1 %527, i1* %OF, !mcsema_real_eip !72
  %528 = trunc i64 %514 to i8, !mcsema_real_eip !72
  %529 = call i8 @llvm.ctpop.i8(i8 %528), !mcsema_real_eip !72
  %530 = trunc i8 %529 to i1, !mcsema_real_eip !72
  %531 = xor i1 %530, true, !mcsema_real_eip !72
  store i1 %531, i1* %PF, !mcsema_real_eip !72
  %532 = icmp ult i64 %514, %RSP_val.132, !mcsema_real_eip !72
  store i1 %532, i1* %CF, !mcsema_real_eip !72
  store i64 %514, i64* %XSP, !mcsema_real_eip !72
  %533 = inttoptr i64 %514 to i64*, !mcsema_real_eip !73
  %534 = load i64, i64* %533, !mcsema_real_eip !73
  store i64 %534, i64* %XBX, !mcsema_real_eip !73
  %535 = add i64 %514, 8, !mcsema_real_eip !73
  store i64 %535, i64* %XSP, !mcsema_real_eip !73
  %536 = inttoptr i64 %535 to i64*, !mcsema_real_eip !74
  %537 = load i64, i64* %536, !mcsema_real_eip !74
  store i64 %537, i64* %R14, !mcsema_real_eip !74
  %538 = add i64 %535, 8, !mcsema_real_eip !74
  store i64 %538, i64* %XSP, !mcsema_real_eip !74
  %539 = inttoptr i64 %538 to i64*, !mcsema_real_eip !75
  %540 = load i64, i64* %539, !mcsema_real_eip !75
  store i64 %540, i64* %R15, !mcsema_real_eip !75
  %541 = add i64 %538, 8, !mcsema_real_eip !75
  store i64 %541, i64* %XSP, !mcsema_real_eip !75
  %542 = inttoptr i64 %541 to i64*, !mcsema_real_eip !76
  %543 = load i64, i64* %542, !mcsema_real_eip !76
  store i64 %543, i64* %XBP, !mcsema_real_eip !76
  %544 = add i64 %541, 8, !mcsema_real_eip !76
  store i64 %544, i64* %XSP, !mcsema_real_eip !76
  %545 = add i64 %544, 8, !mcsema_real_eip !77
  %546 = inttoptr i64 %544 to i64*, !mcsema_real_eip !77
  %547 = load i64, i64* %546, !mcsema_real_eip !77
  store i64 %547, i64* %XIP, !mcsema_real_eip !77
  store i64 %545, i64* %XSP, !mcsema_real_eip !77
  ret void, !mcsema_real_eip !77
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_100(%RegState*) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 144
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 144
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !78
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !78
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !78
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !78
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !78
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !78
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !78
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !78
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !78
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !78
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !78
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !78
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !78
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !78
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !78
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !78
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !78
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !78
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !78
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !78
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !78
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !78
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !78
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !78
  br label %block_0x100, !mcsema_real_eip !78

block_0x100:                                      ; preds = %entry
  %_load_rbp_ptr_ = load i8*, i8** %_RBP_ptr_
  %RSP_val.139 = load i64, i64* %XSP, !mcsema_real_eip !78
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %1 = sub i64 %RSP_val.139, 8, !mcsema_real_eip !78
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_load_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %1, i64* %XSP, !mcsema_real_eip !78
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %1, i64* %XBP, !mcsema_real_eip !79
  %_load_rsp_ptr_2 = load i8*, i8** %_RSP_ptr_
  %RSP_val.141 = load i64, i64* %XSP, !mcsema_real_eip !80
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -128
  %2 = sub i64 %RSP_val.141, 128, !mcsema_real_eip !80
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 128, !mcsema_real_eip !80
  %4 = and i64 %3, 16, !mcsema_real_eip !80
  %5 = icmp ne i64 %4, 0, !mcsema_real_eip !80
  store i1 %5, i1* %AF, !mcsema_real_eip !80
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %6 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !80
  %7 = trunc i8 %6 to i1, !mcsema_real_eip !80
  %8 = xor i1 %7, true, !mcsema_real_eip !80
  store i1 %8, i1* %PF, !mcsema_real_eip !80
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_, 0
  store i1 %_trans_icmp_eq_, i1* %ZF, !mcsema_real_eip !80
  %9 = lshr i64 %2, 63, !mcsema_real_eip !80
  %10 = trunc i64 %9 to i1, !mcsema_real_eip !80
  store i1 %10, i1* %SF, !mcsema_real_eip !80
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 128
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !80
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 128
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !80
  %12 = lshr i64 %11, 63, !mcsema_real_eip !80
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !80
  store i1 %13, i1* %OF, !mcsema_real_eip !80
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !80
  store i64 12, i64* %XAX, !mcsema_real_eip !81
  %EAX.142 = bitcast i64* %XAX to i32*, !mcsema_real_eip !82
  %EAX_val.143 = load i32, i32* %EAX.142, !mcsema_real_eip !82
  %14 = zext i32 %EAX_val.143 to i64, !mcsema_real_eip !82
  store i64 %14, i64* %XDI, !mcsema_real_eip !82
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -4
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %15 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !83
  %16 = inttoptr i64 %15 to i32*, !mcsema_real_eip !83
  store i32 0, i32* %16, !mcsema_real_eip !83
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -16
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %17 = ptrtoint i64* %_allin_new_bt_18 to i64, !mcsema_real_eip !84
  %18 = inttoptr i64 %17 to i32*, !mcsema_real_eip !84
  store i32 10, i32* %18, !mcsema_real_eip !84
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -12
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %19 = ptrtoint i64* %_allin_new_bt_21 to i64, !mcsema_real_eip !85
  %20 = inttoptr i64 %19 to i32*, !mcsema_real_eip !85
  store i32 10, i32* %20, !mcsema_real_eip !85
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -8
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %21 = ptrtoint i64* %_allin_new_bt_24 to i64, !mcsema_real_eip !86
  %22 = inttoptr i64 %21 to i32*, !mcsema_real_eip !86
  store i32 10, i32* %22, !mcsema_real_eip !86
  %RDI_val.148 = load i64, i64* %XDI, !mcsema_real_eip !87
  %_load_rsp_ptr_25 = load i8*, i8** %_RSP_ptr_
  %RSP_val.149 = load i64, i64* %XSP, !mcsema_real_eip !87
  %_new_gep_26 = getelementptr i8, i8* %_load_rsp_ptr_25, i64 -8
  %23 = sub i64 %RSP_val.149, 8, !mcsema_real_eip !87
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_27, !mcsema_real_eip !87
  store volatile i8* %_new_gep_26, i8** %_RSP_ptr_
  store i64 %23, i64* %XSP, !mcsema_real_eip !87
  %24 = call x86_64_sysvcc i64 @_malloc(i64 %RDI_val.148)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %24, i64* %XAX, !mcsema_real_eip !87
  %_load_rbp_ptr_28 = load i8*, i8** %_RBP_ptr_
  %_new_gep_29 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -16
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %25 = ptrtoint i64* %_allin_new_bt_30 to i64, !mcsema_real_eip !88
  store i64 %25, i64* %XDI, !mcsema_real_eip !88
  store i64 1, i64* %R8, !mcsema_real_eip !89
  store i64 2, i64* %R9, !mcsema_real_eip !90
  store i64 3, i64* %XCX, !mcsema_real_eip !91
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -24
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  store i64 %24, i64* %_allin_new_bt_33, !mcsema_real_eip !92
  %_load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_34, i64 -24
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %26 = load i64, i64* %_allin_new_bt_36, !mcsema_real_eip !93
  store i64 %26, i64* %XAX, !mcsema_real_eip !93
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !94
  %28 = inttoptr i64 %26 to i32*, !mcsema_real_eip !94
  store i32 5, i32* %28, !mcsema_real_eip !94
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -24
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %29 = load i64, i64* %_allin_new_bt_39, !mcsema_real_eip !95
  store i64 %29, i64* %XAX, !mcsema_real_eip !95
  %30 = add i64 %29, 4, !mcsema_real_eip !96
  %31 = inttoptr i64 %30 to i64*, !mcsema_real_eip !96
  %32 = inttoptr i64 %30 to i32*, !mcsema_real_eip !96
  store i32 5, i32* %32, !mcsema_real_eip !96
  %_load_rbp_ptr_40 = load i8*, i8** %_RBP_ptr_
  %_new_gep_41 = getelementptr i8, i8* %_load_rbp_ptr_40, i64 -24
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %33 = load i64, i64* %_allin_new_bt_42, !mcsema_real_eip !97
  store i64 %33, i64* %XAX, !mcsema_real_eip !97
  %34 = add i64 %33, 8, !mcsema_real_eip !98
  %35 = inttoptr i64 %34 to i64*, !mcsema_real_eip !98
  %36 = inttoptr i64 %34 to i32*, !mcsema_real_eip !98
  store i32 5, i32* %36, !mcsema_real_eip !98
  %_load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -24
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %37 = load i64, i64* %_allin_new_bt_45, !mcsema_real_eip !99
  store i64 %37, i64* %XAX, !mcsema_real_eip !99
  %38 = load i64, i64* %_allin_new_bt_45, !mcsema_real_eip !100
  store i64 %38, i64* %XDX, !mcsema_real_eip !100
  %_new_gep_50 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -16
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  %39 = load i64, i64* %_allin_new_bt_51, !mcsema_real_eip !101
  store i64 %39, i64* %XSI, !mcsema_real_eip !101
  %_new_gep_53 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -48
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  store i64 %39, i64* %_allin_new_bt_54, !mcsema_real_eip !102
  %_load_rbp_ptr_55 = load i8*, i8** %_RBP_ptr_
  %_new_gep_56 = getelementptr i8, i8* %_load_rbp_ptr_55, i64 -8
  %_allin_new_bt_57 = bitcast i8* %_new_gep_56 to i64*
  %40 = ptrtoint i64* %_allin_new_bt_57 to i64, !mcsema_real_eip !103
  %41 = inttoptr i64 %40 to i32*, !mcsema_real_eip !103
  %42 = load i32, i32* %41, !mcsema_real_eip !103
  %43 = zext i32 %42 to i64, !mcsema_real_eip !103
  store i64 %43, i64* %R10, !mcsema_real_eip !103
  %_new_gep_59 = getelementptr i8, i8* %_load_rbp_ptr_55, i64 -40
  %_allin_new_bt_60 = bitcast i8* %_new_gep_59 to i64*
  %R10D.166 = bitcast i64* %R10 to i32*, !mcsema_real_eip !104
  %R10D_val.167 = load i32, i32* %R10D.166, !mcsema_real_eip !104
  %44 = ptrtoint i64* %_allin_new_bt_60 to i64, !mcsema_real_eip !104
  %45 = inttoptr i64 %44 to i32*, !mcsema_real_eip !104
  store i32 %R10D_val.167, i32* %45, !mcsema_real_eip !104
  %_load_rbp_ptr_61 = load i8*, i8** %_RBP_ptr_
  %_new_gep_62 = getelementptr i8, i8* %_load_rbp_ptr_61, i64 -48
  %_allin_new_bt_63 = bitcast i8* %_new_gep_62 to i64*
  %46 = load i64, i64* %_allin_new_bt_63, !mcsema_real_eip !105
  store i64 %46, i64* %XSI, !mcsema_real_eip !105
  %_new_gep_65 = getelementptr i8, i8* %_load_rbp_ptr_61, i64 -40
  %_allin_new_bt_66 = bitcast i8* %_new_gep_65 to i64*
  %47 = ptrtoint i64* %_allin_new_bt_66 to i64, !mcsema_real_eip !106
  %48 = inttoptr i64 %47 to i32*, !mcsema_real_eip !106
  %49 = load i32, i32* %48, !mcsema_real_eip !106
  %50 = zext i32 %49 to i64, !mcsema_real_eip !106
  store i64 %50, i64* %R10, !mcsema_real_eip !106
  %_new_gep_68 = getelementptr i8, i8* %_load_rbp_ptr_61, i64 -64
  %_allin_new_bt_69 = bitcast i8* %_new_gep_68 to i64*
  %RDI_val.171 = load i64, i64* %XDI, !mcsema_real_eip !107
  store i64 %RDI_val.171, i64* %_allin_new_bt_69, !mcsema_real_eip !107
  %RSI_val.172 = load i64, i64* %XSI, !mcsema_real_eip !108
  store i64 %RSI_val.172, i64* %XDI, !mcsema_real_eip !108
  %R10D_val.174 = load i32, i32* %R10D.166, !mcsema_real_eip !109
  %51 = zext i32 %R10D_val.174 to i64, !mcsema_real_eip !109
  store i64 %51, i64* %XSI, !mcsema_real_eip !109
  %_load_rbp_ptr_70 = load i8*, i8** %_RBP_ptr_
  %_new_gep_71 = getelementptr i8, i8* %_load_rbp_ptr_70, i64 -64
  %_allin_new_bt_72 = bitcast i8* %_new_gep_71 to i64*
  %52 = load i64, i64* %_allin_new_bt_72, !mcsema_real_eip !110
  store i64 %52, i64* %R11, !mcsema_real_eip !110
  %_new_gep_74 = getelementptr i8, i8* %_load_rbp_ptr_70, i64 -72
  %_allin_new_bt_75 = bitcast i8* %_new_gep_74 to i64*
  %RDX_val.177 = load i64, i64* %XDX, !mcsema_real_eip !111
  store i64 %RDX_val.177, i64* %_allin_new_bt_75, !mcsema_real_eip !111
  %R11_val.178 = load i64, i64* %R11, !mcsema_real_eip !112
  store i64 %R11_val.178, i64* %XDX, !mcsema_real_eip !112
  %_load_rbp_ptr_76 = load i8*, i8** %_RBP_ptr_
  %_new_gep_77 = getelementptr i8, i8* %_load_rbp_ptr_76, i64 -76
  %_allin_new_bt_78 = bitcast i8* %_new_gep_77 to i64*
  %ECX.180 = bitcast i64* %XCX to i32*, !mcsema_real_eip !113
  %ECX_val.181 = load i32, i32* %ECX.180, !mcsema_real_eip !113
  %53 = ptrtoint i64* %_allin_new_bt_78 to i64, !mcsema_real_eip !113
  %54 = inttoptr i64 %53 to i32*, !mcsema_real_eip !113
  store i32 %ECX_val.181, i32* %54, !mcsema_real_eip !113
  %RAX_val.182 = load i64, i64* %XAX, !mcsema_real_eip !114
  store i64 %RAX_val.182, i64* %XCX, !mcsema_real_eip !114
  %_load_rsp_ptr_79 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_81 = bitcast i8* %_load_rsp_ptr_79 to i64*
  %55 = ptrtoint i64* %_allin_new_bt_81 to i64, !mcsema_real_eip !115
  %56 = inttoptr i64 %55 to i32*, !mcsema_real_eip !115
  store i32 3, i32* %56, !mcsema_real_eip !115
  %R11_val.184 = load i64, i64* %R11, !mcsema_real_eip !116
  %57 = inttoptr i64 %R11_val.184 to i64*, !mcsema_real_eip !116
  %58 = load i64, i64* %57, !mcsema_real_eip !116
  store i64 %58, i64* %XAX, !mcsema_real_eip !116
  %_load_rsp_ptr_82 = load i8*, i8** %_RSP_ptr_
  %_new_gep_83 = getelementptr i8, i8* %_load_rsp_ptr_82, i64 8
  %_allin_new_bt_84 = bitcast i8* %_new_gep_83 to i64*
  store i64 %58, i64* %_allin_new_bt_84, !mcsema_real_eip !117
  %R11_val.187 = load i64, i64* %R11, !mcsema_real_eip !118
  %59 = add i64 %R11_val.187, 8, !mcsema_real_eip !118
  %60 = inttoptr i64 %59 to i64*, !mcsema_real_eip !118
  %61 = inttoptr i64 %59 to i32*, !mcsema_real_eip !118
  %62 = load i32, i32* %61, !mcsema_real_eip !118
  %63 = zext i32 %62 to i64, !mcsema_real_eip !118
  store i64 %63, i64* %R10, !mcsema_real_eip !118
  %_load_rsp_ptr_85 = load i8*, i8** %_RSP_ptr_
  %_new_gep_86 = getelementptr i8, i8* %_load_rsp_ptr_85, i64 16
  %_allin_new_bt_87 = bitcast i8* %_new_gep_86 to i64*
  %R10D_val.190 = load i32, i32* %R10D.166, !mcsema_real_eip !119
  %64 = ptrtoint i64* %_allin_new_bt_87 to i64, !mcsema_real_eip !119
  %65 = inttoptr i64 %64 to i32*, !mcsema_real_eip !119
  store i32 %R10D_val.190, i32* %65, !mcsema_real_eip !119
  %_load_rsp_ptr_88 = load i8*, i8** %_RSP_ptr_
  %_new_gep_89 = getelementptr i8, i8* %_load_rsp_ptr_88, i64 24
  %_allin_new_bt_90 = bitcast i8* %_new_gep_89 to i64*
  %R11_val.192 = load i64, i64* %R11, !mcsema_real_eip !120
  store i64 %R11_val.192, i64* %_allin_new_bt_90, !mcsema_real_eip !120
  %_load_rbp_ptr_91 = load i8*, i8** %_RBP_ptr_
  %_new_gep_92 = getelementptr i8, i8* %_load_rbp_ptr_91, i64 -72
  %_allin_new_bt_93 = bitcast i8* %_new_gep_92 to i64*
  %66 = load i64, i64* %_allin_new_bt_93, !mcsema_real_eip !121
  store i64 %66, i64* %XAX, !mcsema_real_eip !121
  %_load_rsp_ptr_94 = load i8*, i8** %_RSP_ptr_
  %_new_gep_95 = getelementptr i8, i8* %_load_rsp_ptr_94, i64 32
  %_allin_new_bt_96 = bitcast i8* %_new_gep_95 to i64*
  store i64 %66, i64* %_allin_new_bt_96, !mcsema_real_eip !122
  %_load_rsp_ptr_97 = load i8*, i8** %_RSP_ptr_
  %RSP_val.196 = load i64, i64* %XSP, !mcsema_real_eip !123
  %_new_gep_98 = getelementptr i8, i8* %_load_rsp_ptr_97, i64 -8
  %67 = sub i64 %RSP_val.196, 8, !mcsema_real_eip !123
  %_allin_new_bt_99 = bitcast i8* %_new_gep_98 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_99, !mcsema_real_eip !123
  store volatile i8* %_new_gep_98, i8** %_RSP_ptr_
  store i64 %67, i64* %XSP, !mcsema_real_eip !123
  %_load_rbp_ptr_169 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.1(%RegState* %0, i8* %_new_gep_98, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_169)
  %_rsp_fix_171 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_172 = getelementptr i8, i8* %_rsp_fix_171, i64 8
  store i8* %_gep_fix_172, i8** %_RSP_ptr_
  store i64 ptrtoint (%0* @data_0x212 to i64), i64* %XDI, !mcsema_real_eip !124
  %_load_rbp_ptr_100 = load i8*, i8** %_RBP_ptr_
  %_new_gep_101 = getelementptr i8, i8* %_load_rbp_ptr_100, i64 -32
  %_allin_new_bt_102 = bitcast i8* %_new_gep_101 to i64*
  %RAX_val.198 = load i64, i64* %XAX, !mcsema_real_eip !125
  store i64 %RAX_val.198, i64* %_allin_new_bt_102, !mcsema_real_eip !125
  %_load_rbp_ptr_103 = load i8*, i8** %_RBP_ptr_
  %_new_gep_104 = getelementptr i8, i8* %_load_rbp_ptr_103, i64 -32
  %_allin_new_bt_105 = bitcast i8* %_new_gep_104 to i64*
  %68 = load i64, i64* %_allin_new_bt_105, !mcsema_real_eip !126
  store i64 %68, i64* %XAX, !mcsema_real_eip !126
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !127
  %70 = inttoptr i64 %68 to i32*, !mcsema_real_eip !127
  %71 = load i32, i32* %70, !mcsema_real_eip !127
  %72 = zext i32 %71 to i64, !mcsema_real_eip !127
  store i64 %72, i64* %XSI, !mcsema_real_eip !127
  %73 = load i64, i64* %_allin_new_bt_105, !mcsema_real_eip !128
  store i64 %73, i64* %XAX, !mcsema_real_eip !128
  %74 = add i64 %73, 4, !mcsema_real_eip !129
  %75 = inttoptr i64 %74 to i64*, !mcsema_real_eip !129
  %76 = inttoptr i64 %74 to i32*, !mcsema_real_eip !129
  %77 = load i32, i32* %76, !mcsema_real_eip !129
  %ESI.203 = bitcast i64* %XSI to i32*, !mcsema_real_eip !129
  %ESI_val.204 = load i32, i32* %ESI.203, !mcsema_real_eip !129
  %78 = add i32 %ESI_val.204, %77, !mcsema_real_eip !129
  %79 = xor i32 %78, %77, !mcsema_real_eip !129
  %80 = xor i32 %79, %ESI_val.204, !mcsema_real_eip !129
  %81 = and i32 %80, 16, !mcsema_real_eip !129
  %82 = icmp ne i32 %81, 0, !mcsema_real_eip !129
  store i1 %82, i1* %AF, !mcsema_real_eip !129
  %83 = lshr i32 %78, 31, !mcsema_real_eip !129
  %84 = trunc i32 %83 to i1, !mcsema_real_eip !129
  store i1 %84, i1* %SF, !mcsema_real_eip !129
  %85 = icmp eq i32 %78, 0, !mcsema_real_eip !129
  store i1 %85, i1* %ZF, !mcsema_real_eip !129
  %86 = xor i32 %77, %ESI_val.204, !mcsema_real_eip !129
  %87 = xor i32 %86, -1, !mcsema_real_eip !129
  %88 = and i32 %87, %79, !mcsema_real_eip !129
  %89 = lshr i32 %88, 31, !mcsema_real_eip !129
  %90 = and i32 %89, 1, !mcsema_real_eip !129
  %91 = trunc i32 %90 to i1, !mcsema_real_eip !129
  store i1 %91, i1* %OF, !mcsema_real_eip !129
  %92 = trunc i32 %78 to i8, !mcsema_real_eip !129
  %93 = call i8 @llvm.ctpop.i8(i8 %92), !mcsema_real_eip !129
  %94 = trunc i8 %93 to i1, !mcsema_real_eip !129
  %95 = xor i1 %94, true, !mcsema_real_eip !129
  store i1 %95, i1* %PF, !mcsema_real_eip !129
  %96 = icmp ult i32 %78, %77, !mcsema_real_eip !129
  store i1 %96, i1* %CF, !mcsema_real_eip !129
  %97 = zext i32 %78 to i64, !mcsema_real_eip !129
  store i64 %97, i64* %XSI, !mcsema_real_eip !129
  %98 = load i64, i64* %_allin_new_bt_105, !mcsema_real_eip !130
  store i64 %98, i64* %XAX, !mcsema_real_eip !130
  %99 = add i64 %98, 8, !mcsema_real_eip !131
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !131
  %101 = inttoptr i64 %99 to i32*, !mcsema_real_eip !131
  %102 = load i32, i32* %101, !mcsema_real_eip !131
  %ESI_val.208 = load i32, i32* %ESI.203, !mcsema_real_eip !131
  %103 = add i32 %ESI_val.208, %102, !mcsema_real_eip !131
  %104 = xor i32 %103, %102, !mcsema_real_eip !131
  %105 = xor i32 %104, %ESI_val.208, !mcsema_real_eip !131
  %106 = and i32 %105, 16, !mcsema_real_eip !131
  %107 = icmp ne i32 %106, 0, !mcsema_real_eip !131
  store i1 %107, i1* %AF, !mcsema_real_eip !131
  %108 = lshr i32 %103, 31, !mcsema_real_eip !131
  %109 = trunc i32 %108 to i1, !mcsema_real_eip !131
  store i1 %109, i1* %SF, !mcsema_real_eip !131
  %110 = icmp eq i32 %103, 0, !mcsema_real_eip !131
  store i1 %110, i1* %ZF, !mcsema_real_eip !131
  %111 = xor i32 %102, %ESI_val.208, !mcsema_real_eip !131
  %112 = xor i32 %111, -1, !mcsema_real_eip !131
  %113 = and i32 %112, %104, !mcsema_real_eip !131
  %114 = lshr i32 %113, 31, !mcsema_real_eip !131
  %115 = and i32 %114, 1, !mcsema_real_eip !131
  %116 = trunc i32 %115 to i1, !mcsema_real_eip !131
  store i1 %116, i1* %OF, !mcsema_real_eip !131
  %117 = trunc i32 %103 to i8, !mcsema_real_eip !131
  %118 = call i8 @llvm.ctpop.i8(i8 %117), !mcsema_real_eip !131
  %119 = trunc i8 %118 to i1, !mcsema_real_eip !131
  %120 = xor i1 %119, true, !mcsema_real_eip !131
  store i1 %120, i1* %PF, !mcsema_real_eip !131
  %121 = icmp ult i32 %103, %102, !mcsema_real_eip !131
  store i1 %121, i1* %CF, !mcsema_real_eip !131
  %122 = zext i32 %103 to i64, !mcsema_real_eip !131
  store i64 %122, i64* %XSI, !mcsema_real_eip !131
  %_new_gep_113 = getelementptr i8, i8* %_load_rbp_ptr_103, i64 -52
  %_allin_new_bt_114 = bitcast i8* %_new_gep_113 to i64*
  %ESI_val.211 = load i32, i32* %ESI.203, !mcsema_real_eip !132
  %123 = ptrtoint i64* %_allin_new_bt_114 to i64, !mcsema_real_eip !132
  %124 = inttoptr i64 %123 to i32*, !mcsema_real_eip !132
  store i32 %ESI_val.211, i32* %124, !mcsema_real_eip !132
  %_load_rbp_ptr_115 = load i8*, i8** %_RBP_ptr_
  %_new_gep_116 = getelementptr i8, i8* %_load_rbp_ptr_115, i64 -52
  %_allin_new_bt_117 = bitcast i8* %_new_gep_116 to i64*
  %125 = ptrtoint i64* %_allin_new_bt_117 to i64, !mcsema_real_eip !133
  %126 = inttoptr i64 %125 to i32*, !mcsema_real_eip !133
  %127 = load i32, i32* %126, !mcsema_real_eip !133
  %128 = zext i32 %127 to i64, !mcsema_real_eip !133
  store i64 %128, i64* %XSI, !mcsema_real_eip !133
  %AL.213 = bitcast i64* %XAX to i8*, !mcsema_real_eip !134
  store i8 0, i8* %AL.213, !mcsema_real_eip !134
  %RDI_val.214 = load i64, i64* %XDI, !mcsema_real_eip !135
  %RDX_val.216 = load i64, i64* %XDX, !mcsema_real_eip !135
  %RCX_val.217 = load i64, i64* %XCX, !mcsema_real_eip !135
  %R8_val.218 = load i64, i64* %R8, !mcsema_real_eip !135
  %R9_val.219 = load i64, i64* %R9, !mcsema_real_eip !135
  %_load_rsp_ptr_118 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_119 = bitcast i8* %_load_rsp_ptr_118 to i64*
  %129 = load i64, i64* %_allin_new_bt_119, !mcsema_real_eip !135
  %_new_gep_120 = getelementptr i8, i8* %_load_rsp_ptr_118, i64 8
  %_allin_new_bt_121 = bitcast i8* %_new_gep_120 to i64*
  %130 = load i64, i64* %_allin_new_bt_121, !mcsema_real_eip !135
  %_new_gep_122 = getelementptr i8, i8* %_new_gep_120, i64 8
  %_allin_new_bt_123 = bitcast i8* %_new_gep_122 to i64*
  %131 = load i64, i64* %_allin_new_bt_123, !mcsema_real_eip !135
  %_new_gep_124 = getelementptr i8, i8* %_new_gep_122, i64 8
  %_allin_new_bt_125 = bitcast i8* %_new_gep_124 to i64*
  %132 = load i64, i64* %_allin_new_bt_125, !mcsema_real_eip !135
  %_new_gep_126 = getelementptr i8, i8* %_new_gep_124, i64 8
  %_allin_new_bt_127 = bitcast i8* %_new_gep_126 to i64*
  %133 = load i64, i64* %_allin_new_bt_127, !mcsema_real_eip !135
  %_new_gep_128 = getelementptr i8, i8* %_new_gep_126, i64 8
  %_allin_new_bt_129 = bitcast i8* %_new_gep_128 to i64*
  %134 = load i64, i64* %_allin_new_bt_129, !mcsema_real_eip !135
  %_new_gep_130 = getelementptr i8, i8* %_new_gep_128, i64 8
  %_allin_new_bt_131 = bitcast i8* %_new_gep_130 to i64*
  %135 = load i64, i64* %_allin_new_bt_131, !mcsema_real_eip !135
  %_new_gep_132 = getelementptr i8, i8* %_new_gep_130, i64 8
  %_allin_new_bt_133 = bitcast i8* %_new_gep_132 to i64*
  %136 = load i64, i64* %_allin_new_bt_133, !mcsema_real_eip !135
  %_new_gep_134 = getelementptr i8, i8* %_new_gep_132, i64 8
  %_allin_new_bt_135 = bitcast i8* %_new_gep_134 to i64*
  %137 = load i64, i64* %_allin_new_bt_135, !mcsema_real_eip !135
  %_new_gep_136 = getelementptr i8, i8* %_new_gep_134, i64 8
  %_allin_new_bt_137 = bitcast i8* %_new_gep_136 to i64*
  %138 = load i64, i64* %_allin_new_bt_137, !mcsema_real_eip !135
  %RSP_val.221 = load i64, i64* %XSP, !mcsema_real_eip !135
  %_new_gep_139 = getelementptr i8, i8* %_load_rsp_ptr_118, i64 -8
  %139 = sub i64 %RSP_val.221, 8, !mcsema_real_eip !135
  %_allin_new_bt_140 = bitcast i8* %_new_gep_139 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_140, !mcsema_real_eip !135
  store volatile i8* %_new_gep_139, i8** %_RSP_ptr_
  store i64 %139, i64* %XSP, !mcsema_real_eip !135
  %140 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.214, i64 %128, i64 %RDX_val.216, i64 %RCX_val.217, i64 %R8_val.218, i64 %R9_val.219, i64 %129, i64 %130, i64 %131, i64 %132, i64 %133, i64 %134, i64 %135, i64 %136, i64 %137, i64 %138)
  %_rsp_fix_173 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_174 = getelementptr i8, i8* %_rsp_fix_173, i64 8
  store i8* %_gep_fix_174, i8** %_RSP_ptr_
  store i64 %140, i64* %XAX, !mcsema_real_eip !135
  %_load_rbp_ptr_141 = load i8*, i8** %_RBP_ptr_
  %_new_gep_142 = getelementptr i8, i8* %_load_rbp_ptr_141, i64 -52
  %_allin_new_bt_143 = bitcast i8* %_new_gep_142 to i64*
  %141 = ptrtoint i64* %_allin_new_bt_143 to i64, !mcsema_real_eip !136
  %142 = inttoptr i64 %141 to i32*, !mcsema_real_eip !136
  %143 = load i32, i32* %142, !mcsema_real_eip !136
  %144 = zext i32 %143 to i64, !mcsema_real_eip !136
  store i64 %144, i64* %XSI, !mcsema_real_eip !136
  %_new_gep_145 = getelementptr i8, i8* %_load_rbp_ptr_141, i64 -80
  %_allin_new_bt_146 = bitcast i8* %_new_gep_145 to i64*
  %EAX_val.225 = load i32, i32* %EAX.142, !mcsema_real_eip !137
  %145 = ptrtoint i64* %_allin_new_bt_146 to i64, !mcsema_real_eip !137
  %146 = inttoptr i64 %145 to i32*, !mcsema_real_eip !137
  store i32 %EAX_val.225, i32* %146, !mcsema_real_eip !137
  %ESI_val.227 = load i32, i32* %ESI.203, !mcsema_real_eip !138
  %147 = zext i32 %ESI_val.227 to i64, !mcsema_real_eip !138
  store i64 %147, i64* %XAX, !mcsema_real_eip !138
  %_load_rsp_ptr_147 = load i8*, i8** %_RSP_ptr_
  %RSP_val.228 = load i64, i64* %XSP, !mcsema_real_eip !139
  %_new_gep_148 = getelementptr i8, i8* %_load_rsp_ptr_147, i64 128
  %148 = add i64 128, %RSP_val.228, !mcsema_real_eip !139
  %_trans_p2i_149 = ptrtoint i8* %_new_gep_148 to i64
  %_trans_p2i_150 = ptrtoint i8* %_load_rsp_ptr_147 to i64
  %_trans_xor_151 = xor i64 %_trans_p2i_149, %_trans_p2i_150
  %149 = xor i64 %_trans_xor_151, 128, !mcsema_real_eip !139
  %150 = and i64 %149, 16, !mcsema_real_eip !139
  %151 = icmp ne i64 %150, 0, !mcsema_real_eip !139
  store i1 %151, i1* %AF, !mcsema_real_eip !139
  %152 = lshr i64 %148, 63, !mcsema_real_eip !139
  %153 = trunc i64 %152 to i1, !mcsema_real_eip !139
  store i1 %153, i1* %SF, !mcsema_real_eip !139
  %_trans_icmp_eq_153 = icmp eq i64 %_trans_p2i_149, 0
  store i1 %_trans_icmp_eq_153, i1* %ZF, !mcsema_real_eip !139
  %_trans_xor_155 = xor i64 %_trans_p2i_150, 128
  %154 = xor i64 %_trans_xor_155, -1, !mcsema_real_eip !139
  %155 = and i64 %154, %_trans_xor_151, !mcsema_real_eip !139
  %156 = lshr i64 %155, 63, !mcsema_real_eip !139
  %157 = and i64 %156, 1, !mcsema_real_eip !139
  %158 = trunc i64 %157 to i1, !mcsema_real_eip !139
  store i1 %158, i1* %OF, !mcsema_real_eip !139
  %_trans_trunc_160 = trunc i64 %_trans_p2i_149 to i8
  %159 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_160), !mcsema_real_eip !139
  %160 = trunc i8 %159 to i1, !mcsema_real_eip !139
  %161 = xor i1 %160, true, !mcsema_real_eip !139
  store i1 %161, i1* %PF, !mcsema_real_eip !139
  %_trans_icmp_ne_162 = icmp ne i64 %_trans_p2i_149, %RSP_val.228
  store i1 %_trans_icmp_ne_162, i1* %CF, !mcsema_real_eip !139
  store volatile i8* %_new_gep_148, i8** %_RSP_ptr_
  store i64 %148, i64* %XSP, !mcsema_real_eip !139
  %_allin_new_bt_164 = bitcast i8* %_new_gep_148 to i64*
  %162 = load i64, i64* %_allin_new_bt_164, !mcsema_real_eip !140
  %_new_int2ptr_ = inttoptr i64 %162 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %162, i64* %XBP, !mcsema_real_eip !140
  %_new_gep_165 = getelementptr i8, i8* %_new_gep_148, i64 8
  %163 = add i64 %148, 8, !mcsema_real_eip !140
  store volatile i8* %_new_gep_165, i8** %_RSP_ptr_
  store i64 %163, i64* %XSP, !mcsema_real_eip !140
  %_new_gep_167 = getelementptr i8, i8* %_new_gep_165, i64 8
  %164 = add i64 %163, 8, !mcsema_real_eip !141
  %_allin_new_bt_168 = bitcast i8* %_new_gep_165 to i64*
  %165 = load i64, i64* %_allin_new_bt_168, !mcsema_real_eip !141
  store i64 %165, i64* %XIP, !mcsema_real_eip !141
  store volatile i8* %_new_gep_167, i8** %_RSP_ptr_
  store i64 %164, i64* %XSP, !mcsema_real_eip !141
  ret void, !mcsema_real_eip !141
}

declare x86_64_sysvcc i64 @malloc(i64 inreg)

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_malloc(i64) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #2

; Function Attrs: naked noinline
declare void @main() #2

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0.1(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 144
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 144
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !2
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !2
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !2
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
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !2
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !2
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !2
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !2
  %R14 = getelementptr %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !2
  %R15 = getelementptr %RegState, %RegState* %0, i32 0, i32 71, !mcsema_real_eip !2
  br label %block_0x0, !mcsema_real_eip !2

block_0x0:                                        ; preds = %entry
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
  %R15_val.3 = load i64, i64* %R15, !mcsema_real_eip !4
  %_load_rsp_ptr_2 = load i8*, i8** %_RSP_ptr_
  %RSP_val.4 = load i64, i64* %XSP, !mcsema_real_eip !4
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -8
  %2 = sub i64 %RSP_val.4, 8, !mcsema_real_eip !4
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  store i64 %R15_val.3, i64* %_allin_new_bt_4, !mcsema_real_eip !4
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !4
  %R14_val.5 = load i64, i64* %R14, !mcsema_real_eip !5
  %_new_gep_6 = getelementptr i8, i8* %_new_gep_3, i64 -8
  %3 = sub i64 %2, 8, !mcsema_real_eip !5
  %_allin_new_bt_7 = bitcast i8* %_new_gep_6 to i64*
  store i64 %R14_val.5, i64* %_allin_new_bt_7, !mcsema_real_eip !5
  store volatile i8* %_new_gep_6, i8** %_RSP_ptr_
  store i64 %3, i64* %XSP, !mcsema_real_eip !5
  %RBX_val.7 = load i64, i64* %XBX, !mcsema_real_eip !6
  %_new_gep_9 = getelementptr i8, i8* %_new_gep_6, i64 -8
  %4 = sub i64 %3, 8, !mcsema_real_eip !6
  %_allin_new_bt_10 = bitcast i8* %_new_gep_9 to i64*
  store i64 %RBX_val.7, i64* %_allin_new_bt_10, !mcsema_real_eip !6
  store volatile i8* %_new_gep_9, i8** %_RSP_ptr_
  store i64 %4, i64* %XSP, !mcsema_real_eip !6
  %_new_gep_12 = getelementptr i8, i8* %_new_gep_9, i64 -104
  %5 = sub i64 %4, 104, !mcsema_real_eip !7
  %_trans_p2i_ = ptrtoint i8* %_new_gep_12 to i64
  %_trans_p2i_13 = ptrtoint i8* %_new_gep_9 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_13
  %6 = xor i64 %_trans_xor_, 104, !mcsema_real_eip !7
  %7 = and i64 %6, 16, !mcsema_real_eip !7
  %8 = icmp ne i64 %7, 0, !mcsema_real_eip !7
  store i1 %8, i1* %AF, !mcsema_real_eip !7
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %9 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !7
  %10 = trunc i8 %9 to i1, !mcsema_real_eip !7
  %11 = xor i1 %10, true, !mcsema_real_eip !7
  store i1 %11, i1* %PF, !mcsema_real_eip !7
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_, 0
  store i1 %_trans_icmp_eq_, i1* %ZF, !mcsema_real_eip !7
  %12 = lshr i64 %5, 63, !mcsema_real_eip !7
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !7
  store i1 %13, i1* %SF, !mcsema_real_eip !7
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_13, 104
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !7
  %_trans_xor_18 = xor i64 %_trans_p2i_13, 104
  %14 = and i64 %_trans_xor_18, %_trans_xor_, !mcsema_real_eip !7
  %15 = lshr i64 %14, 63, !mcsema_real_eip !7
  %16 = trunc i64 %15 to i1, !mcsema_real_eip !7
  store i1 %16, i1* %OF, !mcsema_real_eip !7
  store volatile i8* %_new_gep_12, i8** %_RSP_ptr_
  store i64 %5, i64* %XSP, !mcsema_real_eip !7
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 48
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %_ptr_to_int_ = ptrtoint i64* %_allin_new_bt_24 to i64
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_new_gep_23, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_new_gep_23, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_new_gep_23, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %17, label %18

; <label>:17:                                     ; preds = %block_0x0
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  br label %18

; <label>:18:                                     ; preds = %block_0x0, %17
  %19 = phi i64* [ %_allin_new_bt_24, %block_0x0 ], [ %_address_in_parent_stack_bt_, %17 ]
  %_new_load_ = load i64, i64* %19
  store i64 %_new_load_, i64* %XAX, !mcsema_real_eip !8
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 40
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %_ptr_to_int_173 = ptrtoint i64* %_allin_new_bt_27 to i64
  %_offset_above_rbp_176 = sub i64 %_ptr_to_int_173, %_local_end_to_int_
  %_pot_address_in_parent_stack_177 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_176
  %_cond1_178 = icmp ugt i8* %_new_gep_26, %_local_stack_end_ptr_
  %_cond2_1_179 = icmp ugt i8* %_new_gep_26, %_parent_stack_end_ptr_
  %_cond2_2_180 = icmp ult i8* %_new_gep_26, %_parent_stack_start_ptr_
  %_cond2_181 = or i1 %_cond2_1_179, %_cond2_2_180
  %_cond4_182 = icmp ule i8* %_pot_address_in_parent_stack_177, %_parent_stack_end_ptr_
  %_cond1_n_cond2_183 = and i1 %_cond1_178, %_cond2_181
  %_cond1_n_cond2_cond3_184 = and i1 %_cond1_n_cond2_183, %_cond4_182
  br i1 %_cond1_n_cond2_cond3_184, label %20, label %21

; <label>:20:                                     ; preds = %18
  %_address_in_parent_stack_bt_186 = bitcast i8* %_pot_address_in_parent_stack_177 to i64*
  br label %21

; <label>:21:                                     ; preds = %18, %20
  %22 = phi i64* [ %_allin_new_bt_27, %18 ], [ %_address_in_parent_stack_bt_186, %20 ]
  %_new_load_187 = load i64, i64* %22
  store i64 %_new_load_187, i64* %R10, !mcsema_real_eip !9
  %_new_gep_29 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 24
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %23 = ptrtoint i64* %_allin_new_bt_30 to i64, !mcsema_real_eip !10
  store i64 %23, i64* %R11, !mcsema_real_eip !10
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 16
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  %24 = ptrtoint i64* %_allin_new_bt_33 to i64, !mcsema_real_eip !11
  %25 = inttoptr i64 %24 to i32*, !mcsema_real_eip !11
  %_ptr_bt_190 = bitcast i32* %25 to i8*
  %_offset_above_rbp_191 = sub i64 %24, %_local_end_to_int_
  %_pot_address_in_parent_stack_192 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_191
  %_cond1_193 = icmp ugt i8* %_ptr_bt_190, %_local_stack_end_ptr_
  %_cond2_1_194 = icmp ugt i8* %_ptr_bt_190, %_parent_stack_end_ptr_
  %_cond2_2_195 = icmp ult i8* %_ptr_bt_190, %_parent_stack_start_ptr_
  %_cond2_196 = or i1 %_cond2_1_194, %_cond2_2_195
  %_cond4_197 = icmp ule i8* %_pot_address_in_parent_stack_192, %_parent_stack_end_ptr_
  %_cond1_n_cond2_198 = and i1 %_cond1_193, %_cond2_196
  %_cond1_n_cond2_cond3_199 = and i1 %_cond1_n_cond2_198, %_cond4_197
  br i1 %_cond1_n_cond2_cond3_199, label %26, label %27

; <label>:26:                                     ; preds = %21
  %_address_in_parent_stack_bt_201 = bitcast i8* %_pot_address_in_parent_stack_192 to i32*
  br label %27

; <label>:27:                                     ; preds = %21, %26
  %28 = phi i32* [ %25, %21 ], [ %_address_in_parent_stack_bt_201, %26 ]
  %_new_load_202 = load i32, i32* %28
  %29 = zext i32 %_new_load_202 to i64, !mcsema_real_eip !11
  store i64 %29, i64* %XBX, !mcsema_real_eip !11
  store i64 12, i64* %R14, !mcsema_real_eip !12
  %R14D.14 = bitcast i64* %R14 to i32*, !mcsema_real_eip !13
  %R14D_val.15 = load i32, i32* %R14D.14, !mcsema_real_eip !13
  %30 = zext i32 %R14D_val.15 to i64, !mcsema_real_eip !13
  store i64 %30, i64* %R15, !mcsema_real_eip !13
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -56
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %RDI_val.17 = load i64, i64* %XDI, !mcsema_real_eip !14
  store i64 %RDI_val.17, i64* %_allin_new_bt_36, !mcsema_real_eip !14
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -48
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %ESI.19 = bitcast i64* %XSI to i32*, !mcsema_real_eip !15
  %ESI_val.20 = load i32, i32* %ESI.19, !mcsema_real_eip !15
  %31 = ptrtoint i64* %_allin_new_bt_39 to i64, !mcsema_real_eip !15
  %32 = inttoptr i64 %31 to i32*, !mcsema_real_eip !15
  store i32 %ESI_val.20, i32* %32, !mcsema_real_eip !15
  %_load_rbp_ptr_40 = load i8*, i8** %_RBP_ptr_
  %_new_gep_41 = getelementptr i8, i8* %_load_rbp_ptr_40, i64 -56
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %_ptr_to_int_203 = ptrtoint i64* %_allin_new_bt_42 to i64
  %_offset_above_rbp_206 = sub i64 %_ptr_to_int_203, %_local_end_to_int_
  %_pot_address_in_parent_stack_207 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_206
  %_cond1_208 = icmp ugt i8* %_new_gep_41, %_local_stack_end_ptr_
  %_cond2_1_209 = icmp ugt i8* %_new_gep_41, %_parent_stack_end_ptr_
  %_cond2_2_210 = icmp ult i8* %_new_gep_41, %_parent_stack_start_ptr_
  %_cond2_211 = or i1 %_cond2_1_209, %_cond2_2_210
  %_cond4_212 = icmp ule i8* %_pot_address_in_parent_stack_207, %_parent_stack_end_ptr_
  %_cond1_n_cond2_213 = and i1 %_cond1_208, %_cond2_211
  %_cond1_n_cond2_cond3_214 = and i1 %_cond1_n_cond2_213, %_cond4_212
  br i1 %_cond1_n_cond2_cond3_214, label %33, label %34

; <label>:33:                                     ; preds = %27
  %_address_in_parent_stack_bt_216 = bitcast i8* %_pot_address_in_parent_stack_207 to i64*
  br label %34

; <label>:34:                                     ; preds = %27, %33
  %35 = phi i64* [ %_allin_new_bt_42, %27 ], [ %_address_in_parent_stack_bt_216, %33 ]
  %_new_load_217 = load i64, i64* %35
  store i64 %_new_load_217, i64* %XDI, !mcsema_real_eip !16
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_40, i64 -40
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  store i64 %_new_load_217, i64* %_allin_new_bt_45, !mcsema_real_eip !17
  %_load_rbp_ptr_46 = load i8*, i8** %_RBP_ptr_
  %_new_gep_47 = getelementptr i8, i8* %_load_rbp_ptr_46, i64 -48
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  %36 = ptrtoint i64* %_allin_new_bt_48 to i64, !mcsema_real_eip !18
  %37 = inttoptr i64 %36 to i32*, !mcsema_real_eip !18
  %_ptr_bt_220 = bitcast i32* %37 to i8*
  %_offset_above_rbp_221 = sub i64 %36, %_local_end_to_int_
  %_pot_address_in_parent_stack_222 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_221
  %_cond1_223 = icmp ugt i8* %_ptr_bt_220, %_local_stack_end_ptr_
  %_cond2_1_224 = icmp ugt i8* %_ptr_bt_220, %_parent_stack_end_ptr_
  %_cond2_2_225 = icmp ult i8* %_ptr_bt_220, %_parent_stack_start_ptr_
  %_cond2_226 = or i1 %_cond2_1_224, %_cond2_2_225
  %_cond4_227 = icmp ule i8* %_pot_address_in_parent_stack_222, %_parent_stack_end_ptr_
  %_cond1_n_cond2_228 = and i1 %_cond1_223, %_cond2_226
  %_cond1_n_cond2_cond3_229 = and i1 %_cond1_n_cond2_228, %_cond4_227
  br i1 %_cond1_n_cond2_cond3_229, label %38, label %39

; <label>:38:                                     ; preds = %34
  %_address_in_parent_stack_bt_231 = bitcast i8* %_pot_address_in_parent_stack_222 to i32*
  br label %39

; <label>:39:                                     ; preds = %34, %38
  %40 = phi i32* [ %37, %34 ], [ %_address_in_parent_stack_bt_231, %38 ]
  %_new_load_232 = load i32, i32* %40
  %41 = zext i32 %_new_load_232 to i64, !mcsema_real_eip !18
  store i64 %41, i64* %XSI, !mcsema_real_eip !18
  %_new_gep_50 = getelementptr i8, i8* %_load_rbp_ptr_46, i64 -32
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  %ESI_val.27 = load i32, i32* %ESI.19, !mcsema_real_eip !19
  %42 = ptrtoint i64* %_allin_new_bt_51 to i64, !mcsema_real_eip !19
  %43 = inttoptr i64 %42 to i32*, !mcsema_real_eip !19
  store i32 %ESI_val.27, i32* %43, !mcsema_real_eip !19
  %_load_rbp_ptr_52 = load i8*, i8** %_RBP_ptr_
  %_new_gep_53 = getelementptr i8, i8* %_load_rbp_ptr_52, i64 -64
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  %RDX_val.29 = load i64, i64* %XDX, !mcsema_real_eip !20
  store i64 %RDX_val.29, i64* %_allin_new_bt_54, !mcsema_real_eip !20
  %_load_rbp_ptr_55 = load i8*, i8** %_RBP_ptr_
  %_new_gep_56 = getelementptr i8, i8* %_load_rbp_ptr_55, i64 -72
  %_allin_new_bt_57 = bitcast i8* %_new_gep_56 to i64*
  %RCX_val.31 = load i64, i64* %XCX, !mcsema_real_eip !21
  store i64 %RCX_val.31, i64* %_allin_new_bt_57, !mcsema_real_eip !21
  %_load_rbp_ptr_58 = load i8*, i8** %_RBP_ptr_
  %_new_gep_59 = getelementptr i8, i8* %_load_rbp_ptr_58, i64 -76
  %_allin_new_bt_60 = bitcast i8* %_new_gep_59 to i64*
  %R8D.33 = bitcast i64* %R8 to i32*, !mcsema_real_eip !22
  %R8D_val.34 = load i32, i32* %R8D.33, !mcsema_real_eip !22
  %44 = ptrtoint i64* %_allin_new_bt_60 to i64, !mcsema_real_eip !22
  %45 = inttoptr i64 %44 to i32*, !mcsema_real_eip !22
  store i32 %R8D_val.34, i32* %45, !mcsema_real_eip !22
  %_load_rbp_ptr_61 = load i8*, i8** %_RBP_ptr_
  %_new_gep_62 = getelementptr i8, i8* %_load_rbp_ptr_61, i64 -80
  %_allin_new_bt_63 = bitcast i8* %_new_gep_62 to i64*
  %R9D.36 = bitcast i64* %R9 to i32*, !mcsema_real_eip !23
  %R9D_val.37 = load i32, i32* %R9D.36, !mcsema_real_eip !23
  %46 = ptrtoint i64* %_allin_new_bt_63 to i64, !mcsema_real_eip !23
  %47 = inttoptr i64 %46 to i32*, !mcsema_real_eip !23
  store i32 %R9D_val.37, i32* %47, !mcsema_real_eip !23
  %_load_rbp_ptr_64 = load i8*, i8** %_RBP_ptr_
  %_new_gep_65 = getelementptr i8, i8* %_load_rbp_ptr_64, i64 -84
  %_allin_new_bt_66 = bitcast i8* %_new_gep_65 to i64*
  %EBX.39 = bitcast i64* %XBX to i32*, !mcsema_real_eip !24
  %EBX_val.40 = load i32, i32* %EBX.39, !mcsema_real_eip !24
  %48 = ptrtoint i64* %_allin_new_bt_66 to i64, !mcsema_real_eip !24
  %49 = inttoptr i64 %48 to i32*, !mcsema_real_eip !24
  store i32 %EBX_val.40, i32* %49, !mcsema_real_eip !24
  %_load_rbp_ptr_67 = load i8*, i8** %_RBP_ptr_
  %_new_gep_68 = getelementptr i8, i8* %_load_rbp_ptr_67, i64 -96
  %_allin_new_bt_69 = bitcast i8* %_new_gep_68 to i64*
  %R10_val.42 = load i64, i64* %R10, !mcsema_real_eip !25
  store i64 %R10_val.42, i64* %_allin_new_bt_69, !mcsema_real_eip !25
  %_load_rbp_ptr_70 = load i8*, i8** %_RBP_ptr_
  %_new_gep_71 = getelementptr i8, i8* %_load_rbp_ptr_70, i64 -104
  %_allin_new_bt_72 = bitcast i8* %_new_gep_71 to i64*
  %RAX_val.44 = load i64, i64* %XAX, !mcsema_real_eip !26
  store i64 %RAX_val.44, i64* %_allin_new_bt_72, !mcsema_real_eip !26
  %R15_val.45 = load i64, i64* %R15, !mcsema_real_eip !27
  store i64 %R15_val.45, i64* %XDI, !mcsema_real_eip !27
  %_load_rbp_ptr_73 = load i8*, i8** %_RBP_ptr_
  %_new_gep_74 = getelementptr i8, i8* %_load_rbp_ptr_73, i64 -120
  %_allin_new_bt_75 = bitcast i8* %_new_gep_74 to i64*
  %R11_val.47 = load i64, i64* %R11, !mcsema_real_eip !28
  store i64 %R11_val.47, i64* %_allin_new_bt_75, !mcsema_real_eip !28
  %RDI_val.48 = load i64, i64* %XDI, !mcsema_real_eip !29
  %_load_rsp_ptr_76 = load i8*, i8** %_RSP_ptr_
  %RSP_val.49 = load i64, i64* %XSP, !mcsema_real_eip !29
  %_new_gep_77 = getelementptr i8, i8* %_load_rsp_ptr_76, i64 -8
  %50 = sub i64 %RSP_val.49, 8, !mcsema_real_eip !29
  %_allin_new_bt_78 = bitcast i8* %_new_gep_77 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_78, !mcsema_real_eip !29
  store volatile i8* %_new_gep_77, i8** %_RSP_ptr_
  store i64 %50, i64* %XSP, !mcsema_real_eip !29
  %51 = call x86_64_sysvcc i64 @_malloc(i64 %RDI_val.48)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %51, i64* %XAX, !mcsema_real_eip !29
  %_load_rbp_ptr_79 = load i8*, i8** %_RBP_ptr_
  %_new_gep_80 = getelementptr i8, i8* %_load_rbp_ptr_79, i64 -112
  %_allin_new_bt_81 = bitcast i8* %_new_gep_80 to i64*
  store i64 %51, i64* %_allin_new_bt_81, !mcsema_real_eip !30
  %_load_rbp_ptr_82 = load i8*, i8** %_RBP_ptr_
  %_new_gep_83 = getelementptr i8, i8* %_load_rbp_ptr_82, i64 -40
  %_allin_new_bt_84 = bitcast i8* %_new_gep_83 to i64*
  %52 = ptrtoint i64* %_allin_new_bt_84 to i64, !mcsema_real_eip !31
  %53 = inttoptr i64 %52 to i32*, !mcsema_real_eip !31
  %_ptr_bt_235 = bitcast i32* %53 to i8*
  %_offset_above_rbp_236 = sub i64 %52, %_local_end_to_int_
  %_pot_address_in_parent_stack_237 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_236
  %_cond1_238 = icmp ugt i8* %_ptr_bt_235, %_local_stack_end_ptr_
  %_cond2_1_239 = icmp ugt i8* %_ptr_bt_235, %_parent_stack_end_ptr_
  %_cond2_2_240 = icmp ult i8* %_ptr_bt_235, %_parent_stack_start_ptr_
  %_cond2_241 = or i1 %_cond2_1_239, %_cond2_2_240
  %_cond4_242 = icmp ule i8* %_pot_address_in_parent_stack_237, %_parent_stack_end_ptr_
  %_cond1_n_cond2_243 = and i1 %_cond1_238, %_cond2_241
  %_cond1_n_cond2_cond3_244 = and i1 %_cond1_n_cond2_243, %_cond4_242
  br i1 %_cond1_n_cond2_cond3_244, label %54, label %55

; <label>:54:                                     ; preds = %39
  %_address_in_parent_stack_bt_246 = bitcast i8* %_pot_address_in_parent_stack_237 to i32*
  br label %55

; <label>:55:                                     ; preds = %39, %54
  %56 = phi i32* [ %53, %39 ], [ %_address_in_parent_stack_bt_246, %54 ]
  %_new_load_247 = load i32, i32* %56
  %57 = zext i32 %_new_load_247 to i64, !mcsema_real_eip !31
  store i64 %57, i64* %XSI, !mcsema_real_eip !31
  %_new_gep_86 = getelementptr i8, i8* %_load_rbp_ptr_82, i64 -64
  %_allin_new_bt_87 = bitcast i8* %_new_gep_86 to i64*
  %_ptr_to_int_248 = ptrtoint i64* %_allin_new_bt_87 to i64
  %_offset_above_rbp_251 = sub i64 %_ptr_to_int_248, %_local_end_to_int_
  %_pot_address_in_parent_stack_252 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_251
  %_cond1_253 = icmp ugt i8* %_new_gep_86, %_local_stack_end_ptr_
  %_cond2_1_254 = icmp ugt i8* %_new_gep_86, %_parent_stack_end_ptr_
  %_cond2_2_255 = icmp ult i8* %_new_gep_86, %_parent_stack_start_ptr_
  %_cond2_256 = or i1 %_cond2_1_254, %_cond2_2_255
  %_cond4_257 = icmp ule i8* %_pot_address_in_parent_stack_252, %_parent_stack_end_ptr_
  %_cond1_n_cond2_258 = and i1 %_cond1_253, %_cond2_256
  %_cond1_n_cond2_cond3_259 = and i1 %_cond1_n_cond2_258, %_cond4_257
  br i1 %_cond1_n_cond2_cond3_259, label %58, label %59

; <label>:58:                                     ; preds = %55
  %_address_in_parent_stack_bt_261 = bitcast i8* %_pot_address_in_parent_stack_252 to i64*
  br label %59

; <label>:59:                                     ; preds = %55, %58
  %60 = phi i64* [ %_allin_new_bt_87, %55 ], [ %_address_in_parent_stack_bt_261, %58 ]
  %_new_load_262 = load i64, i64* %60
  store i64 %_new_load_262, i64* %XAX, !mcsema_real_eip !32
  %61 = inttoptr i64 %_new_load_262 to i64*, !mcsema_real_eip !33
  %62 = inttoptr i64 %_new_load_262 to i32*, !mcsema_real_eip !33
  %_ptr_bt_265 = bitcast i32* %62 to i8*
  %_offset_above_rbp_266 = sub i64 %_new_load_262, %_local_end_to_int_
  %_pot_address_in_parent_stack_267 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_266
  %_cond1_268 = icmp ugt i8* %_ptr_bt_265, %_local_stack_end_ptr_
  %_cond2_1_269 = icmp ugt i8* %_ptr_bt_265, %_parent_stack_end_ptr_
  %_cond2_2_270 = icmp ult i8* %_ptr_bt_265, %_parent_stack_start_ptr_
  %_cond2_271 = or i1 %_cond2_1_269, %_cond2_2_270
  %_cond4_272 = icmp ule i8* %_pot_address_in_parent_stack_267, %_parent_stack_end_ptr_
  %_cond1_n_cond2_273 = and i1 %_cond1_268, %_cond2_271
  %_cond1_n_cond2_cond3_274 = and i1 %_cond1_n_cond2_273, %_cond4_272
  br i1 %_cond1_n_cond2_cond3_274, label %63, label %64

; <label>:63:                                     ; preds = %59
  %_address_in_parent_stack_bt_276 = bitcast i8* %_pot_address_in_parent_stack_267 to i32*
  br label %64

; <label>:64:                                     ; preds = %59, %63
  %65 = phi i32* [ %62, %59 ], [ %_address_in_parent_stack_bt_276, %63 ]
  %_new_load_277 = load i32, i32* %65
  %ESI_val.56 = load i32, i32* %ESI.19, !mcsema_real_eip !33
  %66 = add i32 %ESI_val.56, %_new_load_277, !mcsema_real_eip !33
  %67 = xor i32 %66, %_new_load_277, !mcsema_real_eip !33
  %68 = xor i32 %67, %ESI_val.56, !mcsema_real_eip !33
  %69 = and i32 %68, 16, !mcsema_real_eip !33
  %70 = icmp ne i32 %69, 0, !mcsema_real_eip !33
  store i1 %70, i1* %AF, !mcsema_real_eip !33
  %71 = lshr i32 %66, 31, !mcsema_real_eip !33
  %72 = trunc i32 %71 to i1, !mcsema_real_eip !33
  store i1 %72, i1* %SF, !mcsema_real_eip !33
  %73 = icmp eq i32 %66, 0, !mcsema_real_eip !33
  store i1 %73, i1* %ZF, !mcsema_real_eip !33
  %74 = xor i32 %_new_load_277, %ESI_val.56, !mcsema_real_eip !33
  %75 = xor i32 %74, -1, !mcsema_real_eip !33
  %76 = and i32 %75, %67, !mcsema_real_eip !33
  %77 = lshr i32 %76, 31, !mcsema_real_eip !33
  %78 = and i32 %77, 1, !mcsema_real_eip !33
  %79 = trunc i32 %78 to i1, !mcsema_real_eip !33
  store i1 %79, i1* %OF, !mcsema_real_eip !33
  %80 = trunc i32 %66 to i8, !mcsema_real_eip !33
  %81 = call i8 @llvm.ctpop.i8(i8 %80), !mcsema_real_eip !33
  %82 = trunc i8 %81 to i1, !mcsema_real_eip !33
  %83 = xor i1 %82, true, !mcsema_real_eip !33
  store i1 %83, i1* %PF, !mcsema_real_eip !33
  %84 = icmp ult i32 %66, %_new_load_277, !mcsema_real_eip !33
  store i1 %84, i1* %CF, !mcsema_real_eip !33
  %85 = zext i32 %66 to i64, !mcsema_real_eip !33
  store i64 %85, i64* %XSI, !mcsema_real_eip !33
  %_new_gep_89 = getelementptr i8, i8* %_load_rbp_ptr_82, i64 -72
  %_allin_new_bt_90 = bitcast i8* %_new_gep_89 to i64*
  %_ptr_to_int_278 = ptrtoint i64* %_allin_new_bt_90 to i64
  %_offset_above_rbp_281 = sub i64 %_ptr_to_int_278, %_local_end_to_int_
  %_pot_address_in_parent_stack_282 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_281
  %_cond1_283 = icmp ugt i8* %_new_gep_89, %_local_stack_end_ptr_
  %_cond2_1_284 = icmp ugt i8* %_new_gep_89, %_parent_stack_end_ptr_
  %_cond2_2_285 = icmp ult i8* %_new_gep_89, %_parent_stack_start_ptr_
  %_cond2_286 = or i1 %_cond2_1_284, %_cond2_2_285
  %_cond4_287 = icmp ule i8* %_pot_address_in_parent_stack_282, %_parent_stack_end_ptr_
  %_cond1_n_cond2_288 = and i1 %_cond1_283, %_cond2_286
  %_cond1_n_cond2_cond3_289 = and i1 %_cond1_n_cond2_288, %_cond4_287
  br i1 %_cond1_n_cond2_cond3_289, label %86, label %87

; <label>:86:                                     ; preds = %64
  %_address_in_parent_stack_bt_291 = bitcast i8* %_pot_address_in_parent_stack_282 to i64*
  br label %87

; <label>:87:                                     ; preds = %64, %86
  %88 = phi i64* [ %_allin_new_bt_90, %64 ], [ %_address_in_parent_stack_bt_291, %86 ]
  %_new_load_292 = load i64, i64* %88
  store i64 %_new_load_292, i64* %XAX, !mcsema_real_eip !34
  %89 = inttoptr i64 %_new_load_292 to i64*, !mcsema_real_eip !35
  %90 = inttoptr i64 %_new_load_292 to i32*, !mcsema_real_eip !35
  %_ptr_bt_295 = bitcast i32* %90 to i8*
  %_offset_above_rbp_296 = sub i64 %_new_load_292, %_local_end_to_int_
  %_pot_address_in_parent_stack_297 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_296
  %_cond1_298 = icmp ugt i8* %_ptr_bt_295, %_local_stack_end_ptr_
  %_cond2_1_299 = icmp ugt i8* %_ptr_bt_295, %_parent_stack_end_ptr_
  %_cond2_2_300 = icmp ult i8* %_ptr_bt_295, %_parent_stack_start_ptr_
  %_cond2_301 = or i1 %_cond2_1_299, %_cond2_2_300
  %_cond4_302 = icmp ule i8* %_pot_address_in_parent_stack_297, %_parent_stack_end_ptr_
  %_cond1_n_cond2_303 = and i1 %_cond1_298, %_cond2_301
  %_cond1_n_cond2_cond3_304 = and i1 %_cond1_n_cond2_303, %_cond4_302
  br i1 %_cond1_n_cond2_cond3_304, label %91, label %92

; <label>:91:                                     ; preds = %87
  %_address_in_parent_stack_bt_306 = bitcast i8* %_pot_address_in_parent_stack_297 to i32*
  br label %92

; <label>:92:                                     ; preds = %87, %91
  %93 = phi i32* [ %90, %87 ], [ %_address_in_parent_stack_bt_306, %91 ]
  %_new_load_307 = load i32, i32* %93
  %ESI_val.60 = load i32, i32* %ESI.19, !mcsema_real_eip !35
  %94 = add i32 %ESI_val.60, %_new_load_307, !mcsema_real_eip !35
  %95 = xor i32 %94, %_new_load_307, !mcsema_real_eip !35
  %96 = xor i32 %95, %ESI_val.60, !mcsema_real_eip !35
  %97 = and i32 %96, 16, !mcsema_real_eip !35
  %98 = icmp ne i32 %97, 0, !mcsema_real_eip !35
  store i1 %98, i1* %AF, !mcsema_real_eip !35
  %99 = lshr i32 %94, 31, !mcsema_real_eip !35
  %100 = trunc i32 %99 to i1, !mcsema_real_eip !35
  store i1 %100, i1* %SF, !mcsema_real_eip !35
  %101 = icmp eq i32 %94, 0, !mcsema_real_eip !35
  store i1 %101, i1* %ZF, !mcsema_real_eip !35
  %102 = xor i32 %_new_load_307, %ESI_val.60, !mcsema_real_eip !35
  %103 = xor i32 %102, -1, !mcsema_real_eip !35
  %104 = and i32 %103, %95, !mcsema_real_eip !35
  %105 = lshr i32 %104, 31, !mcsema_real_eip !35
  %106 = and i32 %105, 1, !mcsema_real_eip !35
  %107 = trunc i32 %106 to i1, !mcsema_real_eip !35
  store i1 %107, i1* %OF, !mcsema_real_eip !35
  %108 = trunc i32 %94 to i8, !mcsema_real_eip !35
  %109 = call i8 @llvm.ctpop.i8(i8 %108), !mcsema_real_eip !35
  %110 = trunc i8 %109 to i1, !mcsema_real_eip !35
  %111 = xor i1 %110, true, !mcsema_real_eip !35
  store i1 %111, i1* %PF, !mcsema_real_eip !35
  %112 = icmp ult i32 %94, %_new_load_307, !mcsema_real_eip !35
  store i1 %112, i1* %CF, !mcsema_real_eip !35
  %113 = zext i32 %94 to i64, !mcsema_real_eip !35
  store i64 %113, i64* %XSI, !mcsema_real_eip !35
  %_new_gep_92 = getelementptr i8, i8* %_load_rbp_ptr_82, i64 -120
  %_allin_new_bt_93 = bitcast i8* %_new_gep_92 to i64*
  %_ptr_to_int_308 = ptrtoint i64* %_allin_new_bt_93 to i64
  %_offset_above_rbp_311 = sub i64 %_ptr_to_int_308, %_local_end_to_int_
  %_pot_address_in_parent_stack_312 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_311
  %_cond1_313 = icmp ugt i8* %_new_gep_92, %_local_stack_end_ptr_
  %_cond2_1_314 = icmp ugt i8* %_new_gep_92, %_parent_stack_end_ptr_
  %_cond2_2_315 = icmp ult i8* %_new_gep_92, %_parent_stack_start_ptr_
  %_cond2_316 = or i1 %_cond2_1_314, %_cond2_2_315
  %_cond4_317 = icmp ule i8* %_pot_address_in_parent_stack_312, %_parent_stack_end_ptr_
  %_cond1_n_cond2_318 = and i1 %_cond1_313, %_cond2_316
  %_cond1_n_cond2_cond3_319 = and i1 %_cond1_n_cond2_318, %_cond4_317
  br i1 %_cond1_n_cond2_cond3_319, label %114, label %115

; <label>:114:                                    ; preds = %92
  %_address_in_parent_stack_bt_321 = bitcast i8* %_pot_address_in_parent_stack_312 to i64*
  br label %115

; <label>:115:                                    ; preds = %92, %114
  %116 = phi i64* [ %_allin_new_bt_93, %92 ], [ %_address_in_parent_stack_bt_321, %114 ]
  %_new_load_322 = load i64, i64* %116
  store i64 %_new_load_322, i64* %XAX, !mcsema_real_eip !36
  %117 = inttoptr i64 %_new_load_322 to i64*, !mcsema_real_eip !37
  %118 = inttoptr i64 %_new_load_322 to i32*, !mcsema_real_eip !37
  %_ptr_bt_325 = bitcast i32* %118 to i8*
  %_offset_above_rbp_326 = sub i64 %_new_load_322, %_local_end_to_int_
  %_pot_address_in_parent_stack_327 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_326
  %_cond1_328 = icmp ugt i8* %_ptr_bt_325, %_local_stack_end_ptr_
  %_cond2_1_329 = icmp ugt i8* %_ptr_bt_325, %_parent_stack_end_ptr_
  %_cond2_2_330 = icmp ult i8* %_ptr_bt_325, %_parent_stack_start_ptr_
  %_cond2_331 = or i1 %_cond2_1_329, %_cond2_2_330
  %_cond4_332 = icmp ule i8* %_pot_address_in_parent_stack_327, %_parent_stack_end_ptr_
  %_cond1_n_cond2_333 = and i1 %_cond1_328, %_cond2_331
  %_cond1_n_cond2_cond3_334 = and i1 %_cond1_n_cond2_333, %_cond4_332
  br i1 %_cond1_n_cond2_cond3_334, label %119, label %120

; <label>:119:                                    ; preds = %115
  %_address_in_parent_stack_bt_336 = bitcast i8* %_pot_address_in_parent_stack_327 to i32*
  br label %120

; <label>:120:                                    ; preds = %115, %119
  %121 = phi i32* [ %118, %115 ], [ %_address_in_parent_stack_bt_336, %119 ]
  %_new_load_337 = load i32, i32* %121
  %122 = zext i32 %_new_load_337 to i64, !mcsema_real_eip !37
  store i64 %122, i64* %R8, !mcsema_real_eip !37
  %_new_gep_95 = getelementptr i8, i8* %_load_rbp_ptr_82, i64 -96
  %_allin_new_bt_96 = bitcast i8* %_new_gep_95 to i64*
  %_ptr_to_int_338 = ptrtoint i64* %_allin_new_bt_96 to i64
  %_offset_above_rbp_341 = sub i64 %_ptr_to_int_338, %_local_end_to_int_
  %_pot_address_in_parent_stack_342 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_341
  %_cond1_343 = icmp ugt i8* %_new_gep_95, %_local_stack_end_ptr_
  %_cond2_1_344 = icmp ugt i8* %_new_gep_95, %_parent_stack_end_ptr_
  %_cond2_2_345 = icmp ult i8* %_new_gep_95, %_parent_stack_start_ptr_
  %_cond2_346 = or i1 %_cond2_1_344, %_cond2_2_345
  %_cond4_347 = icmp ule i8* %_pot_address_in_parent_stack_342, %_parent_stack_end_ptr_
  %_cond1_n_cond2_348 = and i1 %_cond1_343, %_cond2_346
  %_cond1_n_cond2_cond3_349 = and i1 %_cond1_n_cond2_348, %_cond4_347
  br i1 %_cond1_n_cond2_cond3_349, label %123, label %124

; <label>:123:                                    ; preds = %120
  %_address_in_parent_stack_bt_351 = bitcast i8* %_pot_address_in_parent_stack_342 to i64*
  br label %124

; <label>:124:                                    ; preds = %120, %123
  %125 = phi i64* [ %_allin_new_bt_96, %120 ], [ %_address_in_parent_stack_bt_351, %123 ]
  %_new_load_352 = load i64, i64* %125
  store i64 %_new_load_352, i64* %XCX, !mcsema_real_eip !38
  %126 = inttoptr i64 %_new_load_352 to i64*, !mcsema_real_eip !39
  %127 = inttoptr i64 %_new_load_352 to i32*, !mcsema_real_eip !39
  %_ptr_bt_355 = bitcast i32* %127 to i8*
  %_offset_above_rbp_356 = sub i64 %_new_load_352, %_local_end_to_int_
  %_pot_address_in_parent_stack_357 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_356
  %_cond1_358 = icmp ugt i8* %_ptr_bt_355, %_local_stack_end_ptr_
  %_cond2_1_359 = icmp ugt i8* %_ptr_bt_355, %_parent_stack_end_ptr_
  %_cond2_2_360 = icmp ult i8* %_ptr_bt_355, %_parent_stack_start_ptr_
  %_cond2_361 = or i1 %_cond2_1_359, %_cond2_2_360
  %_cond4_362 = icmp ule i8* %_pot_address_in_parent_stack_357, %_parent_stack_end_ptr_
  %_cond1_n_cond2_363 = and i1 %_cond1_358, %_cond2_361
  %_cond1_n_cond2_cond3_364 = and i1 %_cond1_n_cond2_363, %_cond4_362
  br i1 %_cond1_n_cond2_cond3_364, label %128, label %129

; <label>:128:                                    ; preds = %124
  %_address_in_parent_stack_bt_366 = bitcast i8* %_pot_address_in_parent_stack_357 to i32*
  br label %129

; <label>:129:                                    ; preds = %124, %128
  %130 = phi i32* [ %127, %124 ], [ %_address_in_parent_stack_bt_366, %128 ]
  %_new_load_367 = load i32, i32* %130
  %R8D_val.66 = load i32, i32* %R8D.33, !mcsema_real_eip !39
  %131 = add i32 %R8D_val.66, %_new_load_367, !mcsema_real_eip !39
  %132 = xor i32 %131, %_new_load_367, !mcsema_real_eip !39
  %133 = xor i32 %132, %R8D_val.66, !mcsema_real_eip !39
  %134 = and i32 %133, 16, !mcsema_real_eip !39
  %135 = icmp ne i32 %134, 0, !mcsema_real_eip !39
  store i1 %135, i1* %AF, !mcsema_real_eip !39
  %136 = lshr i32 %131, 31, !mcsema_real_eip !39
  %137 = trunc i32 %136 to i1, !mcsema_real_eip !39
  store i1 %137, i1* %SF, !mcsema_real_eip !39
  %138 = icmp eq i32 %131, 0, !mcsema_real_eip !39
  store i1 %138, i1* %ZF, !mcsema_real_eip !39
  %139 = xor i32 %_new_load_367, %R8D_val.66, !mcsema_real_eip !39
  %140 = xor i32 %139, -1, !mcsema_real_eip !39
  %141 = and i32 %140, %132, !mcsema_real_eip !39
  %142 = lshr i32 %141, 31, !mcsema_real_eip !39
  %143 = and i32 %142, 1, !mcsema_real_eip !39
  %144 = trunc i32 %143 to i1, !mcsema_real_eip !39
  store i1 %144, i1* %OF, !mcsema_real_eip !39
  %145 = trunc i32 %131 to i8, !mcsema_real_eip !39
  %146 = call i8 @llvm.ctpop.i8(i8 %145), !mcsema_real_eip !39
  %147 = trunc i8 %146 to i1, !mcsema_real_eip !39
  %148 = xor i1 %147, true, !mcsema_real_eip !39
  store i1 %148, i1* %PF, !mcsema_real_eip !39
  %149 = icmp ult i32 %131, %_new_load_367, !mcsema_real_eip !39
  store i1 %149, i1* %CF, !mcsema_real_eip !39
  %150 = zext i32 %131 to i64, !mcsema_real_eip !39
  store i64 %150, i64* %R8, !mcsema_real_eip !39
  %_new_gep_98 = getelementptr i8, i8* %_load_rbp_ptr_82, i64 -104
  %_allin_new_bt_99 = bitcast i8* %_new_gep_98 to i64*
  %_ptr_to_int_368 = ptrtoint i64* %_allin_new_bt_99 to i64
  %_offset_above_rbp_371 = sub i64 %_ptr_to_int_368, %_local_end_to_int_
  %_pot_address_in_parent_stack_372 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_371
  %_cond1_373 = icmp ugt i8* %_new_gep_98, %_local_stack_end_ptr_
  %_cond2_1_374 = icmp ugt i8* %_new_gep_98, %_parent_stack_end_ptr_
  %_cond2_2_375 = icmp ult i8* %_new_gep_98, %_parent_stack_start_ptr_
  %_cond2_376 = or i1 %_cond2_1_374, %_cond2_2_375
  %_cond4_377 = icmp ule i8* %_pot_address_in_parent_stack_372, %_parent_stack_end_ptr_
  %_cond1_n_cond2_378 = and i1 %_cond1_373, %_cond2_376
  %_cond1_n_cond2_cond3_379 = and i1 %_cond1_n_cond2_378, %_cond4_377
  br i1 %_cond1_n_cond2_cond3_379, label %151, label %152

; <label>:151:                                    ; preds = %129
  %_address_in_parent_stack_bt_381 = bitcast i8* %_pot_address_in_parent_stack_372 to i64*
  br label %152

; <label>:152:                                    ; preds = %129, %151
  %153 = phi i64* [ %_allin_new_bt_99, %129 ], [ %_address_in_parent_stack_bt_381, %151 ]
  %_new_load_382 = load i64, i64* %153
  store i64 %_new_load_382, i64* %XCX, !mcsema_real_eip !40
  %154 = inttoptr i64 %_new_load_382 to i64*, !mcsema_real_eip !41
  %155 = inttoptr i64 %_new_load_382 to i32*, !mcsema_real_eip !41
  %_ptr_bt_385 = bitcast i32* %155 to i8*
  %_offset_above_rbp_386 = sub i64 %_new_load_382, %_local_end_to_int_
  %_pot_address_in_parent_stack_387 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_386
  %_cond1_388 = icmp ugt i8* %_ptr_bt_385, %_local_stack_end_ptr_
  %_cond2_1_389 = icmp ugt i8* %_ptr_bt_385, %_parent_stack_end_ptr_
  %_cond2_2_390 = icmp ult i8* %_ptr_bt_385, %_parent_stack_start_ptr_
  %_cond2_391 = or i1 %_cond2_1_389, %_cond2_2_390
  %_cond4_392 = icmp ule i8* %_pot_address_in_parent_stack_387, %_parent_stack_end_ptr_
  %_cond1_n_cond2_393 = and i1 %_cond1_388, %_cond2_391
  %_cond1_n_cond2_cond3_394 = and i1 %_cond1_n_cond2_393, %_cond4_392
  br i1 %_cond1_n_cond2_cond3_394, label %156, label %157

; <label>:156:                                    ; preds = %152
  %_address_in_parent_stack_bt_396 = bitcast i8* %_pot_address_in_parent_stack_387 to i32*
  br label %157

; <label>:157:                                    ; preds = %152, %156
  %158 = phi i32* [ %155, %152 ], [ %_address_in_parent_stack_bt_396, %156 ]
  %_new_load_397 = load i32, i32* %158
  %R8D_val.70 = load i32, i32* %R8D.33, !mcsema_real_eip !41
  %159 = add i32 %R8D_val.70, %_new_load_397, !mcsema_real_eip !41
  %160 = xor i32 %159, %_new_load_397, !mcsema_real_eip !41
  %161 = xor i32 %160, %R8D_val.70, !mcsema_real_eip !41
  %162 = and i32 %161, 16, !mcsema_real_eip !41
  %163 = icmp ne i32 %162, 0, !mcsema_real_eip !41
  store i1 %163, i1* %AF, !mcsema_real_eip !41
  %164 = lshr i32 %159, 31, !mcsema_real_eip !41
  %165 = trunc i32 %164 to i1, !mcsema_real_eip !41
  store i1 %165, i1* %SF, !mcsema_real_eip !41
  %166 = icmp eq i32 %159, 0, !mcsema_real_eip !41
  store i1 %166, i1* %ZF, !mcsema_real_eip !41
  %167 = xor i32 %_new_load_397, %R8D_val.70, !mcsema_real_eip !41
  %168 = xor i32 %167, -1, !mcsema_real_eip !41
  %169 = and i32 %168, %160, !mcsema_real_eip !41
  %170 = lshr i32 %169, 31, !mcsema_real_eip !41
  %171 = and i32 %170, 1, !mcsema_real_eip !41
  %172 = trunc i32 %171 to i1, !mcsema_real_eip !41
  store i1 %172, i1* %OF, !mcsema_real_eip !41
  %173 = trunc i32 %159 to i8, !mcsema_real_eip !41
  %174 = call i8 @llvm.ctpop.i8(i8 %173), !mcsema_real_eip !41
  %175 = trunc i8 %174 to i1, !mcsema_real_eip !41
  %176 = xor i1 %175, true, !mcsema_real_eip !41
  store i1 %176, i1* %PF, !mcsema_real_eip !41
  %177 = icmp ult i32 %159, %_new_load_397, !mcsema_real_eip !41
  store i1 %177, i1* %CF, !mcsema_real_eip !41
  %178 = zext i32 %159 to i64, !mcsema_real_eip !41
  store i64 %178, i64* %R8, !mcsema_real_eip !41
  %ESI_val.72 = load i32, i32* %ESI.19, !mcsema_real_eip !42
  %R8D_val.74 = load i32, i32* %R8D.33, !mcsema_real_eip !42
  %179 = add i32 %R8D_val.74, %ESI_val.72, !mcsema_real_eip !42
  %180 = xor i32 %179, %ESI_val.72, !mcsema_real_eip !42
  %181 = xor i32 %180, %R8D_val.74, !mcsema_real_eip !42
  %182 = and i32 %181, 16, !mcsema_real_eip !42
  %183 = icmp ne i32 %182, 0, !mcsema_real_eip !42
  store i1 %183, i1* %AF, !mcsema_real_eip !42
  %184 = lshr i32 %179, 31, !mcsema_real_eip !42
  %185 = trunc i32 %184 to i1, !mcsema_real_eip !42
  store i1 %185, i1* %SF, !mcsema_real_eip !42
  %186 = icmp eq i32 %179, 0, !mcsema_real_eip !42
  store i1 %186, i1* %ZF, !mcsema_real_eip !42
  %187 = xor i32 %ESI_val.72, %R8D_val.74, !mcsema_real_eip !42
  %188 = xor i32 %187, -1, !mcsema_real_eip !42
  %189 = and i32 %188, %180, !mcsema_real_eip !42
  %190 = lshr i32 %189, 31, !mcsema_real_eip !42
  %191 = and i32 %190, 1, !mcsema_real_eip !42
  %192 = trunc i32 %191 to i1, !mcsema_real_eip !42
  store i1 %192, i1* %OF, !mcsema_real_eip !42
  %193 = trunc i32 %179 to i8, !mcsema_real_eip !42
  %194 = call i8 @llvm.ctpop.i8(i8 %193), !mcsema_real_eip !42
  %195 = trunc i8 %194 to i1, !mcsema_real_eip !42
  %196 = xor i1 %195, true, !mcsema_real_eip !42
  store i1 %196, i1* %PF, !mcsema_real_eip !42
  %197 = icmp ult i32 %179, %ESI_val.72, !mcsema_real_eip !42
  store i1 %197, i1* %CF, !mcsema_real_eip !42
  %198 = zext i32 %179 to i64, !mcsema_real_eip !42
  store i64 %198, i64* %XSI, !mcsema_real_eip !42
  %_new_gep_101 = getelementptr i8, i8* %_load_rbp_ptr_82, i64 -112
  %_allin_new_bt_102 = bitcast i8* %_new_gep_101 to i64*
  %_ptr_to_int_398 = ptrtoint i64* %_allin_new_bt_102 to i64
  %_offset_above_rbp_401 = sub i64 %_ptr_to_int_398, %_local_end_to_int_
  %_pot_address_in_parent_stack_402 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_401
  %_cond1_403 = icmp ugt i8* %_new_gep_101, %_local_stack_end_ptr_
  %_cond2_1_404 = icmp ugt i8* %_new_gep_101, %_parent_stack_end_ptr_
  %_cond2_2_405 = icmp ult i8* %_new_gep_101, %_parent_stack_start_ptr_
  %_cond2_406 = or i1 %_cond2_1_404, %_cond2_2_405
  %_cond4_407 = icmp ule i8* %_pot_address_in_parent_stack_402, %_parent_stack_end_ptr_
  %_cond1_n_cond2_408 = and i1 %_cond1_403, %_cond2_406
  %_cond1_n_cond2_cond3_409 = and i1 %_cond1_n_cond2_408, %_cond4_407
  br i1 %_cond1_n_cond2_cond3_409, label %199, label %200

; <label>:199:                                    ; preds = %157
  %_address_in_parent_stack_bt_411 = bitcast i8* %_pot_address_in_parent_stack_402 to i64*
  br label %200

; <label>:200:                                    ; preds = %157, %199
  %201 = phi i64* [ %_allin_new_bt_102, %157 ], [ %_address_in_parent_stack_bt_411, %199 ]
  %_new_load_412 = load i64, i64* %201
  store i64 %_new_load_412, i64* %XCX, !mcsema_real_eip !43
  %202 = inttoptr i64 %_new_load_412 to i64*, !mcsema_real_eip !44
  %ESI_val.78 = load i32, i32* %ESI.19, !mcsema_real_eip !44
  %203 = inttoptr i64 %_new_load_412 to i32*, !mcsema_real_eip !44
  store i32 %ESI_val.78, i32* %203, !mcsema_real_eip !44
  %_load_rbp_ptr_103 = load i8*, i8** %_RBP_ptr_
  %_new_gep_104 = getelementptr i8, i8* %_load_rbp_ptr_103, i64 -36
  %_allin_new_bt_105 = bitcast i8* %_new_gep_104 to i64*
  %204 = ptrtoint i64* %_allin_new_bt_105 to i64, !mcsema_real_eip !45
  %205 = inttoptr i64 %204 to i32*, !mcsema_real_eip !45
  %_ptr_bt_415 = bitcast i32* %205 to i8*
  %_offset_above_rbp_416 = sub i64 %204, %_local_end_to_int_
  %_pot_address_in_parent_stack_417 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_416
  %_cond1_418 = icmp ugt i8* %_ptr_bt_415, %_local_stack_end_ptr_
  %_cond2_1_419 = icmp ugt i8* %_ptr_bt_415, %_parent_stack_end_ptr_
  %_cond2_2_420 = icmp ult i8* %_ptr_bt_415, %_parent_stack_start_ptr_
  %_cond2_421 = or i1 %_cond2_1_419, %_cond2_2_420
  %_cond4_422 = icmp ule i8* %_pot_address_in_parent_stack_417, %_parent_stack_end_ptr_
  %_cond1_n_cond2_423 = and i1 %_cond1_418, %_cond2_421
  %_cond1_n_cond2_cond3_424 = and i1 %_cond1_n_cond2_423, %_cond4_422
  br i1 %_cond1_n_cond2_cond3_424, label %206, label %207

; <label>:206:                                    ; preds = %200
  %_address_in_parent_stack_bt_426 = bitcast i8* %_pot_address_in_parent_stack_417 to i32*
  br label %207

; <label>:207:                                    ; preds = %200, %206
  %208 = phi i32* [ %205, %200 ], [ %_address_in_parent_stack_bt_426, %206 ]
  %_new_load_427 = load i32, i32* %208
  %209 = zext i32 %_new_load_427 to i64, !mcsema_real_eip !45
  store i64 %209, i64* %XSI, !mcsema_real_eip !45
  %_new_gep_107 = getelementptr i8, i8* %_load_rbp_ptr_103, i64 -64
  %_allin_new_bt_108 = bitcast i8* %_new_gep_107 to i64*
  %_ptr_to_int_428 = ptrtoint i64* %_allin_new_bt_108 to i64
  %_offset_above_rbp_431 = sub i64 %_ptr_to_int_428, %_local_end_to_int_
  %_pot_address_in_parent_stack_432 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_431
  %_cond1_433 = icmp ugt i8* %_new_gep_107, %_local_stack_end_ptr_
  %_cond2_1_434 = icmp ugt i8* %_new_gep_107, %_parent_stack_end_ptr_
  %_cond2_2_435 = icmp ult i8* %_new_gep_107, %_parent_stack_start_ptr_
  %_cond2_436 = or i1 %_cond2_1_434, %_cond2_2_435
  %_cond4_437 = icmp ule i8* %_pot_address_in_parent_stack_432, %_parent_stack_end_ptr_
  %_cond1_n_cond2_438 = and i1 %_cond1_433, %_cond2_436
  %_cond1_n_cond2_cond3_439 = and i1 %_cond1_n_cond2_438, %_cond4_437
  br i1 %_cond1_n_cond2_cond3_439, label %210, label %211

; <label>:210:                                    ; preds = %207
  %_address_in_parent_stack_bt_441 = bitcast i8* %_pot_address_in_parent_stack_432 to i64*
  br label %211

; <label>:211:                                    ; preds = %207, %210
  %212 = phi i64* [ %_allin_new_bt_108, %207 ], [ %_address_in_parent_stack_bt_441, %210 ]
  %_new_load_442 = load i64, i64* %212
  store i64 %_new_load_442, i64* %XCX, !mcsema_real_eip !46
  %213 = add i64 %_new_load_442, 4, !mcsema_real_eip !47
  %214 = inttoptr i64 %213 to i64*, !mcsema_real_eip !47
  %215 = inttoptr i64 %213 to i32*, !mcsema_real_eip !47
  %_ptr_bt_445 = bitcast i32* %215 to i8*
  %_offset_above_rbp_446 = sub i64 %213, %_local_end_to_int_
  %_pot_address_in_parent_stack_447 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_446
  %_cond1_448 = icmp ugt i8* %_ptr_bt_445, %_local_stack_end_ptr_
  %_cond2_1_449 = icmp ugt i8* %_ptr_bt_445, %_parent_stack_end_ptr_
  %_cond2_2_450 = icmp ult i8* %_ptr_bt_445, %_parent_stack_start_ptr_
  %_cond2_451 = or i1 %_cond2_1_449, %_cond2_2_450
  %_cond4_452 = icmp ule i8* %_pot_address_in_parent_stack_447, %_parent_stack_end_ptr_
  %_cond1_n_cond2_453 = and i1 %_cond1_448, %_cond2_451
  %_cond1_n_cond2_cond3_454 = and i1 %_cond1_n_cond2_453, %_cond4_452
  br i1 %_cond1_n_cond2_cond3_454, label %216, label %217

; <label>:216:                                    ; preds = %211
  %_address_in_parent_stack_bt_456 = bitcast i8* %_pot_address_in_parent_stack_447 to i32*
  br label %217

; <label>:217:                                    ; preds = %211, %216
  %218 = phi i32* [ %215, %211 ], [ %_address_in_parent_stack_bt_456, %216 ]
  %_new_load_457 = load i32, i32* %218
  %ESI_val.83 = load i32, i32* %ESI.19, !mcsema_real_eip !47
  %219 = add i32 %ESI_val.83, %_new_load_457, !mcsema_real_eip !47
  %220 = xor i32 %219, %_new_load_457, !mcsema_real_eip !47
  %221 = xor i32 %220, %ESI_val.83, !mcsema_real_eip !47
  %222 = and i32 %221, 16, !mcsema_real_eip !47
  %223 = icmp ne i32 %222, 0, !mcsema_real_eip !47
  store i1 %223, i1* %AF, !mcsema_real_eip !47
  %224 = lshr i32 %219, 31, !mcsema_real_eip !47
  %225 = trunc i32 %224 to i1, !mcsema_real_eip !47
  store i1 %225, i1* %SF, !mcsema_real_eip !47
  %226 = icmp eq i32 %219, 0, !mcsema_real_eip !47
  store i1 %226, i1* %ZF, !mcsema_real_eip !47
  %227 = xor i32 %_new_load_457, %ESI_val.83, !mcsema_real_eip !47
  %228 = xor i32 %227, -1, !mcsema_real_eip !47
  %229 = and i32 %228, %220, !mcsema_real_eip !47
  %230 = lshr i32 %229, 31, !mcsema_real_eip !47
  %231 = and i32 %230, 1, !mcsema_real_eip !47
  %232 = trunc i32 %231 to i1, !mcsema_real_eip !47
  store i1 %232, i1* %OF, !mcsema_real_eip !47
  %233 = trunc i32 %219 to i8, !mcsema_real_eip !47
  %234 = call i8 @llvm.ctpop.i8(i8 %233), !mcsema_real_eip !47
  %235 = trunc i8 %234 to i1, !mcsema_real_eip !47
  %236 = xor i1 %235, true, !mcsema_real_eip !47
  store i1 %236, i1* %PF, !mcsema_real_eip !47
  %237 = icmp ult i32 %219, %_new_load_457, !mcsema_real_eip !47
  store i1 %237, i1* %CF, !mcsema_real_eip !47
  %238 = zext i32 %219 to i64, !mcsema_real_eip !47
  store i64 %238, i64* %XSI, !mcsema_real_eip !47
  %_new_gep_110 = getelementptr i8, i8* %_load_rbp_ptr_103, i64 -72
  %_allin_new_bt_111 = bitcast i8* %_new_gep_110 to i64*
  %_ptr_to_int_458 = ptrtoint i64* %_allin_new_bt_111 to i64
  %_offset_above_rbp_461 = sub i64 %_ptr_to_int_458, %_local_end_to_int_
  %_pot_address_in_parent_stack_462 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_461
  %_cond1_463 = icmp ugt i8* %_new_gep_110, %_local_stack_end_ptr_
  %_cond2_1_464 = icmp ugt i8* %_new_gep_110, %_parent_stack_end_ptr_
  %_cond2_2_465 = icmp ult i8* %_new_gep_110, %_parent_stack_start_ptr_
  %_cond2_466 = or i1 %_cond2_1_464, %_cond2_2_465
  %_cond4_467 = icmp ule i8* %_pot_address_in_parent_stack_462, %_parent_stack_end_ptr_
  %_cond1_n_cond2_468 = and i1 %_cond1_463, %_cond2_466
  %_cond1_n_cond2_cond3_469 = and i1 %_cond1_n_cond2_468, %_cond4_467
  br i1 %_cond1_n_cond2_cond3_469, label %239, label %240

; <label>:239:                                    ; preds = %217
  %_address_in_parent_stack_bt_471 = bitcast i8* %_pot_address_in_parent_stack_462 to i64*
  br label %240

; <label>:240:                                    ; preds = %217, %239
  %241 = phi i64* [ %_allin_new_bt_111, %217 ], [ %_address_in_parent_stack_bt_471, %239 ]
  %_new_load_472 = load i64, i64* %241
  store i64 %_new_load_472, i64* %XCX, !mcsema_real_eip !48
  %242 = add i64 %_new_load_472, 4, !mcsema_real_eip !49
  %243 = inttoptr i64 %242 to i64*, !mcsema_real_eip !49
  %244 = inttoptr i64 %242 to i32*, !mcsema_real_eip !49
  %_ptr_bt_475 = bitcast i32* %244 to i8*
  %_offset_above_rbp_476 = sub i64 %242, %_local_end_to_int_
  %_pot_address_in_parent_stack_477 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_476
  %_cond1_478 = icmp ugt i8* %_ptr_bt_475, %_local_stack_end_ptr_
  %_cond2_1_479 = icmp ugt i8* %_ptr_bt_475, %_parent_stack_end_ptr_
  %_cond2_2_480 = icmp ult i8* %_ptr_bt_475, %_parent_stack_start_ptr_
  %_cond2_481 = or i1 %_cond2_1_479, %_cond2_2_480
  %_cond4_482 = icmp ule i8* %_pot_address_in_parent_stack_477, %_parent_stack_end_ptr_
  %_cond1_n_cond2_483 = and i1 %_cond1_478, %_cond2_481
  %_cond1_n_cond2_cond3_484 = and i1 %_cond1_n_cond2_483, %_cond4_482
  br i1 %_cond1_n_cond2_cond3_484, label %245, label %246

; <label>:245:                                    ; preds = %240
  %_address_in_parent_stack_bt_486 = bitcast i8* %_pot_address_in_parent_stack_477 to i32*
  br label %246

; <label>:246:                                    ; preds = %240, %245
  %247 = phi i32* [ %244, %240 ], [ %_address_in_parent_stack_bt_486, %245 ]
  %_new_load_487 = load i32, i32* %247
  %ESI_val.87 = load i32, i32* %ESI.19, !mcsema_real_eip !49
  %248 = add i32 %ESI_val.87, %_new_load_487, !mcsema_real_eip !49
  %249 = xor i32 %248, %_new_load_487, !mcsema_real_eip !49
  %250 = xor i32 %249, %ESI_val.87, !mcsema_real_eip !49
  %251 = and i32 %250, 16, !mcsema_real_eip !49
  %252 = icmp ne i32 %251, 0, !mcsema_real_eip !49
  store i1 %252, i1* %AF, !mcsema_real_eip !49
  %253 = lshr i32 %248, 31, !mcsema_real_eip !49
  %254 = trunc i32 %253 to i1, !mcsema_real_eip !49
  store i1 %254, i1* %SF, !mcsema_real_eip !49
  %255 = icmp eq i32 %248, 0, !mcsema_real_eip !49
  store i1 %255, i1* %ZF, !mcsema_real_eip !49
  %256 = xor i32 %_new_load_487, %ESI_val.87, !mcsema_real_eip !49
  %257 = xor i32 %256, -1, !mcsema_real_eip !49
  %258 = and i32 %257, %249, !mcsema_real_eip !49
  %259 = lshr i32 %258, 31, !mcsema_real_eip !49
  %260 = and i32 %259, 1, !mcsema_real_eip !49
  %261 = trunc i32 %260 to i1, !mcsema_real_eip !49
  store i1 %261, i1* %OF, !mcsema_real_eip !49
  %262 = trunc i32 %248 to i8, !mcsema_real_eip !49
  %263 = call i8 @llvm.ctpop.i8(i8 %262), !mcsema_real_eip !49
  %264 = trunc i8 %263 to i1, !mcsema_real_eip !49
  %265 = xor i1 %264, true, !mcsema_real_eip !49
  store i1 %265, i1* %PF, !mcsema_real_eip !49
  %266 = icmp ult i32 %248, %_new_load_487, !mcsema_real_eip !49
  store i1 %266, i1* %CF, !mcsema_real_eip !49
  %267 = zext i32 %248 to i64, !mcsema_real_eip !49
  store i64 %267, i64* %XSI, !mcsema_real_eip !49
  %RAX_val.88 = load i64, i64* %XAX, !mcsema_real_eip !50
  %268 = add i64 %RAX_val.88, 4, !mcsema_real_eip !50
  %269 = inttoptr i64 %268 to i64*, !mcsema_real_eip !50
  %270 = inttoptr i64 %268 to i32*, !mcsema_real_eip !50
  %_ptr_bt_490 = bitcast i32* %270 to i8*
  %_offset_above_rbp_491 = sub i64 %268, %_local_end_to_int_
  %_pot_address_in_parent_stack_492 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_491
  %_cond1_493 = icmp ugt i8* %_ptr_bt_490, %_local_stack_end_ptr_
  %_cond2_1_494 = icmp ugt i8* %_ptr_bt_490, %_parent_stack_end_ptr_
  %_cond2_2_495 = icmp ult i8* %_ptr_bt_490, %_parent_stack_start_ptr_
  %_cond2_496 = or i1 %_cond2_1_494, %_cond2_2_495
  %_cond4_497 = icmp ule i8* %_pot_address_in_parent_stack_492, %_parent_stack_end_ptr_
  %_cond1_n_cond2_498 = and i1 %_cond1_493, %_cond2_496
  %_cond1_n_cond2_cond3_499 = and i1 %_cond1_n_cond2_498, %_cond4_497
  br i1 %_cond1_n_cond2_cond3_499, label %271, label %272

; <label>:271:                                    ; preds = %246
  %_address_in_parent_stack_bt_501 = bitcast i8* %_pot_address_in_parent_stack_492 to i32*
  br label %272

; <label>:272:                                    ; preds = %246, %271
  %273 = phi i32* [ %270, %246 ], [ %_address_in_parent_stack_bt_501, %271 ]
  %_new_load_502 = load i32, i32* %273
  %274 = zext i32 %_new_load_502 to i64, !mcsema_real_eip !50
  store i64 %274, i64* %R8, !mcsema_real_eip !50
  %_new_gep_113 = getelementptr i8, i8* %_load_rbp_ptr_103, i64 -96
  %_allin_new_bt_114 = bitcast i8* %_new_gep_113 to i64*
  %_ptr_to_int_503 = ptrtoint i64* %_allin_new_bt_114 to i64
  %_offset_above_rbp_506 = sub i64 %_ptr_to_int_503, %_local_end_to_int_
  %_pot_address_in_parent_stack_507 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_506
  %_cond1_508 = icmp ugt i8* %_new_gep_113, %_local_stack_end_ptr_
  %_cond2_1_509 = icmp ugt i8* %_new_gep_113, %_parent_stack_end_ptr_
  %_cond2_2_510 = icmp ult i8* %_new_gep_113, %_parent_stack_start_ptr_
  %_cond2_511 = or i1 %_cond2_1_509, %_cond2_2_510
  %_cond4_512 = icmp ule i8* %_pot_address_in_parent_stack_507, %_parent_stack_end_ptr_
  %_cond1_n_cond2_513 = and i1 %_cond1_508, %_cond2_511
  %_cond1_n_cond2_cond3_514 = and i1 %_cond1_n_cond2_513, %_cond4_512
  br i1 %_cond1_n_cond2_cond3_514, label %275, label %276

; <label>:275:                                    ; preds = %272
  %_address_in_parent_stack_bt_516 = bitcast i8* %_pot_address_in_parent_stack_507 to i64*
  br label %276

; <label>:276:                                    ; preds = %272, %275
  %277 = phi i64* [ %_allin_new_bt_114, %272 ], [ %_address_in_parent_stack_bt_516, %275 ]
  %_new_load_517 = load i64, i64* %277
  store i64 %_new_load_517, i64* %XCX, !mcsema_real_eip !51
  %278 = add i64 %_new_load_517, 4, !mcsema_real_eip !52
  %279 = inttoptr i64 %278 to i64*, !mcsema_real_eip !52
  %280 = inttoptr i64 %278 to i32*, !mcsema_real_eip !52
  %_ptr_bt_520 = bitcast i32* %280 to i8*
  %_offset_above_rbp_521 = sub i64 %278, %_local_end_to_int_
  %_pot_address_in_parent_stack_522 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_521
  %_cond1_523 = icmp ugt i8* %_ptr_bt_520, %_local_stack_end_ptr_
  %_cond2_1_524 = icmp ugt i8* %_ptr_bt_520, %_parent_stack_end_ptr_
  %_cond2_2_525 = icmp ult i8* %_ptr_bt_520, %_parent_stack_start_ptr_
  %_cond2_526 = or i1 %_cond2_1_524, %_cond2_2_525
  %_cond4_527 = icmp ule i8* %_pot_address_in_parent_stack_522, %_parent_stack_end_ptr_
  %_cond1_n_cond2_528 = and i1 %_cond1_523, %_cond2_526
  %_cond1_n_cond2_cond3_529 = and i1 %_cond1_n_cond2_528, %_cond4_527
  br i1 %_cond1_n_cond2_cond3_529, label %281, label %282

; <label>:281:                                    ; preds = %276
  %_address_in_parent_stack_bt_531 = bitcast i8* %_pot_address_in_parent_stack_522 to i32*
  br label %282

; <label>:282:                                    ; preds = %276, %281
  %283 = phi i32* [ %280, %276 ], [ %_address_in_parent_stack_bt_531, %281 ]
  %_new_load_532 = load i32, i32* %283
  %R8D_val.92 = load i32, i32* %R8D.33, !mcsema_real_eip !52
  %284 = add i32 %R8D_val.92, %_new_load_532, !mcsema_real_eip !52
  %285 = xor i32 %284, %_new_load_532, !mcsema_real_eip !52
  %286 = xor i32 %285, %R8D_val.92, !mcsema_real_eip !52
  %287 = and i32 %286, 16, !mcsema_real_eip !52
  %288 = icmp ne i32 %287, 0, !mcsema_real_eip !52
  store i1 %288, i1* %AF, !mcsema_real_eip !52
  %289 = lshr i32 %284, 31, !mcsema_real_eip !52
  %290 = trunc i32 %289 to i1, !mcsema_real_eip !52
  store i1 %290, i1* %SF, !mcsema_real_eip !52
  %291 = icmp eq i32 %284, 0, !mcsema_real_eip !52
  store i1 %291, i1* %ZF, !mcsema_real_eip !52
  %292 = xor i32 %_new_load_532, %R8D_val.92, !mcsema_real_eip !52
  %293 = xor i32 %292, -1, !mcsema_real_eip !52
  %294 = and i32 %293, %285, !mcsema_real_eip !52
  %295 = lshr i32 %294, 31, !mcsema_real_eip !52
  %296 = and i32 %295, 1, !mcsema_real_eip !52
  %297 = trunc i32 %296 to i1, !mcsema_real_eip !52
  store i1 %297, i1* %OF, !mcsema_real_eip !52
  %298 = trunc i32 %284 to i8, !mcsema_real_eip !52
  %299 = call i8 @llvm.ctpop.i8(i8 %298), !mcsema_real_eip !52
  %300 = trunc i8 %299 to i1, !mcsema_real_eip !52
  %301 = xor i1 %300, true, !mcsema_real_eip !52
  store i1 %301, i1* %PF, !mcsema_real_eip !52
  %302 = icmp ult i32 %284, %_new_load_532, !mcsema_real_eip !52
  store i1 %302, i1* %CF, !mcsema_real_eip !52
  %303 = zext i32 %284 to i64, !mcsema_real_eip !52
  store i64 %303, i64* %R8, !mcsema_real_eip !52
  %_new_gep_116 = getelementptr i8, i8* %_load_rbp_ptr_103, i64 -104
  %_allin_new_bt_117 = bitcast i8* %_new_gep_116 to i64*
  %_ptr_to_int_533 = ptrtoint i64* %_allin_new_bt_117 to i64
  %_offset_above_rbp_536 = sub i64 %_ptr_to_int_533, %_local_end_to_int_
  %_pot_address_in_parent_stack_537 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_536
  %_cond1_538 = icmp ugt i8* %_new_gep_116, %_local_stack_end_ptr_
  %_cond2_1_539 = icmp ugt i8* %_new_gep_116, %_parent_stack_end_ptr_
  %_cond2_2_540 = icmp ult i8* %_new_gep_116, %_parent_stack_start_ptr_
  %_cond2_541 = or i1 %_cond2_1_539, %_cond2_2_540
  %_cond4_542 = icmp ule i8* %_pot_address_in_parent_stack_537, %_parent_stack_end_ptr_
  %_cond1_n_cond2_543 = and i1 %_cond1_538, %_cond2_541
  %_cond1_n_cond2_cond3_544 = and i1 %_cond1_n_cond2_543, %_cond4_542
  br i1 %_cond1_n_cond2_cond3_544, label %304, label %305

; <label>:304:                                    ; preds = %282
  %_address_in_parent_stack_bt_546 = bitcast i8* %_pot_address_in_parent_stack_537 to i64*
  br label %305

; <label>:305:                                    ; preds = %282, %304
  %306 = phi i64* [ %_allin_new_bt_117, %282 ], [ %_address_in_parent_stack_bt_546, %304 ]
  %_new_load_547 = load i64, i64* %306
  store i64 %_new_load_547, i64* %XCX, !mcsema_real_eip !53
  %307 = add i64 %_new_load_547, 4, !mcsema_real_eip !54
  %308 = inttoptr i64 %307 to i64*, !mcsema_real_eip !54
  %309 = inttoptr i64 %307 to i32*, !mcsema_real_eip !54
  %_ptr_bt_550 = bitcast i32* %309 to i8*
  %_offset_above_rbp_551 = sub i64 %307, %_local_end_to_int_
  %_pot_address_in_parent_stack_552 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_551
  %_cond1_553 = icmp ugt i8* %_ptr_bt_550, %_local_stack_end_ptr_
  %_cond2_1_554 = icmp ugt i8* %_ptr_bt_550, %_parent_stack_end_ptr_
  %_cond2_2_555 = icmp ult i8* %_ptr_bt_550, %_parent_stack_start_ptr_
  %_cond2_556 = or i1 %_cond2_1_554, %_cond2_2_555
  %_cond4_557 = icmp ule i8* %_pot_address_in_parent_stack_552, %_parent_stack_end_ptr_
  %_cond1_n_cond2_558 = and i1 %_cond1_553, %_cond2_556
  %_cond1_n_cond2_cond3_559 = and i1 %_cond1_n_cond2_558, %_cond4_557
  br i1 %_cond1_n_cond2_cond3_559, label %310, label %311

; <label>:310:                                    ; preds = %305
  %_address_in_parent_stack_bt_561 = bitcast i8* %_pot_address_in_parent_stack_552 to i32*
  br label %311

; <label>:311:                                    ; preds = %305, %310
  %312 = phi i32* [ %309, %305 ], [ %_address_in_parent_stack_bt_561, %310 ]
  %_new_load_562 = load i32, i32* %312
  %R8D_val.96 = load i32, i32* %R8D.33, !mcsema_real_eip !54
  %313 = add i32 %R8D_val.96, %_new_load_562, !mcsema_real_eip !54
  %314 = xor i32 %313, %_new_load_562, !mcsema_real_eip !54
  %315 = xor i32 %314, %R8D_val.96, !mcsema_real_eip !54
  %316 = and i32 %315, 16, !mcsema_real_eip !54
  %317 = icmp ne i32 %316, 0, !mcsema_real_eip !54
  store i1 %317, i1* %AF, !mcsema_real_eip !54
  %318 = lshr i32 %313, 31, !mcsema_real_eip !54
  %319 = trunc i32 %318 to i1, !mcsema_real_eip !54
  store i1 %319, i1* %SF, !mcsema_real_eip !54
  %320 = icmp eq i32 %313, 0, !mcsema_real_eip !54
  store i1 %320, i1* %ZF, !mcsema_real_eip !54
  %321 = xor i32 %_new_load_562, %R8D_val.96, !mcsema_real_eip !54
  %322 = xor i32 %321, -1, !mcsema_real_eip !54
  %323 = and i32 %322, %314, !mcsema_real_eip !54
  %324 = lshr i32 %323, 31, !mcsema_real_eip !54
  %325 = and i32 %324, 1, !mcsema_real_eip !54
  %326 = trunc i32 %325 to i1, !mcsema_real_eip !54
  store i1 %326, i1* %OF, !mcsema_real_eip !54
  %327 = trunc i32 %313 to i8, !mcsema_real_eip !54
  %328 = call i8 @llvm.ctpop.i8(i8 %327), !mcsema_real_eip !54
  %329 = trunc i8 %328 to i1, !mcsema_real_eip !54
  %330 = xor i1 %329, true, !mcsema_real_eip !54
  store i1 %330, i1* %PF, !mcsema_real_eip !54
  %331 = icmp ult i32 %313, %_new_load_562, !mcsema_real_eip !54
  store i1 %331, i1* %CF, !mcsema_real_eip !54
  %332 = zext i32 %313 to i64, !mcsema_real_eip !54
  store i64 %332, i64* %R8, !mcsema_real_eip !54
  %ESI_val.98 = load i32, i32* %ESI.19, !mcsema_real_eip !55
  %R8D_val.100 = load i32, i32* %R8D.33, !mcsema_real_eip !55
  %333 = add i32 %R8D_val.100, %ESI_val.98, !mcsema_real_eip !55
  %334 = xor i32 %333, %ESI_val.98, !mcsema_real_eip !55
  %335 = xor i32 %334, %R8D_val.100, !mcsema_real_eip !55
  %336 = and i32 %335, 16, !mcsema_real_eip !55
  %337 = icmp ne i32 %336, 0, !mcsema_real_eip !55
  store i1 %337, i1* %AF, !mcsema_real_eip !55
  %338 = lshr i32 %333, 31, !mcsema_real_eip !55
  %339 = trunc i32 %338 to i1, !mcsema_real_eip !55
  store i1 %339, i1* %SF, !mcsema_real_eip !55
  %340 = icmp eq i32 %333, 0, !mcsema_real_eip !55
  store i1 %340, i1* %ZF, !mcsema_real_eip !55
  %341 = xor i32 %ESI_val.98, %R8D_val.100, !mcsema_real_eip !55
  %342 = xor i32 %341, -1, !mcsema_real_eip !55
  %343 = and i32 %342, %334, !mcsema_real_eip !55
  %344 = lshr i32 %343, 31, !mcsema_real_eip !55
  %345 = and i32 %344, 1, !mcsema_real_eip !55
  %346 = trunc i32 %345 to i1, !mcsema_real_eip !55
  store i1 %346, i1* %OF, !mcsema_real_eip !55
  %347 = trunc i32 %333 to i8, !mcsema_real_eip !55
  %348 = call i8 @llvm.ctpop.i8(i8 %347), !mcsema_real_eip !55
  %349 = trunc i8 %348 to i1, !mcsema_real_eip !55
  %350 = xor i1 %349, true, !mcsema_real_eip !55
  store i1 %350, i1* %PF, !mcsema_real_eip !55
  %351 = icmp ult i32 %333, %ESI_val.98, !mcsema_real_eip !55
  store i1 %351, i1* %CF, !mcsema_real_eip !55
  %352 = zext i32 %333 to i64, !mcsema_real_eip !55
  store i64 %352, i64* %XSI, !mcsema_real_eip !55
  %_new_gep_119 = getelementptr i8, i8* %_load_rbp_ptr_103, i64 -112
  %_allin_new_bt_120 = bitcast i8* %_new_gep_119 to i64*
  %_ptr_to_int_563 = ptrtoint i64* %_allin_new_bt_120 to i64
  %_offset_above_rbp_566 = sub i64 %_ptr_to_int_563, %_local_end_to_int_
  %_pot_address_in_parent_stack_567 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_566
  %_cond1_568 = icmp ugt i8* %_new_gep_119, %_local_stack_end_ptr_
  %_cond2_1_569 = icmp ugt i8* %_new_gep_119, %_parent_stack_end_ptr_
  %_cond2_2_570 = icmp ult i8* %_new_gep_119, %_parent_stack_start_ptr_
  %_cond2_571 = or i1 %_cond2_1_569, %_cond2_2_570
  %_cond4_572 = icmp ule i8* %_pot_address_in_parent_stack_567, %_parent_stack_end_ptr_
  %_cond1_n_cond2_573 = and i1 %_cond1_568, %_cond2_571
  %_cond1_n_cond2_cond3_574 = and i1 %_cond1_n_cond2_573, %_cond4_572
  br i1 %_cond1_n_cond2_cond3_574, label %353, label %354

; <label>:353:                                    ; preds = %311
  %_address_in_parent_stack_bt_576 = bitcast i8* %_pot_address_in_parent_stack_567 to i64*
  br label %354

; <label>:354:                                    ; preds = %311, %353
  %355 = phi i64* [ %_allin_new_bt_120, %311 ], [ %_address_in_parent_stack_bt_576, %353 ]
  %_new_load_577 = load i64, i64* %355
  store i64 %_new_load_577, i64* %XCX, !mcsema_real_eip !56
  %356 = add i64 %_new_load_577, 4, !mcsema_real_eip !57
  %357 = inttoptr i64 %356 to i64*, !mcsema_real_eip !57
  %ESI_val.104 = load i32, i32* %ESI.19, !mcsema_real_eip !57
  %358 = inttoptr i64 %356 to i32*, !mcsema_real_eip !57
  store i32 %ESI_val.104, i32* %358, !mcsema_real_eip !57
  %_load_rbp_ptr_121 = load i8*, i8** %_RBP_ptr_
  %_new_gep_122 = getelementptr i8, i8* %_load_rbp_ptr_121, i64 -32
  %_allin_new_bt_123 = bitcast i8* %_new_gep_122 to i64*
  %359 = ptrtoint i64* %_allin_new_bt_123 to i64, !mcsema_real_eip !58
  %360 = inttoptr i64 %359 to i32*, !mcsema_real_eip !58
  %_ptr_bt_580 = bitcast i32* %360 to i8*
  %_offset_above_rbp_581 = sub i64 %359, %_local_end_to_int_
  %_pot_address_in_parent_stack_582 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_581
  %_cond1_583 = icmp ugt i8* %_ptr_bt_580, %_local_stack_end_ptr_
  %_cond2_1_584 = icmp ugt i8* %_ptr_bt_580, %_parent_stack_end_ptr_
  %_cond2_2_585 = icmp ult i8* %_ptr_bt_580, %_parent_stack_start_ptr_
  %_cond2_586 = or i1 %_cond2_1_584, %_cond2_2_585
  %_cond4_587 = icmp ule i8* %_pot_address_in_parent_stack_582, %_parent_stack_end_ptr_
  %_cond1_n_cond2_588 = and i1 %_cond1_583, %_cond2_586
  %_cond1_n_cond2_cond3_589 = and i1 %_cond1_n_cond2_588, %_cond4_587
  br i1 %_cond1_n_cond2_cond3_589, label %361, label %362

; <label>:361:                                    ; preds = %354
  %_address_in_parent_stack_bt_591 = bitcast i8* %_pot_address_in_parent_stack_582 to i32*
  br label %362

; <label>:362:                                    ; preds = %354, %361
  %363 = phi i32* [ %360, %354 ], [ %_address_in_parent_stack_bt_591, %361 ]
  %_new_load_592 = load i32, i32* %363
  %364 = zext i32 %_new_load_592 to i64, !mcsema_real_eip !58
  store i64 %364, i64* %XSI, !mcsema_real_eip !58
  %_new_gep_125 = getelementptr i8, i8* %_load_rbp_ptr_121, i64 -64
  %_allin_new_bt_126 = bitcast i8* %_new_gep_125 to i64*
  %_ptr_to_int_593 = ptrtoint i64* %_allin_new_bt_126 to i64
  %_offset_above_rbp_596 = sub i64 %_ptr_to_int_593, %_local_end_to_int_
  %_pot_address_in_parent_stack_597 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_596
  %_cond1_598 = icmp ugt i8* %_new_gep_125, %_local_stack_end_ptr_
  %_cond2_1_599 = icmp ugt i8* %_new_gep_125, %_parent_stack_end_ptr_
  %_cond2_2_600 = icmp ult i8* %_new_gep_125, %_parent_stack_start_ptr_
  %_cond2_601 = or i1 %_cond2_1_599, %_cond2_2_600
  %_cond4_602 = icmp ule i8* %_pot_address_in_parent_stack_597, %_parent_stack_end_ptr_
  %_cond1_n_cond2_603 = and i1 %_cond1_598, %_cond2_601
  %_cond1_n_cond2_cond3_604 = and i1 %_cond1_n_cond2_603, %_cond4_602
  br i1 %_cond1_n_cond2_cond3_604, label %365, label %366

; <label>:365:                                    ; preds = %362
  %_address_in_parent_stack_bt_606 = bitcast i8* %_pot_address_in_parent_stack_597 to i64*
  br label %366

; <label>:366:                                    ; preds = %362, %365
  %367 = phi i64* [ %_allin_new_bt_126, %362 ], [ %_address_in_parent_stack_bt_606, %365 ]
  %_new_load_607 = load i64, i64* %367
  store i64 %_new_load_607, i64* %XCX, !mcsema_real_eip !59
  %368 = add i64 %_new_load_607, 8, !mcsema_real_eip !60
  %369 = inttoptr i64 %368 to i64*, !mcsema_real_eip !60
  %370 = inttoptr i64 %368 to i32*, !mcsema_real_eip !60
  %_ptr_bt_610 = bitcast i32* %370 to i8*
  %_offset_above_rbp_611 = sub i64 %368, %_local_end_to_int_
  %_pot_address_in_parent_stack_612 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_611
  %_cond1_613 = icmp ugt i8* %_ptr_bt_610, %_local_stack_end_ptr_
  %_cond2_1_614 = icmp ugt i8* %_ptr_bt_610, %_parent_stack_end_ptr_
  %_cond2_2_615 = icmp ult i8* %_ptr_bt_610, %_parent_stack_start_ptr_
  %_cond2_616 = or i1 %_cond2_1_614, %_cond2_2_615
  %_cond4_617 = icmp ule i8* %_pot_address_in_parent_stack_612, %_parent_stack_end_ptr_
  %_cond1_n_cond2_618 = and i1 %_cond1_613, %_cond2_616
  %_cond1_n_cond2_cond3_619 = and i1 %_cond1_n_cond2_618, %_cond4_617
  br i1 %_cond1_n_cond2_cond3_619, label %371, label %372

; <label>:371:                                    ; preds = %366
  %_address_in_parent_stack_bt_621 = bitcast i8* %_pot_address_in_parent_stack_612 to i32*
  br label %372

; <label>:372:                                    ; preds = %366, %371
  %373 = phi i32* [ %370, %366 ], [ %_address_in_parent_stack_bt_621, %371 ]
  %_new_load_622 = load i32, i32* %373
  %ESI_val.109 = load i32, i32* %ESI.19, !mcsema_real_eip !60
  %374 = add i32 %ESI_val.109, %_new_load_622, !mcsema_real_eip !60
  %375 = xor i32 %374, %_new_load_622, !mcsema_real_eip !60
  %376 = xor i32 %375, %ESI_val.109, !mcsema_real_eip !60
  %377 = and i32 %376, 16, !mcsema_real_eip !60
  %378 = icmp ne i32 %377, 0, !mcsema_real_eip !60
  store i1 %378, i1* %AF, !mcsema_real_eip !60
  %379 = lshr i32 %374, 31, !mcsema_real_eip !60
  %380 = trunc i32 %379 to i1, !mcsema_real_eip !60
  store i1 %380, i1* %SF, !mcsema_real_eip !60
  %381 = icmp eq i32 %374, 0, !mcsema_real_eip !60
  store i1 %381, i1* %ZF, !mcsema_real_eip !60
  %382 = xor i32 %_new_load_622, %ESI_val.109, !mcsema_real_eip !60
  %383 = xor i32 %382, -1, !mcsema_real_eip !60
  %384 = and i32 %383, %375, !mcsema_real_eip !60
  %385 = lshr i32 %384, 31, !mcsema_real_eip !60
  %386 = and i32 %385, 1, !mcsema_real_eip !60
  %387 = trunc i32 %386 to i1, !mcsema_real_eip !60
  store i1 %387, i1* %OF, !mcsema_real_eip !60
  %388 = trunc i32 %374 to i8, !mcsema_real_eip !60
  %389 = call i8 @llvm.ctpop.i8(i8 %388), !mcsema_real_eip !60
  %390 = trunc i8 %389 to i1, !mcsema_real_eip !60
  %391 = xor i1 %390, true, !mcsema_real_eip !60
  store i1 %391, i1* %PF, !mcsema_real_eip !60
  %392 = icmp ult i32 %374, %_new_load_622, !mcsema_real_eip !60
  store i1 %392, i1* %CF, !mcsema_real_eip !60
  %393 = zext i32 %374 to i64, !mcsema_real_eip !60
  store i64 %393, i64* %XSI, !mcsema_real_eip !60
  %_new_gep_128 = getelementptr i8, i8* %_load_rbp_ptr_121, i64 -72
  %_allin_new_bt_129 = bitcast i8* %_new_gep_128 to i64*
  %_ptr_to_int_623 = ptrtoint i64* %_allin_new_bt_129 to i64
  %_offset_above_rbp_626 = sub i64 %_ptr_to_int_623, %_local_end_to_int_
  %_pot_address_in_parent_stack_627 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_626
  %_cond1_628 = icmp ugt i8* %_new_gep_128, %_local_stack_end_ptr_
  %_cond2_1_629 = icmp ugt i8* %_new_gep_128, %_parent_stack_end_ptr_
  %_cond2_2_630 = icmp ult i8* %_new_gep_128, %_parent_stack_start_ptr_
  %_cond2_631 = or i1 %_cond2_1_629, %_cond2_2_630
  %_cond4_632 = icmp ule i8* %_pot_address_in_parent_stack_627, %_parent_stack_end_ptr_
  %_cond1_n_cond2_633 = and i1 %_cond1_628, %_cond2_631
  %_cond1_n_cond2_cond3_634 = and i1 %_cond1_n_cond2_633, %_cond4_632
  br i1 %_cond1_n_cond2_cond3_634, label %394, label %395

; <label>:394:                                    ; preds = %372
  %_address_in_parent_stack_bt_636 = bitcast i8* %_pot_address_in_parent_stack_627 to i64*
  br label %395

; <label>:395:                                    ; preds = %372, %394
  %396 = phi i64* [ %_allin_new_bt_129, %372 ], [ %_address_in_parent_stack_bt_636, %394 ]
  %_new_load_637 = load i64, i64* %396
  store i64 %_new_load_637, i64* %XCX, !mcsema_real_eip !61
  %397 = add i64 %_new_load_637, 8, !mcsema_real_eip !62
  %398 = inttoptr i64 %397 to i64*, !mcsema_real_eip !62
  %399 = inttoptr i64 %397 to i32*, !mcsema_real_eip !62
  %_ptr_bt_640 = bitcast i32* %399 to i8*
  %_offset_above_rbp_641 = sub i64 %397, %_local_end_to_int_
  %_pot_address_in_parent_stack_642 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_641
  %_cond1_643 = icmp ugt i8* %_ptr_bt_640, %_local_stack_end_ptr_
  %_cond2_1_644 = icmp ugt i8* %_ptr_bt_640, %_parent_stack_end_ptr_
  %_cond2_2_645 = icmp ult i8* %_ptr_bt_640, %_parent_stack_start_ptr_
  %_cond2_646 = or i1 %_cond2_1_644, %_cond2_2_645
  %_cond4_647 = icmp ule i8* %_pot_address_in_parent_stack_642, %_parent_stack_end_ptr_
  %_cond1_n_cond2_648 = and i1 %_cond1_643, %_cond2_646
  %_cond1_n_cond2_cond3_649 = and i1 %_cond1_n_cond2_648, %_cond4_647
  br i1 %_cond1_n_cond2_cond3_649, label %400, label %401

; <label>:400:                                    ; preds = %395
  %_address_in_parent_stack_bt_651 = bitcast i8* %_pot_address_in_parent_stack_642 to i32*
  br label %401

; <label>:401:                                    ; preds = %395, %400
  %402 = phi i32* [ %399, %395 ], [ %_address_in_parent_stack_bt_651, %400 ]
  %_new_load_652 = load i32, i32* %402
  %ESI_val.113 = load i32, i32* %ESI.19, !mcsema_real_eip !62
  %403 = add i32 %ESI_val.113, %_new_load_652, !mcsema_real_eip !62
  %404 = xor i32 %403, %_new_load_652, !mcsema_real_eip !62
  %405 = xor i32 %404, %ESI_val.113, !mcsema_real_eip !62
  %406 = and i32 %405, 16, !mcsema_real_eip !62
  %407 = icmp ne i32 %406, 0, !mcsema_real_eip !62
  store i1 %407, i1* %AF, !mcsema_real_eip !62
  %408 = lshr i32 %403, 31, !mcsema_real_eip !62
  %409 = trunc i32 %408 to i1, !mcsema_real_eip !62
  store i1 %409, i1* %SF, !mcsema_real_eip !62
  %410 = icmp eq i32 %403, 0, !mcsema_real_eip !62
  store i1 %410, i1* %ZF, !mcsema_real_eip !62
  %411 = xor i32 %_new_load_652, %ESI_val.113, !mcsema_real_eip !62
  %412 = xor i32 %411, -1, !mcsema_real_eip !62
  %413 = and i32 %412, %404, !mcsema_real_eip !62
  %414 = lshr i32 %413, 31, !mcsema_real_eip !62
  %415 = and i32 %414, 1, !mcsema_real_eip !62
  %416 = trunc i32 %415 to i1, !mcsema_real_eip !62
  store i1 %416, i1* %OF, !mcsema_real_eip !62
  %417 = trunc i32 %403 to i8, !mcsema_real_eip !62
  %418 = call i8 @llvm.ctpop.i8(i8 %417), !mcsema_real_eip !62
  %419 = trunc i8 %418 to i1, !mcsema_real_eip !62
  %420 = xor i1 %419, true, !mcsema_real_eip !62
  store i1 %420, i1* %PF, !mcsema_real_eip !62
  %421 = icmp ult i32 %403, %_new_load_652, !mcsema_real_eip !62
  store i1 %421, i1* %CF, !mcsema_real_eip !62
  %422 = zext i32 %403 to i64, !mcsema_real_eip !62
  store i64 %422, i64* %XSI, !mcsema_real_eip !62
  %RAX_val.114 = load i64, i64* %XAX, !mcsema_real_eip !63
  %423 = add i64 %RAX_val.114, 8, !mcsema_real_eip !63
  %424 = inttoptr i64 %423 to i64*, !mcsema_real_eip !63
  %425 = inttoptr i64 %423 to i32*, !mcsema_real_eip !63
  %_ptr_bt_655 = bitcast i32* %425 to i8*
  %_offset_above_rbp_656 = sub i64 %423, %_local_end_to_int_
  %_pot_address_in_parent_stack_657 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_656
  %_cond1_658 = icmp ugt i8* %_ptr_bt_655, %_local_stack_end_ptr_
  %_cond2_1_659 = icmp ugt i8* %_ptr_bt_655, %_parent_stack_end_ptr_
  %_cond2_2_660 = icmp ult i8* %_ptr_bt_655, %_parent_stack_start_ptr_
  %_cond2_661 = or i1 %_cond2_1_659, %_cond2_2_660
  %_cond4_662 = icmp ule i8* %_pot_address_in_parent_stack_657, %_parent_stack_end_ptr_
  %_cond1_n_cond2_663 = and i1 %_cond1_658, %_cond2_661
  %_cond1_n_cond2_cond3_664 = and i1 %_cond1_n_cond2_663, %_cond4_662
  br i1 %_cond1_n_cond2_cond3_664, label %426, label %427

; <label>:426:                                    ; preds = %401
  %_address_in_parent_stack_bt_666 = bitcast i8* %_pot_address_in_parent_stack_657 to i32*
  br label %427

; <label>:427:                                    ; preds = %401, %426
  %428 = phi i32* [ %425, %401 ], [ %_address_in_parent_stack_bt_666, %426 ]
  %_new_load_667 = load i32, i32* %428
  %429 = zext i32 %_new_load_667 to i64, !mcsema_real_eip !63
  store i64 %429, i64* %R8, !mcsema_real_eip !63
  %_new_gep_131 = getelementptr i8, i8* %_load_rbp_ptr_121, i64 -96
  %_allin_new_bt_132 = bitcast i8* %_new_gep_131 to i64*
  %_ptr_to_int_668 = ptrtoint i64* %_allin_new_bt_132 to i64
  %_offset_above_rbp_671 = sub i64 %_ptr_to_int_668, %_local_end_to_int_
  %_pot_address_in_parent_stack_672 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_671
  %_cond1_673 = icmp ugt i8* %_new_gep_131, %_local_stack_end_ptr_
  %_cond2_1_674 = icmp ugt i8* %_new_gep_131, %_parent_stack_end_ptr_
  %_cond2_2_675 = icmp ult i8* %_new_gep_131, %_parent_stack_start_ptr_
  %_cond2_676 = or i1 %_cond2_1_674, %_cond2_2_675
  %_cond4_677 = icmp ule i8* %_pot_address_in_parent_stack_672, %_parent_stack_end_ptr_
  %_cond1_n_cond2_678 = and i1 %_cond1_673, %_cond2_676
  %_cond1_n_cond2_cond3_679 = and i1 %_cond1_n_cond2_678, %_cond4_677
  br i1 %_cond1_n_cond2_cond3_679, label %430, label %431

; <label>:430:                                    ; preds = %427
  %_address_in_parent_stack_bt_681 = bitcast i8* %_pot_address_in_parent_stack_672 to i64*
  br label %431

; <label>:431:                                    ; preds = %427, %430
  %432 = phi i64* [ %_allin_new_bt_132, %427 ], [ %_address_in_parent_stack_bt_681, %430 ]
  %_new_load_682 = load i64, i64* %432
  store i64 %_new_load_682, i64* %XCX, !mcsema_real_eip !64
  %433 = add i64 %_new_load_682, 8, !mcsema_real_eip !65
  %434 = inttoptr i64 %433 to i64*, !mcsema_real_eip !65
  %435 = inttoptr i64 %433 to i32*, !mcsema_real_eip !65
  %_ptr_bt_685 = bitcast i32* %435 to i8*
  %_offset_above_rbp_686 = sub i64 %433, %_local_end_to_int_
  %_pot_address_in_parent_stack_687 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_686
  %_cond1_688 = icmp ugt i8* %_ptr_bt_685, %_local_stack_end_ptr_
  %_cond2_1_689 = icmp ugt i8* %_ptr_bt_685, %_parent_stack_end_ptr_
  %_cond2_2_690 = icmp ult i8* %_ptr_bt_685, %_parent_stack_start_ptr_
  %_cond2_691 = or i1 %_cond2_1_689, %_cond2_2_690
  %_cond4_692 = icmp ule i8* %_pot_address_in_parent_stack_687, %_parent_stack_end_ptr_
  %_cond1_n_cond2_693 = and i1 %_cond1_688, %_cond2_691
  %_cond1_n_cond2_cond3_694 = and i1 %_cond1_n_cond2_693, %_cond4_692
  br i1 %_cond1_n_cond2_cond3_694, label %436, label %437

; <label>:436:                                    ; preds = %431
  %_address_in_parent_stack_bt_696 = bitcast i8* %_pot_address_in_parent_stack_687 to i32*
  br label %437

; <label>:437:                                    ; preds = %431, %436
  %438 = phi i32* [ %435, %431 ], [ %_address_in_parent_stack_bt_696, %436 ]
  %_new_load_697 = load i32, i32* %438
  %R8D_val.118 = load i32, i32* %R8D.33, !mcsema_real_eip !65
  %439 = add i32 %R8D_val.118, %_new_load_697, !mcsema_real_eip !65
  %440 = xor i32 %439, %_new_load_697, !mcsema_real_eip !65
  %441 = xor i32 %440, %R8D_val.118, !mcsema_real_eip !65
  %442 = and i32 %441, 16, !mcsema_real_eip !65
  %443 = icmp ne i32 %442, 0, !mcsema_real_eip !65
  store i1 %443, i1* %AF, !mcsema_real_eip !65
  %444 = lshr i32 %439, 31, !mcsema_real_eip !65
  %445 = trunc i32 %444 to i1, !mcsema_real_eip !65
  store i1 %445, i1* %SF, !mcsema_real_eip !65
  %446 = icmp eq i32 %439, 0, !mcsema_real_eip !65
  store i1 %446, i1* %ZF, !mcsema_real_eip !65
  %447 = xor i32 %_new_load_697, %R8D_val.118, !mcsema_real_eip !65
  %448 = xor i32 %447, -1, !mcsema_real_eip !65
  %449 = and i32 %448, %440, !mcsema_real_eip !65
  %450 = lshr i32 %449, 31, !mcsema_real_eip !65
  %451 = and i32 %450, 1, !mcsema_real_eip !65
  %452 = trunc i32 %451 to i1, !mcsema_real_eip !65
  store i1 %452, i1* %OF, !mcsema_real_eip !65
  %453 = trunc i32 %439 to i8, !mcsema_real_eip !65
  %454 = call i8 @llvm.ctpop.i8(i8 %453), !mcsema_real_eip !65
  %455 = trunc i8 %454 to i1, !mcsema_real_eip !65
  %456 = xor i1 %455, true, !mcsema_real_eip !65
  store i1 %456, i1* %PF, !mcsema_real_eip !65
  %457 = icmp ult i32 %439, %_new_load_697, !mcsema_real_eip !65
  store i1 %457, i1* %CF, !mcsema_real_eip !65
  %458 = zext i32 %439 to i64, !mcsema_real_eip !65
  store i64 %458, i64* %R8, !mcsema_real_eip !65
  %_new_gep_134 = getelementptr i8, i8* %_load_rbp_ptr_121, i64 -104
  %_allin_new_bt_135 = bitcast i8* %_new_gep_134 to i64*
  %_ptr_to_int_698 = ptrtoint i64* %_allin_new_bt_135 to i64
  %_offset_above_rbp_701 = sub i64 %_ptr_to_int_698, %_local_end_to_int_
  %_pot_address_in_parent_stack_702 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_701
  %_cond1_703 = icmp ugt i8* %_new_gep_134, %_local_stack_end_ptr_
  %_cond2_1_704 = icmp ugt i8* %_new_gep_134, %_parent_stack_end_ptr_
  %_cond2_2_705 = icmp ult i8* %_new_gep_134, %_parent_stack_start_ptr_
  %_cond2_706 = or i1 %_cond2_1_704, %_cond2_2_705
  %_cond4_707 = icmp ule i8* %_pot_address_in_parent_stack_702, %_parent_stack_end_ptr_
  %_cond1_n_cond2_708 = and i1 %_cond1_703, %_cond2_706
  %_cond1_n_cond2_cond3_709 = and i1 %_cond1_n_cond2_708, %_cond4_707
  br i1 %_cond1_n_cond2_cond3_709, label %459, label %460

; <label>:459:                                    ; preds = %437
  %_address_in_parent_stack_bt_711 = bitcast i8* %_pot_address_in_parent_stack_702 to i64*
  br label %460

; <label>:460:                                    ; preds = %437, %459
  %461 = phi i64* [ %_allin_new_bt_135, %437 ], [ %_address_in_parent_stack_bt_711, %459 ]
  %_new_load_712 = load i64, i64* %461
  store i64 %_new_load_712, i64* %XCX, !mcsema_real_eip !66
  %462 = add i64 %_new_load_712, 8, !mcsema_real_eip !67
  %463 = inttoptr i64 %462 to i64*, !mcsema_real_eip !67
  %464 = inttoptr i64 %462 to i32*, !mcsema_real_eip !67
  %_ptr_bt_715 = bitcast i32* %464 to i8*
  %_offset_above_rbp_716 = sub i64 %462, %_local_end_to_int_
  %_pot_address_in_parent_stack_717 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_716
  %_cond1_718 = icmp ugt i8* %_ptr_bt_715, %_local_stack_end_ptr_
  %_cond2_1_719 = icmp ugt i8* %_ptr_bt_715, %_parent_stack_end_ptr_
  %_cond2_2_720 = icmp ult i8* %_ptr_bt_715, %_parent_stack_start_ptr_
  %_cond2_721 = or i1 %_cond2_1_719, %_cond2_2_720
  %_cond4_722 = icmp ule i8* %_pot_address_in_parent_stack_717, %_parent_stack_end_ptr_
  %_cond1_n_cond2_723 = and i1 %_cond1_718, %_cond2_721
  %_cond1_n_cond2_cond3_724 = and i1 %_cond1_n_cond2_723, %_cond4_722
  br i1 %_cond1_n_cond2_cond3_724, label %465, label %466

; <label>:465:                                    ; preds = %460
  %_address_in_parent_stack_bt_726 = bitcast i8* %_pot_address_in_parent_stack_717 to i32*
  br label %466

; <label>:466:                                    ; preds = %460, %465
  %467 = phi i32* [ %464, %460 ], [ %_address_in_parent_stack_bt_726, %465 ]
  %_new_load_727 = load i32, i32* %467
  %R8D_val.122 = load i32, i32* %R8D.33, !mcsema_real_eip !67
  %468 = add i32 %R8D_val.122, %_new_load_727, !mcsema_real_eip !67
  %469 = xor i32 %468, %_new_load_727, !mcsema_real_eip !67
  %470 = xor i32 %469, %R8D_val.122, !mcsema_real_eip !67
  %471 = and i32 %470, 16, !mcsema_real_eip !67
  %472 = icmp ne i32 %471, 0, !mcsema_real_eip !67
  store i1 %472, i1* %AF, !mcsema_real_eip !67
  %473 = lshr i32 %468, 31, !mcsema_real_eip !67
  %474 = trunc i32 %473 to i1, !mcsema_real_eip !67
  store i1 %474, i1* %SF, !mcsema_real_eip !67
  %475 = icmp eq i32 %468, 0, !mcsema_real_eip !67
  store i1 %475, i1* %ZF, !mcsema_real_eip !67
  %476 = xor i32 %_new_load_727, %R8D_val.122, !mcsema_real_eip !67
  %477 = xor i32 %476, -1, !mcsema_real_eip !67
  %478 = and i32 %477, %469, !mcsema_real_eip !67
  %479 = lshr i32 %478, 31, !mcsema_real_eip !67
  %480 = and i32 %479, 1, !mcsema_real_eip !67
  %481 = trunc i32 %480 to i1, !mcsema_real_eip !67
  store i1 %481, i1* %OF, !mcsema_real_eip !67
  %482 = trunc i32 %468 to i8, !mcsema_real_eip !67
  %483 = call i8 @llvm.ctpop.i8(i8 %482), !mcsema_real_eip !67
  %484 = trunc i8 %483 to i1, !mcsema_real_eip !67
  %485 = xor i1 %484, true, !mcsema_real_eip !67
  store i1 %485, i1* %PF, !mcsema_real_eip !67
  %486 = icmp ult i32 %468, %_new_load_727, !mcsema_real_eip !67
  store i1 %486, i1* %CF, !mcsema_real_eip !67
  %487 = zext i32 %468 to i64, !mcsema_real_eip !67
  store i64 %487, i64* %R8, !mcsema_real_eip !67
  %ESI_val.124 = load i32, i32* %ESI.19, !mcsema_real_eip !68
  %R8D_val.126 = load i32, i32* %R8D.33, !mcsema_real_eip !68
  %488 = add i32 %R8D_val.126, %ESI_val.124, !mcsema_real_eip !68
  %489 = xor i32 %488, %ESI_val.124, !mcsema_real_eip !68
  %490 = xor i32 %489, %R8D_val.126, !mcsema_real_eip !68
  %491 = and i32 %490, 16, !mcsema_real_eip !68
  %492 = icmp ne i32 %491, 0, !mcsema_real_eip !68
  store i1 %492, i1* %AF, !mcsema_real_eip !68
  %493 = lshr i32 %488, 31, !mcsema_real_eip !68
  %494 = trunc i32 %493 to i1, !mcsema_real_eip !68
  store i1 %494, i1* %SF, !mcsema_real_eip !68
  %495 = icmp eq i32 %488, 0, !mcsema_real_eip !68
  store i1 %495, i1* %ZF, !mcsema_real_eip !68
  %496 = xor i32 %ESI_val.124, %R8D_val.126, !mcsema_real_eip !68
  %497 = xor i32 %496, -1, !mcsema_real_eip !68
  %498 = and i32 %497, %489, !mcsema_real_eip !68
  %499 = lshr i32 %498, 31, !mcsema_real_eip !68
  %500 = and i32 %499, 1, !mcsema_real_eip !68
  %501 = trunc i32 %500 to i1, !mcsema_real_eip !68
  store i1 %501, i1* %OF, !mcsema_real_eip !68
  %502 = trunc i32 %488 to i8, !mcsema_real_eip !68
  %503 = call i8 @llvm.ctpop.i8(i8 %502), !mcsema_real_eip !68
  %504 = trunc i8 %503 to i1, !mcsema_real_eip !68
  %505 = xor i1 %504, true, !mcsema_real_eip !68
  store i1 %505, i1* %PF, !mcsema_real_eip !68
  %506 = icmp ult i32 %488, %ESI_val.124, !mcsema_real_eip !68
  store i1 %506, i1* %CF, !mcsema_real_eip !68
  %507 = zext i32 %488 to i64, !mcsema_real_eip !68
  store i64 %507, i64* %XSI, !mcsema_real_eip !68
  %_new_gep_137 = getelementptr i8, i8* %_load_rbp_ptr_121, i64 -112
  %_allin_new_bt_138 = bitcast i8* %_new_gep_137 to i64*
  %_ptr_to_int_728 = ptrtoint i64* %_allin_new_bt_138 to i64
  %_offset_above_rbp_731 = sub i64 %_ptr_to_int_728, %_local_end_to_int_
  %_pot_address_in_parent_stack_732 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_731
  %_cond1_733 = icmp ugt i8* %_new_gep_137, %_local_stack_end_ptr_
  %_cond2_1_734 = icmp ugt i8* %_new_gep_137, %_parent_stack_end_ptr_
  %_cond2_2_735 = icmp ult i8* %_new_gep_137, %_parent_stack_start_ptr_
  %_cond2_736 = or i1 %_cond2_1_734, %_cond2_2_735
  %_cond4_737 = icmp ule i8* %_pot_address_in_parent_stack_732, %_parent_stack_end_ptr_
  %_cond1_n_cond2_738 = and i1 %_cond1_733, %_cond2_736
  %_cond1_n_cond2_cond3_739 = and i1 %_cond1_n_cond2_738, %_cond4_737
  br i1 %_cond1_n_cond2_cond3_739, label %508, label %509

; <label>:508:                                    ; preds = %466
  %_address_in_parent_stack_bt_741 = bitcast i8* %_pot_address_in_parent_stack_732 to i64*
  br label %509

; <label>:509:                                    ; preds = %466, %508
  %510 = phi i64* [ %_allin_new_bt_138, %466 ], [ %_address_in_parent_stack_bt_741, %508 ]
  %_new_load_742 = load i64, i64* %510
  store i64 %_new_load_742, i64* %XCX, !mcsema_real_eip !69
  %511 = add i64 %_new_load_742, 8, !mcsema_real_eip !70
  %512 = inttoptr i64 %511 to i64*, !mcsema_real_eip !70
  %ESI_val.130 = load i32, i32* %ESI.19, !mcsema_real_eip !70
  %513 = inttoptr i64 %511 to i32*, !mcsema_real_eip !70
  store i32 %ESI_val.130, i32* %513, !mcsema_real_eip !70
  %_load_rbp_ptr_139 = load i8*, i8** %_RBP_ptr_
  %_new_gep_140 = getelementptr i8, i8* %_load_rbp_ptr_139, i64 -112
  %_allin_new_bt_141 = bitcast i8* %_new_gep_140 to i64*
  %_ptr_to_int_743 = ptrtoint i64* %_allin_new_bt_141 to i64
  %_offset_above_rbp_746 = sub i64 %_ptr_to_int_743, %_local_end_to_int_
  %_pot_address_in_parent_stack_747 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_746
  %_cond1_748 = icmp ugt i8* %_new_gep_140, %_local_stack_end_ptr_
  %_cond2_1_749 = icmp ugt i8* %_new_gep_140, %_parent_stack_end_ptr_
  %_cond2_2_750 = icmp ult i8* %_new_gep_140, %_parent_stack_start_ptr_
  %_cond2_751 = or i1 %_cond2_1_749, %_cond2_2_750
  %_cond4_752 = icmp ule i8* %_pot_address_in_parent_stack_747, %_parent_stack_end_ptr_
  %_cond1_n_cond2_753 = and i1 %_cond1_748, %_cond2_751
  %_cond1_n_cond2_cond3_754 = and i1 %_cond1_n_cond2_753, %_cond4_752
  br i1 %_cond1_n_cond2_cond3_754, label %514, label %515

; <label>:514:                                    ; preds = %509
  %_address_in_parent_stack_bt_756 = bitcast i8* %_pot_address_in_parent_stack_747 to i64*
  br label %515

; <label>:515:                                    ; preds = %509, %514
  %516 = phi i64* [ %_allin_new_bt_141, %509 ], [ %_address_in_parent_stack_bt_756, %514 ]
  %_new_load_757 = load i64, i64* %516
  store i64 %_new_load_757, i64* %XAX, !mcsema_real_eip !71
  %_load_rsp_ptr_142 = load i8*, i8** %_RSP_ptr_
  %RSP_val.132 = load i64, i64* %XSP, !mcsema_real_eip !72
  %_new_gep_143 = getelementptr i8, i8* %_load_rsp_ptr_142, i64 104
  %517 = add i64 104, %RSP_val.132, !mcsema_real_eip !72
  %_trans_p2i_144 = ptrtoint i8* %_new_gep_143 to i64
  %_trans_p2i_145 = ptrtoint i8* %_load_rsp_ptr_142 to i64
  %_trans_xor_146 = xor i64 %_trans_p2i_144, %_trans_p2i_145
  %518 = xor i64 %_trans_xor_146, 104, !mcsema_real_eip !72
  %519 = and i64 %518, 16, !mcsema_real_eip !72
  %520 = icmp ne i64 %519, 0, !mcsema_real_eip !72
  store i1 %520, i1* %AF, !mcsema_real_eip !72
  %521 = lshr i64 %517, 63, !mcsema_real_eip !72
  %522 = trunc i64 %521 to i1, !mcsema_real_eip !72
  store i1 %522, i1* %SF, !mcsema_real_eip !72
  %_trans_icmp_eq_148 = icmp eq i64 %_trans_p2i_144, 0
  store i1 %_trans_icmp_eq_148, i1* %ZF, !mcsema_real_eip !72
  %_trans_xor_150 = xor i64 %_trans_p2i_145, 104
  %523 = xor i64 %_trans_xor_150, -1, !mcsema_real_eip !72
  %524 = and i64 %523, %_trans_xor_146, !mcsema_real_eip !72
  %525 = lshr i64 %524, 63, !mcsema_real_eip !72
  %526 = and i64 %525, 1, !mcsema_real_eip !72
  %527 = trunc i64 %526 to i1, !mcsema_real_eip !72
  store i1 %527, i1* %OF, !mcsema_real_eip !72
  %_trans_trunc_155 = trunc i64 %_trans_p2i_144 to i8
  %528 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_155), !mcsema_real_eip !72
  %529 = trunc i8 %528 to i1, !mcsema_real_eip !72
  %530 = xor i1 %529, true, !mcsema_real_eip !72
  store i1 %530, i1* %PF, !mcsema_real_eip !72
  %_trans_icmp_ne_157 = icmp ne i64 %_trans_p2i_144, %RSP_val.132
  store i1 %_trans_icmp_ne_157, i1* %CF, !mcsema_real_eip !72
  store volatile i8* %_new_gep_143, i8** %_RSP_ptr_
  store i64 %517, i64* %XSP, !mcsema_real_eip !72
  %_allin_new_bt_159 = bitcast i8* %_new_gep_143 to i64*
  %_ptr_to_int_758 = ptrtoint i64* %_allin_new_bt_159 to i64
  %_offset_above_rbp_761 = sub i64 %_ptr_to_int_758, %_local_end_to_int_
  %_pot_address_in_parent_stack_762 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_761
  %_cond1_763 = icmp ugt i8* %_new_gep_143, %_local_stack_end_ptr_
  %_cond2_1_764 = icmp ugt i8* %_new_gep_143, %_parent_stack_end_ptr_
  %_cond2_2_765 = icmp ult i8* %_new_gep_143, %_parent_stack_start_ptr_
  %_cond2_766 = or i1 %_cond2_1_764, %_cond2_2_765
  %_cond4_767 = icmp ule i8* %_pot_address_in_parent_stack_762, %_parent_stack_end_ptr_
  %_cond1_n_cond2_768 = and i1 %_cond1_763, %_cond2_766
  %_cond1_n_cond2_cond3_769 = and i1 %_cond1_n_cond2_768, %_cond4_767
  br i1 %_cond1_n_cond2_cond3_769, label %531, label %532

; <label>:531:                                    ; preds = %515
  %_address_in_parent_stack_bt_771 = bitcast i8* %_pot_address_in_parent_stack_762 to i64*
  br label %532

; <label>:532:                                    ; preds = %515, %531
  %533 = phi i64* [ %_allin_new_bt_159, %515 ], [ %_address_in_parent_stack_bt_771, %531 ]
  %_new_load_772 = load i64, i64* %533
  store i64 %_new_load_772, i64* %XBX, !mcsema_real_eip !73
  %_new_gep_160 = getelementptr i8, i8* %_new_gep_143, i64 8
  %534 = add i64 %517, 8, !mcsema_real_eip !73
  store volatile i8* %_new_gep_160, i8** %_RSP_ptr_
  store i64 %534, i64* %XSP, !mcsema_real_eip !73
  %_allin_new_bt_162 = bitcast i8* %_new_gep_160 to i64*
  %_ptr_to_int_773 = ptrtoint i64* %_allin_new_bt_162 to i64
  %_offset_above_rbp_776 = sub i64 %_ptr_to_int_773, %_local_end_to_int_
  %_pot_address_in_parent_stack_777 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_776
  %_cond1_778 = icmp ugt i8* %_new_gep_160, %_local_stack_end_ptr_
  %_cond2_1_779 = icmp ugt i8* %_new_gep_160, %_parent_stack_end_ptr_
  %_cond2_2_780 = icmp ult i8* %_new_gep_160, %_parent_stack_start_ptr_
  %_cond2_781 = or i1 %_cond2_1_779, %_cond2_2_780
  %_cond4_782 = icmp ule i8* %_pot_address_in_parent_stack_777, %_parent_stack_end_ptr_
  %_cond1_n_cond2_783 = and i1 %_cond1_778, %_cond2_781
  %_cond1_n_cond2_cond3_784 = and i1 %_cond1_n_cond2_783, %_cond4_782
  br i1 %_cond1_n_cond2_cond3_784, label %535, label %536

; <label>:535:                                    ; preds = %532
  %_address_in_parent_stack_bt_786 = bitcast i8* %_pot_address_in_parent_stack_777 to i64*
  br label %536

; <label>:536:                                    ; preds = %532, %535
  %537 = phi i64* [ %_allin_new_bt_162, %532 ], [ %_address_in_parent_stack_bt_786, %535 ]
  %_new_load_787 = load i64, i64* %537
  store i64 %_new_load_787, i64* %R14, !mcsema_real_eip !74
  %_new_gep_163 = getelementptr i8, i8* %_new_gep_160, i64 8
  %538 = add i64 %534, 8, !mcsema_real_eip !74
  store volatile i8* %_new_gep_163, i8** %_RSP_ptr_
  store i64 %538, i64* %XSP, !mcsema_real_eip !74
  %_allin_new_bt_165 = bitcast i8* %_new_gep_163 to i64*
  %_ptr_to_int_788 = ptrtoint i64* %_allin_new_bt_165 to i64
  %_offset_above_rbp_791 = sub i64 %_ptr_to_int_788, %_local_end_to_int_
  %_pot_address_in_parent_stack_792 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_791
  %_cond1_793 = icmp ugt i8* %_new_gep_163, %_local_stack_end_ptr_
  %_cond2_1_794 = icmp ugt i8* %_new_gep_163, %_parent_stack_end_ptr_
  %_cond2_2_795 = icmp ult i8* %_new_gep_163, %_parent_stack_start_ptr_
  %_cond2_796 = or i1 %_cond2_1_794, %_cond2_2_795
  %_cond4_797 = icmp ule i8* %_pot_address_in_parent_stack_792, %_parent_stack_end_ptr_
  %_cond1_n_cond2_798 = and i1 %_cond1_793, %_cond2_796
  %_cond1_n_cond2_cond3_799 = and i1 %_cond1_n_cond2_798, %_cond4_797
  br i1 %_cond1_n_cond2_cond3_799, label %539, label %540

; <label>:539:                                    ; preds = %536
  %_address_in_parent_stack_bt_801 = bitcast i8* %_pot_address_in_parent_stack_792 to i64*
  br label %540

; <label>:540:                                    ; preds = %536, %539
  %541 = phi i64* [ %_allin_new_bt_165, %536 ], [ %_address_in_parent_stack_bt_801, %539 ]
  %_new_load_802 = load i64, i64* %541
  store i64 %_new_load_802, i64* %R15, !mcsema_real_eip !75
  %_new_gep_166 = getelementptr i8, i8* %_new_gep_163, i64 8
  %542 = add i64 %538, 8, !mcsema_real_eip !75
  store volatile i8* %_new_gep_166, i8** %_RSP_ptr_
  store i64 %542, i64* %XSP, !mcsema_real_eip !75
  %_allin_new_bt_168 = bitcast i8* %_new_gep_166 to i64*
  %_ptr_to_int_803 = ptrtoint i64* %_allin_new_bt_168 to i64
  %_offset_above_rbp_806 = sub i64 %_ptr_to_int_803, %_local_end_to_int_
  %_pot_address_in_parent_stack_807 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_806
  %_cond1_808 = icmp ugt i8* %_new_gep_166, %_local_stack_end_ptr_
  %_cond2_1_809 = icmp ugt i8* %_new_gep_166, %_parent_stack_end_ptr_
  %_cond2_2_810 = icmp ult i8* %_new_gep_166, %_parent_stack_start_ptr_
  %_cond2_811 = or i1 %_cond2_1_809, %_cond2_2_810
  %_cond4_812 = icmp ule i8* %_pot_address_in_parent_stack_807, %_parent_stack_end_ptr_
  %_cond1_n_cond2_813 = and i1 %_cond1_808, %_cond2_811
  %_cond1_n_cond2_cond3_814 = and i1 %_cond1_n_cond2_813, %_cond4_812
  br i1 %_cond1_n_cond2_cond3_814, label %543, label %544

; <label>:543:                                    ; preds = %540
  %_address_in_parent_stack_bt_816 = bitcast i8* %_pot_address_in_parent_stack_807 to i64*
  br label %544

; <label>:544:                                    ; preds = %540, %543
  %545 = phi i64* [ %_allin_new_bt_168, %540 ], [ %_address_in_parent_stack_bt_816, %543 ]
  %_new_load_817 = load i64, i64* %545
  %_new_int2ptr_ = inttoptr i64 %_new_load_817 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_817, i64* %XBP, !mcsema_real_eip !76
  %_new_gep_169 = getelementptr i8, i8* %_new_gep_166, i64 8
  %546 = add i64 %542, 8, !mcsema_real_eip !76
  store volatile i8* %_new_gep_169, i8** %_RSP_ptr_
  store i64 %546, i64* %XSP, !mcsema_real_eip !76
  %_new_gep_171 = getelementptr i8, i8* %_new_gep_169, i64 8
  %547 = add i64 %546, 8, !mcsema_real_eip !77
  %_allin_new_bt_172 = bitcast i8* %_new_gep_169 to i64*
  %_ptr_to_int_818 = ptrtoint i64* %_allin_new_bt_172 to i64
  %_offset_above_rbp_821 = sub i64 %_ptr_to_int_818, %_local_end_to_int_
  %_pot_address_in_parent_stack_822 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_821
  %_cond1_823 = icmp ugt i8* %_new_gep_169, %_local_stack_end_ptr_
  %_cond2_1_824 = icmp ugt i8* %_new_gep_169, %_parent_stack_end_ptr_
  %_cond2_2_825 = icmp ult i8* %_new_gep_169, %_parent_stack_start_ptr_
  %_cond2_826 = or i1 %_cond2_1_824, %_cond2_2_825
  %_cond4_827 = icmp ule i8* %_pot_address_in_parent_stack_822, %_parent_stack_end_ptr_
  %_cond1_n_cond2_828 = and i1 %_cond1_823, %_cond2_826
  %_cond1_n_cond2_cond3_829 = and i1 %_cond1_n_cond2_828, %_cond4_827
  br i1 %_cond1_n_cond2_cond3_829, label %548, label %549

; <label>:548:                                    ; preds = %544
  %_address_in_parent_stack_bt_831 = bitcast i8* %_pot_address_in_parent_stack_822 to i64*
  br label %549

; <label>:549:                                    ; preds = %544, %548
  %550 = phi i64* [ %_allin_new_bt_172, %544 ], [ %_address_in_parent_stack_bt_831, %548 ]
  %_new_load_832 = load i64, i64* %550
  store i64 %_new_load_832, i64* %XIP, !mcsema_real_eip !77
  store volatile i8* %_new_gep_171, i8** %_RSP_ptr_
  store i64 %547, i64* %XSP, !mcsema_real_eip !77
  ret void, !mcsema_real_eip !77
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_100.2(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 144
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 144
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !78
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !78
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !78
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !78
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !78
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !78
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !78
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !78
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !78
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !78
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !78
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !78
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !78
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !78
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !78
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !78
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !78
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !78
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !78
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !78
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !78
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !78
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !78
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !78
  br label %block_0x100, !mcsema_real_eip !78

block_0x100:                                      ; preds = %entry
  %RSP_val.139 = load i64, i64* %XSP, !mcsema_real_eip !78
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %1 = sub i64 %RSP_val.139, 8, !mcsema_real_eip !78
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %1, i64* %XSP, !mcsema_real_eip !78
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %1, i64* %XBP, !mcsema_real_eip !79
  %_load_rsp_ptr_2 = load i8*, i8** %_RSP_ptr_
  %RSP_val.141 = load i64, i64* %XSP, !mcsema_real_eip !80
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -128
  %2 = sub i64 %RSP_val.141, 128, !mcsema_real_eip !80
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 128, !mcsema_real_eip !80
  %4 = and i64 %3, 16, !mcsema_real_eip !80
  %5 = icmp ne i64 %4, 0, !mcsema_real_eip !80
  store i1 %5, i1* %AF, !mcsema_real_eip !80
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %6 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !80
  %7 = trunc i8 %6 to i1, !mcsema_real_eip !80
  %8 = xor i1 %7, true, !mcsema_real_eip !80
  store i1 %8, i1* %PF, !mcsema_real_eip !80
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_, 0
  store i1 %_trans_icmp_eq_, i1* %ZF, !mcsema_real_eip !80
  %9 = lshr i64 %2, 63, !mcsema_real_eip !80
  %10 = trunc i64 %9 to i1, !mcsema_real_eip !80
  store i1 %10, i1* %SF, !mcsema_real_eip !80
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 128
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !80
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 128
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !80
  %12 = lshr i64 %11, 63, !mcsema_real_eip !80
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !80
  store i1 %13, i1* %OF, !mcsema_real_eip !80
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !80
  store i64 12, i64* %XAX, !mcsema_real_eip !81
  %EAX.142 = bitcast i64* %XAX to i32*, !mcsema_real_eip !82
  %EAX_val.143 = load i32, i32* %EAX.142, !mcsema_real_eip !82
  %14 = zext i32 %EAX_val.143 to i64, !mcsema_real_eip !82
  store i64 %14, i64* %XDI, !mcsema_real_eip !82
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -4
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %15 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !83
  %16 = inttoptr i64 %15 to i32*, !mcsema_real_eip !83
  store i32 0, i32* %16, !mcsema_real_eip !83
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -16
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %17 = ptrtoint i64* %_allin_new_bt_18 to i64, !mcsema_real_eip !84
  %18 = inttoptr i64 %17 to i32*, !mcsema_real_eip !84
  store i32 10, i32* %18, !mcsema_real_eip !84
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -12
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %19 = ptrtoint i64* %_allin_new_bt_21 to i64, !mcsema_real_eip !85
  %20 = inttoptr i64 %19 to i32*, !mcsema_real_eip !85
  store i32 10, i32* %20, !mcsema_real_eip !85
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -8
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %21 = ptrtoint i64* %_allin_new_bt_24 to i64, !mcsema_real_eip !86
  %22 = inttoptr i64 %21 to i32*, !mcsema_real_eip !86
  store i32 10, i32* %22, !mcsema_real_eip !86
  %RDI_val.148 = load i64, i64* %XDI, !mcsema_real_eip !87
  %_load_rsp_ptr_25 = load i8*, i8** %_RSP_ptr_
  %RSP_val.149 = load i64, i64* %XSP, !mcsema_real_eip !87
  %_new_gep_26 = getelementptr i8, i8* %_load_rsp_ptr_25, i64 -8
  %23 = sub i64 %RSP_val.149, 8, !mcsema_real_eip !87
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_27, !mcsema_real_eip !87
  store volatile i8* %_new_gep_26, i8** %_RSP_ptr_
  store i64 %23, i64* %XSP, !mcsema_real_eip !87
  %24 = call x86_64_sysvcc i64 @_malloc(i64 %RDI_val.148)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %24, i64* %XAX, !mcsema_real_eip !87
  %_load_rbp_ptr_28 = load i8*, i8** %_RBP_ptr_
  %_new_gep_29 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -16
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %25 = ptrtoint i64* %_allin_new_bt_30 to i64, !mcsema_real_eip !88
  store i64 %25, i64* %XDI, !mcsema_real_eip !88
  store i64 1, i64* %R8, !mcsema_real_eip !89
  store i64 2, i64* %R9, !mcsema_real_eip !90
  store i64 3, i64* %XCX, !mcsema_real_eip !91
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -24
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  store i64 %24, i64* %_allin_new_bt_33, !mcsema_real_eip !92
  %_load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_34, i64 -24
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %_ptr_to_int_ = ptrtoint i64* %_allin_new_bt_36 to i64
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_new_gep_35, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_new_gep_35, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_new_gep_35, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %26, label %27

; <label>:26:                                     ; preds = %block_0x100
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  br label %27

; <label>:27:                                     ; preds = %block_0x100, %26
  %28 = phi i64* [ %_allin_new_bt_36, %block_0x100 ], [ %_address_in_parent_stack_bt_, %26 ]
  %_new_load_ = load i64, i64* %28
  store i64 %_new_load_, i64* %XAX, !mcsema_real_eip !93
  %29 = inttoptr i64 %_new_load_ to i64*, !mcsema_real_eip !94
  %30 = inttoptr i64 %_new_load_ to i32*, !mcsema_real_eip !94
  store i32 5, i32* %30, !mcsema_real_eip !94
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -24
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %_ptr_to_int_175 = ptrtoint i64* %_allin_new_bt_39 to i64
  %_offset_above_rbp_178 = sub i64 %_ptr_to_int_175, %_local_end_to_int_
  %_pot_address_in_parent_stack_179 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_178
  %_cond1_180 = icmp ugt i8* %_new_gep_38, %_local_stack_end_ptr_
  %_cond2_1_181 = icmp ugt i8* %_new_gep_38, %_parent_stack_end_ptr_
  %_cond2_2_182 = icmp ult i8* %_new_gep_38, %_parent_stack_start_ptr_
  %_cond2_183 = or i1 %_cond2_1_181, %_cond2_2_182
  %_cond4_184 = icmp ule i8* %_pot_address_in_parent_stack_179, %_parent_stack_end_ptr_
  %_cond1_n_cond2_185 = and i1 %_cond1_180, %_cond2_183
  %_cond1_n_cond2_cond3_186 = and i1 %_cond1_n_cond2_185, %_cond4_184
  br i1 %_cond1_n_cond2_cond3_186, label %31, label %32

; <label>:31:                                     ; preds = %27
  %_address_in_parent_stack_bt_188 = bitcast i8* %_pot_address_in_parent_stack_179 to i64*
  br label %32

; <label>:32:                                     ; preds = %27, %31
  %33 = phi i64* [ %_allin_new_bt_39, %27 ], [ %_address_in_parent_stack_bt_188, %31 ]
  %_new_load_189 = load i64, i64* %33
  store i64 %_new_load_189, i64* %XAX, !mcsema_real_eip !95
  %34 = add i64 %_new_load_189, 4, !mcsema_real_eip !96
  %35 = inttoptr i64 %34 to i64*, !mcsema_real_eip !96
  %36 = inttoptr i64 %34 to i32*, !mcsema_real_eip !96
  store i32 5, i32* %36, !mcsema_real_eip !96
  %_load_rbp_ptr_40 = load i8*, i8** %_RBP_ptr_
  %_new_gep_41 = getelementptr i8, i8* %_load_rbp_ptr_40, i64 -24
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %_ptr_to_int_190 = ptrtoint i64* %_allin_new_bt_42 to i64
  %_offset_above_rbp_193 = sub i64 %_ptr_to_int_190, %_local_end_to_int_
  %_pot_address_in_parent_stack_194 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_193
  %_cond1_195 = icmp ugt i8* %_new_gep_41, %_local_stack_end_ptr_
  %_cond2_1_196 = icmp ugt i8* %_new_gep_41, %_parent_stack_end_ptr_
  %_cond2_2_197 = icmp ult i8* %_new_gep_41, %_parent_stack_start_ptr_
  %_cond2_198 = or i1 %_cond2_1_196, %_cond2_2_197
  %_cond4_199 = icmp ule i8* %_pot_address_in_parent_stack_194, %_parent_stack_end_ptr_
  %_cond1_n_cond2_200 = and i1 %_cond1_195, %_cond2_198
  %_cond1_n_cond2_cond3_201 = and i1 %_cond1_n_cond2_200, %_cond4_199
  br i1 %_cond1_n_cond2_cond3_201, label %37, label %38

; <label>:37:                                     ; preds = %32
  %_address_in_parent_stack_bt_203 = bitcast i8* %_pot_address_in_parent_stack_194 to i64*
  br label %38

; <label>:38:                                     ; preds = %32, %37
  %39 = phi i64* [ %_allin_new_bt_42, %32 ], [ %_address_in_parent_stack_bt_203, %37 ]
  %_new_load_204 = load i64, i64* %39
  store i64 %_new_load_204, i64* %XAX, !mcsema_real_eip !97
  %40 = add i64 %_new_load_204, 8, !mcsema_real_eip !98
  %41 = inttoptr i64 %40 to i64*, !mcsema_real_eip !98
  %42 = inttoptr i64 %40 to i32*, !mcsema_real_eip !98
  store i32 5, i32* %42, !mcsema_real_eip !98
  %_load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -24
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %_ptr_to_int_205 = ptrtoint i64* %_allin_new_bt_45 to i64
  %_offset_above_rbp_208 = sub i64 %_ptr_to_int_205, %_local_end_to_int_
  %_pot_address_in_parent_stack_209 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_208
  %_cond1_210 = icmp ugt i8* %_new_gep_44, %_local_stack_end_ptr_
  %_cond2_1_211 = icmp ugt i8* %_new_gep_44, %_parent_stack_end_ptr_
  %_cond2_2_212 = icmp ult i8* %_new_gep_44, %_parent_stack_start_ptr_
  %_cond2_213 = or i1 %_cond2_1_211, %_cond2_2_212
  %_cond4_214 = icmp ule i8* %_pot_address_in_parent_stack_209, %_parent_stack_end_ptr_
  %_cond1_n_cond2_215 = and i1 %_cond1_210, %_cond2_213
  %_cond1_n_cond2_cond3_216 = and i1 %_cond1_n_cond2_215, %_cond4_214
  br i1 %_cond1_n_cond2_cond3_216, label %43, label %44

; <label>:43:                                     ; preds = %38
  %_address_in_parent_stack_bt_218 = bitcast i8* %_pot_address_in_parent_stack_209 to i64*
  br label %44

; <label>:44:                                     ; preds = %38, %43
  %45 = phi i64* [ %_allin_new_bt_45, %38 ], [ %_address_in_parent_stack_bt_218, %43 ]
  %_new_load_219 = load i64, i64* %45
  store i64 %_new_load_219, i64* %XAX, !mcsema_real_eip !99
  br i1 %_cond1_n_cond2_cond3_216, label %46, label %47

; <label>:46:                                     ; preds = %44
  %_address_in_parent_stack_bt_233 = bitcast i8* %_pot_address_in_parent_stack_209 to i64*
  br label %47

; <label>:47:                                     ; preds = %44, %46
  %48 = phi i64* [ %_allin_new_bt_45, %44 ], [ %_address_in_parent_stack_bt_233, %46 ]
  %_new_load_234 = load i64, i64* %48
  store i64 %_new_load_234, i64* %XDX, !mcsema_real_eip !100
  %_new_gep_50 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -16
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  %_ptr_to_int_235 = ptrtoint i64* %_allin_new_bt_51 to i64
  %_offset_above_rbp_238 = sub i64 %_ptr_to_int_235, %_local_end_to_int_
  %_pot_address_in_parent_stack_239 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_238
  %_cond1_240 = icmp ugt i8* %_new_gep_50, %_local_stack_end_ptr_
  %_cond2_1_241 = icmp ugt i8* %_new_gep_50, %_parent_stack_end_ptr_
  %_cond2_2_242 = icmp ult i8* %_new_gep_50, %_parent_stack_start_ptr_
  %_cond2_243 = or i1 %_cond2_1_241, %_cond2_2_242
  %_cond4_244 = icmp ule i8* %_pot_address_in_parent_stack_239, %_parent_stack_end_ptr_
  %_cond1_n_cond2_245 = and i1 %_cond1_240, %_cond2_243
  %_cond1_n_cond2_cond3_246 = and i1 %_cond1_n_cond2_245, %_cond4_244
  br i1 %_cond1_n_cond2_cond3_246, label %49, label %50

; <label>:49:                                     ; preds = %47
  %_address_in_parent_stack_bt_248 = bitcast i8* %_pot_address_in_parent_stack_239 to i64*
  br label %50

; <label>:50:                                     ; preds = %47, %49
  %51 = phi i64* [ %_allin_new_bt_51, %47 ], [ %_address_in_parent_stack_bt_248, %49 ]
  %_new_load_249 = load i64, i64* %51
  store i64 %_new_load_249, i64* %XSI, !mcsema_real_eip !101
  %_new_gep_53 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -48
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  store i64 %_new_load_249, i64* %_allin_new_bt_54, !mcsema_real_eip !102
  %_load_rbp_ptr_55 = load i8*, i8** %_RBP_ptr_
  %_new_gep_56 = getelementptr i8, i8* %_load_rbp_ptr_55, i64 -8
  %_allin_new_bt_57 = bitcast i8* %_new_gep_56 to i64*
  %52 = ptrtoint i64* %_allin_new_bt_57 to i64, !mcsema_real_eip !103
  %53 = inttoptr i64 %52 to i32*, !mcsema_real_eip !103
  %_ptr_bt_252 = bitcast i32* %53 to i8*
  %_offset_above_rbp_253 = sub i64 %52, %_local_end_to_int_
  %_pot_address_in_parent_stack_254 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_253
  %_cond1_255 = icmp ugt i8* %_ptr_bt_252, %_local_stack_end_ptr_
  %_cond2_1_256 = icmp ugt i8* %_ptr_bt_252, %_parent_stack_end_ptr_
  %_cond2_2_257 = icmp ult i8* %_ptr_bt_252, %_parent_stack_start_ptr_
  %_cond2_258 = or i1 %_cond2_1_256, %_cond2_2_257
  %_cond4_259 = icmp ule i8* %_pot_address_in_parent_stack_254, %_parent_stack_end_ptr_
  %_cond1_n_cond2_260 = and i1 %_cond1_255, %_cond2_258
  %_cond1_n_cond2_cond3_261 = and i1 %_cond1_n_cond2_260, %_cond4_259
  br i1 %_cond1_n_cond2_cond3_261, label %54, label %55

; <label>:54:                                     ; preds = %50
  %_address_in_parent_stack_bt_263 = bitcast i8* %_pot_address_in_parent_stack_254 to i32*
  br label %55

; <label>:55:                                     ; preds = %50, %54
  %56 = phi i32* [ %53, %50 ], [ %_address_in_parent_stack_bt_263, %54 ]
  %_new_load_264 = load i32, i32* %56
  %57 = zext i32 %_new_load_264 to i64, !mcsema_real_eip !103
  store i64 %57, i64* %R10, !mcsema_real_eip !103
  %_new_gep_59 = getelementptr i8, i8* %_load_rbp_ptr_55, i64 -40
  %_allin_new_bt_60 = bitcast i8* %_new_gep_59 to i64*
  %R10D.166 = bitcast i64* %R10 to i32*, !mcsema_real_eip !104
  %R10D_val.167 = load i32, i32* %R10D.166, !mcsema_real_eip !104
  %58 = ptrtoint i64* %_allin_new_bt_60 to i64, !mcsema_real_eip !104
  %59 = inttoptr i64 %58 to i32*, !mcsema_real_eip !104
  store i32 %R10D_val.167, i32* %59, !mcsema_real_eip !104
  %_load_rbp_ptr_61 = load i8*, i8** %_RBP_ptr_
  %_new_gep_62 = getelementptr i8, i8* %_load_rbp_ptr_61, i64 -48
  %_allin_new_bt_63 = bitcast i8* %_new_gep_62 to i64*
  %_ptr_to_int_265 = ptrtoint i64* %_allin_new_bt_63 to i64
  %_offset_above_rbp_268 = sub i64 %_ptr_to_int_265, %_local_end_to_int_
  %_pot_address_in_parent_stack_269 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_268
  %_cond1_270 = icmp ugt i8* %_new_gep_62, %_local_stack_end_ptr_
  %_cond2_1_271 = icmp ugt i8* %_new_gep_62, %_parent_stack_end_ptr_
  %_cond2_2_272 = icmp ult i8* %_new_gep_62, %_parent_stack_start_ptr_
  %_cond2_273 = or i1 %_cond2_1_271, %_cond2_2_272
  %_cond4_274 = icmp ule i8* %_pot_address_in_parent_stack_269, %_parent_stack_end_ptr_
  %_cond1_n_cond2_275 = and i1 %_cond1_270, %_cond2_273
  %_cond1_n_cond2_cond3_276 = and i1 %_cond1_n_cond2_275, %_cond4_274
  br i1 %_cond1_n_cond2_cond3_276, label %60, label %61

; <label>:60:                                     ; preds = %55
  %_address_in_parent_stack_bt_278 = bitcast i8* %_pot_address_in_parent_stack_269 to i64*
  br label %61

; <label>:61:                                     ; preds = %55, %60
  %62 = phi i64* [ %_allin_new_bt_63, %55 ], [ %_address_in_parent_stack_bt_278, %60 ]
  %_new_load_279 = load i64, i64* %62
  store i64 %_new_load_279, i64* %XSI, !mcsema_real_eip !105
  %_new_gep_65 = getelementptr i8, i8* %_load_rbp_ptr_61, i64 -40
  %_allin_new_bt_66 = bitcast i8* %_new_gep_65 to i64*
  %63 = ptrtoint i64* %_allin_new_bt_66 to i64, !mcsema_real_eip !106
  %64 = inttoptr i64 %63 to i32*, !mcsema_real_eip !106
  %_ptr_bt_282 = bitcast i32* %64 to i8*
  %_offset_above_rbp_283 = sub i64 %63, %_local_end_to_int_
  %_pot_address_in_parent_stack_284 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_283
  %_cond1_285 = icmp ugt i8* %_ptr_bt_282, %_local_stack_end_ptr_
  %_cond2_1_286 = icmp ugt i8* %_ptr_bt_282, %_parent_stack_end_ptr_
  %_cond2_2_287 = icmp ult i8* %_ptr_bt_282, %_parent_stack_start_ptr_
  %_cond2_288 = or i1 %_cond2_1_286, %_cond2_2_287
  %_cond4_289 = icmp ule i8* %_pot_address_in_parent_stack_284, %_parent_stack_end_ptr_
  %_cond1_n_cond2_290 = and i1 %_cond1_285, %_cond2_288
  %_cond1_n_cond2_cond3_291 = and i1 %_cond1_n_cond2_290, %_cond4_289
  br i1 %_cond1_n_cond2_cond3_291, label %65, label %66

; <label>:65:                                     ; preds = %61
  %_address_in_parent_stack_bt_293 = bitcast i8* %_pot_address_in_parent_stack_284 to i32*
  br label %66

; <label>:66:                                     ; preds = %61, %65
  %67 = phi i32* [ %64, %61 ], [ %_address_in_parent_stack_bt_293, %65 ]
  %_new_load_294 = load i32, i32* %67
  %68 = zext i32 %_new_load_294 to i64, !mcsema_real_eip !106
  store i64 %68, i64* %R10, !mcsema_real_eip !106
  %_new_gep_68 = getelementptr i8, i8* %_load_rbp_ptr_61, i64 -64
  %_allin_new_bt_69 = bitcast i8* %_new_gep_68 to i64*
  %RDI_val.171 = load i64, i64* %XDI, !mcsema_real_eip !107
  store i64 %RDI_val.171, i64* %_allin_new_bt_69, !mcsema_real_eip !107
  %RSI_val.172 = load i64, i64* %XSI, !mcsema_real_eip !108
  store i64 %RSI_val.172, i64* %XDI, !mcsema_real_eip !108
  %R10D_val.174 = load i32, i32* %R10D.166, !mcsema_real_eip !109
  %69 = zext i32 %R10D_val.174 to i64, !mcsema_real_eip !109
  store i64 %69, i64* %XSI, !mcsema_real_eip !109
  %_load_rbp_ptr_70 = load i8*, i8** %_RBP_ptr_
  %_new_gep_71 = getelementptr i8, i8* %_load_rbp_ptr_70, i64 -64
  %_allin_new_bt_72 = bitcast i8* %_new_gep_71 to i64*
  %_ptr_to_int_295 = ptrtoint i64* %_allin_new_bt_72 to i64
  %_offset_above_rbp_298 = sub i64 %_ptr_to_int_295, %_local_end_to_int_
  %_pot_address_in_parent_stack_299 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_298
  %_cond1_300 = icmp ugt i8* %_new_gep_71, %_local_stack_end_ptr_
  %_cond2_1_301 = icmp ugt i8* %_new_gep_71, %_parent_stack_end_ptr_
  %_cond2_2_302 = icmp ult i8* %_new_gep_71, %_parent_stack_start_ptr_
  %_cond2_303 = or i1 %_cond2_1_301, %_cond2_2_302
  %_cond4_304 = icmp ule i8* %_pot_address_in_parent_stack_299, %_parent_stack_end_ptr_
  %_cond1_n_cond2_305 = and i1 %_cond1_300, %_cond2_303
  %_cond1_n_cond2_cond3_306 = and i1 %_cond1_n_cond2_305, %_cond4_304
  br i1 %_cond1_n_cond2_cond3_306, label %70, label %71

; <label>:70:                                     ; preds = %66
  %_address_in_parent_stack_bt_308 = bitcast i8* %_pot_address_in_parent_stack_299 to i64*
  br label %71

; <label>:71:                                     ; preds = %66, %70
  %72 = phi i64* [ %_allin_new_bt_72, %66 ], [ %_address_in_parent_stack_bt_308, %70 ]
  %_new_load_309 = load i64, i64* %72
  store i64 %_new_load_309, i64* %R11, !mcsema_real_eip !110
  %_new_gep_74 = getelementptr i8, i8* %_load_rbp_ptr_70, i64 -72
  %_allin_new_bt_75 = bitcast i8* %_new_gep_74 to i64*
  %RDX_val.177 = load i64, i64* %XDX, !mcsema_real_eip !111
  store i64 %RDX_val.177, i64* %_allin_new_bt_75, !mcsema_real_eip !111
  %R11_val.178 = load i64, i64* %R11, !mcsema_real_eip !112
  store i64 %R11_val.178, i64* %XDX, !mcsema_real_eip !112
  %_load_rbp_ptr_76 = load i8*, i8** %_RBP_ptr_
  %_new_gep_77 = getelementptr i8, i8* %_load_rbp_ptr_76, i64 -76
  %_allin_new_bt_78 = bitcast i8* %_new_gep_77 to i64*
  %ECX.180 = bitcast i64* %XCX to i32*, !mcsema_real_eip !113
  %ECX_val.181 = load i32, i32* %ECX.180, !mcsema_real_eip !113
  %73 = ptrtoint i64* %_allin_new_bt_78 to i64, !mcsema_real_eip !113
  %74 = inttoptr i64 %73 to i32*, !mcsema_real_eip !113
  store i32 %ECX_val.181, i32* %74, !mcsema_real_eip !113
  %RAX_val.182 = load i64, i64* %XAX, !mcsema_real_eip !114
  store i64 %RAX_val.182, i64* %XCX, !mcsema_real_eip !114
  %_load_rsp_ptr_79 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_81 = bitcast i8* %_load_rsp_ptr_79 to i64*
  %75 = ptrtoint i64* %_allin_new_bt_81 to i64, !mcsema_real_eip !115
  %76 = inttoptr i64 %75 to i32*, !mcsema_real_eip !115
  store i32 3, i32* %76, !mcsema_real_eip !115
  %R11_val.184 = load i64, i64* %R11, !mcsema_real_eip !116
  %77 = inttoptr i64 %R11_val.184 to i64*, !mcsema_real_eip !116
  %_ptr_bt_312 = bitcast i64* %77 to i8*
  %_offset_above_rbp_313 = sub i64 %R11_val.184, %_local_end_to_int_
  %_pot_address_in_parent_stack_314 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_313
  %_cond1_315 = icmp ugt i8* %_ptr_bt_312, %_local_stack_end_ptr_
  %_cond2_1_316 = icmp ugt i8* %_ptr_bt_312, %_parent_stack_end_ptr_
  %_cond2_2_317 = icmp ult i8* %_ptr_bt_312, %_parent_stack_start_ptr_
  %_cond2_318 = or i1 %_cond2_1_316, %_cond2_2_317
  %_cond4_319 = icmp ule i8* %_pot_address_in_parent_stack_314, %_parent_stack_end_ptr_
  %_cond1_n_cond2_320 = and i1 %_cond1_315, %_cond2_318
  %_cond1_n_cond2_cond3_321 = and i1 %_cond1_n_cond2_320, %_cond4_319
  br i1 %_cond1_n_cond2_cond3_321, label %78, label %79

; <label>:78:                                     ; preds = %71
  %_address_in_parent_stack_bt_323 = bitcast i8* %_pot_address_in_parent_stack_314 to i64*
  br label %79

; <label>:79:                                     ; preds = %71, %78
  %80 = phi i64* [ %77, %71 ], [ %_address_in_parent_stack_bt_323, %78 ]
  %_new_load_324 = load i64, i64* %80
  store i64 %_new_load_324, i64* %XAX, !mcsema_real_eip !116
  %_load_rsp_ptr_82 = load i8*, i8** %_RSP_ptr_
  %_new_gep_83 = getelementptr i8, i8* %_load_rsp_ptr_82, i64 8
  %_allin_new_bt_84 = bitcast i8* %_new_gep_83 to i64*
  store i64 %_new_load_324, i64* %_allin_new_bt_84, !mcsema_real_eip !117
  %R11_val.187 = load i64, i64* %R11, !mcsema_real_eip !118
  %81 = add i64 %R11_val.187, 8, !mcsema_real_eip !118
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !118
  %83 = inttoptr i64 %81 to i32*, !mcsema_real_eip !118
  %_ptr_bt_327 = bitcast i32* %83 to i8*
  %_offset_above_rbp_328 = sub i64 %81, %_local_end_to_int_
  %_pot_address_in_parent_stack_329 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_328
  %_cond1_330 = icmp ugt i8* %_ptr_bt_327, %_local_stack_end_ptr_
  %_cond2_1_331 = icmp ugt i8* %_ptr_bt_327, %_parent_stack_end_ptr_
  %_cond2_2_332 = icmp ult i8* %_ptr_bt_327, %_parent_stack_start_ptr_
  %_cond2_333 = or i1 %_cond2_1_331, %_cond2_2_332
  %_cond4_334 = icmp ule i8* %_pot_address_in_parent_stack_329, %_parent_stack_end_ptr_
  %_cond1_n_cond2_335 = and i1 %_cond1_330, %_cond2_333
  %_cond1_n_cond2_cond3_336 = and i1 %_cond1_n_cond2_335, %_cond4_334
  br i1 %_cond1_n_cond2_cond3_336, label %84, label %85

; <label>:84:                                     ; preds = %79
  %_address_in_parent_stack_bt_338 = bitcast i8* %_pot_address_in_parent_stack_329 to i32*
  br label %85

; <label>:85:                                     ; preds = %79, %84
  %86 = phi i32* [ %83, %79 ], [ %_address_in_parent_stack_bt_338, %84 ]
  %_new_load_339 = load i32, i32* %86
  %87 = zext i32 %_new_load_339 to i64, !mcsema_real_eip !118
  store i64 %87, i64* %R10, !mcsema_real_eip !118
  %_load_rsp_ptr_85 = load i8*, i8** %_RSP_ptr_
  %_new_gep_86 = getelementptr i8, i8* %_load_rsp_ptr_85, i64 16
  %_allin_new_bt_87 = bitcast i8* %_new_gep_86 to i64*
  %R10D_val.190 = load i32, i32* %R10D.166, !mcsema_real_eip !119
  %88 = ptrtoint i64* %_allin_new_bt_87 to i64, !mcsema_real_eip !119
  %89 = inttoptr i64 %88 to i32*, !mcsema_real_eip !119
  store i32 %R10D_val.190, i32* %89, !mcsema_real_eip !119
  %_load_rsp_ptr_88 = load i8*, i8** %_RSP_ptr_
  %_new_gep_89 = getelementptr i8, i8* %_load_rsp_ptr_88, i64 24
  %_allin_new_bt_90 = bitcast i8* %_new_gep_89 to i64*
  %R11_val.192 = load i64, i64* %R11, !mcsema_real_eip !120
  store i64 %R11_val.192, i64* %_allin_new_bt_90, !mcsema_real_eip !120
  %_load_rbp_ptr_91 = load i8*, i8** %_RBP_ptr_
  %_new_gep_92 = getelementptr i8, i8* %_load_rbp_ptr_91, i64 -72
  %_allin_new_bt_93 = bitcast i8* %_new_gep_92 to i64*
  %_ptr_to_int_340 = ptrtoint i64* %_allin_new_bt_93 to i64
  %_offset_above_rbp_343 = sub i64 %_ptr_to_int_340, %_local_end_to_int_
  %_pot_address_in_parent_stack_344 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_343
  %_cond1_345 = icmp ugt i8* %_new_gep_92, %_local_stack_end_ptr_
  %_cond2_1_346 = icmp ugt i8* %_new_gep_92, %_parent_stack_end_ptr_
  %_cond2_2_347 = icmp ult i8* %_new_gep_92, %_parent_stack_start_ptr_
  %_cond2_348 = or i1 %_cond2_1_346, %_cond2_2_347
  %_cond4_349 = icmp ule i8* %_pot_address_in_parent_stack_344, %_parent_stack_end_ptr_
  %_cond1_n_cond2_350 = and i1 %_cond1_345, %_cond2_348
  %_cond1_n_cond2_cond3_351 = and i1 %_cond1_n_cond2_350, %_cond4_349
  br i1 %_cond1_n_cond2_cond3_351, label %90, label %91

; <label>:90:                                     ; preds = %85
  %_address_in_parent_stack_bt_353 = bitcast i8* %_pot_address_in_parent_stack_344 to i64*
  br label %91

; <label>:91:                                     ; preds = %85, %90
  %92 = phi i64* [ %_allin_new_bt_93, %85 ], [ %_address_in_parent_stack_bt_353, %90 ]
  %_new_load_354 = load i64, i64* %92
  store i64 %_new_load_354, i64* %XAX, !mcsema_real_eip !121
  %_load_rsp_ptr_94 = load i8*, i8** %_RSP_ptr_
  %_new_gep_95 = getelementptr i8, i8* %_load_rsp_ptr_94, i64 32
  %_allin_new_bt_96 = bitcast i8* %_new_gep_95 to i64*
  store i64 %_new_load_354, i64* %_allin_new_bt_96, !mcsema_real_eip !122
  %_load_rsp_ptr_97 = load i8*, i8** %_RSP_ptr_
  %RSP_val.196 = load i64, i64* %XSP, !mcsema_real_eip !123
  %_new_gep_98 = getelementptr i8, i8* %_load_rsp_ptr_97, i64 -8
  %93 = sub i64 %RSP_val.196, 8, !mcsema_real_eip !123
  %_allin_new_bt_99 = bitcast i8* %_new_gep_98 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_99, !mcsema_real_eip !123
  store volatile i8* %_new_gep_98, i8** %_RSP_ptr_
  store i64 %93, i64* %XSP, !mcsema_real_eip !123
  %_load_rbp_ptr_169 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.1(%RegState* %0, i8* %_new_gep_98, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_169)
  %_rsp_fix_171 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_172 = getelementptr i8, i8* %_rsp_fix_171, i64 8
  store i8* %_gep_fix_172, i8** %_RSP_ptr_
  store i64 ptrtoint (%0* @data_0x212 to i64), i64* %XDI, !mcsema_real_eip !124
  %_load_rbp_ptr_100 = load i8*, i8** %_RBP_ptr_
  %_new_gep_101 = getelementptr i8, i8* %_load_rbp_ptr_100, i64 -32
  %_allin_new_bt_102 = bitcast i8* %_new_gep_101 to i64*
  %RAX_val.198 = load i64, i64* %XAX, !mcsema_real_eip !125
  store i64 %RAX_val.198, i64* %_allin_new_bt_102, !mcsema_real_eip !125
  %_load_rbp_ptr_103 = load i8*, i8** %_RBP_ptr_
  %_new_gep_104 = getelementptr i8, i8* %_load_rbp_ptr_103, i64 -32
  %_allin_new_bt_105 = bitcast i8* %_new_gep_104 to i64*
  %_ptr_to_int_355 = ptrtoint i64* %_allin_new_bt_105 to i64
  %_offset_above_rbp_358 = sub i64 %_ptr_to_int_355, %_local_end_to_int_
  %_pot_address_in_parent_stack_359 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_358
  %_cond1_360 = icmp ugt i8* %_new_gep_104, %_local_stack_end_ptr_
  %_cond2_1_361 = icmp ugt i8* %_new_gep_104, %_parent_stack_end_ptr_
  %_cond2_2_362 = icmp ult i8* %_new_gep_104, %_parent_stack_start_ptr_
  %_cond2_363 = or i1 %_cond2_1_361, %_cond2_2_362
  %_cond4_364 = icmp ule i8* %_pot_address_in_parent_stack_359, %_parent_stack_end_ptr_
  %_cond1_n_cond2_365 = and i1 %_cond1_360, %_cond2_363
  %_cond1_n_cond2_cond3_366 = and i1 %_cond1_n_cond2_365, %_cond4_364
  br i1 %_cond1_n_cond2_cond3_366, label %94, label %95

; <label>:94:                                     ; preds = %91
  %_address_in_parent_stack_bt_368 = bitcast i8* %_pot_address_in_parent_stack_359 to i64*
  br label %95

; <label>:95:                                     ; preds = %91, %94
  %96 = phi i64* [ %_allin_new_bt_105, %91 ], [ %_address_in_parent_stack_bt_368, %94 ]
  %_new_load_369 = load i64, i64* %96
  store i64 %_new_load_369, i64* %XAX, !mcsema_real_eip !126
  %97 = inttoptr i64 %_new_load_369 to i64*, !mcsema_real_eip !127
  %98 = inttoptr i64 %_new_load_369 to i32*, !mcsema_real_eip !127
  %_ptr_bt_372 = bitcast i32* %98 to i8*
  %_offset_above_rbp_373 = sub i64 %_new_load_369, %_local_end_to_int_
  %_pot_address_in_parent_stack_374 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_373
  %_cond1_375 = icmp ugt i8* %_ptr_bt_372, %_local_stack_end_ptr_
  %_cond2_1_376 = icmp ugt i8* %_ptr_bt_372, %_parent_stack_end_ptr_
  %_cond2_2_377 = icmp ult i8* %_ptr_bt_372, %_parent_stack_start_ptr_
  %_cond2_378 = or i1 %_cond2_1_376, %_cond2_2_377
  %_cond4_379 = icmp ule i8* %_pot_address_in_parent_stack_374, %_parent_stack_end_ptr_
  %_cond1_n_cond2_380 = and i1 %_cond1_375, %_cond2_378
  %_cond1_n_cond2_cond3_381 = and i1 %_cond1_n_cond2_380, %_cond4_379
  br i1 %_cond1_n_cond2_cond3_381, label %99, label %100

; <label>:99:                                     ; preds = %95
  %_address_in_parent_stack_bt_383 = bitcast i8* %_pot_address_in_parent_stack_374 to i32*
  br label %100

; <label>:100:                                    ; preds = %95, %99
  %101 = phi i32* [ %98, %95 ], [ %_address_in_parent_stack_bt_383, %99 ]
  %_new_load_384 = load i32, i32* %101
  %102 = zext i32 %_new_load_384 to i64, !mcsema_real_eip !127
  store i64 %102, i64* %XSI, !mcsema_real_eip !127
  br i1 %_cond1_n_cond2_cond3_366, label %103, label %104

; <label>:103:                                    ; preds = %100
  %_address_in_parent_stack_bt_398 = bitcast i8* %_pot_address_in_parent_stack_359 to i64*
  br label %104

; <label>:104:                                    ; preds = %100, %103
  %105 = phi i64* [ %_allin_new_bt_105, %100 ], [ %_address_in_parent_stack_bt_398, %103 ]
  %_new_load_399 = load i64, i64* %105
  store i64 %_new_load_399, i64* %XAX, !mcsema_real_eip !128
  %106 = add i64 %_new_load_399, 4, !mcsema_real_eip !129
  %107 = inttoptr i64 %106 to i64*, !mcsema_real_eip !129
  %108 = inttoptr i64 %106 to i32*, !mcsema_real_eip !129
  %_ptr_bt_402 = bitcast i32* %108 to i8*
  %_offset_above_rbp_403 = sub i64 %106, %_local_end_to_int_
  %_pot_address_in_parent_stack_404 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_403
  %_cond1_405 = icmp ugt i8* %_ptr_bt_402, %_local_stack_end_ptr_
  %_cond2_1_406 = icmp ugt i8* %_ptr_bt_402, %_parent_stack_end_ptr_
  %_cond2_2_407 = icmp ult i8* %_ptr_bt_402, %_parent_stack_start_ptr_
  %_cond2_408 = or i1 %_cond2_1_406, %_cond2_2_407
  %_cond4_409 = icmp ule i8* %_pot_address_in_parent_stack_404, %_parent_stack_end_ptr_
  %_cond1_n_cond2_410 = and i1 %_cond1_405, %_cond2_408
  %_cond1_n_cond2_cond3_411 = and i1 %_cond1_n_cond2_410, %_cond4_409
  br i1 %_cond1_n_cond2_cond3_411, label %109, label %110

; <label>:109:                                    ; preds = %104
  %_address_in_parent_stack_bt_413 = bitcast i8* %_pot_address_in_parent_stack_404 to i32*
  br label %110

; <label>:110:                                    ; preds = %104, %109
  %111 = phi i32* [ %108, %104 ], [ %_address_in_parent_stack_bt_413, %109 ]
  %_new_load_414 = load i32, i32* %111
  %ESI.203 = bitcast i64* %XSI to i32*, !mcsema_real_eip !129
  %ESI_val.204 = load i32, i32* %ESI.203, !mcsema_real_eip !129
  %112 = add i32 %ESI_val.204, %_new_load_414, !mcsema_real_eip !129
  %113 = xor i32 %112, %_new_load_414, !mcsema_real_eip !129
  %114 = xor i32 %113, %ESI_val.204, !mcsema_real_eip !129
  %115 = and i32 %114, 16, !mcsema_real_eip !129
  %116 = icmp ne i32 %115, 0, !mcsema_real_eip !129
  store i1 %116, i1* %AF, !mcsema_real_eip !129
  %117 = lshr i32 %112, 31, !mcsema_real_eip !129
  %118 = trunc i32 %117 to i1, !mcsema_real_eip !129
  store i1 %118, i1* %SF, !mcsema_real_eip !129
  %119 = icmp eq i32 %112, 0, !mcsema_real_eip !129
  store i1 %119, i1* %ZF, !mcsema_real_eip !129
  %120 = xor i32 %_new_load_414, %ESI_val.204, !mcsema_real_eip !129
  %121 = xor i32 %120, -1, !mcsema_real_eip !129
  %122 = and i32 %121, %113, !mcsema_real_eip !129
  %123 = lshr i32 %122, 31, !mcsema_real_eip !129
  %124 = and i32 %123, 1, !mcsema_real_eip !129
  %125 = trunc i32 %124 to i1, !mcsema_real_eip !129
  store i1 %125, i1* %OF, !mcsema_real_eip !129
  %126 = trunc i32 %112 to i8, !mcsema_real_eip !129
  %127 = call i8 @llvm.ctpop.i8(i8 %126), !mcsema_real_eip !129
  %128 = trunc i8 %127 to i1, !mcsema_real_eip !129
  %129 = xor i1 %128, true, !mcsema_real_eip !129
  store i1 %129, i1* %PF, !mcsema_real_eip !129
  %130 = icmp ult i32 %112, %_new_load_414, !mcsema_real_eip !129
  store i1 %130, i1* %CF, !mcsema_real_eip !129
  %131 = zext i32 %112 to i64, !mcsema_real_eip !129
  store i64 %131, i64* %XSI, !mcsema_real_eip !129
  br i1 %_cond1_n_cond2_cond3_366, label %132, label %133

; <label>:132:                                    ; preds = %110
  %_address_in_parent_stack_bt_428 = bitcast i8* %_pot_address_in_parent_stack_359 to i64*
  br label %133

; <label>:133:                                    ; preds = %110, %132
  %134 = phi i64* [ %_allin_new_bt_105, %110 ], [ %_address_in_parent_stack_bt_428, %132 ]
  %_new_load_429 = load i64, i64* %134
  store i64 %_new_load_429, i64* %XAX, !mcsema_real_eip !130
  %135 = add i64 %_new_load_429, 8, !mcsema_real_eip !131
  %136 = inttoptr i64 %135 to i64*, !mcsema_real_eip !131
  %137 = inttoptr i64 %135 to i32*, !mcsema_real_eip !131
  %_ptr_bt_432 = bitcast i32* %137 to i8*
  %_offset_above_rbp_433 = sub i64 %135, %_local_end_to_int_
  %_pot_address_in_parent_stack_434 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_433
  %_cond1_435 = icmp ugt i8* %_ptr_bt_432, %_local_stack_end_ptr_
  %_cond2_1_436 = icmp ugt i8* %_ptr_bt_432, %_parent_stack_end_ptr_
  %_cond2_2_437 = icmp ult i8* %_ptr_bt_432, %_parent_stack_start_ptr_
  %_cond2_438 = or i1 %_cond2_1_436, %_cond2_2_437
  %_cond4_439 = icmp ule i8* %_pot_address_in_parent_stack_434, %_parent_stack_end_ptr_
  %_cond1_n_cond2_440 = and i1 %_cond1_435, %_cond2_438
  %_cond1_n_cond2_cond3_441 = and i1 %_cond1_n_cond2_440, %_cond4_439
  br i1 %_cond1_n_cond2_cond3_441, label %138, label %139

; <label>:138:                                    ; preds = %133
  %_address_in_parent_stack_bt_443 = bitcast i8* %_pot_address_in_parent_stack_434 to i32*
  br label %139

; <label>:139:                                    ; preds = %133, %138
  %140 = phi i32* [ %137, %133 ], [ %_address_in_parent_stack_bt_443, %138 ]
  %_new_load_444 = load i32, i32* %140
  %ESI_val.208 = load i32, i32* %ESI.203, !mcsema_real_eip !131
  %141 = add i32 %ESI_val.208, %_new_load_444, !mcsema_real_eip !131
  %142 = xor i32 %141, %_new_load_444, !mcsema_real_eip !131
  %143 = xor i32 %142, %ESI_val.208, !mcsema_real_eip !131
  %144 = and i32 %143, 16, !mcsema_real_eip !131
  %145 = icmp ne i32 %144, 0, !mcsema_real_eip !131
  store i1 %145, i1* %AF, !mcsema_real_eip !131
  %146 = lshr i32 %141, 31, !mcsema_real_eip !131
  %147 = trunc i32 %146 to i1, !mcsema_real_eip !131
  store i1 %147, i1* %SF, !mcsema_real_eip !131
  %148 = icmp eq i32 %141, 0, !mcsema_real_eip !131
  store i1 %148, i1* %ZF, !mcsema_real_eip !131
  %149 = xor i32 %_new_load_444, %ESI_val.208, !mcsema_real_eip !131
  %150 = xor i32 %149, -1, !mcsema_real_eip !131
  %151 = and i32 %150, %142, !mcsema_real_eip !131
  %152 = lshr i32 %151, 31, !mcsema_real_eip !131
  %153 = and i32 %152, 1, !mcsema_real_eip !131
  %154 = trunc i32 %153 to i1, !mcsema_real_eip !131
  store i1 %154, i1* %OF, !mcsema_real_eip !131
  %155 = trunc i32 %141 to i8, !mcsema_real_eip !131
  %156 = call i8 @llvm.ctpop.i8(i8 %155), !mcsema_real_eip !131
  %157 = trunc i8 %156 to i1, !mcsema_real_eip !131
  %158 = xor i1 %157, true, !mcsema_real_eip !131
  store i1 %158, i1* %PF, !mcsema_real_eip !131
  %159 = icmp ult i32 %141, %_new_load_444, !mcsema_real_eip !131
  store i1 %159, i1* %CF, !mcsema_real_eip !131
  %160 = zext i32 %141 to i64, !mcsema_real_eip !131
  store i64 %160, i64* %XSI, !mcsema_real_eip !131
  %_new_gep_113 = getelementptr i8, i8* %_load_rbp_ptr_103, i64 -52
  %_allin_new_bt_114 = bitcast i8* %_new_gep_113 to i64*
  %ESI_val.211 = load i32, i32* %ESI.203, !mcsema_real_eip !132
  %161 = ptrtoint i64* %_allin_new_bt_114 to i64, !mcsema_real_eip !132
  %162 = inttoptr i64 %161 to i32*, !mcsema_real_eip !132
  store i32 %ESI_val.211, i32* %162, !mcsema_real_eip !132
  %_load_rbp_ptr_115 = load i8*, i8** %_RBP_ptr_
  %_new_gep_116 = getelementptr i8, i8* %_load_rbp_ptr_115, i64 -52
  %_allin_new_bt_117 = bitcast i8* %_new_gep_116 to i64*
  %163 = ptrtoint i64* %_allin_new_bt_117 to i64, !mcsema_real_eip !133
  %164 = inttoptr i64 %163 to i32*, !mcsema_real_eip !133
  %_ptr_bt_447 = bitcast i32* %164 to i8*
  %_offset_above_rbp_448 = sub i64 %163, %_local_end_to_int_
  %_pot_address_in_parent_stack_449 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_448
  %_cond1_450 = icmp ugt i8* %_ptr_bt_447, %_local_stack_end_ptr_
  %_cond2_1_451 = icmp ugt i8* %_ptr_bt_447, %_parent_stack_end_ptr_
  %_cond2_2_452 = icmp ult i8* %_ptr_bt_447, %_parent_stack_start_ptr_
  %_cond2_453 = or i1 %_cond2_1_451, %_cond2_2_452
  %_cond4_454 = icmp ule i8* %_pot_address_in_parent_stack_449, %_parent_stack_end_ptr_
  %_cond1_n_cond2_455 = and i1 %_cond1_450, %_cond2_453
  %_cond1_n_cond2_cond3_456 = and i1 %_cond1_n_cond2_455, %_cond4_454
  br i1 %_cond1_n_cond2_cond3_456, label %165, label %166

; <label>:165:                                    ; preds = %139
  %_address_in_parent_stack_bt_458 = bitcast i8* %_pot_address_in_parent_stack_449 to i32*
  br label %166

; <label>:166:                                    ; preds = %139, %165
  %167 = phi i32* [ %164, %139 ], [ %_address_in_parent_stack_bt_458, %165 ]
  %_new_load_459 = load i32, i32* %167
  %168 = zext i32 %_new_load_459 to i64, !mcsema_real_eip !133
  store i64 %168, i64* %XSI, !mcsema_real_eip !133
  %AL.213 = bitcast i64* %XAX to i8*, !mcsema_real_eip !134
  store i8 0, i8* %AL.213, !mcsema_real_eip !134
  %RDI_val.214 = load i64, i64* %XDI, !mcsema_real_eip !135
  %RDX_val.216 = load i64, i64* %XDX, !mcsema_real_eip !135
  %RCX_val.217 = load i64, i64* %XCX, !mcsema_real_eip !135
  %R8_val.218 = load i64, i64* %R8, !mcsema_real_eip !135
  %R9_val.219 = load i64, i64* %R9, !mcsema_real_eip !135
  %_load_rsp_ptr_118 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_119 = bitcast i8* %_load_rsp_ptr_118 to i64*
  %_ptr_to_int_460 = ptrtoint i64* %_allin_new_bt_119 to i64
  %_offset_above_rbp_463 = sub i64 %_ptr_to_int_460, %_local_end_to_int_
  %_pot_address_in_parent_stack_464 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_463
  %_cond1_465 = icmp ugt i8* %_load_rsp_ptr_118, %_local_stack_end_ptr_
  %_cond2_1_466 = icmp ugt i8* %_load_rsp_ptr_118, %_parent_stack_end_ptr_
  %_cond2_2_467 = icmp ult i8* %_load_rsp_ptr_118, %_parent_stack_start_ptr_
  %_cond2_468 = or i1 %_cond2_1_466, %_cond2_2_467
  %_cond4_469 = icmp ule i8* %_pot_address_in_parent_stack_464, %_parent_stack_end_ptr_
  %_cond1_n_cond2_470 = and i1 %_cond1_465, %_cond2_468
  %_cond1_n_cond2_cond3_471 = and i1 %_cond1_n_cond2_470, %_cond4_469
  br i1 %_cond1_n_cond2_cond3_471, label %169, label %170

; <label>:169:                                    ; preds = %166
  %_address_in_parent_stack_bt_473 = bitcast i8* %_pot_address_in_parent_stack_464 to i64*
  br label %170

; <label>:170:                                    ; preds = %166, %169
  %171 = phi i64* [ %_allin_new_bt_119, %166 ], [ %_address_in_parent_stack_bt_473, %169 ]
  %_new_load_474 = load i64, i64* %171
  %_new_gep_120 = getelementptr i8, i8* %_load_rsp_ptr_118, i64 8
  %_allin_new_bt_121 = bitcast i8* %_new_gep_120 to i64*
  %_ptr_to_int_475 = ptrtoint i64* %_allin_new_bt_121 to i64
  %_offset_above_rbp_478 = sub i64 %_ptr_to_int_475, %_local_end_to_int_
  %_pot_address_in_parent_stack_479 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_478
  %_cond1_480 = icmp ugt i8* %_new_gep_120, %_local_stack_end_ptr_
  %_cond2_1_481 = icmp ugt i8* %_new_gep_120, %_parent_stack_end_ptr_
  %_cond2_2_482 = icmp ult i8* %_new_gep_120, %_parent_stack_start_ptr_
  %_cond2_483 = or i1 %_cond2_1_481, %_cond2_2_482
  %_cond4_484 = icmp ule i8* %_pot_address_in_parent_stack_479, %_parent_stack_end_ptr_
  %_cond1_n_cond2_485 = and i1 %_cond1_480, %_cond2_483
  %_cond1_n_cond2_cond3_486 = and i1 %_cond1_n_cond2_485, %_cond4_484
  br i1 %_cond1_n_cond2_cond3_486, label %172, label %173

; <label>:172:                                    ; preds = %170
  %_address_in_parent_stack_bt_488 = bitcast i8* %_pot_address_in_parent_stack_479 to i64*
  br label %173

; <label>:173:                                    ; preds = %170, %172
  %174 = phi i64* [ %_allin_new_bt_121, %170 ], [ %_address_in_parent_stack_bt_488, %172 ]
  %_new_load_489 = load i64, i64* %174
  %_new_gep_122 = getelementptr i8, i8* %_new_gep_120, i64 8
  %_allin_new_bt_123 = bitcast i8* %_new_gep_122 to i64*
  %_ptr_to_int_490 = ptrtoint i64* %_allin_new_bt_123 to i64
  %_offset_above_rbp_493 = sub i64 %_ptr_to_int_490, %_local_end_to_int_
  %_pot_address_in_parent_stack_494 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_493
  %_cond1_495 = icmp ugt i8* %_new_gep_122, %_local_stack_end_ptr_
  %_cond2_1_496 = icmp ugt i8* %_new_gep_122, %_parent_stack_end_ptr_
  %_cond2_2_497 = icmp ult i8* %_new_gep_122, %_parent_stack_start_ptr_
  %_cond2_498 = or i1 %_cond2_1_496, %_cond2_2_497
  %_cond4_499 = icmp ule i8* %_pot_address_in_parent_stack_494, %_parent_stack_end_ptr_
  %_cond1_n_cond2_500 = and i1 %_cond1_495, %_cond2_498
  %_cond1_n_cond2_cond3_501 = and i1 %_cond1_n_cond2_500, %_cond4_499
  br i1 %_cond1_n_cond2_cond3_501, label %175, label %176

; <label>:175:                                    ; preds = %173
  %_address_in_parent_stack_bt_503 = bitcast i8* %_pot_address_in_parent_stack_494 to i64*
  br label %176

; <label>:176:                                    ; preds = %173, %175
  %177 = phi i64* [ %_allin_new_bt_123, %173 ], [ %_address_in_parent_stack_bt_503, %175 ]
  %_new_load_504 = load i64, i64* %177
  %_new_gep_124 = getelementptr i8, i8* %_new_gep_122, i64 8
  %_allin_new_bt_125 = bitcast i8* %_new_gep_124 to i64*
  %_ptr_to_int_505 = ptrtoint i64* %_allin_new_bt_125 to i64
  %_offset_above_rbp_508 = sub i64 %_ptr_to_int_505, %_local_end_to_int_
  %_pot_address_in_parent_stack_509 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_508
  %_cond1_510 = icmp ugt i8* %_new_gep_124, %_local_stack_end_ptr_
  %_cond2_1_511 = icmp ugt i8* %_new_gep_124, %_parent_stack_end_ptr_
  %_cond2_2_512 = icmp ult i8* %_new_gep_124, %_parent_stack_start_ptr_
  %_cond2_513 = or i1 %_cond2_1_511, %_cond2_2_512
  %_cond4_514 = icmp ule i8* %_pot_address_in_parent_stack_509, %_parent_stack_end_ptr_
  %_cond1_n_cond2_515 = and i1 %_cond1_510, %_cond2_513
  %_cond1_n_cond2_cond3_516 = and i1 %_cond1_n_cond2_515, %_cond4_514
  br i1 %_cond1_n_cond2_cond3_516, label %178, label %179

; <label>:178:                                    ; preds = %176
  %_address_in_parent_stack_bt_518 = bitcast i8* %_pot_address_in_parent_stack_509 to i64*
  br label %179

; <label>:179:                                    ; preds = %176, %178
  %180 = phi i64* [ %_allin_new_bt_125, %176 ], [ %_address_in_parent_stack_bt_518, %178 ]
  %_new_load_519 = load i64, i64* %180
  %_new_gep_126 = getelementptr i8, i8* %_new_gep_124, i64 8
  %_allin_new_bt_127 = bitcast i8* %_new_gep_126 to i64*
  %_ptr_to_int_520 = ptrtoint i64* %_allin_new_bt_127 to i64
  %_offset_above_rbp_523 = sub i64 %_ptr_to_int_520, %_local_end_to_int_
  %_pot_address_in_parent_stack_524 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_523
  %_cond1_525 = icmp ugt i8* %_new_gep_126, %_local_stack_end_ptr_
  %_cond2_1_526 = icmp ugt i8* %_new_gep_126, %_parent_stack_end_ptr_
  %_cond2_2_527 = icmp ult i8* %_new_gep_126, %_parent_stack_start_ptr_
  %_cond2_528 = or i1 %_cond2_1_526, %_cond2_2_527
  %_cond4_529 = icmp ule i8* %_pot_address_in_parent_stack_524, %_parent_stack_end_ptr_
  %_cond1_n_cond2_530 = and i1 %_cond1_525, %_cond2_528
  %_cond1_n_cond2_cond3_531 = and i1 %_cond1_n_cond2_530, %_cond4_529
  br i1 %_cond1_n_cond2_cond3_531, label %181, label %182

; <label>:181:                                    ; preds = %179
  %_address_in_parent_stack_bt_533 = bitcast i8* %_pot_address_in_parent_stack_524 to i64*
  br label %182

; <label>:182:                                    ; preds = %179, %181
  %183 = phi i64* [ %_allin_new_bt_127, %179 ], [ %_address_in_parent_stack_bt_533, %181 ]
  %_new_load_534 = load i64, i64* %183
  %_new_gep_128 = getelementptr i8, i8* %_new_gep_126, i64 8
  %_allin_new_bt_129 = bitcast i8* %_new_gep_128 to i64*
  %_ptr_to_int_535 = ptrtoint i64* %_allin_new_bt_129 to i64
  %_offset_above_rbp_538 = sub i64 %_ptr_to_int_535, %_local_end_to_int_
  %_pot_address_in_parent_stack_539 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_538
  %_cond1_540 = icmp ugt i8* %_new_gep_128, %_local_stack_end_ptr_
  %_cond2_1_541 = icmp ugt i8* %_new_gep_128, %_parent_stack_end_ptr_
  %_cond2_2_542 = icmp ult i8* %_new_gep_128, %_parent_stack_start_ptr_
  %_cond2_543 = or i1 %_cond2_1_541, %_cond2_2_542
  %_cond4_544 = icmp ule i8* %_pot_address_in_parent_stack_539, %_parent_stack_end_ptr_
  %_cond1_n_cond2_545 = and i1 %_cond1_540, %_cond2_543
  %_cond1_n_cond2_cond3_546 = and i1 %_cond1_n_cond2_545, %_cond4_544
  br i1 %_cond1_n_cond2_cond3_546, label %184, label %185

; <label>:184:                                    ; preds = %182
  %_address_in_parent_stack_bt_548 = bitcast i8* %_pot_address_in_parent_stack_539 to i64*
  br label %185

; <label>:185:                                    ; preds = %182, %184
  %186 = phi i64* [ %_allin_new_bt_129, %182 ], [ %_address_in_parent_stack_bt_548, %184 ]
  %_new_load_549 = load i64, i64* %186
  %_new_gep_130 = getelementptr i8, i8* %_new_gep_128, i64 8
  %_allin_new_bt_131 = bitcast i8* %_new_gep_130 to i64*
  %_ptr_to_int_550 = ptrtoint i64* %_allin_new_bt_131 to i64
  %_offset_above_rbp_553 = sub i64 %_ptr_to_int_550, %_local_end_to_int_
  %_pot_address_in_parent_stack_554 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_553
  %_cond1_555 = icmp ugt i8* %_new_gep_130, %_local_stack_end_ptr_
  %_cond2_1_556 = icmp ugt i8* %_new_gep_130, %_parent_stack_end_ptr_
  %_cond2_2_557 = icmp ult i8* %_new_gep_130, %_parent_stack_start_ptr_
  %_cond2_558 = or i1 %_cond2_1_556, %_cond2_2_557
  %_cond4_559 = icmp ule i8* %_pot_address_in_parent_stack_554, %_parent_stack_end_ptr_
  %_cond1_n_cond2_560 = and i1 %_cond1_555, %_cond2_558
  %_cond1_n_cond2_cond3_561 = and i1 %_cond1_n_cond2_560, %_cond4_559
  br i1 %_cond1_n_cond2_cond3_561, label %187, label %188

; <label>:187:                                    ; preds = %185
  %_address_in_parent_stack_bt_563 = bitcast i8* %_pot_address_in_parent_stack_554 to i64*
  br label %188

; <label>:188:                                    ; preds = %185, %187
  %189 = phi i64* [ %_allin_new_bt_131, %185 ], [ %_address_in_parent_stack_bt_563, %187 ]
  %_new_load_564 = load i64, i64* %189
  %_new_gep_132 = getelementptr i8, i8* %_new_gep_130, i64 8
  %_allin_new_bt_133 = bitcast i8* %_new_gep_132 to i64*
  %_ptr_to_int_565 = ptrtoint i64* %_allin_new_bt_133 to i64
  %_offset_above_rbp_568 = sub i64 %_ptr_to_int_565, %_local_end_to_int_
  %_pot_address_in_parent_stack_569 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_568
  %_cond1_570 = icmp ugt i8* %_new_gep_132, %_local_stack_end_ptr_
  %_cond2_1_571 = icmp ugt i8* %_new_gep_132, %_parent_stack_end_ptr_
  %_cond2_2_572 = icmp ult i8* %_new_gep_132, %_parent_stack_start_ptr_
  %_cond2_573 = or i1 %_cond2_1_571, %_cond2_2_572
  %_cond4_574 = icmp ule i8* %_pot_address_in_parent_stack_569, %_parent_stack_end_ptr_
  %_cond1_n_cond2_575 = and i1 %_cond1_570, %_cond2_573
  %_cond1_n_cond2_cond3_576 = and i1 %_cond1_n_cond2_575, %_cond4_574
  br i1 %_cond1_n_cond2_cond3_576, label %190, label %191

; <label>:190:                                    ; preds = %188
  %_address_in_parent_stack_bt_578 = bitcast i8* %_pot_address_in_parent_stack_569 to i64*
  br label %191

; <label>:191:                                    ; preds = %188, %190
  %192 = phi i64* [ %_allin_new_bt_133, %188 ], [ %_address_in_parent_stack_bt_578, %190 ]
  %_new_load_579 = load i64, i64* %192
  %_new_gep_134 = getelementptr i8, i8* %_new_gep_132, i64 8
  %_allin_new_bt_135 = bitcast i8* %_new_gep_134 to i64*
  %_ptr_to_int_580 = ptrtoint i64* %_allin_new_bt_135 to i64
  %_offset_above_rbp_583 = sub i64 %_ptr_to_int_580, %_local_end_to_int_
  %_pot_address_in_parent_stack_584 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_583
  %_cond1_585 = icmp ugt i8* %_new_gep_134, %_local_stack_end_ptr_
  %_cond2_1_586 = icmp ugt i8* %_new_gep_134, %_parent_stack_end_ptr_
  %_cond2_2_587 = icmp ult i8* %_new_gep_134, %_parent_stack_start_ptr_
  %_cond2_588 = or i1 %_cond2_1_586, %_cond2_2_587
  %_cond4_589 = icmp ule i8* %_pot_address_in_parent_stack_584, %_parent_stack_end_ptr_
  %_cond1_n_cond2_590 = and i1 %_cond1_585, %_cond2_588
  %_cond1_n_cond2_cond3_591 = and i1 %_cond1_n_cond2_590, %_cond4_589
  br i1 %_cond1_n_cond2_cond3_591, label %193, label %194

; <label>:193:                                    ; preds = %191
  %_address_in_parent_stack_bt_593 = bitcast i8* %_pot_address_in_parent_stack_584 to i64*
  br label %194

; <label>:194:                                    ; preds = %191, %193
  %195 = phi i64* [ %_allin_new_bt_135, %191 ], [ %_address_in_parent_stack_bt_593, %193 ]
  %_new_load_594 = load i64, i64* %195
  %_new_gep_136 = getelementptr i8, i8* %_new_gep_134, i64 8
  %_allin_new_bt_137 = bitcast i8* %_new_gep_136 to i64*
  %_ptr_to_int_595 = ptrtoint i64* %_allin_new_bt_137 to i64
  %_offset_above_rbp_598 = sub i64 %_ptr_to_int_595, %_local_end_to_int_
  %_pot_address_in_parent_stack_599 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_598
  %_cond1_600 = icmp ugt i8* %_new_gep_136, %_local_stack_end_ptr_
  %_cond2_1_601 = icmp ugt i8* %_new_gep_136, %_parent_stack_end_ptr_
  %_cond2_2_602 = icmp ult i8* %_new_gep_136, %_parent_stack_start_ptr_
  %_cond2_603 = or i1 %_cond2_1_601, %_cond2_2_602
  %_cond4_604 = icmp ule i8* %_pot_address_in_parent_stack_599, %_parent_stack_end_ptr_
  %_cond1_n_cond2_605 = and i1 %_cond1_600, %_cond2_603
  %_cond1_n_cond2_cond3_606 = and i1 %_cond1_n_cond2_605, %_cond4_604
  br i1 %_cond1_n_cond2_cond3_606, label %196, label %197

; <label>:196:                                    ; preds = %194
  %_address_in_parent_stack_bt_608 = bitcast i8* %_pot_address_in_parent_stack_599 to i64*
  br label %197

; <label>:197:                                    ; preds = %194, %196
  %198 = phi i64* [ %_allin_new_bt_137, %194 ], [ %_address_in_parent_stack_bt_608, %196 ]
  %_new_load_609 = load i64, i64* %198
  %RSP_val.221 = load i64, i64* %XSP, !mcsema_real_eip !135
  %_new_gep_139 = getelementptr i8, i8* %_load_rsp_ptr_118, i64 -8
  %199 = sub i64 %RSP_val.221, 8, !mcsema_real_eip !135
  %_allin_new_bt_140 = bitcast i8* %_new_gep_139 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_140, !mcsema_real_eip !135
  store volatile i8* %_new_gep_139, i8** %_RSP_ptr_
  store i64 %199, i64* %XSP, !mcsema_real_eip !135
  %200 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.214, i64 %168, i64 %RDX_val.216, i64 %RCX_val.217, i64 %R8_val.218, i64 %R9_val.219, i64 %_new_load_474, i64 %_new_load_489, i64 %_new_load_504, i64 %_new_load_519, i64 %_new_load_534, i64 %_new_load_549, i64 %_new_load_564, i64 %_new_load_579, i64 %_new_load_594, i64 %_new_load_609)
  %_rsp_fix_173 = load i8*, i8** %_RSP_ptr_
  %_gep_fix_174 = getelementptr i8, i8* %_rsp_fix_173, i64 8
  store i8* %_gep_fix_174, i8** %_RSP_ptr_
  store i64 %200, i64* %XAX, !mcsema_real_eip !135
  %_load_rbp_ptr_141 = load i8*, i8** %_RBP_ptr_
  %_new_gep_142 = getelementptr i8, i8* %_load_rbp_ptr_141, i64 -52
  %_allin_new_bt_143 = bitcast i8* %_new_gep_142 to i64*
  %201 = ptrtoint i64* %_allin_new_bt_143 to i64, !mcsema_real_eip !136
  %202 = inttoptr i64 %201 to i32*, !mcsema_real_eip !136
  %_ptr_bt_612 = bitcast i32* %202 to i8*
  %_offset_above_rbp_613 = sub i64 %201, %_local_end_to_int_
  %_pot_address_in_parent_stack_614 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_613
  %_cond1_615 = icmp ugt i8* %_ptr_bt_612, %_local_stack_end_ptr_
  %_cond2_1_616 = icmp ugt i8* %_ptr_bt_612, %_parent_stack_end_ptr_
  %_cond2_2_617 = icmp ult i8* %_ptr_bt_612, %_parent_stack_start_ptr_
  %_cond2_618 = or i1 %_cond2_1_616, %_cond2_2_617
  %_cond4_619 = icmp ule i8* %_pot_address_in_parent_stack_614, %_parent_stack_end_ptr_
  %_cond1_n_cond2_620 = and i1 %_cond1_615, %_cond2_618
  %_cond1_n_cond2_cond3_621 = and i1 %_cond1_n_cond2_620, %_cond4_619
  br i1 %_cond1_n_cond2_cond3_621, label %203, label %204

; <label>:203:                                    ; preds = %197
  %_address_in_parent_stack_bt_623 = bitcast i8* %_pot_address_in_parent_stack_614 to i32*
  br label %204

; <label>:204:                                    ; preds = %197, %203
  %205 = phi i32* [ %202, %197 ], [ %_address_in_parent_stack_bt_623, %203 ]
  %_new_load_624 = load i32, i32* %205
  %206 = zext i32 %_new_load_624 to i64, !mcsema_real_eip !136
  store i64 %206, i64* %XSI, !mcsema_real_eip !136
  %_new_gep_145 = getelementptr i8, i8* %_load_rbp_ptr_141, i64 -80
  %_allin_new_bt_146 = bitcast i8* %_new_gep_145 to i64*
  %EAX_val.225 = load i32, i32* %EAX.142, !mcsema_real_eip !137
  %207 = ptrtoint i64* %_allin_new_bt_146 to i64, !mcsema_real_eip !137
  %208 = inttoptr i64 %207 to i32*, !mcsema_real_eip !137
  store i32 %EAX_val.225, i32* %208, !mcsema_real_eip !137
  %ESI_val.227 = load i32, i32* %ESI.203, !mcsema_real_eip !138
  %209 = zext i32 %ESI_val.227 to i64, !mcsema_real_eip !138
  store i64 %209, i64* %XAX, !mcsema_real_eip !138
  %_load_rsp_ptr_147 = load i8*, i8** %_RSP_ptr_
  %RSP_val.228 = load i64, i64* %XSP, !mcsema_real_eip !139
  %_new_gep_148 = getelementptr i8, i8* %_load_rsp_ptr_147, i64 128
  %210 = add i64 128, %RSP_val.228, !mcsema_real_eip !139
  %_trans_p2i_149 = ptrtoint i8* %_new_gep_148 to i64
  %_trans_p2i_150 = ptrtoint i8* %_load_rsp_ptr_147 to i64
  %_trans_xor_151 = xor i64 %_trans_p2i_149, %_trans_p2i_150
  %211 = xor i64 %_trans_xor_151, 128, !mcsema_real_eip !139
  %212 = and i64 %211, 16, !mcsema_real_eip !139
  %213 = icmp ne i64 %212, 0, !mcsema_real_eip !139
  store i1 %213, i1* %AF, !mcsema_real_eip !139
  %214 = lshr i64 %210, 63, !mcsema_real_eip !139
  %215 = trunc i64 %214 to i1, !mcsema_real_eip !139
  store i1 %215, i1* %SF, !mcsema_real_eip !139
  %_trans_icmp_eq_153 = icmp eq i64 %_trans_p2i_149, 0
  store i1 %_trans_icmp_eq_153, i1* %ZF, !mcsema_real_eip !139
  %_trans_xor_155 = xor i64 %_trans_p2i_150, 128
  %216 = xor i64 %_trans_xor_155, -1, !mcsema_real_eip !139
  %217 = and i64 %216, %_trans_xor_151, !mcsema_real_eip !139
  %218 = lshr i64 %217, 63, !mcsema_real_eip !139
  %219 = and i64 %218, 1, !mcsema_real_eip !139
  %220 = trunc i64 %219 to i1, !mcsema_real_eip !139
  store i1 %220, i1* %OF, !mcsema_real_eip !139
  %_trans_trunc_160 = trunc i64 %_trans_p2i_149 to i8
  %221 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_160), !mcsema_real_eip !139
  %222 = trunc i8 %221 to i1, !mcsema_real_eip !139
  %223 = xor i1 %222, true, !mcsema_real_eip !139
  store i1 %223, i1* %PF, !mcsema_real_eip !139
  %_trans_icmp_ne_162 = icmp ne i64 %_trans_p2i_149, %RSP_val.228
  store i1 %_trans_icmp_ne_162, i1* %CF, !mcsema_real_eip !139
  store volatile i8* %_new_gep_148, i8** %_RSP_ptr_
  store i64 %210, i64* %XSP, !mcsema_real_eip !139
  %_allin_new_bt_164 = bitcast i8* %_new_gep_148 to i64*
  %_ptr_to_int_625 = ptrtoint i64* %_allin_new_bt_164 to i64
  %_offset_above_rbp_628 = sub i64 %_ptr_to_int_625, %_local_end_to_int_
  %_pot_address_in_parent_stack_629 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_628
  %_cond1_630 = icmp ugt i8* %_new_gep_148, %_local_stack_end_ptr_
  %_cond2_1_631 = icmp ugt i8* %_new_gep_148, %_parent_stack_end_ptr_
  %_cond2_2_632 = icmp ult i8* %_new_gep_148, %_parent_stack_start_ptr_
  %_cond2_633 = or i1 %_cond2_1_631, %_cond2_2_632
  %_cond4_634 = icmp ule i8* %_pot_address_in_parent_stack_629, %_parent_stack_end_ptr_
  %_cond1_n_cond2_635 = and i1 %_cond1_630, %_cond2_633
  %_cond1_n_cond2_cond3_636 = and i1 %_cond1_n_cond2_635, %_cond4_634
  br i1 %_cond1_n_cond2_cond3_636, label %224, label %225

; <label>:224:                                    ; preds = %204
  %_address_in_parent_stack_bt_638 = bitcast i8* %_pot_address_in_parent_stack_629 to i64*
  br label %225

; <label>:225:                                    ; preds = %204, %224
  %226 = phi i64* [ %_allin_new_bt_164, %204 ], [ %_address_in_parent_stack_bt_638, %224 ]
  %_new_load_639 = load i64, i64* %226
  %_new_int2ptr_ = inttoptr i64 %_new_load_639 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_639, i64* %XBP, !mcsema_real_eip !140
  %_new_gep_165 = getelementptr i8, i8* %_new_gep_148, i64 8
  %227 = add i64 %210, 8, !mcsema_real_eip !140
  store volatile i8* %_new_gep_165, i8** %_RSP_ptr_
  store i64 %227, i64* %XSP, !mcsema_real_eip !140
  %_new_gep_167 = getelementptr i8, i8* %_new_gep_165, i64 8
  %228 = add i64 %227, 8, !mcsema_real_eip !141
  %_allin_new_bt_168 = bitcast i8* %_new_gep_165 to i64*
  %_ptr_to_int_640 = ptrtoint i64* %_allin_new_bt_168 to i64
  %_offset_above_rbp_643 = sub i64 %_ptr_to_int_640, %_local_end_to_int_
  %_pot_address_in_parent_stack_644 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_643
  %_cond1_645 = icmp ugt i8* %_new_gep_165, %_local_stack_end_ptr_
  %_cond2_1_646 = icmp ugt i8* %_new_gep_165, %_parent_stack_end_ptr_
  %_cond2_2_647 = icmp ult i8* %_new_gep_165, %_parent_stack_start_ptr_
  %_cond2_648 = or i1 %_cond2_1_646, %_cond2_2_647
  %_cond4_649 = icmp ule i8* %_pot_address_in_parent_stack_644, %_parent_stack_end_ptr_
  %_cond1_n_cond2_650 = and i1 %_cond1_645, %_cond2_648
  %_cond1_n_cond2_cond3_651 = and i1 %_cond1_n_cond2_650, %_cond4_649
  br i1 %_cond1_n_cond2_cond3_651, label %229, label %230

; <label>:229:                                    ; preds = %225
  %_address_in_parent_stack_bt_653 = bitcast i8* %_pot_address_in_parent_stack_644 to i64*
  br label %230

; <label>:230:                                    ; preds = %225, %229
  %231 = phi i64* [ %_allin_new_bt_168, %225 ], [ %_address_in_parent_stack_bt_653, %229 ]
  %_new_load_654 = load i64, i64* %231
  store i64 %_new_load_654, i64* %XIP, !mcsema_real_eip !141
  store volatile i8* %_new_gep_167, i8** %_RSP_ptr_
  store i64 %228, i64* %XSP, !mcsema_real_eip !141
  ret void, !mcsema_real_eip !141
}

attributes #0 = { naked }
attributes #1 = { noinline }
attributes #2 = { naked noinline }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 1, !"Debug Info Version", i32 1}
!1 = !{i32 1, !"Dwarf Version", i32 3}
!2 = !{i64 0}
!3 = !{i64 1}
!4 = !{i64 4}
!5 = !{i64 6}
!6 = !{i64 8}
!7 = !{i64 9}
!8 = !{i64 13}
!9 = !{i64 17}
!10 = !{i64 21}
!11 = !{i64 25}
!12 = !{i64 28}
!13 = !{i64 34}
!14 = !{i64 37}
!15 = !{i64 41}
!16 = !{i64 44}
!17 = !{i64 48}
!18 = !{i64 52}
!19 = !{i64 55}
!20 = !{i64 58}
!21 = !{i64 62}
!22 = !{i64 66}
!23 = !{i64 70}
!24 = !{i64 74}
!25 = !{i64 77}
!26 = !{i64 81}
!27 = !{i64 85}
!28 = !{i64 88}
!29 = !{i64 92}
!30 = !{i64 97}
!31 = !{i64 101}
!32 = !{i64 104}
!33 = !{i64 108}
!34 = !{i64 110}
!35 = !{i64 114}
!36 = !{i64 116}
!37 = !{i64 120}
!38 = !{i64 123}
!39 = !{i64 127}
!40 = !{i64 130}
!41 = !{i64 134}
!42 = !{i64 137}
!43 = !{i64 140}
!44 = !{i64 144}
!45 = !{i64 146}
!46 = !{i64 149}
!47 = !{i64 153}
!48 = !{i64 156}
!49 = !{i64 160}
!50 = !{i64 163}
!51 = !{i64 167}
!52 = !{i64 171}
!53 = !{i64 175}
!54 = !{i64 179}
!55 = !{i64 183}
!56 = !{i64 186}
!57 = !{i64 190}
!58 = !{i64 193}
!59 = !{i64 196}
!60 = !{i64 200}
!61 = !{i64 203}
!62 = !{i64 207}
!63 = !{i64 210}
!64 = !{i64 214}
!65 = !{i64 218}
!66 = !{i64 222}
!67 = !{i64 226}
!68 = !{i64 230}
!69 = !{i64 233}
!70 = !{i64 237}
!71 = !{i64 240}
!72 = !{i64 244}
!73 = !{i64 248}
!74 = !{i64 249}
!75 = !{i64 251}
!76 = !{i64 253}
!77 = !{i64 254}
!78 = !{i64 256}
!79 = !{i64 257}
!80 = !{i64 260}
!81 = !{i64 267}
!82 = !{i64 272}
!83 = !{i64 274}
!84 = !{i64 281}
!85 = !{i64 288}
!86 = !{i64 295}
!87 = !{i64 302}
!88 = !{i64 307}
!89 = !{i64 311}
!90 = !{i64 317}
!91 = !{i64 323}
!92 = !{i64 328}
!93 = !{i64 332}
!94 = !{i64 336}
!95 = !{i64 342}
!96 = !{i64 346}
!97 = !{i64 353}
!98 = !{i64 357}
!99 = !{i64 364}
!100 = !{i64 368}
!101 = !{i64 372}
!102 = !{i64 376}
!103 = !{i64 380}
!104 = !{i64 384}
!105 = !{i64 388}
!106 = !{i64 392}
!107 = !{i64 396}
!108 = !{i64 400}
!109 = !{i64 403}
!110 = !{i64 406}
!111 = !{i64 410}
!112 = !{i64 414}
!113 = !{i64 417}
!114 = !{i64 420}
!115 = !{i64 423}
!116 = !{i64 430}
!117 = !{i64 433}
!118 = !{i64 438}
!119 = !{i64 442}
!120 = !{i64 447}
!121 = !{i64 452}
!122 = !{i64 456}
!123 = !{i64 461}
!124 = !{i64 466}
!125 = !{i64 476}
!126 = !{i64 480}
!127 = !{i64 484}
!128 = !{i64 486}
!129 = !{i64 490}
!130 = !{i64 493}
!131 = !{i64 497}
!132 = !{i64 500}
!133 = !{i64 503}
!134 = !{i64 506}
!135 = !{i64 508}
!136 = !{i64 513}
!137 = !{i64 516}
!138 = !{i64 519}
!139 = !{i64 521}
!140 = !{i64 528}
!141 = !{i64 529}
