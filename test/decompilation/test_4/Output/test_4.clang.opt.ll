; ModuleID = 'Output/test_4.clang.opt.bc'
source_filename = "Output/test_4.clang.bc"
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
module asm "  .globl memcpy;"
module asm "  .globl _memcpy;"
module asm "  .type _memcpy,@function"
module asm "_memcpy:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq memcpy@plt(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_detach_call;"
module asm "0:"
module asm "  .size _memcpy,0b-_memcpy;"
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
module asm "  .globl sub_a0;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_a0(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [88 x i8] }>
%1 = type <{ [4 x i8] }>
%2 = type <{ [32 x i8], i32, [24 x i8], i32, [24 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x220 = internal constant %0 <{ [88 x i8] c"\0B\00\00\00\0C\00\00\00\0D\00\00\00\0E\00\00\00\0F\00\00\00\10\00\00\00\11\00\00\00\12\00\00\00\13\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00\07\00\00\00\08\00\00\00\09\00\00\00\0A\00\00\00" }>, align 64
@data_0x278 = internal constant %1 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_0x280 = internal constant %2 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"\96\00\00\00\00A\0E\10\86\02C\0D\06A\83\03 \00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"x\01\00\00\00A\0E\10\86\02C\0D\06P\83\07\8C\06\8D\05\8E\04\8F\03" }>, align 64

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
  br label %block_0x0, !mcsema_real_eip !2

block_0x0:                                        ; preds = %entry
  %RBP_val.0 = load i64, i64* %XBP, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, !mcsema_real_eip !2
  %1 = sub i64 %RSP_val.1, 8, !mcsema_real_eip !2
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0, i64* %2, !mcsema_real_eip !2
  store i64 %1, i64* %XSP, !mcsema_real_eip !2
  store i64 %1, i64* %XBP, !mcsema_real_eip !3
  %RBX_val.3 = load i64, i64* %XBX, !mcsema_real_eip !4
  %3 = sub i64 %1, 8, !mcsema_real_eip !4
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !4
  store i64 %RBX_val.3, i64* %4, !mcsema_real_eip !4
  store i64 %3, i64* %XSP, !mcsema_real_eip !4
  %RBP_val.5 = load i64, i64* %XBP, !mcsema_real_eip !5
  %5 = add i64 %RBP_val.5, 40, !mcsema_real_eip !5
  %6 = inttoptr i64 %5 to i64*, !mcsema_real_eip !5
  %7 = load i64, i64* %6, !mcsema_real_eip !5
  store i64 %7, i64* %XAX, !mcsema_real_eip !5
  %8 = add i64 %RBP_val.5, 32, !mcsema_real_eip !6
  %9 = inttoptr i64 %8 to i64*, !mcsema_real_eip !6
  %10 = inttoptr i64 %8 to i32*, !mcsema_real_eip !6
  %11 = load i32, i32* %10, !mcsema_real_eip !6
  %12 = zext i32 %11 to i64, !mcsema_real_eip !6
  store i64 %12, i64* %R10, !mcsema_real_eip !6
  %13 = add i64 %RBP_val.5, 24, !mcsema_real_eip !7
  %14 = inttoptr i64 %13 to i64*, !mcsema_real_eip !7
  %15 = load i64, i64* %14, !mcsema_real_eip !7
  store i64 %15, i64* %R11, !mcsema_real_eip !7
  %16 = add i64 %RBP_val.5, 16, !mcsema_real_eip !8
  %17 = inttoptr i64 %16 to i64*, !mcsema_real_eip !8
  %18 = inttoptr i64 %16 to i32*, !mcsema_real_eip !8
  %19 = load i32, i32* %18, !mcsema_real_eip !8
  %20 = zext i32 %19 to i64, !mcsema_real_eip !8
  store i64 %20, i64* %XBX, !mcsema_real_eip !8
  %21 = add i64 %RBP_val.5, -12, !mcsema_real_eip !9
  %22 = inttoptr i64 %21 to i64*, !mcsema_real_eip !9
  %EDI.10 = bitcast i64* %XDI to i32*, !mcsema_real_eip !9
  %EDI_val.11 = load i32, i32* %EDI.10, !mcsema_real_eip !9
  %23 = inttoptr i64 %21 to i32*, !mcsema_real_eip !9
  store i32 %EDI_val.11, i32* %23, !mcsema_real_eip !9
  %RBP_val.12 = load i64, i64* %XBP, !mcsema_real_eip !10
  %24 = add i64 %RBP_val.12, -16, !mcsema_real_eip !10
  %25 = inttoptr i64 %24 to i64*, !mcsema_real_eip !10
  %ESI.13 = bitcast i64* %XSI to i32*, !mcsema_real_eip !10
  %ESI_val.14 = load i32, i32* %ESI.13, !mcsema_real_eip !10
  %26 = inttoptr i64 %24 to i32*, !mcsema_real_eip !10
  store i32 %ESI_val.14, i32* %26, !mcsema_real_eip !10
  %RBP_val.15 = load i64, i64* %XBP, !mcsema_real_eip !11
  %27 = add i64 %RBP_val.15, -20, !mcsema_real_eip !11
  %28 = inttoptr i64 %27 to i64*, !mcsema_real_eip !11
  %EDX.16 = bitcast i64* %XDX to i32*, !mcsema_real_eip !11
  %EDX_val.17 = load i32, i32* %EDX.16, !mcsema_real_eip !11
  %29 = inttoptr i64 %27 to i32*, !mcsema_real_eip !11
  store i32 %EDX_val.17, i32* %29, !mcsema_real_eip !11
  %RBP_val.18 = load i64, i64* %XBP, !mcsema_real_eip !12
  %30 = add i64 %RBP_val.18, -24, !mcsema_real_eip !12
  %31 = inttoptr i64 %30 to i64*, !mcsema_real_eip !12
  %ECX.19 = bitcast i64* %XCX to i32*, !mcsema_real_eip !12
  %ECX_val.20 = load i32, i32* %ECX.19, !mcsema_real_eip !12
  %32 = inttoptr i64 %30 to i32*, !mcsema_real_eip !12
  store i32 %ECX_val.20, i32* %32, !mcsema_real_eip !12
  %RBP_val.21 = load i64, i64* %XBP, !mcsema_real_eip !13
  %33 = add i64 %RBP_val.21, -28, !mcsema_real_eip !13
  %34 = inttoptr i64 %33 to i64*, !mcsema_real_eip !13
  %R8D.22 = bitcast i64* %R8 to i32*, !mcsema_real_eip !13
  %R8D_val.23 = load i32, i32* %R8D.22, !mcsema_real_eip !13
  %35 = inttoptr i64 %33 to i32*, !mcsema_real_eip !13
  store i32 %R8D_val.23, i32* %35, !mcsema_real_eip !13
  %RBP_val.24 = load i64, i64* %XBP, !mcsema_real_eip !14
  %36 = add i64 %RBP_val.24, -32, !mcsema_real_eip !14
  %37 = inttoptr i64 %36 to i64*, !mcsema_real_eip !14
  %R9D.25 = bitcast i64* %R9 to i32*, !mcsema_real_eip !14
  %R9D_val.26 = load i32, i32* %R9D.25, !mcsema_real_eip !14
  %38 = inttoptr i64 %36 to i32*, !mcsema_real_eip !14
  store i32 %R9D_val.26, i32* %38, !mcsema_real_eip !14
  %RBP_val.27 = load i64, i64* %XBP, !mcsema_real_eip !15
  %39 = add i64 %RBP_val.27, -36, !mcsema_real_eip !15
  %40 = inttoptr i64 %39 to i64*, !mcsema_real_eip !15
  %EBX.28 = bitcast i64* %XBX to i32*, !mcsema_real_eip !15
  %EBX_val.29 = load i32, i32* %EBX.28, !mcsema_real_eip !15
  %41 = inttoptr i64 %39 to i32*, !mcsema_real_eip !15
  store i32 %EBX_val.29, i32* %41, !mcsema_real_eip !15
  %RBP_val.30 = load i64, i64* %XBP, !mcsema_real_eip !16
  %42 = add i64 %RBP_val.30, -48, !mcsema_real_eip !16
  %43 = inttoptr i64 %42 to i64*, !mcsema_real_eip !16
  %R11_val.31 = load i64, i64* %R11, !mcsema_real_eip !16
  store i64 %R11_val.31, i64* %43, !mcsema_real_eip !16
  %RBP_val.32 = load i64, i64* %XBP, !mcsema_real_eip !17
  %44 = add i64 %RBP_val.32, -52, !mcsema_real_eip !17
  %45 = inttoptr i64 %44 to i64*, !mcsema_real_eip !17
  %R10D.33 = bitcast i64* %R10 to i32*, !mcsema_real_eip !17
  %R10D_val.34 = load i32, i32* %R10D.33, !mcsema_real_eip !17
  %46 = inttoptr i64 %44 to i32*, !mcsema_real_eip !17
  store i32 %R10D_val.34, i32* %46, !mcsema_real_eip !17
  %RBP_val.35 = load i64, i64* %XBP, !mcsema_real_eip !18
  %47 = add i64 %RBP_val.35, -64, !mcsema_real_eip !18
  %48 = inttoptr i64 %47 to i64*, !mcsema_real_eip !18
  %RAX_val.36 = load i64, i64* %XAX, !mcsema_real_eip !18
  store i64 %RAX_val.36, i64* %48, !mcsema_real_eip !18
  %RBP_val.37 = load i64, i64* %XBP, !mcsema_real_eip !19
  %49 = add i64 %RBP_val.37, -68, !mcsema_real_eip !19
  %50 = inttoptr i64 %49 to i64*, !mcsema_real_eip !19
  %51 = inttoptr i64 %49 to i32*, !mcsema_real_eip !19
  store i32 0, i32* %51, !mcsema_real_eip !19
  %RBP_val.38 = load i64, i64* %XBP, !mcsema_real_eip !20
  %52 = add i64 %RBP_val.38, -72, !mcsema_real_eip !20
  %53 = inttoptr i64 %52 to i64*, !mcsema_real_eip !20
  %54 = inttoptr i64 %52 to i32*, !mcsema_real_eip !20
  store i32 0, i32* %54, !mcsema_real_eip !20
  br label %block_0x45, !mcsema_real_eip !21

block_0x45:                                       ; preds = %block_0x51, %block_0x0
  %RBP_val.39 = load i64, i64* %XBP, !mcsema_real_eip !21
  %55 = add i64 %RBP_val.39, -72, !mcsema_real_eip !21
  %56 = inttoptr i64 %55 to i64*, !mcsema_real_eip !21
  %57 = inttoptr i64 %55 to i32*, !mcsema_real_eip !21
  %58 = load i32, i32* %57, !mcsema_real_eip !21
  %59 = zext i32 %58 to i64, !mcsema_real_eip !21
  store i64 %59, i64* %XAX, !mcsema_real_eip !21
  %60 = add i64 %RBP_val.39, -36, !mcsema_real_eip !22
  %61 = inttoptr i64 %60 to i64*, !mcsema_real_eip !22
  %EAX.41 = bitcast i64* %XAX to i32*, !mcsema_real_eip !22
  %EAX_val.42 = load i32, i32* %EAX.41, !mcsema_real_eip !22
  %62 = inttoptr i64 %60 to i32*, !mcsema_real_eip !22
  %63 = load i32, i32* %62, !mcsema_real_eip !22
  %64 = sub i32 %EAX_val.42, %63, !mcsema_real_eip !22
  %65 = xor i32 %64, %EAX_val.42, !mcsema_real_eip !22
  %66 = xor i32 %65, %63, !mcsema_real_eip !22
  %67 = and i32 %66, 16, !mcsema_real_eip !22
  %68 = icmp ne i32 %67, 0, !mcsema_real_eip !22
  store i1 %68, i1* %AF, !mcsema_real_eip !22
  %69 = trunc i32 %64 to i8, !mcsema_real_eip !22
  %70 = call i8 @llvm.ctpop.i8(i8 %69), !mcsema_real_eip !22
  %71 = trunc i8 %70 to i1, !mcsema_real_eip !22
  %72 = xor i1 %71, true, !mcsema_real_eip !22
  store i1 %72, i1* %PF, !mcsema_real_eip !22
  %73 = icmp eq i32 %64, 0, !mcsema_real_eip !22
  store i1 %73, i1* %ZF, !mcsema_real_eip !22
  %74 = lshr i32 %64, 31, !mcsema_real_eip !22
  %75 = trunc i32 %74 to i1, !mcsema_real_eip !22
  store i1 %75, i1* %SF, !mcsema_real_eip !22
  %76 = icmp ult i32 %EAX_val.42, %63, !mcsema_real_eip !22
  store i1 %76, i1* %CF, !mcsema_real_eip !22
  %77 = xor i32 %EAX_val.42, %63, !mcsema_real_eip !22
  %78 = and i32 %77, %65, !mcsema_real_eip !22
  %79 = lshr i32 %78, 31, !mcsema_real_eip !22
  %80 = trunc i32 %79 to i1, !mcsema_real_eip !22
  store i1 %80, i1* %OF, !mcsema_real_eip !22
  %81 = icmp eq i1 %75, %80, !mcsema_real_eip !23
  br i1 %81, label %block_0x7b, label %block_0x51, !mcsema_real_eip !23

block_0x51:                                       ; preds = %block_0x45
  %82 = add i64 %RBP_val.39, -48, !mcsema_real_eip !24
  %83 = inttoptr i64 %82 to i64*, !mcsema_real_eip !24
  %84 = load i64, i64* %83, !mcsema_real_eip !24
  store i64 %84, i64* %XAX, !mcsema_real_eip !24
  %85 = load i32, i32* %57, !mcsema_real_eip !25
  %86 = sext i32 %85 to i64, !mcsema_real_eip !25
  store i64 %86, i64* %XCX, !mcsema_real_eip !25
  %87 = mul i64 %86, 4, !mcsema_real_eip !26
  %88 = add i64 %84, %87, !mcsema_real_eip !26
  %89 = inttoptr i64 %88 to i64*, !mcsema_real_eip !26
  %90 = inttoptr i64 %88 to i32*, !mcsema_real_eip !26
  %91 = load i32, i32* %90, !mcsema_real_eip !26
  %92 = zext i32 %91 to i64, !mcsema_real_eip !26
  store i64 %92, i64* %XDX, !mcsema_real_eip !26
  %93 = add i64 %RBP_val.39, -64, !mcsema_real_eip !27
  %94 = inttoptr i64 %93 to i64*, !mcsema_real_eip !27
  %95 = load i64, i64* %94, !mcsema_real_eip !27
  store i64 %95, i64* %XAX, !mcsema_real_eip !27
  %96 = load i32, i32* %57, !mcsema_real_eip !28
  %97 = sext i32 %96 to i64, !mcsema_real_eip !28
  store i64 %97, i64* %XCX, !mcsema_real_eip !28
  %98 = mul i64 %97, 4, !mcsema_real_eip !29
  %99 = add i64 %95, %98, !mcsema_real_eip !29
  %100 = inttoptr i64 %99 to i64*, !mcsema_real_eip !29
  %EDX_val.52 = load i32, i32* %EDX.16, !mcsema_real_eip !29
  %101 = inttoptr i64 %99 to i32*, !mcsema_real_eip !29
  %102 = load i32, i32* %101, !mcsema_real_eip !29
  %103 = sub i32 %EDX_val.52, %102, !mcsema_real_eip !29
  %104 = xor i32 %103, %EDX_val.52, !mcsema_real_eip !29
  %105 = xor i32 %104, %102, !mcsema_real_eip !29
  %106 = and i32 %105, 16, !mcsema_real_eip !29
  %107 = icmp ne i32 %106, 0, !mcsema_real_eip !29
  store i1 %107, i1* %AF, !mcsema_real_eip !29
  %108 = trunc i32 %103 to i8, !mcsema_real_eip !29
  %109 = call i8 @llvm.ctpop.i8(i8 %108), !mcsema_real_eip !29
  %110 = trunc i8 %109 to i1, !mcsema_real_eip !29
  %111 = xor i1 %110, true, !mcsema_real_eip !29
  store i1 %111, i1* %PF, !mcsema_real_eip !29
  %112 = icmp eq i32 %103, 0, !mcsema_real_eip !29
  store i1 %112, i1* %ZF, !mcsema_real_eip !29
  %113 = lshr i32 %103, 31, !mcsema_real_eip !29
  %114 = trunc i32 %113 to i1, !mcsema_real_eip !29
  store i1 %114, i1* %SF, !mcsema_real_eip !29
  %115 = icmp ult i32 %EDX_val.52, %102, !mcsema_real_eip !29
  store i1 %115, i1* %CF, !mcsema_real_eip !29
  %116 = xor i32 %EDX_val.52, %102, !mcsema_real_eip !29
  %117 = and i32 %116, %104, !mcsema_real_eip !29
  %118 = lshr i32 %117, 31, !mcsema_real_eip !29
  %119 = trunc i32 %118 to i1, !mcsema_real_eip !29
  store i1 %119, i1* %OF, !mcsema_real_eip !29
  %120 = zext i32 %103 to i64, !mcsema_real_eip !29
  store i64 %120, i64* %XDX, !mcsema_real_eip !29
  %121 = add i64 %RBP_val.39, -68, !mcsema_real_eip !30
  %122 = inttoptr i64 %121 to i64*, !mcsema_real_eip !30
  %123 = inttoptr i64 %121 to i32*, !mcsema_real_eip !30
  %124 = load i32, i32* %123, !mcsema_real_eip !30
  %EDX_val.55 = load i32, i32* %EDX.16, !mcsema_real_eip !30
  %125 = add i32 %EDX_val.55, %124, !mcsema_real_eip !30
  %126 = xor i32 %125, %124, !mcsema_real_eip !30
  %127 = xor i32 %126, %EDX_val.55, !mcsema_real_eip !30
  %128 = and i32 %127, 16, !mcsema_real_eip !30
  %129 = icmp ne i32 %128, 0, !mcsema_real_eip !30
  store i1 %129, i1* %AF, !mcsema_real_eip !30
  %130 = lshr i32 %125, 31, !mcsema_real_eip !30
  %131 = trunc i32 %130 to i1, !mcsema_real_eip !30
  store i1 %131, i1* %SF, !mcsema_real_eip !30
  %132 = icmp eq i32 %125, 0, !mcsema_real_eip !30
  store i1 %132, i1* %ZF, !mcsema_real_eip !30
  %133 = xor i32 %124, %EDX_val.55, !mcsema_real_eip !30
  %134 = xor i32 %133, -1, !mcsema_real_eip !30
  %135 = and i32 %134, %126, !mcsema_real_eip !30
  %136 = lshr i32 %135, 31, !mcsema_real_eip !30
  %137 = and i32 %136, 1, !mcsema_real_eip !30
  %138 = trunc i32 %137 to i1, !mcsema_real_eip !30
  store i1 %138, i1* %OF, !mcsema_real_eip !30
  %139 = trunc i32 %125 to i8, !mcsema_real_eip !30
  %140 = call i8 @llvm.ctpop.i8(i8 %139), !mcsema_real_eip !30
  %141 = trunc i8 %140 to i1, !mcsema_real_eip !30
  %142 = xor i1 %141, true, !mcsema_real_eip !30
  store i1 %142, i1* %PF, !mcsema_real_eip !30
  %143 = icmp ult i32 %125, %124, !mcsema_real_eip !30
  store i1 %143, i1* %CF, !mcsema_real_eip !30
  %144 = zext i32 %125 to i64, !mcsema_real_eip !30
  store i64 %144, i64* %XDX, !mcsema_real_eip !30
  %EDX_val.58 = load i32, i32* %EDX.16, !mcsema_real_eip !31
  store i32 %EDX_val.58, i32* %123, !mcsema_real_eip !31
  %RBP_val.59 = load i64, i64* %XBP, !mcsema_real_eip !32
  %145 = add i64 %RBP_val.59, -72, !mcsema_real_eip !32
  %146 = inttoptr i64 %145 to i64*, !mcsema_real_eip !32
  %147 = inttoptr i64 %145 to i32*, !mcsema_real_eip !32
  %148 = load i32, i32* %147, !mcsema_real_eip !32
  %149 = zext i32 %148 to i64, !mcsema_real_eip !32
  store i64 %149, i64* %XAX, !mcsema_real_eip !32
  %EAX_val.61 = load i32, i32* %EAX.41, !mcsema_real_eip !33
  %150 = add i32 1, %EAX_val.61, !mcsema_real_eip !33
  %151 = xor i32 %150, %EAX_val.61, !mcsema_real_eip !33
  %152 = xor i32 %151, 1, !mcsema_real_eip !33
  %153 = and i32 %152, 16, !mcsema_real_eip !33
  %154 = icmp ne i32 %153, 0, !mcsema_real_eip !33
  store i1 %154, i1* %AF, !mcsema_real_eip !33
  %155 = lshr i32 %150, 31, !mcsema_real_eip !33
  %156 = trunc i32 %155 to i1, !mcsema_real_eip !33
  store i1 %156, i1* %SF, !mcsema_real_eip !33
  %157 = icmp eq i32 %150, 0, !mcsema_real_eip !33
  store i1 %157, i1* %ZF, !mcsema_real_eip !33
  %158 = xor i32 %EAX_val.61, 1, !mcsema_real_eip !33
  %159 = xor i32 %158, -1, !mcsema_real_eip !33
  %160 = and i32 %159, %151, !mcsema_real_eip !33
  %161 = lshr i32 %160, 31, !mcsema_real_eip !33
  %162 = and i32 %161, 1, !mcsema_real_eip !33
  %163 = trunc i32 %162 to i1, !mcsema_real_eip !33
  store i1 %163, i1* %OF, !mcsema_real_eip !33
  %164 = trunc i32 %150 to i8, !mcsema_real_eip !33
  %165 = call i8 @llvm.ctpop.i8(i8 %164), !mcsema_real_eip !33
  %166 = trunc i8 %165 to i1, !mcsema_real_eip !33
  %167 = xor i1 %166, true, !mcsema_real_eip !33
  store i1 %167, i1* %PF, !mcsema_real_eip !33
  %168 = icmp ult i32 %150, %EAX_val.61, !mcsema_real_eip !33
  store i1 %168, i1* %CF, !mcsema_real_eip !33
  %169 = zext i32 %150 to i64, !mcsema_real_eip !33
  store i64 %169, i64* %XAX, !mcsema_real_eip !33
  %EAX_val.64 = load i32, i32* %EAX.41, !mcsema_real_eip !34
  store i32 %EAX_val.64, i32* %147, !mcsema_real_eip !34
  br label %block_0x45, !mcsema_real_eip !35

block_0x7b:                                       ; preds = %block_0x45
  %170 = add i64 %RBP_val.39, -68, !mcsema_real_eip !36
  %171 = inttoptr i64 %170 to i64*, !mcsema_real_eip !36
  %172 = inttoptr i64 %170 to i32*, !mcsema_real_eip !36
  %173 = load i32, i32* %172, !mcsema_real_eip !36
  %174 = zext i32 %173 to i64, !mcsema_real_eip !36
  store i64 %174, i64* %XAX, !mcsema_real_eip !36
  %175 = add i64 %RBP_val.39, -12, !mcsema_real_eip !37
  %176 = inttoptr i64 %175 to i64*, !mcsema_real_eip !37
  %177 = inttoptr i64 %175 to i32*, !mcsema_real_eip !37
  %178 = load i32, i32* %177, !mcsema_real_eip !37
  %179 = zext i32 %178 to i64, !mcsema_real_eip !37
  store i64 %179, i64* %XCX, !mcsema_real_eip !37
  %180 = add i64 %RBP_val.39, -16, !mcsema_real_eip !38
  %181 = inttoptr i64 %180 to i64*, !mcsema_real_eip !38
  %182 = inttoptr i64 %180 to i32*, !mcsema_real_eip !38
  %183 = load i32, i32* %182, !mcsema_real_eip !38
  %ECX_val.69 = load i32, i32* %ECX.19, !mcsema_real_eip !38
  %184 = add i32 %ECX_val.69, %183, !mcsema_real_eip !38
  %185 = xor i32 %184, %183, !mcsema_real_eip !38
  %186 = xor i32 %185, %ECX_val.69, !mcsema_real_eip !38
  %187 = and i32 %186, 16, !mcsema_real_eip !38
  %188 = icmp ne i32 %187, 0, !mcsema_real_eip !38
  store i1 %188, i1* %AF, !mcsema_real_eip !38
  %189 = lshr i32 %184, 31, !mcsema_real_eip !38
  %190 = trunc i32 %189 to i1, !mcsema_real_eip !38
  store i1 %190, i1* %SF, !mcsema_real_eip !38
  %191 = icmp eq i32 %184, 0, !mcsema_real_eip !38
  store i1 %191, i1* %ZF, !mcsema_real_eip !38
  %192 = xor i32 %183, %ECX_val.69, !mcsema_real_eip !38
  %193 = xor i32 %192, -1, !mcsema_real_eip !38
  %194 = and i32 %193, %185, !mcsema_real_eip !38
  %195 = lshr i32 %194, 31, !mcsema_real_eip !38
  %196 = and i32 %195, 1, !mcsema_real_eip !38
  %197 = trunc i32 %196 to i1, !mcsema_real_eip !38
  store i1 %197, i1* %OF, !mcsema_real_eip !38
  %198 = trunc i32 %184 to i8, !mcsema_real_eip !38
  %199 = call i8 @llvm.ctpop.i8(i8 %198), !mcsema_real_eip !38
  %200 = trunc i8 %199 to i1, !mcsema_real_eip !38
  %201 = xor i1 %200, true, !mcsema_real_eip !38
  store i1 %201, i1* %PF, !mcsema_real_eip !38
  %202 = icmp ult i32 %184, %183, !mcsema_real_eip !38
  store i1 %202, i1* %CF, !mcsema_real_eip !38
  %203 = zext i32 %184 to i64, !mcsema_real_eip !38
  store i64 %203, i64* %XCX, !mcsema_real_eip !38
  %204 = add i64 %RBP_val.39, -20, !mcsema_real_eip !39
  %205 = inttoptr i64 %204 to i64*, !mcsema_real_eip !39
  %206 = inttoptr i64 %204 to i32*, !mcsema_real_eip !39
  %207 = load i32, i32* %206, !mcsema_real_eip !39
  %ECX_val.72 = load i32, i32* %ECX.19, !mcsema_real_eip !39
  %208 = add i32 %ECX_val.72, %207, !mcsema_real_eip !39
  %209 = xor i32 %208, %207, !mcsema_real_eip !39
  %210 = xor i32 %209, %ECX_val.72, !mcsema_real_eip !39
  %211 = and i32 %210, 16, !mcsema_real_eip !39
  %212 = icmp ne i32 %211, 0, !mcsema_real_eip !39
  store i1 %212, i1* %AF, !mcsema_real_eip !39
  %213 = lshr i32 %208, 31, !mcsema_real_eip !39
  %214 = trunc i32 %213 to i1, !mcsema_real_eip !39
  store i1 %214, i1* %SF, !mcsema_real_eip !39
  %215 = icmp eq i32 %208, 0, !mcsema_real_eip !39
  store i1 %215, i1* %ZF, !mcsema_real_eip !39
  %216 = xor i32 %207, %ECX_val.72, !mcsema_real_eip !39
  %217 = xor i32 %216, -1, !mcsema_real_eip !39
  %218 = and i32 %217, %209, !mcsema_real_eip !39
  %219 = lshr i32 %218, 31, !mcsema_real_eip !39
  %220 = and i32 %219, 1, !mcsema_real_eip !39
  %221 = trunc i32 %220 to i1, !mcsema_real_eip !39
  store i1 %221, i1* %OF, !mcsema_real_eip !39
  %222 = trunc i32 %208 to i8, !mcsema_real_eip !39
  %223 = call i8 @llvm.ctpop.i8(i8 %222), !mcsema_real_eip !39
  %224 = trunc i8 %223 to i1, !mcsema_real_eip !39
  %225 = xor i1 %224, true, !mcsema_real_eip !39
  store i1 %225, i1* %PF, !mcsema_real_eip !39
  %226 = icmp ult i32 %208, %207, !mcsema_real_eip !39
  store i1 %226, i1* %CF, !mcsema_real_eip !39
  %227 = zext i32 %208 to i64, !mcsema_real_eip !39
  store i64 %227, i64* %XCX, !mcsema_real_eip !39
  %228 = add i64 %RBP_val.39, -24, !mcsema_real_eip !40
  %229 = inttoptr i64 %228 to i64*, !mcsema_real_eip !40
  %230 = inttoptr i64 %228 to i32*, !mcsema_real_eip !40
  %231 = load i32, i32* %230, !mcsema_real_eip !40
  %ECX_val.75 = load i32, i32* %ECX.19, !mcsema_real_eip !40
  %232 = add i32 %ECX_val.75, %231, !mcsema_real_eip !40
  %233 = xor i32 %232, %231, !mcsema_real_eip !40
  %234 = xor i32 %233, %ECX_val.75, !mcsema_real_eip !40
  %235 = and i32 %234, 16, !mcsema_real_eip !40
  %236 = icmp ne i32 %235, 0, !mcsema_real_eip !40
  store i1 %236, i1* %AF, !mcsema_real_eip !40
  %237 = lshr i32 %232, 31, !mcsema_real_eip !40
  %238 = trunc i32 %237 to i1, !mcsema_real_eip !40
  store i1 %238, i1* %SF, !mcsema_real_eip !40
  %239 = icmp eq i32 %232, 0, !mcsema_real_eip !40
  store i1 %239, i1* %ZF, !mcsema_real_eip !40
  %240 = xor i32 %231, %ECX_val.75, !mcsema_real_eip !40
  %241 = xor i32 %240, -1, !mcsema_real_eip !40
  %242 = and i32 %241, %233, !mcsema_real_eip !40
  %243 = lshr i32 %242, 31, !mcsema_real_eip !40
  %244 = and i32 %243, 1, !mcsema_real_eip !40
  %245 = trunc i32 %244 to i1, !mcsema_real_eip !40
  store i1 %245, i1* %OF, !mcsema_real_eip !40
  %246 = trunc i32 %232 to i8, !mcsema_real_eip !40
  %247 = call i8 @llvm.ctpop.i8(i8 %246), !mcsema_real_eip !40
  %248 = trunc i8 %247 to i1, !mcsema_real_eip !40
  %249 = xor i1 %248, true, !mcsema_real_eip !40
  store i1 %249, i1* %PF, !mcsema_real_eip !40
  %250 = icmp ult i32 %232, %231, !mcsema_real_eip !40
  store i1 %250, i1* %CF, !mcsema_real_eip !40
  %251 = zext i32 %232 to i64, !mcsema_real_eip !40
  store i64 %251, i64* %XCX, !mcsema_real_eip !40
  %252 = add i64 %RBP_val.39, -28, !mcsema_real_eip !41
  %253 = inttoptr i64 %252 to i64*, !mcsema_real_eip !41
  %254 = inttoptr i64 %252 to i32*, !mcsema_real_eip !41
  %255 = load i32, i32* %254, !mcsema_real_eip !41
  %ECX_val.78 = load i32, i32* %ECX.19, !mcsema_real_eip !41
  %256 = add i32 %ECX_val.78, %255, !mcsema_real_eip !41
  %257 = xor i32 %256, %255, !mcsema_real_eip !41
  %258 = xor i32 %257, %ECX_val.78, !mcsema_real_eip !41
  %259 = and i32 %258, 16, !mcsema_real_eip !41
  %260 = icmp ne i32 %259, 0, !mcsema_real_eip !41
  store i1 %260, i1* %AF, !mcsema_real_eip !41
  %261 = lshr i32 %256, 31, !mcsema_real_eip !41
  %262 = trunc i32 %261 to i1, !mcsema_real_eip !41
  store i1 %262, i1* %SF, !mcsema_real_eip !41
  %263 = icmp eq i32 %256, 0, !mcsema_real_eip !41
  store i1 %263, i1* %ZF, !mcsema_real_eip !41
  %264 = xor i32 %255, %ECX_val.78, !mcsema_real_eip !41
  %265 = xor i32 %264, -1, !mcsema_real_eip !41
  %266 = and i32 %265, %257, !mcsema_real_eip !41
  %267 = lshr i32 %266, 31, !mcsema_real_eip !41
  %268 = and i32 %267, 1, !mcsema_real_eip !41
  %269 = trunc i32 %268 to i1, !mcsema_real_eip !41
  store i1 %269, i1* %OF, !mcsema_real_eip !41
  %270 = trunc i32 %256 to i8, !mcsema_real_eip !41
  %271 = call i8 @llvm.ctpop.i8(i8 %270), !mcsema_real_eip !41
  %272 = trunc i8 %271 to i1, !mcsema_real_eip !41
  %273 = xor i1 %272, true, !mcsema_real_eip !41
  store i1 %273, i1* %PF, !mcsema_real_eip !41
  %274 = icmp ult i32 %256, %255, !mcsema_real_eip !41
  store i1 %274, i1* %CF, !mcsema_real_eip !41
  %275 = zext i32 %256 to i64, !mcsema_real_eip !41
  store i64 %275, i64* %XCX, !mcsema_real_eip !41
  %276 = add i64 %RBP_val.39, -32, !mcsema_real_eip !42
  %277 = inttoptr i64 %276 to i64*, !mcsema_real_eip !42
  %278 = inttoptr i64 %276 to i32*, !mcsema_real_eip !42
  %279 = load i32, i32* %278, !mcsema_real_eip !42
  %ECX_val.81 = load i32, i32* %ECX.19, !mcsema_real_eip !42
  %280 = add i32 %ECX_val.81, %279, !mcsema_real_eip !42
  %281 = xor i32 %280, %279, !mcsema_real_eip !42
  %282 = xor i32 %281, %ECX_val.81, !mcsema_real_eip !42
  %283 = and i32 %282, 16, !mcsema_real_eip !42
  %284 = icmp ne i32 %283, 0, !mcsema_real_eip !42
  store i1 %284, i1* %AF, !mcsema_real_eip !42
  %285 = lshr i32 %280, 31, !mcsema_real_eip !42
  %286 = trunc i32 %285 to i1, !mcsema_real_eip !42
  store i1 %286, i1* %SF, !mcsema_real_eip !42
  %287 = icmp eq i32 %280, 0, !mcsema_real_eip !42
  store i1 %287, i1* %ZF, !mcsema_real_eip !42
  %288 = xor i32 %279, %ECX_val.81, !mcsema_real_eip !42
  %289 = xor i32 %288, -1, !mcsema_real_eip !42
  %290 = and i32 %289, %281, !mcsema_real_eip !42
  %291 = lshr i32 %290, 31, !mcsema_real_eip !42
  %292 = and i32 %291, 1, !mcsema_real_eip !42
  %293 = trunc i32 %292 to i1, !mcsema_real_eip !42
  store i1 %293, i1* %OF, !mcsema_real_eip !42
  %294 = trunc i32 %280 to i8, !mcsema_real_eip !42
  %295 = call i8 @llvm.ctpop.i8(i8 %294), !mcsema_real_eip !42
  %296 = trunc i8 %295 to i1, !mcsema_real_eip !42
  %297 = xor i1 %296, true, !mcsema_real_eip !42
  store i1 %297, i1* %PF, !mcsema_real_eip !42
  %298 = icmp ult i32 %280, %279, !mcsema_real_eip !42
  store i1 %298, i1* %CF, !mcsema_real_eip !42
  %299 = zext i32 %280 to i64, !mcsema_real_eip !42
  store i64 %299, i64* %XCX, !mcsema_real_eip !42
  %ECX_val.83 = load i32, i32* %ECX.19, !mcsema_real_eip !43
  %EAX_val.85 = load i32, i32* %EAX.41, !mcsema_real_eip !43
  %300 = sext i32 %EAX_val.85 to i64, !mcsema_real_eip !43
  %301 = sext i32 %ECX_val.83 to i64, !mcsema_real_eip !43
  %302 = mul i64 %300, %301, !mcsema_real_eip !43
  %303 = trunc i64 %302 to i32, !mcsema_real_eip !43
  %304 = sext i32 %303 to i64, !mcsema_real_eip !43
  %305 = icmp ne i64 %304, %302, !mcsema_real_eip !43
  %306 = icmp slt i32 %303, 0, !mcsema_real_eip !43
  store i1 %306, i1* %SF, !mcsema_real_eip !43
  store i1 %305, i1* %OF, !mcsema_real_eip !43
  store i1 %305, i1* %CF, !mcsema_real_eip !43
  %307 = zext i32 %303 to i64, !mcsema_real_eip !43
  store i64 %307, i64* %XAX, !mcsema_real_eip !43
  %RSP_val.86 = load i64, i64* %XSP, !mcsema_real_eip !44
  %308 = inttoptr i64 %RSP_val.86 to i64*, !mcsema_real_eip !44
  %309 = load i64, i64* %308, !mcsema_real_eip !44
  store i64 %309, i64* %XBX, !mcsema_real_eip !44
  %310 = add i64 %RSP_val.86, 8, !mcsema_real_eip !44
  store i64 %310, i64* %XSP, !mcsema_real_eip !44
  %311 = inttoptr i64 %310 to i64*, !mcsema_real_eip !45
  %312 = load i64, i64* %311, !mcsema_real_eip !45
  store i64 %312, i64* %XBP, !mcsema_real_eip !45
  %313 = add i64 %310, 8, !mcsema_real_eip !45
  store i64 %313, i64* %XSP, !mcsema_real_eip !45
  %314 = add i64 %313, 8, !mcsema_real_eip !46
  %315 = inttoptr i64 %313 to i64*, !mcsema_real_eip !46
  %316 = load i64, i64* %315, !mcsema_real_eip !46
  store i64 %316, i64* %XIP, !mcsema_real_eip !46
  store i64 %314, i64* %XSP, !mcsema_real_eip !46
  ret void, !mcsema_real_eip !46
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_a0(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !47
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !47
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !47
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !47
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !47
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !47
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !47
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !47
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !47
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !47
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !47
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !47
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !47
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !47
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !47
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !47
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !47
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !47
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !47
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !47
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !47
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !47
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !47
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !47
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !47
  %R12 = getelementptr %RegState, %RegState* %0, i32 0, i32 68, !mcsema_real_eip !47
  %R13 = getelementptr %RegState, %RegState* %0, i32 0, i32 69, !mcsema_real_eip !47
  %R14 = getelementptr %RegState, %RegState* %0, i32 0, i32 70, !mcsema_real_eip !47
  %R15 = getelementptr %RegState, %RegState* %0, i32 0, i32 71, !mcsema_real_eip !47
  br label %block_0xa0, !mcsema_real_eip !47

block_0xa0:                                       ; preds = %entry
  %RBP_val.89 = load i64, i64* %XBP, !mcsema_real_eip !47
  %RSP_val.90 = load i64, i64* %XSP, !mcsema_real_eip !47
  %1 = sub i64 %RSP_val.90, 8, !mcsema_real_eip !47
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !47
  store i64 %RBP_val.89, i64* %2, !mcsema_real_eip !47
  store i64 %1, i64* %XSP, !mcsema_real_eip !47
  store i64 %1, i64* %XBP, !mcsema_real_eip !48
  %R15_val.92 = load i64, i64* %R15, !mcsema_real_eip !49
  %3 = sub i64 %1, 8, !mcsema_real_eip !49
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !49
  store i64 %R15_val.92, i64* %4, !mcsema_real_eip !49
  store i64 %3, i64* %XSP, !mcsema_real_eip !49
  %R14_val.94 = load i64, i64* %R14, !mcsema_real_eip !50
  %5 = sub i64 %3, 8, !mcsema_real_eip !50
  %6 = inttoptr i64 %5 to i64*, !mcsema_real_eip !50
  store i64 %R14_val.94, i64* %6, !mcsema_real_eip !50
  store i64 %5, i64* %XSP, !mcsema_real_eip !50
  %R13_val.96 = load i64, i64* %R13, !mcsema_real_eip !51
  %7 = sub i64 %5, 8, !mcsema_real_eip !51
  %8 = inttoptr i64 %7 to i64*, !mcsema_real_eip !51
  store i64 %R13_val.96, i64* %8, !mcsema_real_eip !51
  store i64 %7, i64* %XSP, !mcsema_real_eip !51
  %R12_val.98 = load i64, i64* %R12, !mcsema_real_eip !52
  %9 = sub i64 %7, 8, !mcsema_real_eip !52
  %10 = inttoptr i64 %9 to i64*, !mcsema_real_eip !52
  store i64 %R12_val.98, i64* %10, !mcsema_real_eip !52
  store i64 %9, i64* %XSP, !mcsema_real_eip !52
  %RBX_val.100 = load i64, i64* %XBX, !mcsema_real_eip !53
  %11 = sub i64 %9, 8, !mcsema_real_eip !53
  %12 = inttoptr i64 %11 to i64*, !mcsema_real_eip !53
  store i64 %RBX_val.100, i64* %12, !mcsema_real_eip !53
  store i64 %11, i64* %XSP, !mcsema_real_eip !53
  %13 = sub i64 %11, 216, !mcsema_real_eip !54
  %14 = xor i64 %13, %11, !mcsema_real_eip !54
  %15 = xor i64 %14, 216, !mcsema_real_eip !54
  %16 = and i64 %15, 16, !mcsema_real_eip !54
  %17 = icmp ne i64 %16, 0, !mcsema_real_eip !54
  store i1 %17, i1* %AF, !mcsema_real_eip !54
  %18 = trunc i64 %13 to i8, !mcsema_real_eip !54
  %19 = call i8 @llvm.ctpop.i8(i8 %18), !mcsema_real_eip !54
  %20 = trunc i8 %19 to i1, !mcsema_real_eip !54
  %21 = xor i1 %20, true, !mcsema_real_eip !54
  store i1 %21, i1* %PF, !mcsema_real_eip !54
  %22 = icmp eq i64 %13, 0, !mcsema_real_eip !54
  store i1 %22, i1* %ZF, !mcsema_real_eip !54
  %23 = lshr i64 %13, 63, !mcsema_real_eip !54
  %24 = trunc i64 %23 to i1, !mcsema_real_eip !54
  store i1 %24, i1* %SF, !mcsema_real_eip !54
  %25 = icmp ult i64 %11, 216, !mcsema_real_eip !54
  store i1 %25, i1* %CF, !mcsema_real_eip !54
  %26 = xor i64 %11, 216, !mcsema_real_eip !54
  %27 = and i64 %26, %14, !mcsema_real_eip !54
  %28 = lshr i64 %27, 63, !mcsema_real_eip !54
  %29 = trunc i64 %28 to i1, !mcsema_real_eip !54
  store i1 %29, i1* %OF, !mcsema_real_eip !54
  store i64 %13, i64* %XSP, !mcsema_real_eip !54
  store i64 100, i64* %XAX, !mcsema_real_eip !55
  store i64 200, i64* %XCX, !mcsema_real_eip !56
  store i64 300, i64* %XDX, !mcsema_real_eip !57
  store i64 400, i64* %R8, !mcsema_real_eip !58
  store i64 500, i64* %R9, !mcsema_real_eip !59
  store i64 600, i64* %R10, !mcsema_real_eip !60
  store i64 10, i64* %R11, !mcsema_real_eip !61
  %RBP_val.103 = load i64, i64* %XBP, !mcsema_real_eip !62
  %30 = add i64 %RBP_val.103, -144, !mcsema_real_eip !62
  %31 = inttoptr i64 %30 to i64*, !mcsema_real_eip !62
  store i64 %30, i64* %XBX, !mcsema_real_eip !62
  %32 = add i64 %RBP_val.103, -96, !mcsema_real_eip !63
  %33 = inttoptr i64 %32 to i64*, !mcsema_real_eip !63
  store i64 %32, i64* %R14, !mcsema_real_eip !63
  store i64 add (i64 ptrtoint (%0* @data_0x220 to i64), i64 48), i64* %R15, !mcsema_real_eip !64
  store i64 40, i64* %R12, !mcsema_real_eip !65
  %R12D.105 = bitcast i64* %R12 to i32*, !mcsema_real_eip !66
  %R12D_val.106 = load i32, i32* %R12D.105, !mcsema_real_eip !66
  %34 = zext i32 %R12D_val.106 to i64, !mcsema_real_eip !66
  store i64 %34, i64* %R13, !mcsema_real_eip !66
  store i64 ptrtoint (%0* @data_0x220 to i64), i64* %R12, !mcsema_real_eip !67
  %35 = add i64 %RBP_val.103, -44, !mcsema_real_eip !68
  %36 = inttoptr i64 %35 to i64*, !mcsema_real_eip !68
  %37 = inttoptr i64 %35 to i32*, !mcsema_real_eip !68
  store i32 0, i32* %37, !mcsema_real_eip !68
  %RBP_val.108 = load i64, i64* %XBP, !mcsema_real_eip !69
  %38 = add i64 %RBP_val.108, -48, !mcsema_real_eip !69
  %39 = inttoptr i64 %38 to i64*, !mcsema_real_eip !69
  %EDI.109 = bitcast i64* %XDI to i32*, !mcsema_real_eip !69
  %EDI_val.110 = load i32, i32* %EDI.109, !mcsema_real_eip !69
  %40 = inttoptr i64 %38 to i32*, !mcsema_real_eip !69
  store i32 %EDI_val.110, i32* %40, !mcsema_real_eip !69
  %RBP_val.111 = load i64, i64* %XBP, !mcsema_real_eip !70
  %41 = add i64 %RBP_val.111, -56, !mcsema_real_eip !70
  %42 = inttoptr i64 %41 to i64*, !mcsema_real_eip !70
  %RSI_val.112 = load i64, i64* %XSI, !mcsema_real_eip !70
  store i64 %RSI_val.112, i64* %42, !mcsema_real_eip !70
  %R14_val.113 = load i64, i64* %R14, !mcsema_real_eip !71
  store i64 %R14_val.113, i64* %XSI, !mcsema_real_eip !71
  store i64 %R14_val.113, i64* %XDI, !mcsema_real_eip !72
  %R12_val.115 = load i64, i64* %R12, !mcsema_real_eip !73
  store i64 %R12_val.115, i64* %XSI, !mcsema_real_eip !73
  %RBP_val.116 = load i64, i64* %XBP, !mcsema_real_eip !74
  %43 = add i64 %RBP_val.116, -152, !mcsema_real_eip !74
  %44 = inttoptr i64 %43 to i64*, !mcsema_real_eip !74
  %EDX.117 = bitcast i64* %XDX to i32*, !mcsema_real_eip !74
  %EDX_val.118 = load i32, i32* %EDX.117, !mcsema_real_eip !74
  %45 = inttoptr i64 %43 to i32*, !mcsema_real_eip !74
  store i32 %EDX_val.118, i32* %45, !mcsema_real_eip !74
  %R13_val.119 = load i64, i64* %R13, !mcsema_real_eip !75
  store i64 %R13_val.119, i64* %XDX, !mcsema_real_eip !75
  %RBP_val.120 = load i64, i64* %XBP, !mcsema_real_eip !76
  %46 = add i64 %RBP_val.120, -160, !mcsema_real_eip !76
  %47 = inttoptr i64 %46 to i64*, !mcsema_real_eip !76
  %R15_val.121 = load i64, i64* %R15, !mcsema_real_eip !76
  store i64 %R15_val.121, i64* %47, !mcsema_real_eip !76
  %RBP_val.122 = load i64, i64* %XBP, !mcsema_real_eip !77
  %48 = add i64 %RBP_val.122, -168, !mcsema_real_eip !77
  %49 = inttoptr i64 %48 to i64*, !mcsema_real_eip !77
  %R13_val.123 = load i64, i64* %R13, !mcsema_real_eip !77
  store i64 %R13_val.123, i64* %49, !mcsema_real_eip !77
  %RBP_val.124 = load i64, i64* %XBP, !mcsema_real_eip !78
  %50 = add i64 %RBP_val.124, -172, !mcsema_real_eip !78
  %51 = inttoptr i64 %50 to i64*, !mcsema_real_eip !78
  %EAX.125 = bitcast i64* %XAX to i32*, !mcsema_real_eip !78
  %EAX_val.126 = load i32, i32* %EAX.125, !mcsema_real_eip !78
  %52 = inttoptr i64 %50 to i32*, !mcsema_real_eip !78
  store i32 %EAX_val.126, i32* %52, !mcsema_real_eip !78
  %RBP_val.127 = load i64, i64* %XBP, !mcsema_real_eip !79
  %53 = add i64 %RBP_val.127, -176, !mcsema_real_eip !79
  %54 = inttoptr i64 %53 to i64*, !mcsema_real_eip !79
  %ECX.128 = bitcast i64* %XCX to i32*, !mcsema_real_eip !79
  %ECX_val.129 = load i32, i32* %ECX.128, !mcsema_real_eip !79
  %55 = inttoptr i64 %53 to i32*, !mcsema_real_eip !79
  store i32 %ECX_val.129, i32* %55, !mcsema_real_eip !79
  %RBP_val.130 = load i64, i64* %XBP, !mcsema_real_eip !80
  %56 = add i64 %RBP_val.130, -184, !mcsema_real_eip !80
  %57 = inttoptr i64 %56 to i64*, !mcsema_real_eip !80
  %R14_val.131 = load i64, i64* %R14, !mcsema_real_eip !80
  store i64 %R14_val.131, i64* %57, !mcsema_real_eip !80
  %RBP_val.132 = load i64, i64* %XBP, !mcsema_real_eip !81
  %58 = add i64 %RBP_val.132, -188, !mcsema_real_eip !81
  %59 = inttoptr i64 %58 to i64*, !mcsema_real_eip !81
  %R8D.133 = bitcast i64* %R8 to i32*, !mcsema_real_eip !81
  %R8D_val.134 = load i32, i32* %R8D.133, !mcsema_real_eip !81
  %60 = inttoptr i64 %58 to i32*, !mcsema_real_eip !81
  store i32 %R8D_val.134, i32* %60, !mcsema_real_eip !81
  %RBP_val.135 = load i64, i64* %XBP, !mcsema_real_eip !82
  %61 = add i64 %RBP_val.135, -192, !mcsema_real_eip !82
  %62 = inttoptr i64 %61 to i64*, !mcsema_real_eip !82
  %R9D.136 = bitcast i64* %R9 to i32*, !mcsema_real_eip !82
  %R9D_val.137 = load i32, i32* %R9D.136, !mcsema_real_eip !82
  %63 = inttoptr i64 %61 to i32*, !mcsema_real_eip !82
  store i32 %R9D_val.137, i32* %63, !mcsema_real_eip !82
  %RBP_val.138 = load i64, i64* %XBP, !mcsema_real_eip !83
  %64 = add i64 %RBP_val.138, -196, !mcsema_real_eip !83
  %65 = inttoptr i64 %64 to i64*, !mcsema_real_eip !83
  %R10D.139 = bitcast i64* %R10 to i32*, !mcsema_real_eip !83
  %R10D_val.140 = load i32, i32* %R10D.139, !mcsema_real_eip !83
  %66 = inttoptr i64 %64 to i32*, !mcsema_real_eip !83
  store i32 %R10D_val.140, i32* %66, !mcsema_real_eip !83
  %RBP_val.141 = load i64, i64* %XBP, !mcsema_real_eip !84
  %67 = add i64 %RBP_val.141, -200, !mcsema_real_eip !84
  %68 = inttoptr i64 %67 to i64*, !mcsema_real_eip !84
  %R11D.142 = bitcast i64* %R11 to i32*, !mcsema_real_eip !84
  %R11D_val.143 = load i32, i32* %R11D.142, !mcsema_real_eip !84
  %69 = inttoptr i64 %67 to i32*, !mcsema_real_eip !84
  store i32 %R11D_val.143, i32* %69, !mcsema_real_eip !84
  %RBP_val.144 = load i64, i64* %XBP, !mcsema_real_eip !85
  %70 = add i64 %RBP_val.144, -208, !mcsema_real_eip !85
  %71 = inttoptr i64 %70 to i64*, !mcsema_real_eip !85
  %RBX_val.145 = load i64, i64* %XBX, !mcsema_real_eip !85
  store i64 %RBX_val.145, i64* %71, !mcsema_real_eip !85
  %RDI_val.146 = load i64, i64* %XDI, !mcsema_real_eip !86
  %RSI_val.147 = load i64, i64* %XSI, !mcsema_real_eip !86
  %RDX_val.148 = load i64, i64* %XDX, !mcsema_real_eip !86
  %RSP_val.149 = load i64, i64* %XSP, !mcsema_real_eip !86
  %72 = sub i64 %RSP_val.149, 8, !mcsema_real_eip !86
  %73 = inttoptr i64 %72 to i64*, !mcsema_real_eip !86
  store i64 -2415393069852865332, i64* %73, !mcsema_real_eip !86
  store i64 %72, i64* %XSP, !mcsema_real_eip !86
  %74 = call x86_64_sysvcc i64 @_memcpy(i64 %RDI_val.146, i64 %RSI_val.147, i64 %RDX_val.148), !mcsema_real_eip !86
  store i64 %74, i64* %XAX, !mcsema_real_eip !86
  %RBP_val.150 = load i64, i64* %XBP, !mcsema_real_eip !87
  %75 = add i64 %RBP_val.150, -208, !mcsema_real_eip !87
  %76 = inttoptr i64 %75 to i64*, !mcsema_real_eip !87
  %77 = load i64, i64* %76, !mcsema_real_eip !87
  store i64 %77, i64* %XDX, !mcsema_real_eip !87
  store i64 %77, i64* %XDI, !mcsema_real_eip !88
  %78 = add i64 %RBP_val.150, -160, !mcsema_real_eip !89
  %79 = inttoptr i64 %78 to i64*, !mcsema_real_eip !89
  %80 = load i64, i64* %79, !mcsema_real_eip !89
  store i64 %80, i64* %XSI, !mcsema_real_eip !89
  %81 = add i64 %RBP_val.150, -168, !mcsema_real_eip !90
  %82 = inttoptr i64 %81 to i64*, !mcsema_real_eip !90
  %83 = load i64, i64* %82, !mcsema_real_eip !90
  store i64 %83, i64* %XDX, !mcsema_real_eip !90
  %RSP_val.157 = load i64, i64* %XSP, !mcsema_real_eip !91
  %84 = sub i64 %RSP_val.157, 8, !mcsema_real_eip !91
  %85 = inttoptr i64 %84 to i64*, !mcsema_real_eip !91
  store i64 -2415393069852865332, i64* %85, !mcsema_real_eip !91
  store i64 %84, i64* %XSP, !mcsema_real_eip !91
  %86 = call x86_64_sysvcc i64 @_memcpy(i64 %77, i64 %80, i64 %83), !mcsema_real_eip !91
  store i64 %86, i64* %XAX, !mcsema_real_eip !91
  %RBP_val.158 = load i64, i64* %XBP, !mcsema_real_eip !92
  %87 = add i64 %RBP_val.158, -172, !mcsema_real_eip !92
  %88 = inttoptr i64 %87 to i64*, !mcsema_real_eip !92
  %89 = inttoptr i64 %87 to i32*, !mcsema_real_eip !92
  %90 = load i32, i32* %89, !mcsema_real_eip !92
  %91 = zext i32 %90 to i64, !mcsema_real_eip !92
  store i64 %91, i64* %XDI, !mcsema_real_eip !92
  %92 = add i64 %RBP_val.158, -176, !mcsema_real_eip !93
  %93 = inttoptr i64 %92 to i64*, !mcsema_real_eip !93
  %94 = inttoptr i64 %92 to i32*, !mcsema_real_eip !93
  %95 = load i32, i32* %94, !mcsema_real_eip !93
  %96 = zext i32 %95 to i64, !mcsema_real_eip !93
  store i64 %96, i64* %XSI, !mcsema_real_eip !93
  %97 = add i64 %RBP_val.158, -152, !mcsema_real_eip !94
  %98 = inttoptr i64 %97 to i64*, !mcsema_real_eip !94
  %99 = inttoptr i64 %97 to i32*, !mcsema_real_eip !94
  %100 = load i32, i32* %99, !mcsema_real_eip !94
  %101 = zext i32 %100 to i64, !mcsema_real_eip !94
  store i64 %101, i64* %XDX, !mcsema_real_eip !94
  %102 = add i64 %RBP_val.158, -188, !mcsema_real_eip !95
  %103 = inttoptr i64 %102 to i64*, !mcsema_real_eip !95
  %104 = inttoptr i64 %102 to i32*, !mcsema_real_eip !95
  %105 = load i32, i32* %104, !mcsema_real_eip !95
  %106 = zext i32 %105 to i64, !mcsema_real_eip !95
  store i64 %106, i64* %XCX, !mcsema_real_eip !95
  %107 = add i64 %RBP_val.158, -192, !mcsema_real_eip !96
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !96
  %109 = inttoptr i64 %107 to i32*, !mcsema_real_eip !96
  %110 = load i32, i32* %109, !mcsema_real_eip !96
  %111 = zext i32 %110 to i64, !mcsema_real_eip !96
  store i64 %111, i64* %R8, !mcsema_real_eip !96
  %112 = add i64 %RBP_val.158, -196, !mcsema_real_eip !97
  %113 = inttoptr i64 %112 to i64*, !mcsema_real_eip !97
  %114 = inttoptr i64 %112 to i32*, !mcsema_real_eip !97
  %115 = load i32, i32* %114, !mcsema_real_eip !97
  %116 = zext i32 %115 to i64, !mcsema_real_eip !97
  store i64 %116, i64* %R9, !mcsema_real_eip !97
  %RSP_val.164 = load i64, i64* %XSP, !mcsema_real_eip !98
  %117 = inttoptr i64 %RSP_val.164 to i64*, !mcsema_real_eip !98
  %118 = inttoptr i64 %RSP_val.164 to i32*, !mcsema_real_eip !98
  store i32 10, i32* %118, !mcsema_real_eip !98
  %RBP_val.165 = load i64, i64* %XBP, !mcsema_real_eip !99
  %119 = add i64 %RBP_val.165, -184, !mcsema_real_eip !99
  %120 = inttoptr i64 %119 to i64*, !mcsema_real_eip !99
  %121 = load i64, i64* %120, !mcsema_real_eip !99
  store i64 %121, i64* %XBX, !mcsema_real_eip !99
  %RSP_val.166 = load i64, i64* %XSP, !mcsema_real_eip !100
  %122 = add i64 %RSP_val.166, 8, !mcsema_real_eip !100
  %123 = inttoptr i64 %122 to i64*, !mcsema_real_eip !100
  store i64 %121, i64* %123, !mcsema_real_eip !100
  %RSP_val.168 = load i64, i64* %XSP, !mcsema_real_eip !101
  %124 = add i64 %RSP_val.168, 16, !mcsema_real_eip !101
  %125 = inttoptr i64 %124 to i64*, !mcsema_real_eip !101
  %126 = inttoptr i64 %124 to i32*, !mcsema_real_eip !101
  store i32 10, i32* %126, !mcsema_real_eip !101
  %RBP_val.169 = load i64, i64* %XBP, !mcsema_real_eip !102
  %127 = add i64 %RBP_val.169, -208, !mcsema_real_eip !102
  %128 = inttoptr i64 %127 to i64*, !mcsema_real_eip !102
  %129 = load i64, i64* %128, !mcsema_real_eip !102
  store i64 %129, i64* %R14, !mcsema_real_eip !102
  %RSP_val.170 = load i64, i64* %XSP, !mcsema_real_eip !103
  %130 = add i64 %RSP_val.170, 24, !mcsema_real_eip !103
  %131 = inttoptr i64 %130 to i64*, !mcsema_real_eip !103
  store i64 %129, i64* %131, !mcsema_real_eip !103
  %RSP_val.172 = load i64, i64* %XSP, !mcsema_real_eip !104
  %132 = sub i64 %RSP_val.172, 8, !mcsema_real_eip !104
  %133 = inttoptr i64 %132 to i64*, !mcsema_real_eip !104
  store i64 -4981261766360305936, i64* %133, !mcsema_real_eip !104
  store i64 %132, i64* %XSP, !mcsema_real_eip !104
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !104
  store i64 ptrtoint (%1* @data_0x278 to i64), i64* %XDI, !mcsema_real_eip !105
  %RBP_val.173 = load i64, i64* %XBP, !mcsema_real_eip !106
  %134 = add i64 %RBP_val.173, -148, !mcsema_real_eip !106
  %135 = inttoptr i64 %134 to i64*, !mcsema_real_eip !106
  %EAX_val.175 = load i32, i32* %EAX.125, !mcsema_real_eip !106
  %136 = inttoptr i64 %134 to i32*, !mcsema_real_eip !106
  store i32 %EAX_val.175, i32* %136, !mcsema_real_eip !106
  %RBP_val.176 = load i64, i64* %XBP, !mcsema_real_eip !107
  %137 = add i64 %RBP_val.176, -148, !mcsema_real_eip !107
  %138 = inttoptr i64 %137 to i64*, !mcsema_real_eip !107
  %139 = inttoptr i64 %137 to i32*, !mcsema_real_eip !107
  %140 = load i32, i32* %139, !mcsema_real_eip !107
  %141 = zext i32 %140 to i64, !mcsema_real_eip !107
  store i64 %141, i64* %XSI, !mcsema_real_eip !107
  %AL.177 = bitcast i64* %XAX to i8*, !mcsema_real_eip !108
  store i8 0, i8* %AL.177, !mcsema_real_eip !108
  %RDI_val.178 = load i64, i64* %XDI, !mcsema_real_eip !109
  %RDX_val.180 = load i64, i64* %XDX, !mcsema_real_eip !109
  %RCX_val.181 = load i64, i64* %XCX, !mcsema_real_eip !109
  %R8_val.182 = load i64, i64* %R8, !mcsema_real_eip !109
  %R9_val.183 = load i64, i64* %R9, !mcsema_real_eip !109
  %RSP_val.184 = load i64, i64* %XSP, !mcsema_real_eip !109
  %142 = inttoptr i64 %RSP_val.184 to i64*, !mcsema_real_eip !109
  %143 = load i64, i64* %142, !mcsema_real_eip !109
  %144 = add i64 %RSP_val.184, 8, !mcsema_real_eip !109
  %145 = inttoptr i64 %144 to i64*, !mcsema_real_eip !109
  %146 = load i64, i64* %145, !mcsema_real_eip !109
  %147 = add i64 %144, 8, !mcsema_real_eip !109
  %148 = inttoptr i64 %147 to i64*, !mcsema_real_eip !109
  %149 = load i64, i64* %148, !mcsema_real_eip !109
  %150 = add i64 %147, 8, !mcsema_real_eip !109
  %151 = inttoptr i64 %150 to i64*, !mcsema_real_eip !109
  %152 = load i64, i64* %151, !mcsema_real_eip !109
  %153 = add i64 %150, 8, !mcsema_real_eip !109
  %154 = inttoptr i64 %153 to i64*, !mcsema_real_eip !109
  %155 = load i64, i64* %154, !mcsema_real_eip !109
  %156 = add i64 %153, 8, !mcsema_real_eip !109
  %157 = inttoptr i64 %156 to i64*, !mcsema_real_eip !109
  %158 = load i64, i64* %157, !mcsema_real_eip !109
  %159 = sub i64 %RSP_val.184, 8, !mcsema_real_eip !109
  %160 = inttoptr i64 %159 to i64*, !mcsema_real_eip !109
  store i64 -2415393069852865332, i64* %160, !mcsema_real_eip !109
  store i64 %159, i64* %XSP, !mcsema_real_eip !109
  %161 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.178, i64 %141, i64 %RDX_val.180, i64 %RCX_val.181, i64 %R8_val.182, i64 %R9_val.183, i64 %143, i64 %146, i64 %149, i64 %152, i64 %155, i64 %158), !mcsema_real_eip !109
  store i64 %161, i64* %XAX, !mcsema_real_eip !109
  %RBP_val.186 = load i64, i64* %XBP, !mcsema_real_eip !110
  %162 = add i64 %RBP_val.186, -148, !mcsema_real_eip !110
  %163 = inttoptr i64 %162 to i64*, !mcsema_real_eip !110
  %164 = inttoptr i64 %162 to i32*, !mcsema_real_eip !110
  %165 = load i32, i32* %164, !mcsema_real_eip !110
  %166 = zext i32 %165 to i64, !mcsema_real_eip !110
  store i64 %166, i64* %XCX, !mcsema_real_eip !110
  %167 = add i64 %RBP_val.186, -212, !mcsema_real_eip !111
  %168 = inttoptr i64 %167 to i64*, !mcsema_real_eip !111
  %EAX_val.189 = load i32, i32* %EAX.125, !mcsema_real_eip !111
  %169 = inttoptr i64 %167 to i32*, !mcsema_real_eip !111
  store i32 %EAX_val.189, i32* %169, !mcsema_real_eip !111
  %ECX_val.191 = load i32, i32* %ECX.128, !mcsema_real_eip !112
  %170 = zext i32 %ECX_val.191 to i64, !mcsema_real_eip !112
  store i64 %170, i64* %XAX, !mcsema_real_eip !112
  %RSP_val.192 = load i64, i64* %XSP, !mcsema_real_eip !113
  %171 = add i64 216, %RSP_val.192, !mcsema_real_eip !113
  %172 = xor i64 %171, %RSP_val.192, !mcsema_real_eip !113
  %173 = xor i64 %172, 216, !mcsema_real_eip !113
  %174 = and i64 %173, 16, !mcsema_real_eip !113
  %175 = icmp ne i64 %174, 0, !mcsema_real_eip !113
  store i1 %175, i1* %AF, !mcsema_real_eip !113
  %176 = lshr i64 %171, 63, !mcsema_real_eip !113
  %177 = trunc i64 %176 to i1, !mcsema_real_eip !113
  store i1 %177, i1* %SF, !mcsema_real_eip !113
  %178 = icmp eq i64 %171, 0, !mcsema_real_eip !113
  store i1 %178, i1* %ZF, !mcsema_real_eip !113
  %179 = xor i64 %RSP_val.192, 216, !mcsema_real_eip !113
  %180 = xor i64 %179, -1, !mcsema_real_eip !113
  %181 = and i64 %180, %172, !mcsema_real_eip !113
  %182 = lshr i64 %181, 63, !mcsema_real_eip !113
  %183 = and i64 %182, 1, !mcsema_real_eip !113
  %184 = trunc i64 %183 to i1, !mcsema_real_eip !113
  store i1 %184, i1* %OF, !mcsema_real_eip !113
  %185 = trunc i64 %171 to i8, !mcsema_real_eip !113
  %186 = call i8 @llvm.ctpop.i8(i8 %185), !mcsema_real_eip !113
  %187 = trunc i8 %186 to i1, !mcsema_real_eip !113
  %188 = xor i1 %187, true, !mcsema_real_eip !113
  store i1 %188, i1* %PF, !mcsema_real_eip !113
  %189 = icmp ult i64 %171, %RSP_val.192, !mcsema_real_eip !113
  store i1 %189, i1* %CF, !mcsema_real_eip !113
  store i64 %171, i64* %XSP, !mcsema_real_eip !113
  %190 = inttoptr i64 %171 to i64*, !mcsema_real_eip !114
  %191 = load i64, i64* %190, !mcsema_real_eip !114
  store i64 %191, i64* %XBX, !mcsema_real_eip !114
  %192 = add i64 %171, 8, !mcsema_real_eip !114
  store i64 %192, i64* %XSP, !mcsema_real_eip !114
  %193 = inttoptr i64 %192 to i64*, !mcsema_real_eip !115
  %194 = load i64, i64* %193, !mcsema_real_eip !115
  store i64 %194, i64* %R12, !mcsema_real_eip !115
  %195 = add i64 %192, 8, !mcsema_real_eip !115
  store i64 %195, i64* %XSP, !mcsema_real_eip !115
  %196 = inttoptr i64 %195 to i64*, !mcsema_real_eip !116
  %197 = load i64, i64* %196, !mcsema_real_eip !116
  store i64 %197, i64* %R13, !mcsema_real_eip !116
  %198 = add i64 %195, 8, !mcsema_real_eip !116
  store i64 %198, i64* %XSP, !mcsema_real_eip !116
  %199 = inttoptr i64 %198 to i64*, !mcsema_real_eip !117
  %200 = load i64, i64* %199, !mcsema_real_eip !117
  store i64 %200, i64* %R14, !mcsema_real_eip !117
  %201 = add i64 %198, 8, !mcsema_real_eip !117
  store i64 %201, i64* %XSP, !mcsema_real_eip !117
  %202 = inttoptr i64 %201 to i64*, !mcsema_real_eip !118
  %203 = load i64, i64* %202, !mcsema_real_eip !118
  store i64 %203, i64* %R15, !mcsema_real_eip !118
  %204 = add i64 %201, 8, !mcsema_real_eip !118
  store i64 %204, i64* %XSP, !mcsema_real_eip !118
  %205 = inttoptr i64 %204 to i64*, !mcsema_real_eip !119
  %206 = load i64, i64* %205, !mcsema_real_eip !119
  store i64 %206, i64* %XBP, !mcsema_real_eip !119
  %207 = add i64 %204, 8, !mcsema_real_eip !119
  store i64 %207, i64* %XSP, !mcsema_real_eip !119
  %208 = add i64 %207, 8, !mcsema_real_eip !120
  %209 = inttoptr i64 %207 to i64*, !mcsema_real_eip !120
  %210 = load i64, i64* %209, !mcsema_real_eip !120
  store i64 %210, i64* %XIP, !mcsema_real_eip !120
  store i64 %208, i64* %XSP, !mcsema_real_eip !120
  ret void, !mcsema_real_eip !120
}

declare x86_64_sysvcc i64 @memcpy(i64 inreg, i64 inreg, i64 inreg)

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64, i64, i64, i64, i64, i64)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_memcpy(i64, i64, i64) #2

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
!5 = !{i64 5}
!6 = !{i64 9}
!7 = !{i64 13}
!8 = !{i64 17}
!9 = !{i64 20}
!10 = !{i64 23}
!11 = !{i64 26}
!12 = !{i64 29}
!13 = !{i64 32}
!14 = !{i64 36}
!15 = !{i64 40}
!16 = !{i64 43}
!17 = !{i64 47}
!18 = !{i64 51}
!19 = !{i64 55}
!20 = !{i64 62}
!21 = !{i64 69}
!22 = !{i64 72}
!23 = !{i64 75}
!24 = !{i64 81}
!25 = !{i64 85}
!26 = !{i64 89}
!27 = !{i64 92}
!28 = !{i64 96}
!29 = !{i64 100}
!30 = !{i64 103}
!31 = !{i64 106}
!32 = !{i64 109}
!33 = !{i64 112}
!34 = !{i64 115}
!35 = !{i64 118}
!36 = !{i64 123}
!37 = !{i64 126}
!38 = !{i64 129}
!39 = !{i64 132}
!40 = !{i64 135}
!41 = !{i64 138}
!42 = !{i64 141}
!43 = !{i64 144}
!44 = !{i64 147}
!45 = !{i64 148}
!46 = !{i64 149}
!47 = !{i64 160}
!48 = !{i64 161}
!49 = !{i64 164}
!50 = !{i64 166}
!51 = !{i64 168}
!52 = !{i64 170}
!53 = !{i64 172}
!54 = !{i64 173}
!55 = !{i64 180}
!56 = !{i64 185}
!57 = !{i64 190}
!58 = !{i64 195}
!59 = !{i64 201}
!60 = !{i64 207}
!61 = !{i64 213}
!62 = !{i64 219}
!63 = !{i64 226}
!64 = !{i64 230}
!65 = !{i64 240}
!66 = !{i64 246}
!67 = !{i64 249}
!68 = !{i64 259}
!69 = !{i64 266}
!70 = !{i64 269}
!71 = !{i64 273}
!72 = !{i64 276}
!73 = !{i64 279}
!74 = !{i64 282}
!75 = !{i64 288}
!76 = !{i64 291}
!77 = !{i64 298}
!78 = !{i64 305}
!79 = !{i64 311}
!80 = !{i64 317}
!81 = !{i64 324}
!82 = !{i64 331}
!83 = !{i64 338}
!84 = !{i64 345}
!85 = !{i64 352}
!86 = !{i64 359}
!87 = !{i64 364}
!88 = !{i64 371}
!89 = !{i64 374}
!90 = !{i64 381}
!91 = !{i64 388}
!92 = !{i64 393}
!93 = !{i64 399}
!94 = !{i64 405}
!95 = !{i64 411}
!96 = !{i64 417}
!97 = !{i64 424}
!98 = !{i64 431}
!99 = !{i64 438}
!100 = !{i64 445}
!101 = !{i64 450}
!102 = !{i64 458}
!103 = !{i64 465}
!104 = !{i64 470}
!105 = !{i64 475}
!106 = !{i64 485}
!107 = !{i64 491}
!108 = !{i64 497}
!109 = !{i64 499}
!110 = !{i64 504}
!111 = !{i64 510}
!112 = !{i64 516}
!113 = !{i64 518}
!114 = !{i64 525}
!115 = !{i64 526}
!116 = !{i64 528}
!117 = !{i64 530}
!118 = !{i64 532}
!119 = !{i64 534}
!120 = !{i64 535}
