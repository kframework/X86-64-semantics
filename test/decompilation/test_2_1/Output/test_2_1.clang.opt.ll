; ModuleID = 'Output/test_2_1.clang.opt.bc'
source_filename = "Output/test_2_1.clang.bc"
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
module asm "  .globl sub_60;"
module asm "  .globl main;"
module asm "  .type main,@function"
module asm "main:"
module asm "  .cfi_startproc;"
module asm "  pushq %rax;"
module asm "  leaq sub_60(%rip), %rax;"
module asm "  xchgq (%rsp), %rax;"
module asm "  jmp __mcsema_attach_call;"
module asm "0:"
module asm "  .size main,0b-main;"
module asm "  .cfi_endproc;"

%0 = type <{ [4 x i8] }>
%1 = type <{ [32 x i8], i32, [24 x i8], i32, [16 x i8] }>
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0xd2 = internal constant %0 <{ [4 x i8] c"%d\0A\00" }>, align 64
@data_0xd8 = internal constant %1 <{ [32 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\18\00\00\00\1C\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [24 x i8] c"S\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\00\00\00", i32 ptrtoint (void ()* @callback_sub_0 to i32), [16 x i8] c"r\00\00\00\00A\0E\10\86\02C\0D\06E\83\03" }>, align 64

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
  %3 = sub i64 %1, 48, !mcsema_real_eip !4
  %4 = xor i64 %3, %1, !mcsema_real_eip !4
  %5 = xor i64 %4, 48, !mcsema_real_eip !4
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
  %15 = icmp ult i64 %1, 48, !mcsema_real_eip !4
  store i1 %15, i1* %CF, !mcsema_real_eip !4
  %16 = xor i64 %1, 48, !mcsema_real_eip !4
  %17 = and i64 %16, %4, !mcsema_real_eip !4
  %18 = lshr i64 %17, 63, !mcsema_real_eip !4
  %19 = trunc i64 %18 to i1, !mcsema_real_eip !4
  store i1 %19, i1* %OF, !mcsema_real_eip !4
  store i64 %3, i64* %XSP, !mcsema_real_eip !4
  %20 = add i64 %1, 24, !mcsema_real_eip !5
  %21 = inttoptr i64 %20 to i64*, !mcsema_real_eip !5
  %22 = inttoptr i64 %20 to i32*, !mcsema_real_eip !5
  %23 = load i32, i32* %22, !mcsema_real_eip !5
  %24 = zext i32 %23 to i64, !mcsema_real_eip !5
  store i64 %24, i64* %XAX, !mcsema_real_eip !5
  %25 = add i64 %1, 16, !mcsema_real_eip !6
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !6
  %27 = inttoptr i64 %25 to i32*, !mcsema_real_eip !6
  %28 = load i32, i32* %27, !mcsema_real_eip !6
  %29 = zext i32 %28 to i64, !mcsema_real_eip !6
  store i64 %29, i64* %R10, !mcsema_real_eip !6
  store i64 ptrtoint (%0* @data_0xd2 to i64), i64* %R11, !mcsema_real_eip !7
  %30 = add i64 %1, -4, !mcsema_real_eip !8
  %31 = inttoptr i64 %30 to i64*, !mcsema_real_eip !8
  %EDI.7 = bitcast i64* %XDI to i32*, !mcsema_real_eip !8
  %EDI_val.8 = load i32, i32* %EDI.7, !mcsema_real_eip !8
  %32 = inttoptr i64 %30 to i32*, !mcsema_real_eip !8
  store i32 %EDI_val.8, i32* %32, !mcsema_real_eip !8
  %RBP_val.9 = load i64, i64* %XBP, !mcsema_real_eip !9
  %33 = add i64 %RBP_val.9, -8, !mcsema_real_eip !9
  %34 = inttoptr i64 %33 to i64*, !mcsema_real_eip !9
  %ESI.10 = bitcast i64* %XSI to i32*, !mcsema_real_eip !9
  %ESI_val.11 = load i32, i32* %ESI.10, !mcsema_real_eip !9
  %35 = inttoptr i64 %33 to i32*, !mcsema_real_eip !9
  store i32 %ESI_val.11, i32* %35, !mcsema_real_eip !9
  %RBP_val.12 = load i64, i64* %XBP, !mcsema_real_eip !10
  %36 = add i64 %RBP_val.12, -12, !mcsema_real_eip !10
  %37 = inttoptr i64 %36 to i64*, !mcsema_real_eip !10
  %EDX.13 = bitcast i64* %XDX to i32*, !mcsema_real_eip !10
  %EDX_val.14 = load i32, i32* %EDX.13, !mcsema_real_eip !10
  %38 = inttoptr i64 %36 to i32*, !mcsema_real_eip !10
  store i32 %EDX_val.14, i32* %38, !mcsema_real_eip !10
  %RBP_val.15 = load i64, i64* %XBP, !mcsema_real_eip !11
  %39 = add i64 %RBP_val.15, -16, !mcsema_real_eip !11
  %40 = inttoptr i64 %39 to i64*, !mcsema_real_eip !11
  %ECX.16 = bitcast i64* %XCX to i32*, !mcsema_real_eip !11
  %ECX_val.17 = load i32, i32* %ECX.16, !mcsema_real_eip !11
  %41 = inttoptr i64 %39 to i32*, !mcsema_real_eip !11
  store i32 %ECX_val.17, i32* %41, !mcsema_real_eip !11
  %RBP_val.18 = load i64, i64* %XBP, !mcsema_real_eip !12
  %42 = add i64 %RBP_val.18, -20, !mcsema_real_eip !12
  %43 = inttoptr i64 %42 to i64*, !mcsema_real_eip !12
  %R8D.19 = bitcast i64* %R8 to i32*, !mcsema_real_eip !12
  %R8D_val.20 = load i32, i32* %R8D.19, !mcsema_real_eip !12
  %44 = inttoptr i64 %42 to i32*, !mcsema_real_eip !12
  store i32 %R8D_val.20, i32* %44, !mcsema_real_eip !12
  %RBP_val.21 = load i64, i64* %XBP, !mcsema_real_eip !13
  %45 = add i64 %RBP_val.21, -24, !mcsema_real_eip !13
  %46 = inttoptr i64 %45 to i64*, !mcsema_real_eip !13
  %R9D.22 = bitcast i64* %R9 to i32*, !mcsema_real_eip !13
  %R9D_val.23 = load i32, i32* %R9D.22, !mcsema_real_eip !13
  %47 = inttoptr i64 %45 to i32*, !mcsema_real_eip !13
  store i32 %R9D_val.23, i32* %47, !mcsema_real_eip !13
  %RBP_val.24 = load i64, i64* %XBP, !mcsema_real_eip !14
  %48 = add i64 %RBP_val.24, -28, !mcsema_real_eip !14
  %49 = inttoptr i64 %48 to i64*, !mcsema_real_eip !14
  %R10D.25 = bitcast i64* %R10 to i32*, !mcsema_real_eip !14
  %R10D_val.26 = load i32, i32* %R10D.25, !mcsema_real_eip !14
  %50 = inttoptr i64 %48 to i32*, !mcsema_real_eip !14
  store i32 %R10D_val.26, i32* %50, !mcsema_real_eip !14
  %RBP_val.27 = load i64, i64* %XBP, !mcsema_real_eip !15
  %51 = add i64 %RBP_val.27, -32, !mcsema_real_eip !15
  %52 = inttoptr i64 %51 to i64*, !mcsema_real_eip !15
  %EAX.28 = bitcast i64* %XAX to i32*, !mcsema_real_eip !15
  %EAX_val.29 = load i32, i32* %EAX.28, !mcsema_real_eip !15
  %53 = inttoptr i64 %51 to i32*, !mcsema_real_eip !15
  store i32 %EAX_val.29, i32* %53, !mcsema_real_eip !15
  %RBP_val.30 = load i64, i64* %XBP, !mcsema_real_eip !16
  %54 = add i64 %RBP_val.30, -28, !mcsema_real_eip !16
  %55 = inttoptr i64 %54 to i64*, !mcsema_real_eip !16
  %56 = inttoptr i64 %54 to i32*, !mcsema_real_eip !16
  %57 = load i32, i32* %56, !mcsema_real_eip !16
  %58 = zext i32 %57 to i64, !mcsema_real_eip !16
  store i64 %58, i64* %XAX, !mcsema_real_eip !16
  %59 = add i64 %RBP_val.30, -32, !mcsema_real_eip !17
  %60 = inttoptr i64 %59 to i64*, !mcsema_real_eip !17
  %61 = inttoptr i64 %59 to i32*, !mcsema_real_eip !17
  %62 = load i32, i32* %61, !mcsema_real_eip !17
  %EAX_val.33 = load i32, i32* %EAX.28, !mcsema_real_eip !17
  %63 = add i32 %EAX_val.33, %62, !mcsema_real_eip !17
  %64 = xor i32 %63, %62, !mcsema_real_eip !17
  %65 = xor i32 %64, %EAX_val.33, !mcsema_real_eip !17
  %66 = and i32 %65, 16, !mcsema_real_eip !17
  %67 = icmp ne i32 %66, 0, !mcsema_real_eip !17
  store i1 %67, i1* %AF, !mcsema_real_eip !17
  %68 = lshr i32 %63, 31, !mcsema_real_eip !17
  %69 = trunc i32 %68 to i1, !mcsema_real_eip !17
  store i1 %69, i1* %SF, !mcsema_real_eip !17
  %70 = icmp eq i32 %63, 0, !mcsema_real_eip !17
  store i1 %70, i1* %ZF, !mcsema_real_eip !17
  %71 = xor i32 %62, %EAX_val.33, !mcsema_real_eip !17
  %72 = xor i32 %71, -1, !mcsema_real_eip !17
  %73 = and i32 %72, %64, !mcsema_real_eip !17
  %74 = lshr i32 %73, 31, !mcsema_real_eip !17
  %75 = and i32 %74, 1, !mcsema_real_eip !17
  %76 = trunc i32 %75 to i1, !mcsema_real_eip !17
  store i1 %76, i1* %OF, !mcsema_real_eip !17
  %77 = trunc i32 %63 to i8, !mcsema_real_eip !17
  %78 = call i8 @llvm.ctpop.i8(i8 %77), !mcsema_real_eip !17
  %79 = trunc i8 %78 to i1, !mcsema_real_eip !17
  %80 = xor i1 %79, true, !mcsema_real_eip !17
  store i1 %80, i1* %PF, !mcsema_real_eip !17
  %81 = icmp ult i32 %63, %62, !mcsema_real_eip !17
  store i1 %81, i1* %CF, !mcsema_real_eip !17
  %82 = zext i32 %63 to i64, !mcsema_real_eip !17
  store i64 %82, i64* %XAX, !mcsema_real_eip !17
  %R11_val.34 = load i64, i64* %R11, !mcsema_real_eip !18
  store i64 %R11_val.34, i64* %XDI, !mcsema_real_eip !18
  %EAX_val.36 = load i32, i32* %EAX.28, !mcsema_real_eip !19
  %83 = zext i32 %EAX_val.36 to i64, !mcsema_real_eip !19
  store i64 %83, i64* %XSI, !mcsema_real_eip !19
  %AL.37 = bitcast i64* %XAX to i8*, !mcsema_real_eip !20
  store i8 0, i8* %AL.37, !mcsema_real_eip !20
  %RDX_val.40 = load i64, i64* %XDX, !mcsema_real_eip !21
  %RCX_val.41 = load i64, i64* %XCX, !mcsema_real_eip !21
  %R8_val.42 = load i64, i64* %R8, !mcsema_real_eip !21
  %R9_val.43 = load i64, i64* %R9, !mcsema_real_eip !21
  %RSP_val.44 = load i64, i64* %XSP, !mcsema_real_eip !21
  %84 = inttoptr i64 %RSP_val.44 to i64*, !mcsema_real_eip !21
  %85 = load i64, i64* %84, !mcsema_real_eip !21
  %86 = add i64 %RSP_val.44, 8, !mcsema_real_eip !21
  %87 = inttoptr i64 %86 to i64*, !mcsema_real_eip !21
  %88 = load i64, i64* %87, !mcsema_real_eip !21
  %89 = add i64 %86, 8, !mcsema_real_eip !21
  %90 = inttoptr i64 %89 to i64*, !mcsema_real_eip !21
  %91 = load i64, i64* %90, !mcsema_real_eip !21
  %92 = add i64 %89, 8, !mcsema_real_eip !21
  %93 = inttoptr i64 %92 to i64*, !mcsema_real_eip !21
  %94 = load i64, i64* %93, !mcsema_real_eip !21
  %95 = add i64 %92, 8, !mcsema_real_eip !21
  %96 = inttoptr i64 %95 to i64*, !mcsema_real_eip !21
  %97 = load i64, i64* %96, !mcsema_real_eip !21
  %98 = add i64 %95, 8, !mcsema_real_eip !21
  %99 = inttoptr i64 %98 to i64*, !mcsema_real_eip !21
  %100 = load i64, i64* %99, !mcsema_real_eip !21
  %101 = add i64 %98, 8, !mcsema_real_eip !21
  %102 = inttoptr i64 %101 to i64*, !mcsema_real_eip !21
  %103 = load i64, i64* %102, !mcsema_real_eip !21
  %104 = add i64 %101, 8, !mcsema_real_eip !21
  %105 = inttoptr i64 %104 to i64*, !mcsema_real_eip !21
  %106 = load i64, i64* %105, !mcsema_real_eip !21
  %107 = add i64 %104, 8, !mcsema_real_eip !21
  %108 = inttoptr i64 %107 to i64*, !mcsema_real_eip !21
  %109 = load i64, i64* %108, !mcsema_real_eip !21
  %110 = add i64 %107, 8, !mcsema_real_eip !21
  %111 = inttoptr i64 %110 to i64*, !mcsema_real_eip !21
  %112 = load i64, i64* %111, !mcsema_real_eip !21
  %113 = sub i64 %RSP_val.44, 8, !mcsema_real_eip !21
  %114 = inttoptr i64 %113 to i64*, !mcsema_real_eip !21
  store i64 -2415393069852865332, i64* %114, !mcsema_real_eip !21
  store i64 %113, i64* %XSP, !mcsema_real_eip !21
  %115 = call x86_64_sysvcc i64 @_printf(i64 %R11_val.34, i64 %83, i64 %RDX_val.40, i64 %RCX_val.41, i64 %R8_val.42, i64 %R9_val.43, i64 %85, i64 %88, i64 %91, i64 %94, i64 %97, i64 %100, i64 %103, i64 %106, i64 %109, i64 %112), !mcsema_real_eip !21
  store i64 %115, i64* %XAX, !mcsema_real_eip !21
  %ECX_val.47 = load i32, i32* %ECX.16, !mcsema_real_eip !22
  store i1 false, i1* %CF, !mcsema_real_eip !22
  store i1 false, i1* %OF, !mcsema_real_eip !22
  store i1 false, i1* %SF, !mcsema_real_eip !22
  store i1 true, i1* %ZF, !mcsema_real_eip !22
  store i1 true, i1* %PF, !mcsema_real_eip !22
  store i1 undef, i1* %AF, !mcsema_real_eip !22
  store i64 0, i64* %XCX, !mcsema_real_eip !22
  %RBP_val.50 = load i64, i64* %XBP, !mcsema_real_eip !23
  %116 = add i64 %RBP_val.50, -36, !mcsema_real_eip !23
  %117 = inttoptr i64 %116 to i64*, !mcsema_real_eip !23
  %EAX_val.52 = load i32, i32* %EAX.28, !mcsema_real_eip !23
  %118 = inttoptr i64 %116 to i32*, !mcsema_real_eip !23
  store i32 %EAX_val.52, i32* %118, !mcsema_real_eip !23
  %ECX_val.54 = load i32, i32* %ECX.16, !mcsema_real_eip !24
  %119 = zext i32 %ECX_val.54 to i64, !mcsema_real_eip !24
  store i64 %119, i64* %XAX, !mcsema_real_eip !24
  %RSP_val.55 = load i64, i64* %XSP, !mcsema_real_eip !25
  %120 = add i64 48, %RSP_val.55, !mcsema_real_eip !25
  %121 = xor i64 %120, %RSP_val.55, !mcsema_real_eip !25
  %122 = xor i64 %121, 48, !mcsema_real_eip !25
  %123 = and i64 %122, 16, !mcsema_real_eip !25
  %124 = icmp ne i64 %123, 0, !mcsema_real_eip !25
  store i1 %124, i1* %AF, !mcsema_real_eip !25
  %125 = lshr i64 %120, 63, !mcsema_real_eip !25
  %126 = trunc i64 %125 to i1, !mcsema_real_eip !25
  store i1 %126, i1* %SF, !mcsema_real_eip !25
  %127 = icmp eq i64 %120, 0, !mcsema_real_eip !25
  store i1 %127, i1* %ZF, !mcsema_real_eip !25
  %128 = xor i64 %RSP_val.55, 48, !mcsema_real_eip !25
  %129 = xor i64 %128, -1, !mcsema_real_eip !25
  %130 = and i64 %129, %121, !mcsema_real_eip !25
  %131 = lshr i64 %130, 63, !mcsema_real_eip !25
  %132 = and i64 %131, 1, !mcsema_real_eip !25
  %133 = trunc i64 %132 to i1, !mcsema_real_eip !25
  store i1 %133, i1* %OF, !mcsema_real_eip !25
  %134 = trunc i64 %120 to i8, !mcsema_real_eip !25
  %135 = call i8 @llvm.ctpop.i8(i8 %134), !mcsema_real_eip !25
  %136 = trunc i8 %135 to i1, !mcsema_real_eip !25
  %137 = xor i1 %136, true, !mcsema_real_eip !25
  store i1 %137, i1* %PF, !mcsema_real_eip !25
  %138 = icmp ult i64 %120, %RSP_val.55, !mcsema_real_eip !25
  store i1 %138, i1* %CF, !mcsema_real_eip !25
  store i64 %120, i64* %XSP, !mcsema_real_eip !25
  %139 = inttoptr i64 %120 to i64*, !mcsema_real_eip !26
  %140 = load i64, i64* %139, !mcsema_real_eip !26
  store i64 %140, i64* %XBP, !mcsema_real_eip !26
  %141 = add i64 %120, 8, !mcsema_real_eip !26
  store i64 %141, i64* %XSP, !mcsema_real_eip !26
  %142 = add i64 %141, 8, !mcsema_real_eip !27
  %143 = inttoptr i64 %141 to i64*, !mcsema_real_eip !27
  %144 = load i64, i64* %143, !mcsema_real_eip !27
  store i64 %144, i64* %XIP, !mcsema_real_eip !27
  store i64 %142, i64* %XSP, !mcsema_real_eip !27
  ret void, !mcsema_real_eip !27
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_60(%RegState*) #1 {
entry:
  %XIP = getelementptr %RegState, %RegState* %0, i32 0, i32 0, !mcsema_real_eip !28
  %XAX = getelementptr %RegState, %RegState* %0, i32 0, i32 1, !mcsema_real_eip !28
  %XBX = getelementptr %RegState, %RegState* %0, i32 0, i32 2, !mcsema_real_eip !28
  %XCX = getelementptr %RegState, %RegState* %0, i32 0, i32 3, !mcsema_real_eip !28
  %XDX = getelementptr %RegState, %RegState* %0, i32 0, i32 4, !mcsema_real_eip !28
  %XSI = getelementptr %RegState, %RegState* %0, i32 0, i32 5, !mcsema_real_eip !28
  %XDI = getelementptr %RegState, %RegState* %0, i32 0, i32 6, !mcsema_real_eip !28
  %XBP = getelementptr %RegState, %RegState* %0, i32 0, i32 8, !mcsema_real_eip !28
  %XSP = getelementptr %RegState, %RegState* %0, i32 0, i32 7, !mcsema_real_eip !28
  %ZF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 12, !mcsema_real_eip !28
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !28
  %PF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 10, !mcsema_real_eip !28
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !28
  %AF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 11, !mcsema_real_eip !28
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !28
  %CF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 9, !mcsema_real_eip !28
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !28
  %SF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 13, !mcsema_real_eip !28
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !28
  %OF_full = getelementptr %RegState, %RegState* %0, i32 0, i32 14, !mcsema_real_eip !28
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !28
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !28
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !28
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !28
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !28
  br label %block_0x60, !mcsema_real_eip !28

block_0x60:                                       ; preds = %entry
  %RBP_val.58 = load i64, i64* %XBP, !mcsema_real_eip !28
  %RSP_val.59 = load i64, i64* %XSP, !mcsema_real_eip !28
  %1 = sub i64 %RSP_val.59, 8, !mcsema_real_eip !28
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !28
  store i64 %RBP_val.58, i64* %2, !mcsema_real_eip !28
  store i64 %1, i64* %XSP, !mcsema_real_eip !28
  store i64 %1, i64* %XBP, !mcsema_real_eip !29
  %RBX_val.61 = load i64, i64* %XBX, !mcsema_real_eip !30
  %3 = sub i64 %1, 8, !mcsema_real_eip !30
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !30
  store i64 %RBX_val.61, i64* %4, !mcsema_real_eip !30
  store i64 %3, i64* %XSP, !mcsema_real_eip !30
  %5 = sub i64 %3, 40, !mcsema_real_eip !31
  %6 = xor i64 %5, %3, !mcsema_real_eip !31
  %7 = xor i64 %6, 40, !mcsema_real_eip !31
  %8 = and i64 %7, 16, !mcsema_real_eip !31
  %9 = icmp ne i64 %8, 0, !mcsema_real_eip !31
  store i1 %9, i1* %AF, !mcsema_real_eip !31
  %10 = trunc i64 %5 to i8, !mcsema_real_eip !31
  %11 = call i8 @llvm.ctpop.i8(i8 %10), !mcsema_real_eip !31
  %12 = trunc i8 %11 to i1, !mcsema_real_eip !31
  %13 = xor i1 %12, true, !mcsema_real_eip !31
  store i1 %13, i1* %PF, !mcsema_real_eip !31
  %14 = icmp eq i64 %5, 0, !mcsema_real_eip !31
  store i1 %14, i1* %ZF, !mcsema_real_eip !31
  %15 = lshr i64 %5, 63, !mcsema_real_eip !31
  %16 = trunc i64 %15 to i1, !mcsema_real_eip !31
  store i1 %16, i1* %SF, !mcsema_real_eip !31
  %17 = icmp ult i64 %3, 40, !mcsema_real_eip !31
  store i1 %17, i1* %CF, !mcsema_real_eip !31
  %18 = xor i64 %3, 40, !mcsema_real_eip !31
  %19 = and i64 %18, %6, !mcsema_real_eip !31
  %20 = lshr i64 %19, 63, !mcsema_real_eip !31
  %21 = trunc i64 %20 to i1, !mcsema_real_eip !31
  store i1 %21, i1* %OF, !mcsema_real_eip !31
  store i64 %5, i64* %XSP, !mcsema_real_eip !31
  store i64 100, i64* %XAX, !mcsema_real_eip !32
  store i64 200, i64* %XCX, !mcsema_real_eip !33
  store i64 300, i64* %XDX, !mcsema_real_eip !34
  store i64 400, i64* %R8, !mcsema_real_eip !35
  store i64 500, i64* %R9, !mcsema_real_eip !36
  store i64 600, i64* %R10, !mcsema_real_eip !37
  store i64 10, i64* %R11, !mcsema_real_eip !38
  store i64 20, i64* %XBX, !mcsema_real_eip !39
  %RBP_val.64 = load i64, i64* %XBP, !mcsema_real_eip !40
  %22 = add i64 %RBP_val.64, -12, !mcsema_real_eip !40
  %23 = inttoptr i64 %22 to i64*, !mcsema_real_eip !40
  %24 = inttoptr i64 %22 to i32*, !mcsema_real_eip !40
  store i32 0, i32* %24, !mcsema_real_eip !40
  %RBP_val.65 = load i64, i64* %XBP, !mcsema_real_eip !41
  %25 = add i64 %RBP_val.65, -16, !mcsema_real_eip !41
  %26 = inttoptr i64 %25 to i64*, !mcsema_real_eip !41
  %EDI.66 = bitcast i64* %XDI to i32*, !mcsema_real_eip !41
  %EDI_val.67 = load i32, i32* %EDI.66, !mcsema_real_eip !41
  %27 = inttoptr i64 %25 to i32*, !mcsema_real_eip !41
  store i32 %EDI_val.67, i32* %27, !mcsema_real_eip !41
  %RBP_val.68 = load i64, i64* %XBP, !mcsema_real_eip !42
  %28 = add i64 %RBP_val.68, -24, !mcsema_real_eip !42
  %29 = inttoptr i64 %28 to i64*, !mcsema_real_eip !42
  %RSI_val.69 = load i64, i64* %XSI, !mcsema_real_eip !42
  store i64 %RSI_val.69, i64* %29, !mcsema_real_eip !42
  %EAX.70 = bitcast i64* %XAX to i32*, !mcsema_real_eip !43
  %EAX_val.71 = load i32, i32* %EAX.70, !mcsema_real_eip !43
  %30 = zext i32 %EAX_val.71 to i64, !mcsema_real_eip !43
  store i64 %30, i64* %XDI, !mcsema_real_eip !43
  %ECX.72 = bitcast i64* %XCX to i32*, !mcsema_real_eip !44
  %ECX_val.73 = load i32, i32* %ECX.72, !mcsema_real_eip !44
  %31 = zext i32 %ECX_val.73 to i64, !mcsema_real_eip !44
  store i64 %31, i64* %XSI, !mcsema_real_eip !44
  %R8D.74 = bitcast i64* %R8 to i32*, !mcsema_real_eip !45
  %R8D_val.75 = load i32, i32* %R8D.74, !mcsema_real_eip !45
  %32 = zext i32 %R8D_val.75 to i64, !mcsema_real_eip !45
  store i64 %32, i64* %XCX, !mcsema_real_eip !45
  %R9D.76 = bitcast i64* %R9 to i32*, !mcsema_real_eip !46
  %R9D_val.77 = load i32, i32* %R9D.76, !mcsema_real_eip !46
  %33 = zext i32 %R9D_val.77 to i64, !mcsema_real_eip !46
  store i64 %33, i64* %R8, !mcsema_real_eip !46
  %R10D.78 = bitcast i64* %R10 to i32*, !mcsema_real_eip !47
  %R10D_val.79 = load i32, i32* %R10D.78, !mcsema_real_eip !47
  %34 = zext i32 %R10D_val.79 to i64, !mcsema_real_eip !47
  store i64 %34, i64* %R9, !mcsema_real_eip !47
  %RSP_val.80 = load i64, i64* %XSP, !mcsema_real_eip !48
  %35 = inttoptr i64 %RSP_val.80 to i64*, !mcsema_real_eip !48
  %36 = inttoptr i64 %RSP_val.80 to i32*, !mcsema_real_eip !48
  store i32 10, i32* %36, !mcsema_real_eip !48
  %RSP_val.81 = load i64, i64* %XSP, !mcsema_real_eip !49
  %37 = add i64 %RSP_val.81, 8, !mcsema_real_eip !49
  %38 = inttoptr i64 %37 to i64*, !mcsema_real_eip !49
  %39 = inttoptr i64 %37 to i32*, !mcsema_real_eip !49
  store i32 20, i32* %39, !mcsema_real_eip !49
  %RBP_val.82 = load i64, i64* %XBP, !mcsema_real_eip !50
  %40 = add i64 %RBP_val.82, -28, !mcsema_real_eip !50
  %41 = inttoptr i64 %40 to i64*, !mcsema_real_eip !50
  %EBX.83 = bitcast i64* %XBX to i32*, !mcsema_real_eip !50
  %EBX_val.84 = load i32, i32* %EBX.83, !mcsema_real_eip !50
  %42 = inttoptr i64 %40 to i32*, !mcsema_real_eip !50
  store i32 %EBX_val.84, i32* %42, !mcsema_real_eip !50
  %RBP_val.85 = load i64, i64* %XBP, !mcsema_real_eip !51
  %43 = add i64 %RBP_val.85, -32, !mcsema_real_eip !51
  %44 = inttoptr i64 %43 to i64*, !mcsema_real_eip !51
  %R11D.86 = bitcast i64* %R11 to i32*, !mcsema_real_eip !51
  %R11D_val.87 = load i32, i32* %R11D.86, !mcsema_real_eip !51
  %45 = inttoptr i64 %43 to i32*, !mcsema_real_eip !51
  store i32 %R11D_val.87, i32* %45, !mcsema_real_eip !51
  %RSP_val.88 = load i64, i64* %XSP, !mcsema_real_eip !52
  %46 = sub i64 %RSP_val.88, 8, !mcsema_real_eip !52
  %47 = inttoptr i64 %46 to i64*, !mcsema_real_eip !52
  store i64 -4981261766360305936, i64* %47, !mcsema_real_eip !52
  store i64 %46, i64* %XSP, !mcsema_real_eip !52
  call x86_64_sysvcc void @sub_0(%RegState* %0), !mcsema_real_eip !52
  %RSP_val.89 = load i64, i64* %XSP, !mcsema_real_eip !53
  %48 = add i64 40, %RSP_val.89, !mcsema_real_eip !53
  %49 = xor i64 %48, %RSP_val.89, !mcsema_real_eip !53
  %50 = xor i64 %49, 40, !mcsema_real_eip !53
  %51 = and i64 %50, 16, !mcsema_real_eip !53
  %52 = icmp ne i64 %51, 0, !mcsema_real_eip !53
  store i1 %52, i1* %AF, !mcsema_real_eip !53
  %53 = lshr i64 %48, 63, !mcsema_real_eip !53
  %54 = trunc i64 %53 to i1, !mcsema_real_eip !53
  store i1 %54, i1* %SF, !mcsema_real_eip !53
  %55 = icmp eq i64 %48, 0, !mcsema_real_eip !53
  store i1 %55, i1* %ZF, !mcsema_real_eip !53
  %56 = xor i64 %RSP_val.89, 40, !mcsema_real_eip !53
  %57 = xor i64 %56, -1, !mcsema_real_eip !53
  %58 = and i64 %57, %49, !mcsema_real_eip !53
  %59 = lshr i64 %58, 63, !mcsema_real_eip !53
  %60 = and i64 %59, 1, !mcsema_real_eip !53
  %61 = trunc i64 %60 to i1, !mcsema_real_eip !53
  store i1 %61, i1* %OF, !mcsema_real_eip !53
  %62 = trunc i64 %48 to i8, !mcsema_real_eip !53
  %63 = call i8 @llvm.ctpop.i8(i8 %62), !mcsema_real_eip !53
  %64 = trunc i8 %63 to i1, !mcsema_real_eip !53
  %65 = xor i1 %64, true, !mcsema_real_eip !53
  store i1 %65, i1* %PF, !mcsema_real_eip !53
  %66 = icmp ult i64 %48, %RSP_val.89, !mcsema_real_eip !53
  store i1 %66, i1* %CF, !mcsema_real_eip !53
  store i64 %48, i64* %XSP, !mcsema_real_eip !53
  %67 = inttoptr i64 %48 to i64*, !mcsema_real_eip !54
  %68 = load i64, i64* %67, !mcsema_real_eip !54
  store i64 %68, i64* %XBX, !mcsema_real_eip !54
  %69 = add i64 %48, 8, !mcsema_real_eip !54
  store i64 %69, i64* %XSP, !mcsema_real_eip !54
  %70 = inttoptr i64 %69 to i64*, !mcsema_real_eip !55
  %71 = load i64, i64* %70, !mcsema_real_eip !55
  store i64 %71, i64* %XBP, !mcsema_real_eip !55
  %72 = add i64 %69, 8, !mcsema_real_eip !55
  store i64 %72, i64* %XSP, !mcsema_real_eip !55
  %73 = add i64 %72, 8, !mcsema_real_eip !56
  %74 = inttoptr i64 %72 to i64*, !mcsema_real_eip !56
  %75 = load i64, i64* %74, !mcsema_real_eip !56
  store i64 %75, i64* %XIP, !mcsema_real_eip !56
  store i64 %73, i64* %XSP, !mcsema_real_eip !56
  ret void, !mcsema_real_eip !56
}

