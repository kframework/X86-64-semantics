; ModuleID = 'Output/test_26_1.clang.opt.bc'
source_filename = "Output/test_26_1.clang.bc"
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
module asm "  .globl sub_90;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_90(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [4 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x176 = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_0x180 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"\84\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"\E6\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00" }>, align 64

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
define x86_64_sysvcc void @sub_90(%RegState*) #1 {
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
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !2
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !2
  br label %block_0x90, !mcsema_real_eip !2

block_0x90:                                       ; preds = %entry
  %RBP_val.0 = load i64, i64* %XBP, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, !mcsema_real_eip !2
  %1 = sub i64 %RSP_val.1, 8, !mcsema_real_eip !2
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0, i64* %2, !mcsema_real_eip !2
  store i64 %1, i64* %XSP, !mcsema_real_eip !2
  store i64 %1, i64* %XBP, !mcsema_real_eip !3
  %3 = sub i64 %1, 112, !mcsema_real_eip !4
  %4 = xor i64 %3, %1, !mcsema_real_eip !4
  %5 = xor i64 %4, 112, !mcsema_real_eip !4
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
  %15 = icmp ult i64 %1, 112, !mcsema_real_eip !4
  store i1 %15, i1* %CF, !mcsema_real_eip !4
  %16 = xor i64 %1, 112, !mcsema_real_eip !4
  %17 = and i64 %16, %4, !mcsema_real_eip !4
  %18 = lshr i64 %17, 63, !mcsema_real_eip !4
  %19 = trunc i64 %18 to i1, !mcsema_real_eip !4
  store i1 %19, i1* %OF, !mcsema_real_eip !4
  store i64 %3, i64* %XSP, !mcsema_real_eip !4
  store i64 ptrtoint (%0* @data_0x176 to i64), i64* %XDI, !mcsema_real_eip !5
  %20 = add i64 %1, -4, !mcsema_real_eip !6
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !6
  %22 = inttoptr i64 %20 to i32*, !mcsema_real_eip !6
  store i32 0, i32* %22, !mcsema_real_eip !6
  %RBP_val.5 = load i64, i64* %XBP, !mcsema_real_eip !7
  %23 = add i64 %RBP_val.5, -16, !mcsema_real_eip !7
  %24 = inttoptr i64 %23 to i64*, !mcsema_real_eip !7
  %25 = inttoptr i64 %23 to i32*, !mcsema_real_eip !7
  store i32 10, i32* %25, !mcsema_real_eip !7
  %RBP_val.6 = load i64, i64* %XBP, !mcsema_real_eip !8
  %26 = add i64 %RBP_val.6, -12, !mcsema_real_eip !8
  %27 = inttoptr i64 %26 to i64*, !mcsema_real_eip !8
  %28 = inttoptr i64 %26 to i32*, !mcsema_real_eip !8
  store i32 10, i32* %28, !mcsema_real_eip !8
  %RBP_val.7 = load i64, i64* %XBP, !mcsema_real_eip !9
  %29 = add i64 %RBP_val.7, -8, !mcsema_real_eip !9
  %30 = inttoptr i64 %29 to i64*, !mcsema_real_eip !9
  %31 = inttoptr i64 %29 to i32*, !mcsema_real_eip !9
  store i32 10, i32* %31, !mcsema_real_eip !9
  store i64 24, i64* %XAX, !mcsema_real_eip !10
  %EAX.8 = bitcast i64* %XAX to i32*, !mcsema_real_eip !11
  %EAX_val.9 = load i32, i32* %EAX.8, !mcsema_real_eip !11
  %32 = zext i32 %EAX_val.9 to i64, !mcsema_real_eip !11
  store i64 %32, i64* %XCX, !mcsema_real_eip !11
  %RBP_val.10 = load i64, i64* %XBP, !mcsema_real_eip !12
  %33 = add i64 %RBP_val.10, -72, !mcsema_real_eip !12
  %34 = inttoptr i64 %33 to i64*, !mcsema_real_eip !12
  %RDI_val.11 = load i64, i64* %XDI, !mcsema_real_eip !12
  store i64 %RDI_val.11, i64* %34, !mcsema_real_eip !12
  %RCX_val.12 = load i64, i64* %XCX, !mcsema_real_eip !13
  store i64 %RCX_val.12, i64* %XDI, !mcsema_real_eip !13
  %RSP_val.14 = load i64, i64* %XSP, !mcsema_real_eip !14
  %35 = sub i64 %RSP_val.14, 8, !mcsema_real_eip !14
  %36 = inttoptr i64 %35 to i64*, !mcsema_real_eip !14
  store i64 -2415393069852865332, i64* %36, !mcsema_real_eip !14
  store i64 %35, i64* %XSP, !mcsema_real_eip !14
  %37 = call x86_64_sysvcc i64 @_malloc(i64 %RCX_val.12), !mcsema_real_eip !14
  store i64 %37, i64* %XAX, !mcsema_real_eip !14
  %RBP_val.15 = load i64, i64* %XBP, !mcsema_real_eip !15
  %38 = add i64 %RBP_val.15, -24, !mcsema_real_eip !15
  %39 = inttoptr i64 %38 to i64*, !mcsema_real_eip !15
  store i64 %37, i64* %39, !mcsema_real_eip !15
  %RBP_val.17 = load i64, i64* %XBP, !mcsema_real_eip !16
  %40 = add i64 %RBP_val.17, -24, !mcsema_real_eip !16
  %41 = inttoptr i64 %40 to i64*, !mcsema_real_eip !16
  %42 = load i64, i64* %41, !mcsema_real_eip !16
  store i64 %42, i64* %XAX, !mcsema_real_eip !16
  %43 = inttoptr i64 %42 to i64*, !mcsema_real_eip !17
  %44 = inttoptr i64 %42 to i32*, !mcsema_real_eip !17
  store i32 5, i32* %44, !mcsema_real_eip !17
  %RBP_val.19 = load i64, i64* %XBP, !mcsema_real_eip !18
  %45 = add i64 %RBP_val.19, -24, !mcsema_real_eip !18
  %46 = inttoptr i64 %45 to i64*, !mcsema_real_eip !18
  %47 = load i64, i64* %46, !mcsema_real_eip !18
  store i64 %47, i64* %XAX, !mcsema_real_eip !18
  %48 = add i64 %47, 4, !mcsema_real_eip !19
  %49 = inttoptr i64 %48 to i64*, !mcsema_real_eip !19
  %50 = inttoptr i64 %48 to i32*, !mcsema_real_eip !19
  store i32 5, i32* %50, !mcsema_real_eip !19
  %RBP_val.21 = load i64, i64* %XBP, !mcsema_real_eip !20
  %51 = add i64 %RBP_val.21, -24, !mcsema_real_eip !20
  %52 = inttoptr i64 %51 to i64*, !mcsema_real_eip !20
  %53 = load i64, i64* %52, !mcsema_real_eip !20
  store i64 %53, i64* %XAX, !mcsema_real_eip !20
  %54 = add i64 %53, 8, !mcsema_real_eip !21
  %55 = inttoptr i64 %54 to i64*, !mcsema_real_eip !21
  %56 = inttoptr i64 %54 to i32*, !mcsema_real_eip !21
  store i32 5, i32* %56, !mcsema_real_eip !21
  %RBP_val.23 = load i64, i64* %XBP, !mcsema_real_eip !22
  %57 = add i64 %RBP_val.23, -24, !mcsema_real_eip !22
  %58 = inttoptr i64 %57 to i64*, !mcsema_real_eip !22
  %59 = load i64, i64* %58, !mcsema_real_eip !22
  store i64 %59, i64* %XAX, !mcsema_real_eip !22
  %RSP_val.24 = load i64, i64* %XSP, !mcsema_real_eip !23
  store i64 %RSP_val.24, i64* %XCX, !mcsema_real_eip !23
  %60 = add i64 %RSP_val.24, 8, !mcsema_real_eip !24
  %61 = inttoptr i64 %60 to i64*, !mcsema_real_eip !24
  store i64 %59, i64* %61, !mcsema_real_eip !24
  %RBP_val.27 = load i64, i64* %XBP, !mcsema_real_eip !25
  %62 = add i64 %RBP_val.27, -16, !mcsema_real_eip !25
  %63 = inttoptr i64 %62 to i64*, !mcsema_real_eip !25
  store i64 %62, i64* %XAX, !mcsema_real_eip !25
  %RCX_val.28 = load i64, i64* %XCX, !mcsema_real_eip !26
  %64 = inttoptr i64 %RCX_val.28 to i64*, !mcsema_real_eip !26
  store i64 %62, i64* %64, !mcsema_real_eip !26
  store i64 1, i64* %XDX, !mcsema_real_eip !27
  store i64 2, i64* %XSI, !mcsema_real_eip !28
  store i64 3, i64* %R8, !mcsema_real_eip !29
  %EDX.30 = bitcast i64* %XDX to i32*, !mcsema_real_eip !30
  %EDX_val.31 = load i32, i32* %EDX.30, !mcsema_real_eip !30
  %65 = zext i32 %EDX_val.31 to i64, !mcsema_real_eip !30
  store i64 %65, i64* %XDI, !mcsema_real_eip !30
  %RBP_val.32 = load i64, i64* %XBP, !mcsema_real_eip !31
  %66 = add i64 %RBP_val.32, -76, !mcsema_real_eip !31
  %67 = inttoptr i64 %66 to i64*, !mcsema_real_eip !31
  %ESI.33 = bitcast i64* %XSI to i32*, !mcsema_real_eip !31
  %ESI_val.34 = load i32, i32* %ESI.33, !mcsema_real_eip !31
  %68 = inttoptr i64 %66 to i32*, !mcsema_real_eip !31
  store i32 %ESI_val.34, i32* %68, !mcsema_real_eip !31
  %RBP_val.35 = load i64, i64* %XBP, !mcsema_real_eip !32
  %69 = add i64 %RBP_val.35, -80, !mcsema_real_eip !32
  %70 = inttoptr i64 %69 to i64*, !mcsema_real_eip !32
  %EDX_val.37 = load i32, i32* %EDX.30, !mcsema_real_eip !32
  %71 = inttoptr i64 %69 to i32*, !mcsema_real_eip !32
  store i32 %EDX_val.37, i32* %71, !mcsema_real_eip !32
  %R8D.38 = bitcast i64* %R8 to i32*, !mcsema_real_eip !33
  %R8D_val.39 = load i32, i32* %R8D.38, !mcsema_real_eip !33
  %72 = zext i32 %R8D_val.39 to i64, !mcsema_real_eip !33
  store i64 %72, i64* %XDX, !mcsema_real_eip !33
  %RBP_val.40 = load i64, i64* %XBP, !mcsema_real_eip !34
  %73 = add i64 %RBP_val.40, -80, !mcsema_real_eip !34
  %74 = inttoptr i64 %73 to i64*, !mcsema_real_eip !34
  %75 = inttoptr i64 %73 to i32*, !mcsema_real_eip !34
  %76 = load i32, i32* %75, !mcsema_real_eip !34
  %77 = zext i32 %76 to i64, !mcsema_real_eip !34
  store i64 %77, i64* %XCX, !mcsema_real_eip !34
  %78 = add i64 %RBP_val.40, -76, !mcsema_real_eip !35
  %79 = inttoptr i64 %78 to i64*, !mcsema_real_eip !35
  %80 = inttoptr i64 %78 to i32*, !mcsema_real_eip !35
  %81 = load i32, i32* %80, !mcsema_real_eip !35
  %82 = zext i32 %81 to i64, !mcsema_real_eip !35
  store i64 %82, i64* %R9, !mcsema_real_eip !35
  %83 = add i64 %RBP_val.40, -84, !mcsema_real_eip !36
  %84 = inttoptr i64 %83 to i64*, !mcsema_real_eip !36
  %85 = inttoptr i64 %83 to i32*, !mcsema_real_eip !36
  store i32 %R8D_val.39, i32* %85, !mcsema_real_eip !36
  %R9D.45 = bitcast i64* %R9 to i32*, !mcsema_real_eip !37
  %R9D_val.46 = load i32, i32* %R9D.45, !mcsema_real_eip !37
  %86 = zext i32 %R9D_val.46 to i64, !mcsema_real_eip !37
  store i64 %86, i64* %R8, !mcsema_real_eip !37
  %RBP_val.47 = load i64, i64* %XBP, !mcsema_real_eip !38
  %87 = add i64 %RBP_val.47, -84, !mcsema_real_eip !38
  %88 = inttoptr i64 %87 to i64*, !mcsema_real_eip !38
  %89 = inttoptr i64 %87 to i32*, !mcsema_real_eip !38
  %90 = load i32, i32* %89, !mcsema_real_eip !38
  %91 = zext i32 %90 to i64, !mcsema_real_eip !38
  store i64 %91, i64* %R9, !mcsema_real_eip !38
  %RSP_val.48 = load i64, i64* %XSP, !mcsema_real_eip !39
  %92 = sub i64 %RSP_val.48, 8, !mcsema_real_eip !39
  %93 = inttoptr i64 %92 to i64*, !mcsema_real_eip !39
  store i64 -4981261766360305936, i64* %93, !mcsema_real_eip !39
  store i64 %92, i64* %XSP, !mcsema_real_eip !39
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !39
  %RBP_val.49 = load i64, i64* %XBP, !mcsema_real_eip !40
  %94 = add i64 %RBP_val.49, -48, !mcsema_real_eip !40
  %95 = inttoptr i64 %94 to i64*, !mcsema_real_eip !40
  %EDX_val.51 = load i32, i32* %EDX.30, !mcsema_real_eip !40
  %96 = inttoptr i64 %94 to i32*, !mcsema_real_eip !40
  store i32 %EDX_val.51, i32* %96, !mcsema_real_eip !40
  %RBP_val.52 = load i64, i64* %XBP, !mcsema_real_eip !41
  %97 = add i64 %RBP_val.52, -56, !mcsema_real_eip !41
  %98 = inttoptr i64 %97 to i64*, !mcsema_real_eip !41
  %RAX_val.53 = load i64, i64* %XAX, !mcsema_real_eip !41
  store i64 %RAX_val.53, i64* %98, !mcsema_real_eip !41
  %RBP_val.54 = load i64, i64* %XBP, !mcsema_real_eip !42
  %99 = add i64 %RBP_val.54, -56, !mcsema_real_eip !42
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !42
  %101 = load i64, i64* %100, !mcsema_real_eip !42
  store i64 %101, i64* %XAX, !mcsema_real_eip !42
  %102 = add i64 %RBP_val.54, -40, !mcsema_real_eip !43
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !43
  store i64 %101, i64* %103, !mcsema_real_eip !43
  %RBP_val.57 = load i64, i64* %XBP, !mcsema_real_eip !44
  %104 = add i64 %RBP_val.57, -48, !mcsema_real_eip !44
  %105 = inttoptr i64 %104 to i64*, !mcsema_real_eip !44
  %106 = inttoptr i64 %104 to i32*, !mcsema_real_eip !44
  %107 = load i32, i32* %106, !mcsema_real_eip !44
  %108 = zext i32 %107 to i64, !mcsema_real_eip !44
  store i64 %108, i64* %XCX, !mcsema_real_eip !44
  %109 = add i64 %RBP_val.57, -32, !mcsema_real_eip !45
  %110 = inttoptr i64 %109 to i64*, !mcsema_real_eip !45
  %ECX.59 = bitcast i64* %XCX to i32*, !mcsema_real_eip !45
  %ECX_val.60 = load i32, i32* %ECX.59, !mcsema_real_eip !45
  %111 = inttoptr i64 %109 to i32*, !mcsema_real_eip !45
  store i32 %ECX_val.60, i32* %111, !mcsema_real_eip !45
  %RBP_val.61 = load i64, i64* %XBP, !mcsema_real_eip !46
  %112 = add i64 %RBP_val.61, -40, !mcsema_real_eip !46
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !46
  %114 = inttoptr i64 %112 to i32*, !mcsema_real_eip !46
  %115 = load i32, i32* %114, !mcsema_real_eip !46
  %116 = zext i32 %115 to i64, !mcsema_real_eip !46
  store i64 %116, i64* %XCX, !mcsema_real_eip !46
  %117 = add i64 %RBP_val.61, -36, !mcsema_real_eip !47
  %118 = inttoptr i64 %117 to i64*, !mcsema_real_eip !47
  %119 = inttoptr i64 %117 to i32*, !mcsema_real_eip !47
  %120 = load i32, i32* %119, !mcsema_real_eip !47
  %ECX_val.64 = load i32, i32* %ECX.59, !mcsema_real_eip !47
  %121 = add i32 %ECX_val.64, %120, !mcsema_real_eip !47
  %122 = xor i32 %121, %120, !mcsema_real_eip !47
  %123 = xor i32 %122, %ECX_val.64, !mcsema_real_eip !47
  %124 = and i32 %123, 16, !mcsema_real_eip !47
  %125 = icmp ne i32 %124, 0, !mcsema_real_eip !47
  store i1 %125, i1* %AF, !mcsema_real_eip !47
  %126 = lshr i32 %121, 31, !mcsema_real_eip !47
  %127 = trunc i32 %126 to i1, !mcsema_real_eip !47
  store i1 %127, i1* %SF, !mcsema_real_eip !47
  %128 = icmp eq i32 %121, 0, !mcsema_real_eip !47
  store i1 %128, i1* %ZF, !mcsema_real_eip !47
  %129 = xor i32 %120, %ECX_val.64, !mcsema_real_eip !47
  %130 = xor i32 %129, -1, !mcsema_real_eip !47
  %131 = and i32 %130, %122, !mcsema_real_eip !47
  %132 = lshr i32 %131, 31, !mcsema_real_eip !47
  %133 = and i32 %132, 1, !mcsema_real_eip !47
  %134 = trunc i32 %133 to i1, !mcsema_real_eip !47
  store i1 %134, i1* %OF, !mcsema_real_eip !47
  %135 = trunc i32 %121 to i8, !mcsema_real_eip !47
  %136 = call i8 @llvm.ctpop.i8(i8 %135), !mcsema_real_eip !47
  %137 = trunc i8 %136 to i1, !mcsema_real_eip !47
  %138 = xor i1 %137, true, !mcsema_real_eip !47
  store i1 %138, i1* %PF, !mcsema_real_eip !47
  %139 = icmp ult i32 %121, %120, !mcsema_real_eip !47
  store i1 %139, i1* %CF, !mcsema_real_eip !47
  %140 = zext i32 %121 to i64, !mcsema_real_eip !47
  store i64 %140, i64* %XCX, !mcsema_real_eip !47
  %141 = add i64 %RBP_val.61, -32, !mcsema_real_eip !48
  %142 = inttoptr i64 %141 to i64*, !mcsema_real_eip !48
  %143 = inttoptr i64 %141 to i32*, !mcsema_real_eip !48
  %144 = load i32, i32* %143, !mcsema_real_eip !48
  %ECX_val.67 = load i32, i32* %ECX.59, !mcsema_real_eip !48
  %145 = add i32 %ECX_val.67, %144, !mcsema_real_eip !48
  %146 = xor i32 %145, %144, !mcsema_real_eip !48
  %147 = xor i32 %146, %ECX_val.67, !mcsema_real_eip !48
  %148 = and i32 %147, 16, !mcsema_real_eip !48
  %149 = icmp ne i32 %148, 0, !mcsema_real_eip !48
  store i1 %149, i1* %AF, !mcsema_real_eip !48
  %150 = lshr i32 %145, 31, !mcsema_real_eip !48
  %151 = trunc i32 %150 to i1, !mcsema_real_eip !48
  store i1 %151, i1* %SF, !mcsema_real_eip !48
  %152 = icmp eq i32 %145, 0, !mcsema_real_eip !48
  store i1 %152, i1* %ZF, !mcsema_real_eip !48
  %153 = xor i32 %144, %ECX_val.67, !mcsema_real_eip !48
  %154 = xor i32 %153, -1, !mcsema_real_eip !48
  %155 = and i32 %154, %146, !mcsema_real_eip !48
  %156 = lshr i32 %155, 31, !mcsema_real_eip !48
  %157 = and i32 %156, 1, !mcsema_real_eip !48
  %158 = trunc i32 %157 to i1, !mcsema_real_eip !48
  store i1 %158, i1* %OF, !mcsema_real_eip !48
  %159 = trunc i32 %145 to i8, !mcsema_real_eip !48
  %160 = call i8 @llvm.ctpop.i8(i8 %159), !mcsema_real_eip !48
  %161 = trunc i8 %160 to i1, !mcsema_real_eip !48
  %162 = xor i1 %161, true, !mcsema_real_eip !48
  store i1 %162, i1* %PF, !mcsema_real_eip !48
  %163 = icmp ult i32 %145, %144, !mcsema_real_eip !48
  store i1 %163, i1* %CF, !mcsema_real_eip !48
  %164 = zext i32 %145 to i64, !mcsema_real_eip !48
  store i64 %164, i64* %XCX, !mcsema_real_eip !48
  %165 = add i64 %RBP_val.61, -60, !mcsema_real_eip !49
  %166 = inttoptr i64 %165 to i64*, !mcsema_real_eip !49
  %ECX_val.70 = load i32, i32* %ECX.59, !mcsema_real_eip !49
  %167 = inttoptr i64 %165 to i32*, !mcsema_real_eip !49
  store i32 %ECX_val.70, i32* %167, !mcsema_real_eip !49
  %RBP_val.71 = load i64, i64* %XBP, !mcsema_real_eip !50
  %168 = add i64 %RBP_val.71, -60, !mcsema_real_eip !50
  %169 = inttoptr i64 %168 to i64*, !mcsema_real_eip !50
  %170 = inttoptr i64 %168 to i32*, !mcsema_real_eip !50
  %171 = load i32, i32* %170, !mcsema_real_eip !50
  %172 = zext i32 %171 to i64, !mcsema_real_eip !50
  store i64 %172, i64* %XSI, !mcsema_real_eip !50
  %173 = add i64 %RBP_val.71, -72, !mcsema_real_eip !51
  %174 = inttoptr i64 %173 to i64*, !mcsema_real_eip !51
  %175 = load i64, i64* %174, !mcsema_real_eip !51
  store i64 %175, i64* %XDI, !mcsema_real_eip !51
  %AL.73 = bitcast i64* %XAX to i8*, !mcsema_real_eip !52
  store i8 0, i8* %AL.73, !mcsema_real_eip !52
  %RDX_val.76 = load i64, i64* %XDX, !mcsema_real_eip !53
  %RCX_val.77 = load i64, i64* %XCX, !mcsema_real_eip !53
  %R8_val.78 = load i64, i64* %R8, !mcsema_real_eip !53
  %R9_val.79 = load i64, i64* %R9, !mcsema_real_eip !53
  %RSP_val.80 = load i64, i64* %XSP, !mcsema_real_eip !53
  %176 = inttoptr i64 %RSP_val.80 to i64*, !mcsema_real_eip !53
  %177 = load i64, i64* %176, !mcsema_real_eip !53
  %178 = add i64 %RSP_val.80, 8, !mcsema_real_eip !53
  %179 = inttoptr i64 %178 to i64*, !mcsema_real_eip !53
  %180 = load i64, i64* %179, !mcsema_real_eip !53
  %181 = add i64 %178, 8, !mcsema_real_eip !53
  %182 = inttoptr i64 %181 to i64*, !mcsema_real_eip !53
  %183 = load i64, i64* %182, !mcsema_real_eip !53
  %184 = add i64 %181, 8, !mcsema_real_eip !53
  %185 = inttoptr i64 %184 to i64*, !mcsema_real_eip !53
  %186 = load i64, i64* %185, !mcsema_real_eip !53
  %187 = add i64 %184, 8, !mcsema_real_eip !53
  %188 = inttoptr i64 %187 to i64*, !mcsema_real_eip !53
  %189 = load i64, i64* %188, !mcsema_real_eip !53
  %190 = add i64 %187, 8, !mcsema_real_eip !53
  %191 = inttoptr i64 %190 to i64*, !mcsema_real_eip !53
  %192 = load i64, i64* %191, !mcsema_real_eip !53
  %193 = sub i64 %RSP_val.80, 8, !mcsema_real_eip !53
  %194 = inttoptr i64 %193 to i64*, !mcsema_real_eip !53
  store i64 -2415393069852865332, i64* %194, !mcsema_real_eip !53
  store i64 %193, i64* %XSP, !mcsema_real_eip !53
  %195 = call x86_64_sysvcc i64 @_printf(i64 %175, i64 %172, i64 %RDX_val.76, i64 %RCX_val.77, i64 %R8_val.78, i64 %R9_val.79, i64 %177, i64 %180, i64 %183, i64 %186, i64 %189, i64 %192), !mcsema_real_eip !53
  store i64 %195, i64* %XAX, !mcsema_real_eip !53
  %RBP_val.82 = load i64, i64* %XBP, !mcsema_real_eip !54
  %196 = add i64 %RBP_val.82, -60, !mcsema_real_eip !54
  %197 = inttoptr i64 %196 to i64*, !mcsema_real_eip !54
  %198 = inttoptr i64 %196 to i32*, !mcsema_real_eip !54
  %199 = load i32, i32* %198, !mcsema_real_eip !54
  %200 = zext i32 %199 to i64, !mcsema_real_eip !54
  store i64 %200, i64* %XCX, !mcsema_real_eip !54
  %201 = add i64 %RBP_val.82, -88, !mcsema_real_eip !55
  %202 = inttoptr i64 %201 to i64*, !mcsema_real_eip !55
  %EAX_val.85 = load i32, i32* %EAX.8, !mcsema_real_eip !55
  %203 = inttoptr i64 %201 to i32*, !mcsema_real_eip !55
  store i32 %EAX_val.85, i32* %203, !mcsema_real_eip !55
  %ECX_val.87 = load i32, i32* %ECX.59, !mcsema_real_eip !56
  %204 = zext i32 %ECX_val.87 to i64, !mcsema_real_eip !56
  store i64 %204, i64* %XAX, !mcsema_real_eip !56
  %RSP_val.88 = load i64, i64* %XSP, !mcsema_real_eip !57
  %205 = add i64 112, %RSP_val.88, !mcsema_real_eip !57
  %206 = xor i64 %205, %RSP_val.88, !mcsema_real_eip !57
  %207 = xor i64 %206, 112, !mcsema_real_eip !57
  %208 = and i64 %207, 16, !mcsema_real_eip !57
  %209 = icmp ne i64 %208, 0, !mcsema_real_eip !57
  store i1 %209, i1* %AF, !mcsema_real_eip !57
  %210 = lshr i64 %205, 63, !mcsema_real_eip !57
  %211 = trunc i64 %210 to i1, !mcsema_real_eip !57
  store i1 %211, i1* %SF, !mcsema_real_eip !57
  %212 = icmp eq i64 %205, 0, !mcsema_real_eip !57
  store i1 %212, i1* %ZF, !mcsema_real_eip !57
  %213 = xor i64 %RSP_val.88, 112, !mcsema_real_eip !57
  %214 = xor i64 %213, -1, !mcsema_real_eip !57
  %215 = and i64 %214, %206, !mcsema_real_eip !57
  %216 = lshr i64 %215, 63, !mcsema_real_eip !57
  %217 = and i64 %216, 1, !mcsema_real_eip !57
  %218 = trunc i64 %217 to i1, !mcsema_real_eip !57
  store i1 %218, i1* %OF, !mcsema_real_eip !57
  %219 = trunc i64 %205 to i8, !mcsema_real_eip !57
  %220 = call i8 @llvm.ctpop.i8(i8 %219), !mcsema_real_eip !57
  %221 = trunc i8 %220 to i1, !mcsema_real_eip !57
  %222 = xor i1 %221, true, !mcsema_real_eip !57
  store i1 %222, i1* %PF, !mcsema_real_eip !57
  %223 = icmp ult i64 %205, %RSP_val.88, !mcsema_real_eip !57
  store i1 %223, i1* %CF, !mcsema_real_eip !57
  store i64 %205, i64* %XSP, !mcsema_real_eip !57
  %224 = inttoptr i64 %205 to i64*, !mcsema_real_eip !58
  %225 = load i64, i64* %224, !mcsema_real_eip !58
  store i64 %225, i64* %XBP, !mcsema_real_eip !58
  %226 = add i64 %205, 8, !mcsema_real_eip !58
  store i64 %226, i64* %XSP, !mcsema_real_eip !58
  %227 = add i64 %226, 8, !mcsema_real_eip !59
  %228 = inttoptr i64 %226 to i64*, !mcsema_real_eip !59
  %229 = load i64, i64* %228, !mcsema_real_eip !59
  store i64 %229, i64* %XIP, !mcsema_real_eip !59
  store i64 %227, i64* %XSP, !mcsema_real_eip !59
  ret void, !mcsema_real_eip !59
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !60
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !60
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !60
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !60
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !60
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !60
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !60
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !60
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !60
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !60
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !60
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !60
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !60
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !60
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !60
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !60
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !60
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !60
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !60
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !60
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !60
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !60
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !60
  br label %block_0x0, !mcsema_real_eip !60

