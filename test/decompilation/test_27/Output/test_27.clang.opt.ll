; ModuleID = 'Output/test_27.clang.opt.bc'
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
  %RBP_val.138 = load i64, i64* %XBP, !mcsema_real_eip !78
  %RSP_val.139 = load i64, i64* %XSP, !mcsema_real_eip !78
  %1 = sub i64 %RSP_val.139, 8, !mcsema_real_eip !78
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !78
  store i64 %RBP_val.138, i64* %2, !mcsema_real_eip !78
  store i64 %1, i64* %XSP, !mcsema_real_eip !78
  store i64 %1, i64* %XBP, !mcsema_real_eip !79
  %3 = sub i64 %1, 128, !mcsema_real_eip !80
  %4 = xor i64 %3, %1, !mcsema_real_eip !80
  %5 = xor i64 %4, 128, !mcsema_real_eip !80
  %6 = and i64 %5, 16, !mcsema_real_eip !80
  %7 = icmp ne i64 %6, 0, !mcsema_real_eip !80
  store i1 %7, i1* %AF, !mcsema_real_eip !80
  %8 = trunc i64 %3 to i8, !mcsema_real_eip !80
  %9 = call i8 @llvm.ctpop.i8(i8 %8), !mcsema_real_eip !80
  %10 = trunc i8 %9 to i1, !mcsema_real_eip !80
  %11 = xor i1 %10, true, !mcsema_real_eip !80
  store i1 %11, i1* %PF, !mcsema_real_eip !80
  %12 = icmp eq i64 %3, 0, !mcsema_real_eip !80
  store i1 %12, i1* %ZF, !mcsema_real_eip !80
  %13 = lshr i64 %3, 63, !mcsema_real_eip !80
  %14 = trunc i64 %13 to i1, !mcsema_real_eip !80
  store i1 %14, i1* %SF, !mcsema_real_eip !80
  %15 = icmp ult i64 %1, 128, !mcsema_real_eip !80
  store i1 %15, i1* %CF, !mcsema_real_eip !80
  %16 = xor i64 %1, 128, !mcsema_real_eip !80
  %17 = and i64 %16, %4, !mcsema_real_eip !80
  %18 = lshr i64 %17, 63, !mcsema_real_eip !80
  %19 = trunc i64 %18 to i1, !mcsema_real_eip !80
  store i1 %19, i1* %OF, !mcsema_real_eip !80
  store i64 %3, i64* %XSP, !mcsema_real_eip !80
  store i64 12, i64* %XAX, !mcsema_real_eip !81
  %EAX.142 = bitcast i64* %XAX to i32*, !mcsema_real_eip !82
  %EAX_val.143 = load i32, i32* %EAX.142, !mcsema_real_eip !82
  %20 = zext i32 %EAX_val.143 to i64, !mcsema_real_eip !82
  store i64 %20, i64* %XDI, !mcsema_real_eip !82
  %21 = add i64 %1, -4, !mcsema_real_eip !83
  %22 = inttoptr i64 %21 to i64*, !mcsema_real_eip !83
  %23 = inttoptr i64 %21 to i32*, !mcsema_real_eip !83
  store i32 0, i32* %23, !mcsema_real_eip !83
  %RBP_val.145 = load i64, i64* %XBP, !mcsema_real_eip !84
  %24 = add i64 %RBP_val.145, -16, !mcsema_real_eip !84
  %25 = inttoptr i64 %24 to i64*, !mcsema_real_eip !84
  %26 = inttoptr i64 %24 to i32*, !mcsema_real_eip !84
  store i32 10, i32* %26, !mcsema_real_eip !84
  %RBP_val.146 = load i64, i64* %XBP, !mcsema_real_eip !85
  %27 = add i64 %RBP_val.146, -12, !mcsema_real_eip !85
  %28 = inttoptr i64 %27 to i64*, !mcsema_real_eip !85
  %29 = inttoptr i64 %27 to i32*, !mcsema_real_eip !85
  store i32 10, i32* %29, !mcsema_real_eip !85
  %RBP_val.147 = load i64, i64* %XBP, !mcsema_real_eip !86
  %30 = add i64 %RBP_val.147, -8, !mcsema_real_eip !86
  %31 = inttoptr i64 %30 to i64*, !mcsema_real_eip !86
  %32 = inttoptr i64 %30 to i32*, !mcsema_real_eip !86
  store i32 10, i32* %32, !mcsema_real_eip !86
  %RDI_val.148 = load i64, i64* %XDI, !mcsema_real_eip !87
  %RSP_val.149 = load i64, i64* %XSP, !mcsema_real_eip !87
  %33 = sub i64 %RSP_val.149, 8, !mcsema_real_eip !87
  %34 = inttoptr i64 %33 to i64*, !mcsema_real_eip !87
  store i64 -2415393069852865332, i64* %34, !mcsema_real_eip !87
  store i64 %33, i64* %XSP, !mcsema_real_eip !87
  %35 = call x86_64_sysvcc i64 @_malloc(i64 %RDI_val.148), !mcsema_real_eip !87
  store i64 %35, i64* %XAX, !mcsema_real_eip !87
  %RBP_val.150 = load i64, i64* %XBP, !mcsema_real_eip !88
  %36 = add i64 %RBP_val.150, -16, !mcsema_real_eip !88
  %37 = inttoptr i64 %36 to i64*, !mcsema_real_eip !88
  store i64 %36, i64* %XDI, !mcsema_real_eip !88
  store i64 1, i64* %R8, !mcsema_real_eip !89
  store i64 2, i64* %R9, !mcsema_real_eip !90
  store i64 3, i64* %XCX, !mcsema_real_eip !91
  %38 = add i64 %RBP_val.150, -24, !mcsema_real_eip !92
  %39 = inttoptr i64 %38 to i64*, !mcsema_real_eip !92
  store i64 %35, i64* %39, !mcsema_real_eip !92
  %RBP_val.153 = load i64, i64* %XBP, !mcsema_real_eip !93
  %40 = add i64 %RBP_val.153, -24, !mcsema_real_eip !93
  %41 = inttoptr i64 %40 to i64*, !mcsema_real_eip !93
  %42 = load i64, i64* %41, !mcsema_real_eip !93
  store i64 %42, i64* %XAX, !mcsema_real_eip !93
  %43 = inttoptr i64 %42 to i64*, !mcsema_real_eip !94
  %44 = inttoptr i64 %42 to i32*, !mcsema_real_eip !94
  store i32 5, i32* %44, !mcsema_real_eip !94
  %RBP_val.155 = load i64, i64* %XBP, !mcsema_real_eip !95
  %45 = add i64 %RBP_val.155, -24, !mcsema_real_eip !95
  %46 = inttoptr i64 %45 to i64*, !mcsema_real_eip !95
  %47 = load i64, i64* %46, !mcsema_real_eip !95
  store i64 %47, i64* %XAX, !mcsema_real_eip !95
  %48 = add i64 %47, 4, !mcsema_real_eip !96
  %49 = inttoptr i64 %48 to i64*, !mcsema_real_eip !96
  %50 = inttoptr i64 %48 to i32*, !mcsema_real_eip !96
  store i32 5, i32* %50, !mcsema_real_eip !96
  %RBP_val.157 = load i64, i64* %XBP, !mcsema_real_eip !97
  %51 = add i64 %RBP_val.157, -24, !mcsema_real_eip !97
  %52 = inttoptr i64 %51 to i64*, !mcsema_real_eip !97
  %53 = load i64, i64* %52, !mcsema_real_eip !97
  store i64 %53, i64* %XAX, !mcsema_real_eip !97
  %54 = add i64 %53, 8, !mcsema_real_eip !98
  %55 = inttoptr i64 %54 to i64*, !mcsema_real_eip !98
  %56 = inttoptr i64 %54 to i32*, !mcsema_real_eip !98
  store i32 5, i32* %56, !mcsema_real_eip !98
  %RBP_val.159 = load i64, i64* %XBP, !mcsema_real_eip !99
  %57 = add i64 %RBP_val.159, -24, !mcsema_real_eip !99
  %58 = inttoptr i64 %57 to i64*, !mcsema_real_eip !99
  %59 = load i64, i64* %58, !mcsema_real_eip !99
  store i64 %59, i64* %XAX, !mcsema_real_eip !99
  %60 = load i64, i64* %58, !mcsema_real_eip !100
  store i64 %60, i64* %XDX, !mcsema_real_eip !100
  %61 = add i64 %RBP_val.159, -16, !mcsema_real_eip !101
  %62 = inttoptr i64 %61 to i64*, !mcsema_real_eip !101
  %63 = load i64, i64* %62, !mcsema_real_eip !101
  store i64 %63, i64* %XSI, !mcsema_real_eip !101
  %64 = add i64 %RBP_val.159, -48, !mcsema_real_eip !102
  %65 = inttoptr i64 %64 to i64*, !mcsema_real_eip !102
  store i64 %63, i64* %65, !mcsema_real_eip !102
  %RBP_val.164 = load i64, i64* %XBP, !mcsema_real_eip !103
  %66 = add i64 %RBP_val.164, -8, !mcsema_real_eip !103
  %67 = inttoptr i64 %66 to i64*, !mcsema_real_eip !103
  %68 = inttoptr i64 %66 to i32*, !mcsema_real_eip !103
  %69 = load i32, i32* %68, !mcsema_real_eip !103
  %70 = zext i32 %69 to i64, !mcsema_real_eip !103
  store i64 %70, i64* %R10, !mcsema_real_eip !103
  %71 = add i64 %RBP_val.164, -40, !mcsema_real_eip !104
  %72 = inttoptr i64 %71 to i64*, !mcsema_real_eip !104
  %R10D.166 = bitcast i64* %R10 to i32*, !mcsema_real_eip !104
  %R10D_val.167 = load i32, i32* %R10D.166, !mcsema_real_eip !104
  %73 = inttoptr i64 %71 to i32*, !mcsema_real_eip !104
  store i32 %R10D_val.167, i32* %73, !mcsema_real_eip !104
  %RBP_val.168 = load i64, i64* %XBP, !mcsema_real_eip !105
  %74 = add i64 %RBP_val.168, -48, !mcsema_real_eip !105
  %75 = inttoptr i64 %74 to i64*, !mcsema_real_eip !105
  %76 = load i64, i64* %75, !mcsema_real_eip !105
  store i64 %76, i64* %XSI, !mcsema_real_eip !105
  %77 = add i64 %RBP_val.168, -40, !mcsema_real_eip !106
  %78 = inttoptr i64 %77 to i64*, !mcsema_real_eip !106
  %79 = inttoptr i64 %77 to i32*, !mcsema_real_eip !106
  %80 = load i32, i32* %79, !mcsema_real_eip !106
  %81 = zext i32 %80 to i64, !mcsema_real_eip !106
  store i64 %81, i64* %R10, !mcsema_real_eip !106
  %82 = add i64 %RBP_val.168, -64, !mcsema_real_eip !107
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !107
  %RDI_val.171 = load i64, i64* %XDI, !mcsema_real_eip !107
  store i64 %RDI_val.171, i64* %83, !mcsema_real_eip !107
  %RSI_val.172 = load i64, i64* %XSI, !mcsema_real_eip !108
  store i64 %RSI_val.172, i64* %XDI, !mcsema_real_eip !108
  %R10D_val.174 = load i32, i32* %R10D.166, !mcsema_real_eip !109
  %84 = zext i32 %R10D_val.174 to i64, !mcsema_real_eip !109
  store i64 %84, i64* %XSI, !mcsema_real_eip !109
  %RBP_val.175 = load i64, i64* %XBP, !mcsema_real_eip !110
  %85 = add i64 %RBP_val.175, -64, !mcsema_real_eip !110
  %86 = inttoptr i64 %85 to i64*, !mcsema_real_eip !110
  %87 = load i64, i64* %86, !mcsema_real_eip !110
  store i64 %87, i64* %R11, !mcsema_real_eip !110
  %88 = add i64 %RBP_val.175, -72, !mcsema_real_eip !111
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !111
  %RDX_val.177 = load i64, i64* %XDX, !mcsema_real_eip !111
  store i64 %RDX_val.177, i64* %89, !mcsema_real_eip !111
  %R11_val.178 = load i64, i64* %R11, !mcsema_real_eip !112
  store i64 %R11_val.178, i64* %XDX, !mcsema_real_eip !112
  %RBP_val.179 = load i64, i64* %XBP, !mcsema_real_eip !113
  %90 = add i64 %RBP_val.179, -76, !mcsema_real_eip !113
  %91 = inttoptr i64 %90 to i64*, !mcsema_real_eip !113
  %ECX.180 = bitcast i64* %XCX to i32*, !mcsema_real_eip !113
  %ECX_val.181 = load i32, i32* %ECX.180, !mcsema_real_eip !113
  %92 = inttoptr i64 %90 to i32*, !mcsema_real_eip !113
  store i32 %ECX_val.181, i32* %92, !mcsema_real_eip !113
  %RAX_val.182 = load i64, i64* %XAX, !mcsema_real_eip !114
  store i64 %RAX_val.182, i64* %XCX, !mcsema_real_eip !114
  %RSP_val.183 = load i64, i64* %XSP, !mcsema_real_eip !115
  %93 = inttoptr i64 %RSP_val.183 to i64*, !mcsema_real_eip !115
  %94 = inttoptr i64 %RSP_val.183 to i32*, !mcsema_real_eip !115
  store i32 3, i32* %94, !mcsema_real_eip !115
  %R11_val.184 = load i64, i64* %R11, !mcsema_real_eip !116
  %95 = inttoptr i64 %R11_val.184 to i64*, !mcsema_real_eip !116
  %96 = load i64, i64* %95, !mcsema_real_eip !116
  store i64 %96, i64* %XAX, !mcsema_real_eip !116
  %RSP_val.185 = load i64, i64* %XSP, !mcsema_real_eip !117
  %97 = add i64 %RSP_val.185, 8, !mcsema_real_eip !117
  %98 = inttoptr i64 %97 to i64*, !mcsema_real_eip !117
  store i64 %96, i64* %98, !mcsema_real_eip !117
  %R11_val.187 = load i64, i64* %R11, !mcsema_real_eip !118
  %99 = add i64 %R11_val.187, 8, !mcsema_real_eip !118
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !118
  %101 = inttoptr i64 %99 to i32*, !mcsema_real_eip !118
  %102 = load i32, i32* %101, !mcsema_real_eip !118
  %103 = zext i32 %102 to i64, !mcsema_real_eip !118
  store i64 %103, i64* %R10, !mcsema_real_eip !118
  %RSP_val.188 = load i64, i64* %XSP, !mcsema_real_eip !119
  %104 = add i64 %RSP_val.188, 16, !mcsema_real_eip !119
  %105 = inttoptr i64 %104 to i64*, !mcsema_real_eip !119
  %R10D_val.190 = load i32, i32* %R10D.166, !mcsema_real_eip !119
  %106 = inttoptr i64 %104 to i32*, !mcsema_real_eip !119
  store i32 %R10D_val.190, i32* %106, !mcsema_real_eip !119
  %RSP_val.191 = load i64, i64* %XSP, !mcsema_real_eip !120
  %107 = add i64 %RSP_val.191, 24, !mcsema_real_eip !120
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !120
  %R11_val.192 = load i64, i64* %R11, !mcsema_real_eip !120
  store i64 %R11_val.192, i64* %108, !mcsema_real_eip !120
  %RBP_val.193 = load i64, i64* %XBP, !mcsema_real_eip !121
  %109 = add i64 %RBP_val.193, -72, !mcsema_real_eip !121
  %110 = inttoptr i64 %109 to i64*, !mcsema_real_eip !121
  %111 = load i64, i64* %110, !mcsema_real_eip !121
  store i64 %111, i64* %XAX, !mcsema_real_eip !121
  %RSP_val.194 = load i64, i64* %XSP, !mcsema_real_eip !122
  %112 = add i64 %RSP_val.194, 32, !mcsema_real_eip !122
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !122
  store i64 %111, i64* %113, !mcsema_real_eip !122
  %RSP_val.196 = load i64, i64* %XSP, !mcsema_real_eip !123
  %114 = sub i64 %RSP_val.196, 8, !mcsema_real_eip !123
  %115 = inttoptr i64 %114 to i64*, !mcsema_real_eip !123
  store i64 -4981261766360305936, i64* %115, !mcsema_real_eip !123
  store i64 %114, i64* %XSP, !mcsema_real_eip !123
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !123
  store i64 ptrtoint (%0* @data_0x212 to i64), i64* %XDI, !mcsema_real_eip !124
  %RBP_val.197 = load i64, i64* %XBP, !mcsema_real_eip !125
  %116 = add i64 %RBP_val.197, -32, !mcsema_real_eip !125
  %117 = inttoptr i64 %116 to i64*, !mcsema_real_eip !125
  %RAX_val.198 = load i64, i64* %XAX, !mcsema_real_eip !125
  store i64 %RAX_val.198, i64* %117, !mcsema_real_eip !125
  %RBP_val.199 = load i64, i64* %XBP, !mcsema_real_eip !126
  %118 = add i64 %RBP_val.199, -32, !mcsema_real_eip !126
  %119 = inttoptr i64 %118 to i64*, !mcsema_real_eip !126
  %120 = load i64, i64* %119, !mcsema_real_eip !126
  store i64 %120, i64* %XAX, !mcsema_real_eip !126
  %121 = inttoptr i64 %120 to i64*, !mcsema_real_eip !127
  %122 = inttoptr i64 %120 to i32*, !mcsema_real_eip !127
  %123 = load i32, i32* %122, !mcsema_real_eip !127
  %124 = zext i32 %123 to i64, !mcsema_real_eip !127
  store i64 %124, i64* %XSI, !mcsema_real_eip !127
  %125 = load i64, i64* %119, !mcsema_real_eip !128
  store i64 %125, i64* %XAX, !mcsema_real_eip !128
  %126 = add i64 %125, 4, !mcsema_real_eip !129
  %127 = inttoptr i64 %126 to i64*, !mcsema_real_eip !129
  %128 = inttoptr i64 %126 to i32*, !mcsema_real_eip !129
  %129 = load i32, i32* %128, !mcsema_real_eip !129
  %ESI.203 = bitcast i64* %XSI to i32*, !mcsema_real_eip !129
  %ESI_val.204 = load i32, i32* %ESI.203, !mcsema_real_eip !129
  %130 = add i32 %ESI_val.204, %129, !mcsema_real_eip !129
  %131 = xor i32 %130, %129, !mcsema_real_eip !129
  %132 = xor i32 %131, %ESI_val.204, !mcsema_real_eip !129
  %133 = and i32 %132, 16, !mcsema_real_eip !129
  %134 = icmp ne i32 %133, 0, !mcsema_real_eip !129
  store i1 %134, i1* %AF, !mcsema_real_eip !129
  %135 = lshr i32 %130, 31, !mcsema_real_eip !129
  %136 = trunc i32 %135 to i1, !mcsema_real_eip !129
  store i1 %136, i1* %SF, !mcsema_real_eip !129
  %137 = icmp eq i32 %130, 0, !mcsema_real_eip !129
  store i1 %137, i1* %ZF, !mcsema_real_eip !129
  %138 = xor i32 %129, %ESI_val.204, !mcsema_real_eip !129
  %139 = xor i32 %138, -1, !mcsema_real_eip !129
  %140 = and i32 %139, %131, !mcsema_real_eip !129
  %141 = lshr i32 %140, 31, !mcsema_real_eip !129
  %142 = and i32 %141, 1, !mcsema_real_eip !129
  %143 = trunc i32 %142 to i1, !mcsema_real_eip !129
  store i1 %143, i1* %OF, !mcsema_real_eip !129
  %144 = trunc i32 %130 to i8, !mcsema_real_eip !129
  %145 = call i8 @llvm.ctpop.i8(i8 %144), !mcsema_real_eip !129
  %146 = trunc i8 %145 to i1, !mcsema_real_eip !129
  %147 = xor i1 %146, true, !mcsema_real_eip !129
  store i1 %147, i1* %PF, !mcsema_real_eip !129
  %148 = icmp ult i32 %130, %129, !mcsema_real_eip !129
  store i1 %148, i1* %CF, !mcsema_real_eip !129
  %149 = zext i32 %130 to i64, !mcsema_real_eip !129
  store i64 %149, i64* %XSI, !mcsema_real_eip !129
  %150 = load i64, i64* %119, !mcsema_real_eip !130
  store i64 %150, i64* %XAX, !mcsema_real_eip !130
  %151 = add i64 %150, 8, !mcsema_real_eip !131
  %152 = inttoptr i64 %151 to i64*, !mcsema_real_eip !131
  %153 = inttoptr i64 %151 to i32*, !mcsema_real_eip !131
  %154 = load i32, i32* %153, !mcsema_real_eip !131
  %ESI_val.208 = load i32, i32* %ESI.203, !mcsema_real_eip !131
  %155 = add i32 %ESI_val.208, %154, !mcsema_real_eip !131
  %156 = xor i32 %155, %154, !mcsema_real_eip !131
  %157 = xor i32 %156, %ESI_val.208, !mcsema_real_eip !131
  %158 = and i32 %157, 16, !mcsema_real_eip !131
  %159 = icmp ne i32 %158, 0, !mcsema_real_eip !131
  store i1 %159, i1* %AF, !mcsema_real_eip !131
  %160 = lshr i32 %155, 31, !mcsema_real_eip !131
  %161 = trunc i32 %160 to i1, !mcsema_real_eip !131
  store i1 %161, i1* %SF, !mcsema_real_eip !131
  %162 = icmp eq i32 %155, 0, !mcsema_real_eip !131
  store i1 %162, i1* %ZF, !mcsema_real_eip !131
  %163 = xor i32 %154, %ESI_val.208, !mcsema_real_eip !131
  %164 = xor i32 %163, -1, !mcsema_real_eip !131
  %165 = and i32 %164, %156, !mcsema_real_eip !131
  %166 = lshr i32 %165, 31, !mcsema_real_eip !131
  %167 = and i32 %166, 1, !mcsema_real_eip !131
  %168 = trunc i32 %167 to i1, !mcsema_real_eip !131
  store i1 %168, i1* %OF, !mcsema_real_eip !131
  %169 = trunc i32 %155 to i8, !mcsema_real_eip !131
  %170 = call i8 @llvm.ctpop.i8(i8 %169), !mcsema_real_eip !131
  %171 = trunc i8 %170 to i1, !mcsema_real_eip !131
  %172 = xor i1 %171, true, !mcsema_real_eip !131
  store i1 %172, i1* %PF, !mcsema_real_eip !131
  %173 = icmp ult i32 %155, %154, !mcsema_real_eip !131
  store i1 %173, i1* %CF, !mcsema_real_eip !131
  %174 = zext i32 %155 to i64, !mcsema_real_eip !131
  store i64 %174, i64* %XSI, !mcsema_real_eip !131
  %175 = add i64 %RBP_val.199, -52, !mcsema_real_eip !132
  %176 = inttoptr i64 %175 to i64*, !mcsema_real_eip !132
  %ESI_val.211 = load i32, i32* %ESI.203, !mcsema_real_eip !132
  %177 = inttoptr i64 %175 to i32*, !mcsema_real_eip !132
  store i32 %ESI_val.211, i32* %177, !mcsema_real_eip !132
  %RBP_val.212 = load i64, i64* %XBP, !mcsema_real_eip !133
  %178 = add i64 %RBP_val.212, -52, !mcsema_real_eip !133
  %179 = inttoptr i64 %178 to i64*, !mcsema_real_eip !133
  %180 = inttoptr i64 %178 to i32*, !mcsema_real_eip !133
  %181 = load i32, i32* %180, !mcsema_real_eip !133
  %182 = zext i32 %181 to i64, !mcsema_real_eip !133
  store i64 %182, i64* %XSI, !mcsema_real_eip !133
  %AL.213 = bitcast i64* %XAX to i8*, !mcsema_real_eip !134
  store i8 0, i8* %AL.213, !mcsema_real_eip !134
  %RDI_val.214 = load i64, i64* %XDI, !mcsema_real_eip !135
  %RDX_val.216 = load i64, i64* %XDX, !mcsema_real_eip !135
  %RCX_val.217 = load i64, i64* %XCX, !mcsema_real_eip !135
  %R8_val.218 = load i64, i64* %R8, !mcsema_real_eip !135
  %R9_val.219 = load i64, i64* %R9, !mcsema_real_eip !135
  %RSP_val.220 = load i64, i64* %XSP, !mcsema_real_eip !135
  %183 = inttoptr i64 %RSP_val.220 to i64*, !mcsema_real_eip !135
  %184 = load i64, i64* %183, !mcsema_real_eip !135
  %185 = add i64 %RSP_val.220, 8, !mcsema_real_eip !135
  %186 = inttoptr i64 %185 to i64*, !mcsema_real_eip !135
  %187 = load i64, i64* %186, !mcsema_real_eip !135
  %188 = add i64 %185, 8, !mcsema_real_eip !135
  %189 = inttoptr i64 %188 to i64*, !mcsema_real_eip !135
  %190 = load i64, i64* %189, !mcsema_real_eip !135
  %191 = add i64 %188, 8, !mcsema_real_eip !135
  %192 = inttoptr i64 %191 to i64*, !mcsema_real_eip !135
  %193 = load i64, i64* %192, !mcsema_real_eip !135
  %194 = add i64 %191, 8, !mcsema_real_eip !135
  %195 = inttoptr i64 %194 to i64*, !mcsema_real_eip !135
  %196 = load i64, i64* %195, !mcsema_real_eip !135
  %197 = add i64 %194, 8, !mcsema_real_eip !135
  %198 = inttoptr i64 %197 to i64*, !mcsema_real_eip !135
  %199 = load i64, i64* %198, !mcsema_real_eip !135
  %200 = sub i64 %RSP_val.220, 8, !mcsema_real_eip !135
  %201 = inttoptr i64 %200 to i64*, !mcsema_real_eip !135
  store i64 -2415393069852865332, i64* %201, !mcsema_real_eip !135
  store i64 %200, i64* %XSP, !mcsema_real_eip !135
  %202 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.214, i64 %182, i64 %RDX_val.216, i64 %RCX_val.217, i64 %R8_val.218, i64 %R9_val.219, i64 %184, i64 %187, i64 %190, i64 %193, i64 %196, i64 %199), !mcsema_real_eip !135
  store i64 %202, i64* %XAX, !mcsema_real_eip !135
  %RBP_val.222 = load i64, i64* %XBP, !mcsema_real_eip !136
  %203 = add i64 %RBP_val.222, -52, !mcsema_real_eip !136
  %204 = inttoptr i64 %203 to i64*, !mcsema_real_eip !136
  %205 = inttoptr i64 %203 to i32*, !mcsema_real_eip !136
  %206 = load i32, i32* %205, !mcsema_real_eip !136
  %207 = zext i32 %206 to i64, !mcsema_real_eip !136
  store i64 %207, i64* %XSI, !mcsema_real_eip !136
  %208 = add i64 %RBP_val.222, -80, !mcsema_real_eip !137
  %209 = inttoptr i64 %208 to i64*, !mcsema_real_eip !137
  %EAX_val.225 = load i32, i32* %EAX.142, !mcsema_real_eip !137
  %210 = inttoptr i64 %208 to i32*, !mcsema_real_eip !137
  store i32 %EAX_val.225, i32* %210, !mcsema_real_eip !137
  %ESI_val.227 = load i32, i32* %ESI.203, !mcsema_real_eip !138
  %211 = zext i32 %ESI_val.227 to i64, !mcsema_real_eip !138
  store i64 %211, i64* %XAX, !mcsema_real_eip !138
  %RSP_val.228 = load i64, i64* %XSP, !mcsema_real_eip !139
  %212 = add i64 128, %RSP_val.228, !mcsema_real_eip !139
  %213 = xor i64 %212, %RSP_val.228, !mcsema_real_eip !139
  %214 = xor i64 %213, 128, !mcsema_real_eip !139
  %215 = and i64 %214, 16, !mcsema_real_eip !139
  %216 = icmp ne i64 %215, 0, !mcsema_real_eip !139
  store i1 %216, i1* %AF, !mcsema_real_eip !139
  %217 = lshr i64 %212, 63, !mcsema_real_eip !139
  %218 = trunc i64 %217 to i1, !mcsema_real_eip !139
  store i1 %218, i1* %SF, !mcsema_real_eip !139
  %219 = icmp eq i64 %212, 0, !mcsema_real_eip !139
  store i1 %219, i1* %ZF, !mcsema_real_eip !139
  %220 = xor i64 %RSP_val.228, 128, !mcsema_real_eip !139
  %221 = xor i64 %220, -1, !mcsema_real_eip !139
  %222 = and i64 %221, %213, !mcsema_real_eip !139
  %223 = lshr i64 %222, 63, !mcsema_real_eip !139
  %224 = and i64 %223, 1, !mcsema_real_eip !139
  %225 = trunc i64 %224 to i1, !mcsema_real_eip !139
  store i1 %225, i1* %OF, !mcsema_real_eip !139
  %226 = trunc i64 %212 to i8, !mcsema_real_eip !139
  %227 = call i8 @llvm.ctpop.i8(i8 %226), !mcsema_real_eip !139
  %228 = trunc i8 %227 to i1, !mcsema_real_eip !139
  %229 = xor i1 %228, true, !mcsema_real_eip !139
  store i1 %229, i1* %PF, !mcsema_real_eip !139
  %230 = icmp ult i64 %212, %RSP_val.228, !mcsema_real_eip !139
  store i1 %230, i1* %CF, !mcsema_real_eip !139
  store i64 %212, i64* %XSP, !mcsema_real_eip !139
  %231 = inttoptr i64 %212 to i64*, !mcsema_real_eip !140
  %232 = load i64, i64* %231, !mcsema_real_eip !140
  store i64 %232, i64* %XBP, !mcsema_real_eip !140
  %233 = add i64 %212, 8, !mcsema_real_eip !140
  store i64 %233, i64* %XSP, !mcsema_real_eip !140
  %234 = add i64 %233, 8, !mcsema_real_eip !141
  %235 = inttoptr i64 %233 to i64*, !mcsema_real_eip !141
  %236 = load i64, i64* %235, !mcsema_real_eip !141
  store i64 %236, i64* %XIP, !mcsema_real_eip !141
  store i64 %234, i64* %XSP, !mcsema_real_eip !141
  ret void, !mcsema_real_eip !141
}

declare x86_64_sysvcc i64 @malloc(i64 inreg)

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64, i64, i64, i64, i64, i64)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_malloc(i64) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #2

; Function Attrs: naked noinline
declare void @main() #2

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