declare x86_64_sysvcc i64 @printf(i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64 inreg, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

; Function Attrs: naked noinline
declare void @callback_sub_0() #2

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #2

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
!5 = !{i64 8}
!6 = !{i64 11}
!7 = !{i64 15}
!8 = !{i64 25}
!9 = !{i64 28}
!10 = !{i64 31}
!11 = !{i64 34}
!12 = !{i64 37}
!13 = !{i64 41}
!14 = !{i64 45}
!15 = !{i64 49}
!16 = !{i64 52}
!17 = !{i64 55}
!18 = !{i64 58}
!19 = !{i64 61}
!20 = !{i64 63}
!21 = !{i64 65}
!22 = !{i64 70}
!23 = !{i64 72}
!24 = !{i64 75}
!25 = !{i64 77}
!26 = !{i64 81}
!27 = !{i64 82}
!28 = !{i64 96}
!29 = !{i64 97}
!30 = !{i64 100}
!31 = !{i64 101}
!32 = !{i64 105}
!33 = !{i64 110}
!34 = !{i64 115}
!35 = !{i64 120}
!36 = !{i64 126}
!37 = !{i64 132}
!38 = !{i64 138}
!39 = !{i64 144}
!40 = !{i64 149}
!41 = !{i64 156}
!42 = !{i64 159}
!43 = !{i64 163}
!44 = !{i64 165}
!45 = !{i64 167}
!46 = !{i64 170}
!47 = !{i64 173}
!48 = !{i64 176}
!49 = !{i64 183}
!50 = !{i64 191}
!51 = !{i64 194}
!52 = !{i64 198}
!53 = !{i64 203}
!54 = !{i64 207}
!55 = !{i64 208}
!56 = !{i64 209}