block_0x0:                                        ; preds = %entry
  %RBP_val.91 = load i64, i64* %XBP, !mcsema_real_eip !60
  %RSP_val.92 = load i64, i64* %XSP, !mcsema_real_eip !60
  %1 = sub i64 %RSP_val.92, 8, !mcsema_real_eip !60
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !60
  store i64 %RBP_val.91, i64* %2, !mcsema_real_eip !60
  store i64 %1, i64* %XSP, !mcsema_real_eip !60
  store i64 %1, i64* %XBP, !mcsema_real_eip !61
  %3 = add i64 %1, 24, !mcsema_real_eip !62
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !62
  %5 = load i64, i64* %4, !mcsema_real_eip !62
  store i64 %5, i64* %XAX, !mcsema_real_eip !62
  %6 = add i64 %1, 16, !mcsema_real_eip !63
  %7 = inttoptr i64 %6 to i64*, !mcsema_real_eip !63
  %8 = load i64, i64* %7, !mcsema_real_eip !63
  store i64 %8, i64* %R10, !mcsema_real_eip !63
  %9 = add i64 %1, -20, !mcsema_real_eip !64
  %10 = inttoptr i64 %9 to i64*, !mcsema_real_eip !64
  %EDI.97 = bitcast i64* %XDI to i32*, !mcsema_real_eip !64
  %EDI_val.98 = load i32, i32* %EDI.97, !mcsema_real_eip !64
  %11 = inttoptr i64 %9 to i32*, !mcsema_real_eip !64
  store i32 %EDI_val.98, i32* %11, !mcsema_real_eip !64
  %RBP_val.99 = load i64, i64* %XBP, !mcsema_real_eip !65
  %12 = add i64 %RBP_val.99, -24, !mcsema_real_eip !65
  %13 = inttoptr i64 %12 to i64*, !mcsema_real_eip !65
  %ESI.100 = bitcast i64* %XSI to i32*, !mcsema_real_eip !65
  %ESI_val.101 = load i32, i32* %ESI.100, !mcsema_real_eip !65
  %14 = inttoptr i64 %12 to i32*, !mcsema_real_eip !65
  store i32 %ESI_val.101, i32* %14, !mcsema_real_eip !65
  %RBP_val.102 = load i64, i64* %XBP, !mcsema_real_eip !66
  %15 = add i64 %RBP_val.102, -28, !mcsema_real_eip !66
  %16 = inttoptr i64 %15 to i64*, !mcsema_real_eip !66
  %EDX.103 = bitcast i64* %XDX to i32*, !mcsema_real_eip !66
  %EDX_val.104 = load i32, i32* %EDX.103, !mcsema_real_eip !66
  %17 = inttoptr i64 %15 to i32*, !mcsema_real_eip !66
  store i32 %EDX_val.104, i32* %17, !mcsema_real_eip !66
  %RBP_val.105 = load i64, i64* %XBP, !mcsema_real_eip !67
  %18 = add i64 %RBP_val.105, -32, !mcsema_real_eip !67
  %19 = inttoptr i64 %18 to i64*, !mcsema_real_eip !67
  %ECX.106 = bitcast i64* %XCX to i32*, !mcsema_real_eip !67
  %ECX_val.107 = load i32, i32* %ECX.106, !mcsema_real_eip !67
  %20 = inttoptr i64 %18 to i32*, !mcsema_real_eip !67
  store i32 %ECX_val.107, i32* %20, !mcsema_real_eip !67
  %RBP_val.108 = load i64, i64* %XBP, !mcsema_real_eip !68
  %21 = add i64 %RBP_val.108, -36, !mcsema_real_eip !68
  %22 = inttoptr i64 %21 to i64*, !mcsema_real_eip !68
  %R8D.109 = bitcast i64* %R8 to i32*, !mcsema_real_eip !68
  %R8D_val.110 = load i32, i32* %R8D.109, !mcsema_real_eip !68
  %23 = inttoptr i64 %21 to i32*, !mcsema_real_eip !68
  store i32 %R8D_val.110, i32* %23, !mcsema_real_eip !68
  %RBP_val.111 = load i64, i64* %XBP, !mcsema_real_eip !69
  %24 = add i64 %RBP_val.111, -40, !mcsema_real_eip !69
  %25 = inttoptr i64 %24 to i64*, !mcsema_real_eip !69
  %R9D.112 = bitcast i64* %R9 to i32*, !mcsema_real_eip !69
  %R9D_val.113 = load i32, i32* %R9D.112, !mcsema_real_eip !69
  %26 = inttoptr i64 %24 to i32*, !mcsema_real_eip !69
  store i32 %R9D_val.113, i32* %26, !mcsema_real_eip !69
  %RBP_val.114 = load i64, i64* %XBP, !mcsema_real_eip !70
  %27 = add i64 %RBP_val.114, -48, !mcsema_real_eip !70
  %28 = inttoptr i64 %27 to i64*, !mcsema_real_eip !70
  %R10_val.115 = load i64, i64* %R10, !mcsema_real_eip !70
  store i64 %R10_val.115, i64* %28, !mcsema_real_eip !70
  %RBP_val.116 = load i64, i64* %XBP, !mcsema_real_eip !71
  %29 = add i64 %RBP_val.116, -56, !mcsema_real_eip !71
  %30 = inttoptr i64 %29 to i64*, !mcsema_real_eip !71
  %RAX_val.117 = load i64, i64* %XAX, !mcsema_real_eip !71
  store i64 %RAX_val.117, i64* %30, !mcsema_real_eip !71
  %RBP_val.118 = load i64, i64* %XBP, !mcsema_real_eip !72
  %31 = add i64 %RBP_val.118, -48, !mcsema_real_eip !72
  %32 = inttoptr i64 %31 to i64*, !mcsema_real_eip !72
  %33 = load i64, i64* %32, !mcsema_real_eip !72
  store i64 %33, i64* %XAX, !mcsema_real_eip !72
  %34 = inttoptr i64 %33 to i64*, !mcsema_real_eip !73
  %35 = inttoptr i64 %33 to i32*, !mcsema_real_eip !73
  %36 = load i32, i32* %35, !mcsema_real_eip !73
  %37 = zext i32 %36 to i64, !mcsema_real_eip !73
  store i64 %37, i64* %XCX, !mcsema_real_eip !73
  %38 = add i64 %RBP_val.118, -56, !mcsema_real_eip !74
  %39 = inttoptr i64 %38 to i64*, !mcsema_real_eip !74
  %40 = load i64, i64* %39, !mcsema_real_eip !74
  store i64 %40, i64* %XAX, !mcsema_real_eip !74
  %41 = inttoptr i64 %40 to i64*, !mcsema_real_eip !75
  %42 = inttoptr i64 %40 to i32*, !mcsema_real_eip !75
  %43 = load i32, i32* %42, !mcsema_real_eip !75
  %44 = zext i32 %43 to i64, !mcsema_real_eip !75
  store i64 %44, i64* %XDX, !mcsema_real_eip !75
  %ECX_val.123 = load i32, i32* %ECX.106, !mcsema_real_eip !76
  %EDX_val.125 = load i32, i32* %EDX.103, !mcsema_real_eip !76
  %45 = add i32 %EDX_val.125, %ECX_val.123, !mcsema_real_eip !76
  %46 = xor i32 %45, %ECX_val.123, !mcsema_real_eip !76
  %47 = xor i32 %46, %EDX_val.125, !mcsema_real_eip !76
  %48 = and i32 %47, 16, !mcsema_real_eip !76
  %49 = icmp ne i32 %48, 0, !mcsema_real_eip !76
  store i1 %49, i1* %AF, !mcsema_real_eip !76
  %50 = lshr i32 %45, 31, !mcsema_real_eip !76
  %51 = trunc i32 %50 to i1, !mcsema_real_eip !76
  store i1 %51, i1* %SF, !mcsema_real_eip !76
  %52 = icmp eq i32 %45, 0, !mcsema_real_eip !76
  store i1 %52, i1* %ZF, !mcsema_real_eip !76
  %53 = xor i32 %ECX_val.123, %EDX_val.125, !mcsema_real_eip !76
  %54 = xor i32 %53, -1, !mcsema_real_eip !76
  %55 = and i32 %54, %46, !mcsema_real_eip !76
  %56 = lshr i32 %55, 31, !mcsema_real_eip !76
  %57 = and i32 %56, 1, !mcsema_real_eip !76
  %58 = trunc i32 %57 to i1, !mcsema_real_eip !76
  store i1 %58, i1* %OF, !mcsema_real_eip !76
  %59 = trunc i32 %45 to i8, !mcsema_real_eip !76
  %60 = call i8 @llvm.ctpop.i8(i8 %59), !mcsema_real_eip !76
  %61 = trunc i8 %60 to i1, !mcsema_real_eip !76
  %62 = xor i1 %61, true, !mcsema_real_eip !76
  store i1 %62, i1* %PF, !mcsema_real_eip !76
  %63 = icmp ult i32 %45, %ECX_val.123, !mcsema_real_eip !76
  store i1 %63, i1* %CF, !mcsema_real_eip !76
  %64 = zext i32 %45 to i64, !mcsema_real_eip !76
  store i64 %64, i64* %XCX, !mcsema_real_eip !76
  %65 = add i64 %RBP_val.118, -72, !mcsema_real_eip !77
  %66 = inttoptr i64 %65 to i64*, !mcsema_real_eip !77
  %ECX_val.128 = load i32, i32* %ECX.106, !mcsema_real_eip !77
  %67 = inttoptr i64 %65 to i32*, !mcsema_real_eip !77
  store i32 %ECX_val.128, i32* %67, !mcsema_real_eip !77
  %RBP_val.129 = load i64, i64* %XBP, !mcsema_real_eip !78
  %68 = add i64 %RBP_val.129, -48, !mcsema_real_eip !78
  %69 = inttoptr i64 %68 to i64*, !mcsema_real_eip !78
  %70 = load i64, i64* %69, !mcsema_real_eip !78
  store i64 %70, i64* %XAX, !mcsema_real_eip !78
  %71 = add i64 %70, 4, !mcsema_real_eip !79
  %72 = inttoptr i64 %71 to i64*, !mcsema_real_eip !79
  %73 = inttoptr i64 %71 to i32*, !mcsema_real_eip !79
  %74 = load i32, i32* %73, !mcsema_real_eip !79
  %75 = zext i32 %74 to i64, !mcsema_real_eip !79
  store i64 %75, i64* %XCX, !mcsema_real_eip !79
  %76 = add i64 %RBP_val.129, -56, !mcsema_real_eip !80
  %77 = inttoptr i64 %76 to i64*, !mcsema_real_eip !80
  %78 = load i64, i64* %77, !mcsema_real_eip !80
  store i64 %78, i64* %XAX, !mcsema_real_eip !80
  %79 = add i64 %78, 4, !mcsema_real_eip !81
  %80 = inttoptr i64 %79 to i64*, !mcsema_real_eip !81
  %81 = inttoptr i64 %79 to i32*, !mcsema_real_eip !81
  %82 = load i32, i32* %81, !mcsema_real_eip !81
  %83 = zext i32 %82 to i64, !mcsema_real_eip !81
  store i64 %83, i64* %XDX, !mcsema_real_eip !81
  %ECX_val.134 = load i32, i32* %ECX.106, !mcsema_real_eip !82
  %EDX_val.136 = load i32, i32* %EDX.103, !mcsema_real_eip !82
  %84 = add i32 %EDX_val.136, %ECX_val.134, !mcsema_real_eip !82
  %85 = xor i32 %84, %ECX_val.134, !mcsema_real_eip !82
  %86 = xor i32 %85, %EDX_val.136, !mcsema_real_eip !82
  %87 = and i32 %86, 16, !mcsema_real_eip !82
  %88 = icmp ne i32 %87, 0, !mcsema_real_eip !82
  store i1 %88, i1* %AF, !mcsema_real_eip !82
  %89 = lshr i32 %84, 31, !mcsema_real_eip !82
  %90 = trunc i32 %89 to i1, !mcsema_real_eip !82
  store i1 %90, i1* %SF, !mcsema_real_eip !82
  %91 = icmp eq i32 %84, 0, !mcsema_real_eip !82
  store i1 %91, i1* %ZF, !mcsema_real_eip !82
  %92 = xor i32 %ECX_val.134, %EDX_val.136, !mcsema_real_eip !82
  %93 = xor i32 %92, -1, !mcsema_real_eip !82
  %94 = and i32 %93, %85, !mcsema_real_eip !82
  %95 = lshr i32 %94, 31, !mcsema_real_eip !82
  %96 = and i32 %95, 1, !mcsema_real_eip !82
  %97 = trunc i32 %96 to i1, !mcsema_real_eip !82
  store i1 %97, i1* %OF, !mcsema_real_eip !82
  %98 = trunc i32 %84 to i8, !mcsema_real_eip !82
  %99 = call i8 @llvm.ctpop.i8(i8 %98), !mcsema_real_eip !82
  %100 = trunc i8 %99 to i1, !mcsema_real_eip !82
  %101 = xor i1 %100, true, !mcsema_real_eip !82
  store i1 %101, i1* %PF, !mcsema_real_eip !82
  %102 = icmp ult i32 %84, %ECX_val.134, !mcsema_real_eip !82
  store i1 %102, i1* %CF, !mcsema_real_eip !82
  %103 = zext i32 %84 to i64, !mcsema_real_eip !82
  store i64 %103, i64* %XCX, !mcsema_real_eip !82
  %104 = add i64 %RBP_val.129, -68, !mcsema_real_eip !83
  %105 = inttoptr i64 %104 to i64*, !mcsema_real_eip !83
  %ECX_val.139 = load i32, i32* %ECX.106, !mcsema_real_eip !83
  %106 = inttoptr i64 %104 to i32*, !mcsema_real_eip !83
  store i32 %ECX_val.139, i32* %106, !mcsema_real_eip !83
  %RBP_val.140 = load i64, i64* %XBP, !mcsema_real_eip !84
  %107 = add i64 %RBP_val.140, -48, !mcsema_real_eip !84
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !84
  %109 = load i64, i64* %108, !mcsema_real_eip !84
  store i64 %109, i64* %XAX, !mcsema_real_eip !84
  %110 = add i64 %109, 8, !mcsema_real_eip !85
  %111 = inttoptr i64 %110 to i64*, !mcsema_real_eip !85
  %112 = inttoptr i64 %110 to i32*, !mcsema_real_eip !85
  %113 = load i32, i32* %112, !mcsema_real_eip !85
  %114 = zext i32 %113 to i64, !mcsema_real_eip !85
  store i64 %114, i64* %XCX, !mcsema_real_eip !85
  %115 = add i64 %RBP_val.140, -56, !mcsema_real_eip !86
  %116 = inttoptr i64 %115 to i64*, !mcsema_real_eip !86
  %117 = load i64, i64* %116, !mcsema_real_eip !86
  store i64 %117, i64* %XAX, !mcsema_real_eip !86
  %118 = add i64 %117, 8, !mcsema_real_eip !87
  %119 = inttoptr i64 %118 to i64*, !mcsema_real_eip !87
  %120 = inttoptr i64 %118 to i32*, !mcsema_real_eip !87
  %121 = load i32, i32* %120, !mcsema_real_eip !87
  %122 = zext i32 %121 to i64, !mcsema_real_eip !87
  store i64 %122, i64* %XDX, !mcsema_real_eip !87
  %ECX_val.145 = load i32, i32* %ECX.106, !mcsema_real_eip !88
  %EDX_val.147 = load i32, i32* %EDX.103, !mcsema_real_eip !88
  %123 = add i32 %EDX_val.147, %ECX_val.145, !mcsema_real_eip !88
  %124 = xor i32 %123, %ECX_val.145, !mcsema_real_eip !88
  %125 = xor i32 %124, %EDX_val.147, !mcsema_real_eip !88
  %126 = and i32 %125, 16, !mcsema_real_eip !88
  %127 = icmp ne i32 %126, 0, !mcsema_real_eip !88
  store i1 %127, i1* %AF, !mcsema_real_eip !88
  %128 = lshr i32 %123, 31, !mcsema_real_eip !88
  %129 = trunc i32 %128 to i1, !mcsema_real_eip !88
  store i1 %129, i1* %SF, !mcsema_real_eip !88
  %130 = icmp eq i32 %123, 0, !mcsema_real_eip !88
  store i1 %130, i1* %ZF, !mcsema_real_eip !88
  %131 = xor i32 %ECX_val.145, %EDX_val.147, !mcsema_real_eip !88
  %132 = xor i32 %131, -1, !mcsema_real_eip !88
  %133 = and i32 %132, %124, !mcsema_real_eip !88
  %134 = lshr i32 %133, 31, !mcsema_real_eip !88
  %135 = and i32 %134, 1, !mcsema_real_eip !88
  %136 = trunc i32 %135 to i1, !mcsema_real_eip !88
  store i1 %136, i1* %OF, !mcsema_real_eip !88
  %137 = trunc i32 %123 to i8, !mcsema_real_eip !88
  %138 = call i8 @llvm.ctpop.i8(i8 %137), !mcsema_real_eip !88
  %139 = trunc i8 %138 to i1, !mcsema_real_eip !88
  %140 = xor i1 %139, true, !mcsema_real_eip !88
  store i1 %140, i1* %PF, !mcsema_real_eip !88
  %141 = icmp ult i32 %123, %ECX_val.145, !mcsema_real_eip !88
  store i1 %141, i1* %CF, !mcsema_real_eip !88
  %142 = zext i32 %123 to i64, !mcsema_real_eip !88
  store i64 %142, i64* %XCX, !mcsema_real_eip !88
  %143 = add i64 %RBP_val.140, -64, !mcsema_real_eip !89
  %144 = inttoptr i64 %143 to i64*, !mcsema_real_eip !89
  %ECX_val.150 = load i32, i32* %ECX.106, !mcsema_real_eip !89
  %145 = inttoptr i64 %143 to i32*, !mcsema_real_eip !89
  store i32 %ECX_val.150, i32* %145, !mcsema_real_eip !89
  %RBP_val.151 = load i64, i64* %XBP, !mcsema_real_eip !90
  %146 = add i64 %RBP_val.151, -64, !mcsema_real_eip !90
  %147 = inttoptr i64 %146 to i64*, !mcsema_real_eip !90
  %148 = inttoptr i64 %146 to i32*, !mcsema_real_eip !90
  %149 = load i32, i32* %148, !mcsema_real_eip !90
  %150 = zext i32 %149 to i64, !mcsema_real_eip !90
  store i64 %150, i64* %XCX, !mcsema_real_eip !90
  %151 = add i64 %RBP_val.151, -8, !mcsema_real_eip !91
  %152 = inttoptr i64 %151 to i64*, !mcsema_real_eip !91
  %ECX_val.154 = load i32, i32* %ECX.106, !mcsema_real_eip !91
  %153 = inttoptr i64 %151 to i32*, !mcsema_real_eip !91
  store i32 %ECX_val.154, i32* %153, !mcsema_real_eip !91
  %RBP_val.155 = load i64, i64* %XBP, !mcsema_real_eip !92
  %154 = add i64 %RBP_val.155, -72, !mcsema_real_eip !92
  %155 = inttoptr i64 %154 to i64*, !mcsema_real_eip !92
  %156 = load i64, i64* %155, !mcsema_real_eip !92
  store i64 %156, i64* %XAX, !mcsema_real_eip !92
  %157 = add i64 %RBP_val.155, -16, !mcsema_real_eip !93
  %158 = inttoptr i64 %157 to i64*, !mcsema_real_eip !93
  store i64 %156, i64* %158, !mcsema_real_eip !93
  %RBP_val.158 = load i64, i64* %XBP, !mcsema_real_eip !94
  %159 = add i64 %RBP_val.158, -8, !mcsema_real_eip !94
  %160 = inttoptr i64 %159 to i64*, !mcsema_real_eip !94
  %161 = inttoptr i64 %159 to i32*, !mcsema_real_eip !94
  %162 = load i32, i32* %161, !mcsema_real_eip !94
  %163 = zext i32 %162 to i64, !mcsema_real_eip !94
  store i64 %163, i64* %XCX, !mcsema_real_eip !94
  %164 = add i64 %RBP_val.158, -80, !mcsema_real_eip !95
  %165 = inttoptr i64 %164 to i64*, !mcsema_real_eip !95
  %ECX_val.161 = load i32, i32* %ECX.106, !mcsema_real_eip !95
  %166 = inttoptr i64 %164 to i32*, !mcsema_real_eip !95
  store i32 %ECX_val.161, i32* %166, !mcsema_real_eip !95
  %RBP_val.162 = load i64, i64* %XBP, !mcsema_real_eip !96
  %167 = add i64 %RBP_val.162, -16, !mcsema_real_eip !96
  %168 = inttoptr i64 %167 to i64*, !mcsema_real_eip !96
  %169 = load i64, i64* %168, !mcsema_real_eip !96
  store i64 %169, i64* %XAX, !mcsema_real_eip !96
  %170 = add i64 %RBP_val.162, -88, !mcsema_real_eip !97
  %171 = inttoptr i64 %170 to i64*, !mcsema_real_eip !97
  store i64 %169, i64* %171, !mcsema_real_eip !97
  %RBP_val.165 = load i64, i64* %XBP, !mcsema_real_eip !98
  %172 = add i64 %RBP_val.165, -88, !mcsema_real_eip !98
  %173 = inttoptr i64 %172 to i64*, !mcsema_real_eip !98
  %174 = load i64, i64* %173, !mcsema_real_eip !98
  store i64 %174, i64* %XAX, !mcsema_real_eip !98
  %175 = add i64 %RBP_val.165, -80, !mcsema_real_eip !99
  %176 = inttoptr i64 %175 to i64*, !mcsema_real_eip !99
  %177 = inttoptr i64 %175 to i32*, !mcsema_real_eip !99
  %178 = load i32, i32* %177, !mcsema_real_eip !99
  %179 = zext i32 %178 to i64, !mcsema_real_eip !99
  store i64 %179, i64* %XDX, !mcsema_real_eip !99
  %RSP_val.167 = load i64, i64* %XSP, !mcsema_real_eip !100
  %180 = inttoptr i64 %RSP_val.167 to i64*, !mcsema_real_eip !100
  %181 = load i64, i64* %180, !mcsema_real_eip !100
  store i64 %181, i64* %XBP, !mcsema_real_eip !100
  %182 = add i64 %RSP_val.167, 8, !mcsema_real_eip !100
  store i64 %182, i64* %XSP, !mcsema_real_eip !100
  %183 = add i64 %182, 8, !mcsema_real_eip !101
  %184 = inttoptr i64 %182 to i64*, !mcsema_real_eip !101
  %185 = load i64, i64* %184, !mcsema_real_eip !101
  store i64 %185, i64* %XIP, !mcsema_real_eip !101
  store i64 %183, i64* %XSP, !mcsema_real_eip !101
  ret void, !mcsema_real_eip !101
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
!2 = !{i64 144}
!3 = !{i64 145}
!4 = !{i64 148}
!5 = !{i64 152}
!6 = !{i64 162}
!7 = !{i64 169}
!8 = !{i64 176}
!9 = !{i64 183}
!10 = !{i64 190}
!11 = !{i64 195}
!12 = !{i64 197}
!13 = !{i64 201}
!14 = !{i64 204}
!15 = !{i64 209}
!16 = !{i64 213}
!17 = !{i64 217}
!18 = !{i64 223}
!19 = !{i64 227}
!20 = !{i64 234}
!21 = !{i64 238}
!22 = !{i64 245}
!23 = !{i64 249}
!24 = !{i64 252}
!25 = !{i64 256}
!26 = !{i64 260}
!27 = !{i64 263}
!28 = !{i64 268}
!29 = !{i64 273}
!30 = !{i64 279}
!31 = !{i64 281}
!32 = !{i64 284}
!33 = !{i64 287}
!34 = !{i64 290}
!35 = !{i64 293}
!36 = !{i64 297}
!37 = !{i64 301}
!38 = !{i64 304}
!39 = !{i64 308}
!40 = !{i64 313}
!41 = !{i64 316}
!42 = !{i64 320}
!43 = !{i64 324}
!44 = !{i64 328}
!45 = !{i64 331}
!46 = !{i64 334}
!47 = !{i64 337}
!48 = !{i64 340}
!49 = !{i64 343}
!50 = !{i64 346}
!51 = !{i64 349}
!52 = !{i64 353}
!53 = !{i64 355}
!54 = !{i64 360}
!55 = !{i64 363}
!56 = !{i64 366}
!57 = !{i64 368}
!58 = !{i64 372}
!59 = !{i64 373}
!60 = !{i64 0}
!61 = !{i64 1}
!62 = !{i64 4}
!63 = !{i64 8}
!64 = !{i64 12}
!65 = !{i64 15}
!66 = !{i64 18}
!67 = !{i64 21}
!68 = !{i64 24}
!69 = !{i64 28}
!70 = !{i64 32}
!71 = !{i64 36}
!72 = !{i64 40}
!73 = !{i64 44}
!74 = !{i64 46}
!75 = !{i64 50}
!76 = !{i64 52}
!77 = !{i64 54}
!78 = !{i64 57}
!79 = !{i64 61}
!80 = !{i64 64}
!81 = !{i64 68}
!82 = !{i64 71}
!83 = !{i64 73}
!84 = !{i64 76}
!85 = !{i64 80}
!86 = !{i64 83}
!87 = !{i64 87}
!88 = !{i64 90}
!89 = !{i64 92}
!90 = !{i64 95}
!91 = !{i64 98}
!92 = !{i64 101}
!93 = !{i64 105}
!94 = !{i64 109}
!95 = !{i64 112}
!96 = !{i64 115}
!97 = !{i64 119}
!98 = !{i64 123}
!99 = !{i64 127}
!100 = !{i64 130}
!101 = !{i64 131}
