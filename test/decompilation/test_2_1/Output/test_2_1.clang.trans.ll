; ModuleID = 'Output/test_2_1.clang.trans.bc'
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
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 64
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 64
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
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
  %_load_rbp_ptr_ = load i8*, i8** %_RBP_ptr_
  %RSP_val.59 = load i64, i64* %XSP, !mcsema_real_eip !28
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %1 = sub i64 %RSP_val.59, 8, !mcsema_real_eip !28
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_load_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %1, i64* %XSP, !mcsema_real_eip !28
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %1, i64* %XBP, !mcsema_real_eip !29
  %RBX_val.61 = load i64, i64* %XBX, !mcsema_real_eip !30
  %_load_rsp_ptr_2 = load i8*, i8** %_RSP_ptr_
  %RSP_val.62 = load i64, i64* %XSP, !mcsema_real_eip !30
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -8
  %2 = sub i64 %RSP_val.62, 8, !mcsema_real_eip !30
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  store i64 %RBX_val.61, i64* %_allin_new_bt_4, !mcsema_real_eip !30
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !30
  %_new_gep_6 = getelementptr i8, i8* %_new_gep_3, i64 -40
  %3 = sub i64 %2, 40, !mcsema_real_eip !31
  %_trans_p2i_ = ptrtoint i8* %_new_gep_6 to i64
  %_trans_p2i_7 = ptrtoint i8* %_new_gep_3 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_7
  %4 = xor i64 %_trans_xor_, 40, !mcsema_real_eip !31
  %5 = and i64 %4, 16, !mcsema_real_eip !31
  %6 = icmp ne i64 %5, 0, !mcsema_real_eip !31
  store i1 %6, i1* %AF, !mcsema_real_eip !31
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %7 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !31
  %8 = trunc i8 %7 to i1, !mcsema_real_eip !31
  %9 = xor i1 %8, true, !mcsema_real_eip !31
  store i1 %9, i1* %PF, !mcsema_real_eip !31
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_, 0
  store i1 %_trans_icmp_eq_, i1* %ZF, !mcsema_real_eip !31
  %10 = lshr i64 %3, 63, !mcsema_real_eip !31
  %11 = trunc i64 %10 to i1, !mcsema_real_eip !31
  store i1 %11, i1* %SF, !mcsema_real_eip !31
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_7, 40
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !31
  %_trans_xor_12 = xor i64 %_trans_p2i_7, 40
  %12 = and i64 %_trans_xor_12, %_trans_xor_, !mcsema_real_eip !31
  %13 = lshr i64 %12, 63, !mcsema_real_eip !31
  %14 = trunc i64 %13 to i1, !mcsema_real_eip !31
  store i1 %14, i1* %OF, !mcsema_real_eip !31
  store volatile i8* %_new_gep_6, i8** %_RSP_ptr_
  store i64 %3, i64* %XSP, !mcsema_real_eip !31
  store i64 100, i64* %XAX, !mcsema_real_eip !32
  store i64 200, i64* %XCX, !mcsema_real_eip !33
  store i64 300, i64* %XDX, !mcsema_real_eip !34
  store i64 400, i64* %R8, !mcsema_real_eip !35
  store i64 500, i64* %R9, !mcsema_real_eip !36
  store i64 600, i64* %R10, !mcsema_real_eip !37
  store i64 10, i64* %R11, !mcsema_real_eip !38
  store i64 20, i64* %XBX, !mcsema_real_eip !39
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -12
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %15 = ptrtoint i64* %_allin_new_bt_18 to i64, !mcsema_real_eip !40
  %16 = inttoptr i64 %15 to i32*, !mcsema_real_eip !40
  store i32 0, i32* %16, !mcsema_real_eip !40
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -16
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %EDI.66 = bitcast i64* %XDI to i32*, !mcsema_real_eip !41
  %EDI_val.67 = load i32, i32* %EDI.66, !mcsema_real_eip !41
  %17 = ptrtoint i64* %_allin_new_bt_21 to i64, !mcsema_real_eip !41
  %18 = inttoptr i64 %17 to i32*, !mcsema_real_eip !41
  store i32 %EDI_val.67, i32* %18, !mcsema_real_eip !41
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -24
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %RSI_val.69 = load i64, i64* %XSI, !mcsema_real_eip !42
  store i64 %RSI_val.69, i64* %_allin_new_bt_24, !mcsema_real_eip !42
  %EAX.70 = bitcast i64* %XAX to i32*, !mcsema_real_eip !43
  %EAX_val.71 = load i32, i32* %EAX.70, !mcsema_real_eip !43
  %19 = zext i32 %EAX_val.71 to i64, !mcsema_real_eip !43
  store i64 %19, i64* %XDI, !mcsema_real_eip !43
  %ECX.72 = bitcast i64* %XCX to i32*, !mcsema_real_eip !44
  %ECX_val.73 = load i32, i32* %ECX.72, !mcsema_real_eip !44
  %20 = zext i32 %ECX_val.73 to i64, !mcsema_real_eip !44
  store i64 %20, i64* %XSI, !mcsema_real_eip !44
  %R8D.74 = bitcast i64* %R8 to i32*, !mcsema_real_eip !45
  %R8D_val.75 = load i32, i32* %R8D.74, !mcsema_real_eip !45
  %21 = zext i32 %R8D_val.75 to i64, !mcsema_real_eip !45
  store i64 %21, i64* %XCX, !mcsema_real_eip !45
  %R9D.76 = bitcast i64* %R9 to i32*, !mcsema_real_eip !46
  %R9D_val.77 = load i32, i32* %R9D.76, !mcsema_real_eip !46
  %22 = zext i32 %R9D_val.77 to i64, !mcsema_real_eip !46
  store i64 %22, i64* %R8, !mcsema_real_eip !46
  %R10D.78 = bitcast i64* %R10 to i32*, !mcsema_real_eip !47
  %R10D_val.79 = load i32, i32* %R10D.78, !mcsema_real_eip !47
  %23 = zext i32 %R10D_val.79 to i64, !mcsema_real_eip !47
  store i64 %23, i64* %R9, !mcsema_real_eip !47
  %_load_rsp_ptr_25 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_27 = bitcast i8* %_load_rsp_ptr_25 to i64*
  %24 = ptrtoint i64* %_allin_new_bt_27 to i64, !mcsema_real_eip !48
  %25 = inttoptr i64 %24 to i32*, !mcsema_real_eip !48
  store i32 10, i32* %25, !mcsema_real_eip !48
  %_load_rsp_ptr_28 = load i8*, i8** %_RSP_ptr_
  %_new_gep_29 = getelementptr i8, i8* %_load_rsp_ptr_28, i64 8
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %26 = ptrtoint i64* %_allin_new_bt_30 to i64, !mcsema_real_eip !49
  %27 = inttoptr i64 %26 to i32*, !mcsema_real_eip !49
  store i32 20, i32* %27, !mcsema_real_eip !49
  %_load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -28
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  %EBX.83 = bitcast i64* %XBX to i32*, !mcsema_real_eip !50
  %EBX_val.84 = load i32, i32* %EBX.83, !mcsema_real_eip !50
  %28 = ptrtoint i64* %_allin_new_bt_33 to i64, !mcsema_real_eip !50
  %29 = inttoptr i64 %28 to i32*, !mcsema_real_eip !50
  store i32 %EBX_val.84, i32* %29, !mcsema_real_eip !50
  %_load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_34, i64 -32
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %R11D.86 = bitcast i64* %R11 to i32*, !mcsema_real_eip !51
  %R11D_val.87 = load i32, i32* %R11D.86, !mcsema_real_eip !51
  %30 = ptrtoint i64* %_allin_new_bt_36 to i64, !mcsema_real_eip !51
  %31 = inttoptr i64 %30 to i32*, !mcsema_real_eip !51
  store i32 %R11D_val.87, i32* %31, !mcsema_real_eip !51
  %_load_rsp_ptr_37 = load i8*, i8** %_RSP_ptr_
  %RSP_val.88 = load i64, i64* %XSP, !mcsema_real_eip !52
  %_new_gep_38 = getelementptr i8, i8* %_load_rsp_ptr_37, i64 -8
  %32 = sub i64 %RSP_val.88, 8, !mcsema_real_eip !52
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_39, !mcsema_real_eip !52
  store volatile i8* %_new_gep_38, i8** %_RSP_ptr_
  store i64 %32, i64* %XSP, !mcsema_real_eip !52
  %_load_rbp_ptr_65 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.1(%RegState* %0, i8* %_new_gep_38, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_65)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  %RSP_val.89 = load i64, i64* %XSP, !mcsema_real_eip !53
  %_new_gep_41 = getelementptr i8, i8* %_gep_fix_, i64 40
  %33 = add i64 40, %RSP_val.89, !mcsema_real_eip !53
  %_trans_p2i_42 = ptrtoint i8* %_new_gep_41 to i64
  %_trans_p2i_43 = ptrtoint i8* %_gep_fix_ to i64
  %_trans_xor_44 = xor i64 %_trans_p2i_42, %_trans_p2i_43
  %34 = xor i64 %_trans_xor_44, 40, !mcsema_real_eip !53
  %35 = and i64 %34, 16, !mcsema_real_eip !53
  %36 = icmp ne i64 %35, 0, !mcsema_real_eip !53
  store i1 %36, i1* %AF, !mcsema_real_eip !53
  %37 = lshr i64 %33, 63, !mcsema_real_eip !53
  %38 = trunc i64 %37 to i1, !mcsema_real_eip !53
  store i1 %38, i1* %SF, !mcsema_real_eip !53
  %_trans_icmp_eq_46 = icmp eq i64 %_trans_p2i_42, 0
  store i1 %_trans_icmp_eq_46, i1* %ZF, !mcsema_real_eip !53
  %_trans_xor_48 = xor i64 %_trans_p2i_43, 40
  %39 = xor i64 %_trans_xor_48, -1, !mcsema_real_eip !53
  %40 = and i64 %39, %_trans_xor_44, !mcsema_real_eip !53
  %41 = lshr i64 %40, 63, !mcsema_real_eip !53
  %42 = and i64 %41, 1, !mcsema_real_eip !53
  %43 = trunc i64 %42 to i1, !mcsema_real_eip !53
  store i1 %43, i1* %OF, !mcsema_real_eip !53
  %_trans_trunc_53 = trunc i64 %_trans_p2i_42 to i8
  %44 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_53), !mcsema_real_eip !53
  %45 = trunc i8 %44 to i1, !mcsema_real_eip !53
  %46 = xor i1 %45, true, !mcsema_real_eip !53
  store i1 %46, i1* %PF, !mcsema_real_eip !53
  %_trans_icmp_ne_55 = icmp ne i64 %_trans_p2i_42, %RSP_val.89
  store i1 %_trans_icmp_ne_55, i1* %CF, !mcsema_real_eip !53
  store volatile i8* %_new_gep_41, i8** %_RSP_ptr_
  store i64 %33, i64* %XSP, !mcsema_real_eip !53
  %_allin_new_bt_57 = bitcast i8* %_new_gep_41 to i64*
  %47 = load i64, i64* %_allin_new_bt_57, !mcsema_real_eip !54
  store i64 %47, i64* %XBX, !mcsema_real_eip !54
  %_new_gep_58 = getelementptr i8, i8* %_new_gep_41, i64 8
  %48 = add i64 %33, 8, !mcsema_real_eip !54
  store volatile i8* %_new_gep_58, i8** %_RSP_ptr_
  store i64 %48, i64* %XSP, !mcsema_real_eip !54
  %_allin_new_bt_60 = bitcast i8* %_new_gep_58 to i64*
  %49 = load i64, i64* %_allin_new_bt_60, !mcsema_real_eip !55
  %_new_int2ptr_ = inttoptr i64 %49 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %49, i64* %XBP, !mcsema_real_eip !55
  %_new_gep_61 = getelementptr i8, i8* %_new_gep_58, i64 8
  %50 = add i64 %48, 8, !mcsema_real_eip !55
  store volatile i8* %_new_gep_61, i8** %_RSP_ptr_
  store i64 %50, i64* %XSP, !mcsema_real_eip !55
  %_new_gep_63 = getelementptr i8, i8* %_new_gep_61, i64 8
  %51 = add i64 %50, 8, !mcsema_real_eip !56
  %_allin_new_bt_64 = bitcast i8* %_new_gep_61 to i64*
  %52 = load i64, i64* %_allin_new_bt_64, !mcsema_real_eip !56
  store i64 %52, i64* %XIP, !mcsema_real_eip !56
  store volatile i8* %_new_gep_63, i8** %_RSP_ptr_
  store i64 %51, i64* %XSP, !mcsema_real_eip !56
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

; Function Attrs: noinline
define x86_64_sysvcc void @sub_0.1(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 64
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 64
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
  %R8 = getelementptr %RegState, %RegState* %0, i32 0, i32 64, !mcsema_real_eip !2
  %R9 = getelementptr %RegState, %RegState* %0, i32 0, i32 65, !mcsema_real_eip !2
  %R10 = getelementptr %RegState, %RegState* %0, i32 0, i32 66, !mcsema_real_eip !2
  %R11 = getelementptr %RegState, %RegState* %0, i32 0, i32 67, !mcsema_real_eip !2
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
  %_load_rsp_ptr_2 = load i8*, i8** %_RSP_ptr_
  %RSP_val.3 = load i64, i64* %XSP, !mcsema_real_eip !4
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -48
  %2 = sub i64 %RSP_val.3, 48, !mcsema_real_eip !4
  %_trans_p2i_ = ptrtoint i8* %_new_gep_3 to i64
  %_trans_p2i_4 = ptrtoint i8* %_load_rsp_ptr_2 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_4
  %3 = xor i64 %_trans_xor_, 48, !mcsema_real_eip !4
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
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_4, 48
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !4
  %_trans_xor_9 = xor i64 %_trans_p2i_4, 48
  %11 = and i64 %_trans_xor_9, %_trans_xor_, !mcsema_real_eip !4
  %12 = lshr i64 %11, 63, !mcsema_real_eip !4
  %13 = trunc i64 %12 to i1, !mcsema_real_eip !4
  store i1 %13, i1* %OF, !mcsema_real_eip !4
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !4
  %_load_rbp_ptr_13 = load i8*, i8** %_RBP_ptr_
  %_new_gep_14 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 24
  %_allin_new_bt_15 = bitcast i8* %_new_gep_14 to i64*
  %14 = ptrtoint i64* %_allin_new_bt_15 to i64, !mcsema_real_eip !5
  %15 = inttoptr i64 %14 to i32*, !mcsema_real_eip !5
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_ptr_bt_ = bitcast i32* %15 to i8*
  %_offset_above_rbp_ = sub i64 %14, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_ptr_bt_, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_ptr_bt_, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_ptr_bt_, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %16, label %17

; <label>:16:                                     ; preds = %block_0x0
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i32*
  br label %17

; <label>:17:                                     ; preds = %block_0x0, %16
  %18 = phi i32* [ %15, %block_0x0 ], [ %_address_in_parent_stack_bt_, %16 ]
  %_new_load_ = load i32, i32* %18
  %19 = zext i32 %_new_load_ to i64, !mcsema_real_eip !5
  store i64 %19, i64* %XAX, !mcsema_real_eip !5
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 16
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %20 = ptrtoint i64* %_allin_new_bt_18 to i64, !mcsema_real_eip !6
  %21 = inttoptr i64 %20 to i32*, !mcsema_real_eip !6
  %_ptr_bt_99 = bitcast i32* %21 to i8*
  %_offset_above_rbp_100 = sub i64 %20, %_local_end_to_int_
  %_pot_address_in_parent_stack_101 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_100
  %_cond1_102 = icmp ugt i8* %_ptr_bt_99, %_local_stack_end_ptr_
  %_cond2_1_103 = icmp ugt i8* %_ptr_bt_99, %_parent_stack_end_ptr_
  %_cond2_2_104 = icmp ult i8* %_ptr_bt_99, %_parent_stack_start_ptr_
  %_cond2_105 = or i1 %_cond2_1_103, %_cond2_2_104
  %_cond4_106 = icmp ule i8* %_pot_address_in_parent_stack_101, %_parent_stack_end_ptr_
  %_cond1_n_cond2_107 = and i1 %_cond1_102, %_cond2_105
  %_cond1_n_cond2_cond3_108 = and i1 %_cond1_n_cond2_107, %_cond4_106
  br i1 %_cond1_n_cond2_cond3_108, label %22, label %23

; <label>:22:                                     ; preds = %17
  %_address_in_parent_stack_bt_110 = bitcast i8* %_pot_address_in_parent_stack_101 to i32*
  br label %23

; <label>:23:                                     ; preds = %17, %22
  %24 = phi i32* [ %21, %17 ], [ %_address_in_parent_stack_bt_110, %22 ]
  %_new_load_111 = load i32, i32* %24
  %25 = zext i32 %_new_load_111 to i64, !mcsema_real_eip !6
  store i64 %25, i64* %R10, !mcsema_real_eip !6
  store i64 ptrtoint (%0* @data_0xd2 to i64), i64* %R11, !mcsema_real_eip !7
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_13, i64 -4
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %EDI.7 = bitcast i64* %XDI to i32*, !mcsema_real_eip !8
  %EDI_val.8 = load i32, i32* %EDI.7, !mcsema_real_eip !8
  %26 = ptrtoint i64* %_allin_new_bt_21 to i64, !mcsema_real_eip !8
  %27 = inttoptr i64 %26 to i32*, !mcsema_real_eip !8
  store i32 %EDI_val.8, i32* %27, !mcsema_real_eip !8
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -8
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %ESI.10 = bitcast i64* %XSI to i32*, !mcsema_real_eip !9
  %ESI_val.11 = load i32, i32* %ESI.10, !mcsema_real_eip !9
  %28 = ptrtoint i64* %_allin_new_bt_24 to i64, !mcsema_real_eip !9
  %29 = inttoptr i64 %28 to i32*, !mcsema_real_eip !9
  store i32 %ESI_val.11, i32* %29, !mcsema_real_eip !9
  %_load_rbp_ptr_25 = load i8*, i8** %_RBP_ptr_
  %_new_gep_26 = getelementptr i8, i8* %_load_rbp_ptr_25, i64 -12
  %_allin_new_bt_27 = bitcast i8* %_new_gep_26 to i64*
  %EDX.13 = bitcast i64* %XDX to i32*, !mcsema_real_eip !10
  %EDX_val.14 = load i32, i32* %EDX.13, !mcsema_real_eip !10
  %30 = ptrtoint i64* %_allin_new_bt_27 to i64, !mcsema_real_eip !10
  %31 = inttoptr i64 %30 to i32*, !mcsema_real_eip !10
  store i32 %EDX_val.14, i32* %31, !mcsema_real_eip !10
  %_load_rbp_ptr_28 = load i8*, i8** %_RBP_ptr_
  %_new_gep_29 = getelementptr i8, i8* %_load_rbp_ptr_28, i64 -16
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %ECX.16 = bitcast i64* %XCX to i32*, !mcsema_real_eip !11
  %ECX_val.17 = load i32, i32* %ECX.16, !mcsema_real_eip !11
  %32 = ptrtoint i64* %_allin_new_bt_30 to i64, !mcsema_real_eip !11
  %33 = inttoptr i64 %32 to i32*, !mcsema_real_eip !11
  store i32 %ECX_val.17, i32* %33, !mcsema_real_eip !11
  %_load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -20
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  %R8D.19 = bitcast i64* %R8 to i32*, !mcsema_real_eip !12
  %R8D_val.20 = load i32, i32* %R8D.19, !mcsema_real_eip !12
  %34 = ptrtoint i64* %_allin_new_bt_33 to i64, !mcsema_real_eip !12
  %35 = inttoptr i64 %34 to i32*, !mcsema_real_eip !12
  store i32 %R8D_val.20, i32* %35, !mcsema_real_eip !12
  %_load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_34, i64 -24
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %R9D.22 = bitcast i64* %R9 to i32*, !mcsema_real_eip !13
  %R9D_val.23 = load i32, i32* %R9D.22, !mcsema_real_eip !13
  %36 = ptrtoint i64* %_allin_new_bt_36 to i64, !mcsema_real_eip !13
  %37 = inttoptr i64 %36 to i32*, !mcsema_real_eip !13
  store i32 %R9D_val.23, i32* %37, !mcsema_real_eip !13
  %_load_rbp_ptr_37 = load i8*, i8** %_RBP_ptr_
  %_new_gep_38 = getelementptr i8, i8* %_load_rbp_ptr_37, i64 -28
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  %R10D.25 = bitcast i64* %R10 to i32*, !mcsema_real_eip !14
  %R10D_val.26 = load i32, i32* %R10D.25, !mcsema_real_eip !14
  %38 = ptrtoint i64* %_allin_new_bt_39 to i64, !mcsema_real_eip !14
  %39 = inttoptr i64 %38 to i32*, !mcsema_real_eip !14
  store i32 %R10D_val.26, i32* %39, !mcsema_real_eip !14
  %_load_rbp_ptr_40 = load i8*, i8** %_RBP_ptr_
  %_new_gep_41 = getelementptr i8, i8* %_load_rbp_ptr_40, i64 -32
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %EAX.28 = bitcast i64* %XAX to i32*, !mcsema_real_eip !15
  %EAX_val.29 = load i32, i32* %EAX.28, !mcsema_real_eip !15
  %40 = ptrtoint i64* %_allin_new_bt_42 to i64, !mcsema_real_eip !15
  %41 = inttoptr i64 %40 to i32*, !mcsema_real_eip !15
  store i32 %EAX_val.29, i32* %41, !mcsema_real_eip !15
  %_load_rbp_ptr_43 = load i8*, i8** %_RBP_ptr_
  %_new_gep_44 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -28
  %_allin_new_bt_45 = bitcast i8* %_new_gep_44 to i64*
  %42 = ptrtoint i64* %_allin_new_bt_45 to i64, !mcsema_real_eip !16
  %43 = inttoptr i64 %42 to i32*, !mcsema_real_eip !16
  %_ptr_bt_114 = bitcast i32* %43 to i8*
  %_offset_above_rbp_115 = sub i64 %42, %_local_end_to_int_
  %_pot_address_in_parent_stack_116 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_115
  %_cond1_117 = icmp ugt i8* %_ptr_bt_114, %_local_stack_end_ptr_
  %_cond2_1_118 = icmp ugt i8* %_ptr_bt_114, %_parent_stack_end_ptr_
  %_cond2_2_119 = icmp ult i8* %_ptr_bt_114, %_parent_stack_start_ptr_
  %_cond2_120 = or i1 %_cond2_1_118, %_cond2_2_119
  %_cond4_121 = icmp ule i8* %_pot_address_in_parent_stack_116, %_parent_stack_end_ptr_
  %_cond1_n_cond2_122 = and i1 %_cond1_117, %_cond2_120
  %_cond1_n_cond2_cond3_123 = and i1 %_cond1_n_cond2_122, %_cond4_121
  br i1 %_cond1_n_cond2_cond3_123, label %44, label %45

; <label>:44:                                     ; preds = %23
  %_address_in_parent_stack_bt_125 = bitcast i8* %_pot_address_in_parent_stack_116 to i32*
  br label %45

; <label>:45:                                     ; preds = %23, %44
  %46 = phi i32* [ %43, %23 ], [ %_address_in_parent_stack_bt_125, %44 ]
  %_new_load_126 = load i32, i32* %46
  %47 = zext i32 %_new_load_126 to i64, !mcsema_real_eip !16
  store i64 %47, i64* %XAX, !mcsema_real_eip !16
  %_new_gep_47 = getelementptr i8, i8* %_load_rbp_ptr_43, i64 -32
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  %48 = ptrtoint i64* %_allin_new_bt_48 to i64, !mcsema_real_eip !17
  %49 = inttoptr i64 %48 to i32*, !mcsema_real_eip !17
  %_ptr_bt_129 = bitcast i32* %49 to i8*
  %_offset_above_rbp_130 = sub i64 %48, %_local_end_to_int_
  %_pot_address_in_parent_stack_131 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_130
  %_cond1_132 = icmp ugt i8* %_ptr_bt_129, %_local_stack_end_ptr_
  %_cond2_1_133 = icmp ugt i8* %_ptr_bt_129, %_parent_stack_end_ptr_
  %_cond2_2_134 = icmp ult i8* %_ptr_bt_129, %_parent_stack_start_ptr_
  %_cond2_135 = or i1 %_cond2_1_133, %_cond2_2_134
  %_cond4_136 = icmp ule i8* %_pot_address_in_parent_stack_131, %_parent_stack_end_ptr_
  %_cond1_n_cond2_137 = and i1 %_cond1_132, %_cond2_135
  %_cond1_n_cond2_cond3_138 = and i1 %_cond1_n_cond2_137, %_cond4_136
  br i1 %_cond1_n_cond2_cond3_138, label %50, label %51

; <label>:50:                                     ; preds = %45
  %_address_in_parent_stack_bt_140 = bitcast i8* %_pot_address_in_parent_stack_131 to i32*
  br label %51

; <label>:51:                                     ; preds = %45, %50
  %52 = phi i32* [ %49, %45 ], [ %_address_in_parent_stack_bt_140, %50 ]
  %_new_load_141 = load i32, i32* %52
  %EAX_val.33 = load i32, i32* %EAX.28, !mcsema_real_eip !17
  %53 = add i32 %EAX_val.33, %_new_load_141, !mcsema_real_eip !17
  %54 = xor i32 %53, %_new_load_141, !mcsema_real_eip !17
  %55 = xor i32 %54, %EAX_val.33, !mcsema_real_eip !17
  %56 = and i32 %55, 16, !mcsema_real_eip !17
  %57 = icmp ne i32 %56, 0, !mcsema_real_eip !17
  store i1 %57, i1* %AF, !mcsema_real_eip !17
  %58 = lshr i32 %53, 31, !mcsema_real_eip !17
  %59 = trunc i32 %58 to i1, !mcsema_real_eip !17
  store i1 %59, i1* %SF, !mcsema_real_eip !17
  %60 = icmp eq i32 %53, 0, !mcsema_real_eip !17
  store i1 %60, i1* %ZF, !mcsema_real_eip !17
  %61 = xor i32 %_new_load_141, %EAX_val.33, !mcsema_real_eip !17
  %62 = xor i32 %61, -1, !mcsema_real_eip !17
  %63 = and i32 %62, %54, !mcsema_real_eip !17
  %64 = lshr i32 %63, 31, !mcsema_real_eip !17
  %65 = and i32 %64, 1, !mcsema_real_eip !17
  %66 = trunc i32 %65 to i1, !mcsema_real_eip !17
  store i1 %66, i1* %OF, !mcsema_real_eip !17
  %67 = trunc i32 %53 to i8, !mcsema_real_eip !17
  %68 = call i8 @llvm.ctpop.i8(i8 %67), !mcsema_real_eip !17
  %69 = trunc i8 %68 to i1, !mcsema_real_eip !17
  %70 = xor i1 %69, true, !mcsema_real_eip !17
  store i1 %70, i1* %PF, !mcsema_real_eip !17
  %71 = icmp ult i32 %53, %_new_load_141, !mcsema_real_eip !17
  store i1 %71, i1* %CF, !mcsema_real_eip !17
  %72 = zext i32 %53 to i64, !mcsema_real_eip !17
  store i64 %72, i64* %XAX, !mcsema_real_eip !17
  %R11_val.34 = load i64, i64* %R11, !mcsema_real_eip !18
  store i64 %R11_val.34, i64* %XDI, !mcsema_real_eip !18
  %EAX_val.36 = load i32, i32* %EAX.28, !mcsema_real_eip !19
  %73 = zext i32 %EAX_val.36 to i64, !mcsema_real_eip !19
  store i64 %73, i64* %XSI, !mcsema_real_eip !19
  %AL.37 = bitcast i64* %XAX to i8*, !mcsema_real_eip !20
  store i8 0, i8* %AL.37, !mcsema_real_eip !20
  %RDX_val.40 = load i64, i64* %XDX, !mcsema_real_eip !21
  %RCX_val.41 = load i64, i64* %XCX, !mcsema_real_eip !21
  %R8_val.42 = load i64, i64* %R8, !mcsema_real_eip !21
  %R9_val.43 = load i64, i64* %R9, !mcsema_real_eip !21
  %_load_rsp_ptr_49 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_50 = bitcast i8* %_load_rsp_ptr_49 to i64*
  %_ptr_to_int_142 = ptrtoint i64* %_allin_new_bt_50 to i64
  %_offset_above_rbp_145 = sub i64 %_ptr_to_int_142, %_local_end_to_int_
  %_pot_address_in_parent_stack_146 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_145
  %_cond1_147 = icmp ugt i8* %_load_rsp_ptr_49, %_local_stack_end_ptr_
  %_cond2_1_148 = icmp ugt i8* %_load_rsp_ptr_49, %_parent_stack_end_ptr_
  %_cond2_2_149 = icmp ult i8* %_load_rsp_ptr_49, %_parent_stack_start_ptr_
  %_cond2_150 = or i1 %_cond2_1_148, %_cond2_2_149
  %_cond4_151 = icmp ule i8* %_pot_address_in_parent_stack_146, %_parent_stack_end_ptr_
  %_cond1_n_cond2_152 = and i1 %_cond1_147, %_cond2_150
  %_cond1_n_cond2_cond3_153 = and i1 %_cond1_n_cond2_152, %_cond4_151
  br i1 %_cond1_n_cond2_cond3_153, label %74, label %75

; <label>:74:                                     ; preds = %51
  %_address_in_parent_stack_bt_155 = bitcast i8* %_pot_address_in_parent_stack_146 to i64*
  br label %75

; <label>:75:                                     ; preds = %51, %74
  %76 = phi i64* [ %_allin_new_bt_50, %51 ], [ %_address_in_parent_stack_bt_155, %74 ]
  %_new_load_156 = load i64, i64* %76
  %_new_gep_51 = getelementptr i8, i8* %_load_rsp_ptr_49, i64 8
  %_allin_new_bt_52 = bitcast i8* %_new_gep_51 to i64*
  %_ptr_to_int_157 = ptrtoint i64* %_allin_new_bt_52 to i64
  %_offset_above_rbp_160 = sub i64 %_ptr_to_int_157, %_local_end_to_int_
  %_pot_address_in_parent_stack_161 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_160
  %_cond1_162 = icmp ugt i8* %_new_gep_51, %_local_stack_end_ptr_
  %_cond2_1_163 = icmp ugt i8* %_new_gep_51, %_parent_stack_end_ptr_
  %_cond2_2_164 = icmp ult i8* %_new_gep_51, %_parent_stack_start_ptr_
  %_cond2_165 = or i1 %_cond2_1_163, %_cond2_2_164
  %_cond4_166 = icmp ule i8* %_pot_address_in_parent_stack_161, %_parent_stack_end_ptr_
  %_cond1_n_cond2_167 = and i1 %_cond1_162, %_cond2_165
  %_cond1_n_cond2_cond3_168 = and i1 %_cond1_n_cond2_167, %_cond4_166
  br i1 %_cond1_n_cond2_cond3_168, label %77, label %78

; <label>:77:                                     ; preds = %75
  %_address_in_parent_stack_bt_170 = bitcast i8* %_pot_address_in_parent_stack_161 to i64*
  br label %78

; <label>:78:                                     ; preds = %75, %77
  %79 = phi i64* [ %_allin_new_bt_52, %75 ], [ %_address_in_parent_stack_bt_170, %77 ]
  %_new_load_171 = load i64, i64* %79
  %_new_gep_53 = getelementptr i8, i8* %_new_gep_51, i64 8
  %_allin_new_bt_54 = bitcast i8* %_new_gep_53 to i64*
  %_ptr_to_int_172 = ptrtoint i64* %_allin_new_bt_54 to i64
  %_offset_above_rbp_175 = sub i64 %_ptr_to_int_172, %_local_end_to_int_
  %_pot_address_in_parent_stack_176 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_175
  %_cond1_177 = icmp ugt i8* %_new_gep_53, %_local_stack_end_ptr_
  %_cond2_1_178 = icmp ugt i8* %_new_gep_53, %_parent_stack_end_ptr_
  %_cond2_2_179 = icmp ult i8* %_new_gep_53, %_parent_stack_start_ptr_
  %_cond2_180 = or i1 %_cond2_1_178, %_cond2_2_179
  %_cond4_181 = icmp ule i8* %_pot_address_in_parent_stack_176, %_parent_stack_end_ptr_
  %_cond1_n_cond2_182 = and i1 %_cond1_177, %_cond2_180
  %_cond1_n_cond2_cond3_183 = and i1 %_cond1_n_cond2_182, %_cond4_181
  br i1 %_cond1_n_cond2_cond3_183, label %80, label %81

; <label>:80:                                     ; preds = %78
  %_address_in_parent_stack_bt_185 = bitcast i8* %_pot_address_in_parent_stack_176 to i64*
  br label %81

; <label>:81:                                     ; preds = %78, %80
  %82 = phi i64* [ %_allin_new_bt_54, %78 ], [ %_address_in_parent_stack_bt_185, %80 ]
  %_new_load_186 = load i64, i64* %82
  %_new_gep_55 = getelementptr i8, i8* %_new_gep_53, i64 8
  %_allin_new_bt_56 = bitcast i8* %_new_gep_55 to i64*
  %_ptr_to_int_187 = ptrtoint i64* %_allin_new_bt_56 to i64
  %_offset_above_rbp_190 = sub i64 %_ptr_to_int_187, %_local_end_to_int_
  %_pot_address_in_parent_stack_191 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_190
  %_cond1_192 = icmp ugt i8* %_new_gep_55, %_local_stack_end_ptr_
  %_cond2_1_193 = icmp ugt i8* %_new_gep_55, %_parent_stack_end_ptr_
  %_cond2_2_194 = icmp ult i8* %_new_gep_55, %_parent_stack_start_ptr_
  %_cond2_195 = or i1 %_cond2_1_193, %_cond2_2_194
  %_cond4_196 = icmp ule i8* %_pot_address_in_parent_stack_191, %_parent_stack_end_ptr_
  %_cond1_n_cond2_197 = and i1 %_cond1_192, %_cond2_195
  %_cond1_n_cond2_cond3_198 = and i1 %_cond1_n_cond2_197, %_cond4_196
  br i1 %_cond1_n_cond2_cond3_198, label %83, label %84

; <label>:83:                                     ; preds = %81
  %_address_in_parent_stack_bt_200 = bitcast i8* %_pot_address_in_parent_stack_191 to i64*
  br label %84

; <label>:84:                                     ; preds = %81, %83
  %85 = phi i64* [ %_allin_new_bt_56, %81 ], [ %_address_in_parent_stack_bt_200, %83 ]
  %_new_load_201 = load i64, i64* %85
  %_new_gep_57 = getelementptr i8, i8* %_new_gep_55, i64 8
  %_allin_new_bt_58 = bitcast i8* %_new_gep_57 to i64*
  %_ptr_to_int_202 = ptrtoint i64* %_allin_new_bt_58 to i64
  %_offset_above_rbp_205 = sub i64 %_ptr_to_int_202, %_local_end_to_int_
  %_pot_address_in_parent_stack_206 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_205
  %_cond1_207 = icmp ugt i8* %_new_gep_57, %_local_stack_end_ptr_
  %_cond2_1_208 = icmp ugt i8* %_new_gep_57, %_parent_stack_end_ptr_
  %_cond2_2_209 = icmp ult i8* %_new_gep_57, %_parent_stack_start_ptr_
  %_cond2_210 = or i1 %_cond2_1_208, %_cond2_2_209
  %_cond4_211 = icmp ule i8* %_pot_address_in_parent_stack_206, %_parent_stack_end_ptr_
  %_cond1_n_cond2_212 = and i1 %_cond1_207, %_cond2_210
  %_cond1_n_cond2_cond3_213 = and i1 %_cond1_n_cond2_212, %_cond4_211
  br i1 %_cond1_n_cond2_cond3_213, label %86, label %87

; <label>:86:                                     ; preds = %84
  %_address_in_parent_stack_bt_215 = bitcast i8* %_pot_address_in_parent_stack_206 to i64*
  br label %87

; <label>:87:                                     ; preds = %84, %86
  %88 = phi i64* [ %_allin_new_bt_58, %84 ], [ %_address_in_parent_stack_bt_215, %86 ]
  %_new_load_216 = load i64, i64* %88
  %_new_gep_59 = getelementptr i8, i8* %_new_gep_57, i64 8
  %_allin_new_bt_60 = bitcast i8* %_new_gep_59 to i64*
  %_ptr_to_int_217 = ptrtoint i64* %_allin_new_bt_60 to i64
  %_offset_above_rbp_220 = sub i64 %_ptr_to_int_217, %_local_end_to_int_
  %_pot_address_in_parent_stack_221 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_220
  %_cond1_222 = icmp ugt i8* %_new_gep_59, %_local_stack_end_ptr_
  %_cond2_1_223 = icmp ugt i8* %_new_gep_59, %_parent_stack_end_ptr_
  %_cond2_2_224 = icmp ult i8* %_new_gep_59, %_parent_stack_start_ptr_
  %_cond2_225 = or i1 %_cond2_1_223, %_cond2_2_224
  %_cond4_226 = icmp ule i8* %_pot_address_in_parent_stack_221, %_parent_stack_end_ptr_
  %_cond1_n_cond2_227 = and i1 %_cond1_222, %_cond2_225
  %_cond1_n_cond2_cond3_228 = and i1 %_cond1_n_cond2_227, %_cond4_226
  br i1 %_cond1_n_cond2_cond3_228, label %89, label %90

; <label>:89:                                     ; preds = %87
  %_address_in_parent_stack_bt_230 = bitcast i8* %_pot_address_in_parent_stack_221 to i64*
  br label %90

; <label>:90:                                     ; preds = %87, %89
  %91 = phi i64* [ %_allin_new_bt_60, %87 ], [ %_address_in_parent_stack_bt_230, %89 ]
  %_new_load_231 = load i64, i64* %91
  %_new_gep_61 = getelementptr i8, i8* %_new_gep_59, i64 8
  %_allin_new_bt_62 = bitcast i8* %_new_gep_61 to i64*
  %_ptr_to_int_232 = ptrtoint i64* %_allin_new_bt_62 to i64
  %_offset_above_rbp_235 = sub i64 %_ptr_to_int_232, %_local_end_to_int_
  %_pot_address_in_parent_stack_236 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_235
  %_cond1_237 = icmp ugt i8* %_new_gep_61, %_local_stack_end_ptr_
  %_cond2_1_238 = icmp ugt i8* %_new_gep_61, %_parent_stack_end_ptr_
  %_cond2_2_239 = icmp ult i8* %_new_gep_61, %_parent_stack_start_ptr_
  %_cond2_240 = or i1 %_cond2_1_238, %_cond2_2_239
  %_cond4_241 = icmp ule i8* %_pot_address_in_parent_stack_236, %_parent_stack_end_ptr_
  %_cond1_n_cond2_242 = and i1 %_cond1_237, %_cond2_240
  %_cond1_n_cond2_cond3_243 = and i1 %_cond1_n_cond2_242, %_cond4_241
  br i1 %_cond1_n_cond2_cond3_243, label %92, label %93

; <label>:92:                                     ; preds = %90
  %_address_in_parent_stack_bt_245 = bitcast i8* %_pot_address_in_parent_stack_236 to i64*
  br label %93

; <label>:93:                                     ; preds = %90, %92
  %94 = phi i64* [ %_allin_new_bt_62, %90 ], [ %_address_in_parent_stack_bt_245, %92 ]
  %_new_load_246 = load i64, i64* %94
  %_new_gep_63 = getelementptr i8, i8* %_new_gep_61, i64 8
  %_allin_new_bt_64 = bitcast i8* %_new_gep_63 to i64*
  %_ptr_to_int_247 = ptrtoint i64* %_allin_new_bt_64 to i64
  %_offset_above_rbp_250 = sub i64 %_ptr_to_int_247, %_local_end_to_int_
  %_pot_address_in_parent_stack_251 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_250
  %_cond1_252 = icmp ugt i8* %_new_gep_63, %_local_stack_end_ptr_
  %_cond2_1_253 = icmp ugt i8* %_new_gep_63, %_parent_stack_end_ptr_
  %_cond2_2_254 = icmp ult i8* %_new_gep_63, %_parent_stack_start_ptr_
  %_cond2_255 = or i1 %_cond2_1_253, %_cond2_2_254
  %_cond4_256 = icmp ule i8* %_pot_address_in_parent_stack_251, %_parent_stack_end_ptr_
  %_cond1_n_cond2_257 = and i1 %_cond1_252, %_cond2_255
  %_cond1_n_cond2_cond3_258 = and i1 %_cond1_n_cond2_257, %_cond4_256
  br i1 %_cond1_n_cond2_cond3_258, label %95, label %96

; <label>:95:                                     ; preds = %93
  %_address_in_parent_stack_bt_260 = bitcast i8* %_pot_address_in_parent_stack_251 to i64*
  br label %96

; <label>:96:                                     ; preds = %93, %95
  %97 = phi i64* [ %_allin_new_bt_64, %93 ], [ %_address_in_parent_stack_bt_260, %95 ]
  %_new_load_261 = load i64, i64* %97
  %_new_gep_65 = getelementptr i8, i8* %_new_gep_63, i64 8
  %_allin_new_bt_66 = bitcast i8* %_new_gep_65 to i64*
  %_ptr_to_int_262 = ptrtoint i64* %_allin_new_bt_66 to i64
  %_offset_above_rbp_265 = sub i64 %_ptr_to_int_262, %_local_end_to_int_
  %_pot_address_in_parent_stack_266 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_265
  %_cond1_267 = icmp ugt i8* %_new_gep_65, %_local_stack_end_ptr_
  %_cond2_1_268 = icmp ugt i8* %_new_gep_65, %_parent_stack_end_ptr_
  %_cond2_2_269 = icmp ult i8* %_new_gep_65, %_parent_stack_start_ptr_
  %_cond2_270 = or i1 %_cond2_1_268, %_cond2_2_269
  %_cond4_271 = icmp ule i8* %_pot_address_in_parent_stack_266, %_parent_stack_end_ptr_
  %_cond1_n_cond2_272 = and i1 %_cond1_267, %_cond2_270
  %_cond1_n_cond2_cond3_273 = and i1 %_cond1_n_cond2_272, %_cond4_271
  br i1 %_cond1_n_cond2_cond3_273, label %98, label %99

; <label>:98:                                     ; preds = %96
  %_address_in_parent_stack_bt_275 = bitcast i8* %_pot_address_in_parent_stack_266 to i64*
  br label %99

; <label>:99:                                     ; preds = %96, %98
  %100 = phi i64* [ %_allin_new_bt_66, %96 ], [ %_address_in_parent_stack_bt_275, %98 ]
  %_new_load_276 = load i64, i64* %100
  %_new_gep_67 = getelementptr i8, i8* %_new_gep_65, i64 8
  %_allin_new_bt_68 = bitcast i8* %_new_gep_67 to i64*
  %_ptr_to_int_277 = ptrtoint i64* %_allin_new_bt_68 to i64
  %_offset_above_rbp_280 = sub i64 %_ptr_to_int_277, %_local_end_to_int_
  %_pot_address_in_parent_stack_281 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_280
  %_cond1_282 = icmp ugt i8* %_new_gep_67, %_local_stack_end_ptr_
  %_cond2_1_283 = icmp ugt i8* %_new_gep_67, %_parent_stack_end_ptr_
  %_cond2_2_284 = icmp ult i8* %_new_gep_67, %_parent_stack_start_ptr_
  %_cond2_285 = or i1 %_cond2_1_283, %_cond2_2_284
  %_cond4_286 = icmp ule i8* %_pot_address_in_parent_stack_281, %_parent_stack_end_ptr_
  %_cond1_n_cond2_287 = and i1 %_cond1_282, %_cond2_285
  %_cond1_n_cond2_cond3_288 = and i1 %_cond1_n_cond2_287, %_cond4_286
  br i1 %_cond1_n_cond2_cond3_288, label %101, label %102

; <label>:101:                                    ; preds = %99
  %_address_in_parent_stack_bt_290 = bitcast i8* %_pot_address_in_parent_stack_281 to i64*
  br label %102

; <label>:102:                                    ; preds = %99, %101
  %103 = phi i64* [ %_allin_new_bt_68, %99 ], [ %_address_in_parent_stack_bt_290, %101 ]
  %_new_load_291 = load i64, i64* %103
  %RSP_val.45 = load i64, i64* %XSP, !mcsema_real_eip !21
  %_new_gep_70 = getelementptr i8, i8* %_load_rsp_ptr_49, i64 -8
  %104 = sub i64 %RSP_val.45, 8, !mcsema_real_eip !21
  %_allin_new_bt_71 = bitcast i8* %_new_gep_70 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_71, !mcsema_real_eip !21
  store volatile i8* %_new_gep_70, i8** %_RSP_ptr_
  store i64 %104, i64* %XSP, !mcsema_real_eip !21
  %105 = call x86_64_sysvcc i64 @_printf(i64 %R11_val.34, i64 %73, i64 %RDX_val.40, i64 %RCX_val.41, i64 %R8_val.42, i64 %R9_val.43, i64 %_new_load_156, i64 %_new_load_171, i64 %_new_load_186, i64 %_new_load_201, i64 %_new_load_216, i64 %_new_load_231, i64 %_new_load_246, i64 %_new_load_261, i64 %_new_load_276, i64 %_new_load_291)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  store i64 %105, i64* %XAX, !mcsema_real_eip !21
  %ECX_val.47 = load i32, i32* %ECX.16, !mcsema_real_eip !22
  store i1 false, i1* %CF, !mcsema_real_eip !22
  store i1 false, i1* %OF, !mcsema_real_eip !22
  store i1 false, i1* %SF, !mcsema_real_eip !22
  store i1 true, i1* %ZF, !mcsema_real_eip !22
  store i1 true, i1* %PF, !mcsema_real_eip !22
  store i1 undef, i1* %AF, !mcsema_real_eip !22
  store i64 0, i64* %XCX, !mcsema_real_eip !22
  %_load_rbp_ptr_72 = load i8*, i8** %_RBP_ptr_
  %_new_gep_73 = getelementptr i8, i8* %_load_rbp_ptr_72, i64 -36
  %_allin_new_bt_74 = bitcast i8* %_new_gep_73 to i64*
  %EAX_val.52 = load i32, i32* %EAX.28, !mcsema_real_eip !23
  %106 = ptrtoint i64* %_allin_new_bt_74 to i64, !mcsema_real_eip !23
  %107 = inttoptr i64 %106 to i32*, !mcsema_real_eip !23
  store i32 %EAX_val.52, i32* %107, !mcsema_real_eip !23
  %ECX_val.54 = load i32, i32* %ECX.16, !mcsema_real_eip !24
  %108 = zext i32 %ECX_val.54 to i64, !mcsema_real_eip !24
  store i64 %108, i64* %XAX, !mcsema_real_eip !24
  %_load_rsp_ptr_75 = load i8*, i8** %_RSP_ptr_
  %RSP_val.55 = load i64, i64* %XSP, !mcsema_real_eip !25
  %_new_gep_76 = getelementptr i8, i8* %_load_rsp_ptr_75, i64 48
  %109 = add i64 48, %RSP_val.55, !mcsema_real_eip !25
  %_trans_p2i_77 = ptrtoint i8* %_new_gep_76 to i64
  %_trans_p2i_78 = ptrtoint i8* %_load_rsp_ptr_75 to i64
  %_trans_xor_79 = xor i64 %_trans_p2i_77, %_trans_p2i_78
  %110 = xor i64 %_trans_xor_79, 48, !mcsema_real_eip !25
  %111 = and i64 %110, 16, !mcsema_real_eip !25
  %112 = icmp ne i64 %111, 0, !mcsema_real_eip !25
  store i1 %112, i1* %AF, !mcsema_real_eip !25
  %113 = lshr i64 %109, 63, !mcsema_real_eip !25
  %114 = trunc i64 %113 to i1, !mcsema_real_eip !25
  store i1 %114, i1* %SF, !mcsema_real_eip !25
  %_trans_icmp_eq_81 = icmp eq i64 %_trans_p2i_77, 0
  store i1 %_trans_icmp_eq_81, i1* %ZF, !mcsema_real_eip !25
  %_trans_xor_83 = xor i64 %_trans_p2i_78, 48
  %115 = xor i64 %_trans_xor_83, -1, !mcsema_real_eip !25
  %116 = and i64 %115, %_trans_xor_79, !mcsema_real_eip !25
  %117 = lshr i64 %116, 63, !mcsema_real_eip !25
  %118 = and i64 %117, 1, !mcsema_real_eip !25
  %119 = trunc i64 %118 to i1, !mcsema_real_eip !25
  store i1 %119, i1* %OF, !mcsema_real_eip !25
  %_trans_trunc_88 = trunc i64 %_trans_p2i_77 to i8
  %120 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_88), !mcsema_real_eip !25
  %121 = trunc i8 %120 to i1, !mcsema_real_eip !25
  %122 = xor i1 %121, true, !mcsema_real_eip !25
  store i1 %122, i1* %PF, !mcsema_real_eip !25
  %_trans_icmp_ne_90 = icmp ne i64 %_trans_p2i_77, %RSP_val.55
  store i1 %_trans_icmp_ne_90, i1* %CF, !mcsema_real_eip !25
  store volatile i8* %_new_gep_76, i8** %_RSP_ptr_
  store i64 %109, i64* %XSP, !mcsema_real_eip !25
  %_allin_new_bt_92 = bitcast i8* %_new_gep_76 to i64*
  %_ptr_to_int_292 = ptrtoint i64* %_allin_new_bt_92 to i64
  %_offset_above_rbp_295 = sub i64 %_ptr_to_int_292, %_local_end_to_int_
  %_pot_address_in_parent_stack_296 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_295
  %_cond1_297 = icmp ugt i8* %_new_gep_76, %_local_stack_end_ptr_
  %_cond2_1_298 = icmp ugt i8* %_new_gep_76, %_parent_stack_end_ptr_
  %_cond2_2_299 = icmp ult i8* %_new_gep_76, %_parent_stack_start_ptr_
  %_cond2_300 = or i1 %_cond2_1_298, %_cond2_2_299
  %_cond4_301 = icmp ule i8* %_pot_address_in_parent_stack_296, %_parent_stack_end_ptr_
  %_cond1_n_cond2_302 = and i1 %_cond1_297, %_cond2_300
  %_cond1_n_cond2_cond3_303 = and i1 %_cond1_n_cond2_302, %_cond4_301
  br i1 %_cond1_n_cond2_cond3_303, label %123, label %124

; <label>:123:                                    ; preds = %102
  %_address_in_parent_stack_bt_305 = bitcast i8* %_pot_address_in_parent_stack_296 to i64*
  br label %124

; <label>:124:                                    ; preds = %102, %123
  %125 = phi i64* [ %_allin_new_bt_92, %102 ], [ %_address_in_parent_stack_bt_305, %123 ]
  %_new_load_306 = load i64, i64* %125
  %_new_int2ptr_ = inttoptr i64 %_new_load_306 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_306, i64* %XBP, !mcsema_real_eip !26
  %_new_gep_93 = getelementptr i8, i8* %_new_gep_76, i64 8
  %126 = add i64 %109, 8, !mcsema_real_eip !26
  store volatile i8* %_new_gep_93, i8** %_RSP_ptr_
  store i64 %126, i64* %XSP, !mcsema_real_eip !26
  %_new_gep_95 = getelementptr i8, i8* %_new_gep_93, i64 8
  %127 = add i64 %126, 8, !mcsema_real_eip !27
  %_allin_new_bt_96 = bitcast i8* %_new_gep_93 to i64*
  %_ptr_to_int_307 = ptrtoint i64* %_allin_new_bt_96 to i64
  %_offset_above_rbp_310 = sub i64 %_ptr_to_int_307, %_local_end_to_int_
  %_pot_address_in_parent_stack_311 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_310
  %_cond1_312 = icmp ugt i8* %_new_gep_93, %_local_stack_end_ptr_
  %_cond2_1_313 = icmp ugt i8* %_new_gep_93, %_parent_stack_end_ptr_
  %_cond2_2_314 = icmp ult i8* %_new_gep_93, %_parent_stack_start_ptr_
  %_cond2_315 = or i1 %_cond2_1_313, %_cond2_2_314
  %_cond4_316 = icmp ule i8* %_pot_address_in_parent_stack_311, %_parent_stack_end_ptr_
  %_cond1_n_cond2_317 = and i1 %_cond1_312, %_cond2_315
  %_cond1_n_cond2_cond3_318 = and i1 %_cond1_n_cond2_317, %_cond4_316
  br i1 %_cond1_n_cond2_cond3_318, label %128, label %129

; <label>:128:                                    ; preds = %124
  %_address_in_parent_stack_bt_320 = bitcast i8* %_pot_address_in_parent_stack_311 to i64*
  br label %129

; <label>:129:                                    ; preds = %124, %128
  %130 = phi i64* [ %_allin_new_bt_96, %124 ], [ %_address_in_parent_stack_bt_320, %128 ]
  %_new_load_321 = load i64, i64* %130
  store i64 %_new_load_321, i64* %XIP, !mcsema_real_eip !27
  store volatile i8* %_new_gep_95, i8** %_RSP_ptr_
  store i64 %127, i64* %XSP, !mcsema_real_eip !27
  ret void, !mcsema_real_eip !27
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_60.2(%RegState*, i8* %_parent_stack_start_ptr_, i8* %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) #1 {
entry:
  %_RSP_ptr_ = alloca i8*
  %_RBP_ptr_ = alloca i8*
  %_local_stack_start_ptr_ = alloca i8, i64 64
  %_local_stack_end_ptr_ = getelementptr inbounds i8, i8* %_local_stack_start_ptr_, i64 64
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_
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
  %RSP_val.59 = load i64, i64* %XSP, !mcsema_real_eip !28
  %_new_gep_ = getelementptr i8, i8* %_local_stack_end_ptr_, i64 -8
  %1 = sub i64 %RSP_val.59, 8, !mcsema_real_eip !28
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_
  store i64 %1, i64* %XSP, !mcsema_real_eip !28
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_
  store i64 %1, i64* %XBP, !mcsema_real_eip !29
  %RBX_val.61 = load i64, i64* %XBX, !mcsema_real_eip !30
  %_load_rsp_ptr_2 = load i8*, i8** %_RSP_ptr_
  %RSP_val.62 = load i64, i64* %XSP, !mcsema_real_eip !30
  %_new_gep_3 = getelementptr i8, i8* %_load_rsp_ptr_2, i64 -8
  %2 = sub i64 %RSP_val.62, 8, !mcsema_real_eip !30
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  store i64 %RBX_val.61, i64* %_allin_new_bt_4, !mcsema_real_eip !30
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_
  store i64 %2, i64* %XSP, !mcsema_real_eip !30
  %_new_gep_6 = getelementptr i8, i8* %_new_gep_3, i64 -40
  %3 = sub i64 %2, 40, !mcsema_real_eip !31
  %_trans_p2i_ = ptrtoint i8* %_new_gep_6 to i64
  %_trans_p2i_7 = ptrtoint i8* %_new_gep_3 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_7
  %4 = xor i64 %_trans_xor_, 40, !mcsema_real_eip !31
  %5 = and i64 %4, 16, !mcsema_real_eip !31
  %6 = icmp ne i64 %5, 0, !mcsema_real_eip !31
  store i1 %6, i1* %AF, !mcsema_real_eip !31
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %7 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !31
  %8 = trunc i8 %7 to i1, !mcsema_real_eip !31
  %9 = xor i1 %8, true, !mcsema_real_eip !31
  store i1 %9, i1* %PF, !mcsema_real_eip !31
  %_trans_icmp_eq_ = icmp eq i64 %_trans_p2i_, 0
  store i1 %_trans_icmp_eq_, i1* %ZF, !mcsema_real_eip !31
  %10 = lshr i64 %3, 63, !mcsema_real_eip !31
  %11 = trunc i64 %10 to i1, !mcsema_real_eip !31
  store i1 %11, i1* %SF, !mcsema_real_eip !31
  %_trans_icmp_ne_ = icmp ne i64 %_trans_p2i_7, 40
  store i1 %_trans_icmp_ne_, i1* %CF, !mcsema_real_eip !31
  %_trans_xor_12 = xor i64 %_trans_p2i_7, 40
  %12 = and i64 %_trans_xor_12, %_trans_xor_, !mcsema_real_eip !31
  %13 = lshr i64 %12, 63, !mcsema_real_eip !31
  %14 = trunc i64 %13 to i1, !mcsema_real_eip !31
  store i1 %14, i1* %OF, !mcsema_real_eip !31
  store volatile i8* %_new_gep_6, i8** %_RSP_ptr_
  store i64 %3, i64* %XSP, !mcsema_real_eip !31
  store i64 100, i64* %XAX, !mcsema_real_eip !32
  store i64 200, i64* %XCX, !mcsema_real_eip !33
  store i64 300, i64* %XDX, !mcsema_real_eip !34
  store i64 400, i64* %R8, !mcsema_real_eip !35
  store i64 500, i64* %R9, !mcsema_real_eip !36
  store i64 600, i64* %R10, !mcsema_real_eip !37
  store i64 10, i64* %R11, !mcsema_real_eip !38
  store i64 20, i64* %XBX, !mcsema_real_eip !39
  %_load_rbp_ptr_16 = load i8*, i8** %_RBP_ptr_
  %_new_gep_17 = getelementptr i8, i8* %_load_rbp_ptr_16, i64 -12
  %_allin_new_bt_18 = bitcast i8* %_new_gep_17 to i64*
  %15 = ptrtoint i64* %_allin_new_bt_18 to i64, !mcsema_real_eip !40
  %16 = inttoptr i64 %15 to i32*, !mcsema_real_eip !40
  store i32 0, i32* %16, !mcsema_real_eip !40
  %_load_rbp_ptr_19 = load i8*, i8** %_RBP_ptr_
  %_new_gep_20 = getelementptr i8, i8* %_load_rbp_ptr_19, i64 -16
  %_allin_new_bt_21 = bitcast i8* %_new_gep_20 to i64*
  %EDI.66 = bitcast i64* %XDI to i32*, !mcsema_real_eip !41
  %EDI_val.67 = load i32, i32* %EDI.66, !mcsema_real_eip !41
  %17 = ptrtoint i64* %_allin_new_bt_21 to i64, !mcsema_real_eip !41
  %18 = inttoptr i64 %17 to i32*, !mcsema_real_eip !41
  store i32 %EDI_val.67, i32* %18, !mcsema_real_eip !41
  %_load_rbp_ptr_22 = load i8*, i8** %_RBP_ptr_
  %_new_gep_23 = getelementptr i8, i8* %_load_rbp_ptr_22, i64 -24
  %_allin_new_bt_24 = bitcast i8* %_new_gep_23 to i64*
  %RSI_val.69 = load i64, i64* %XSI, !mcsema_real_eip !42
  store i64 %RSI_val.69, i64* %_allin_new_bt_24, !mcsema_real_eip !42
  %EAX.70 = bitcast i64* %XAX to i32*, !mcsema_real_eip !43
  %EAX_val.71 = load i32, i32* %EAX.70, !mcsema_real_eip !43
  %19 = zext i32 %EAX_val.71 to i64, !mcsema_real_eip !43
  store i64 %19, i64* %XDI, !mcsema_real_eip !43
  %ECX.72 = bitcast i64* %XCX to i32*, !mcsema_real_eip !44
  %ECX_val.73 = load i32, i32* %ECX.72, !mcsema_real_eip !44
  %20 = zext i32 %ECX_val.73 to i64, !mcsema_real_eip !44
  store i64 %20, i64* %XSI, !mcsema_real_eip !44
  %R8D.74 = bitcast i64* %R8 to i32*, !mcsema_real_eip !45
  %R8D_val.75 = load i32, i32* %R8D.74, !mcsema_real_eip !45
  %21 = zext i32 %R8D_val.75 to i64, !mcsema_real_eip !45
  store i64 %21, i64* %XCX, !mcsema_real_eip !45
  %R9D.76 = bitcast i64* %R9 to i32*, !mcsema_real_eip !46
  %R9D_val.77 = load i32, i32* %R9D.76, !mcsema_real_eip !46
  %22 = zext i32 %R9D_val.77 to i64, !mcsema_real_eip !46
  store i64 %22, i64* %R8, !mcsema_real_eip !46
  %R10D.78 = bitcast i64* %R10 to i32*, !mcsema_real_eip !47
  %R10D_val.79 = load i32, i32* %R10D.78, !mcsema_real_eip !47
  %23 = zext i32 %R10D_val.79 to i64, !mcsema_real_eip !47
  store i64 %23, i64* %R9, !mcsema_real_eip !47
  %_load_rsp_ptr_25 = load i8*, i8** %_RSP_ptr_
  %_allin_new_bt_27 = bitcast i8* %_load_rsp_ptr_25 to i64*
  %24 = ptrtoint i64* %_allin_new_bt_27 to i64, !mcsema_real_eip !48
  %25 = inttoptr i64 %24 to i32*, !mcsema_real_eip !48
  store i32 10, i32* %25, !mcsema_real_eip !48
  %_load_rsp_ptr_28 = load i8*, i8** %_RSP_ptr_
  %_new_gep_29 = getelementptr i8, i8* %_load_rsp_ptr_28, i64 8
  %_allin_new_bt_30 = bitcast i8* %_new_gep_29 to i64*
  %26 = ptrtoint i64* %_allin_new_bt_30 to i64, !mcsema_real_eip !49
  %27 = inttoptr i64 %26 to i32*, !mcsema_real_eip !49
  store i32 20, i32* %27, !mcsema_real_eip !49
  %_load_rbp_ptr_31 = load i8*, i8** %_RBP_ptr_
  %_new_gep_32 = getelementptr i8, i8* %_load_rbp_ptr_31, i64 -28
  %_allin_new_bt_33 = bitcast i8* %_new_gep_32 to i64*
  %EBX.83 = bitcast i64* %XBX to i32*, !mcsema_real_eip !50
  %EBX_val.84 = load i32, i32* %EBX.83, !mcsema_real_eip !50
  %28 = ptrtoint i64* %_allin_new_bt_33 to i64, !mcsema_real_eip !50
  %29 = inttoptr i64 %28 to i32*, !mcsema_real_eip !50
  store i32 %EBX_val.84, i32* %29, !mcsema_real_eip !50
  %_load_rbp_ptr_34 = load i8*, i8** %_RBP_ptr_
  %_new_gep_35 = getelementptr i8, i8* %_load_rbp_ptr_34, i64 -32
  %_allin_new_bt_36 = bitcast i8* %_new_gep_35 to i64*
  %R11D.86 = bitcast i64* %R11 to i32*, !mcsema_real_eip !51
  %R11D_val.87 = load i32, i32* %R11D.86, !mcsema_real_eip !51
  %30 = ptrtoint i64* %_allin_new_bt_36 to i64, !mcsema_real_eip !51
  %31 = inttoptr i64 %30 to i32*, !mcsema_real_eip !51
  store i32 %R11D_val.87, i32* %31, !mcsema_real_eip !51
  %_load_rsp_ptr_37 = load i8*, i8** %_RSP_ptr_
  %RSP_val.88 = load i64, i64* %XSP, !mcsema_real_eip !52
  %_new_gep_38 = getelementptr i8, i8* %_load_rsp_ptr_37, i64 -8
  %32 = sub i64 %RSP_val.88, 8, !mcsema_real_eip !52
  %_allin_new_bt_39 = bitcast i8* %_new_gep_38 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_39, !mcsema_real_eip !52
  store volatile i8* %_new_gep_38, i8** %_RSP_ptr_
  store i64 %32, i64* %XSP, !mcsema_real_eip !52
  %_load_rbp_ptr_65 = load i8*, i8** %_RBP_ptr_
  call x86_64_sysvcc void @sub_0.1(%RegState* %0, i8* %_new_gep_38, i8* %_local_stack_end_ptr_, i8* %_load_rbp_ptr_65)
  %_rsp_fix_ = load i8*, i8** %_RSP_ptr_
  %_gep_fix_ = getelementptr i8, i8* %_rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_
  %RSP_val.89 = load i64, i64* %XSP, !mcsema_real_eip !53
  %_new_gep_41 = getelementptr i8, i8* %_gep_fix_, i64 40
  %33 = add i64 40, %RSP_val.89, !mcsema_real_eip !53
  %_trans_p2i_42 = ptrtoint i8* %_new_gep_41 to i64
  %_trans_p2i_43 = ptrtoint i8* %_gep_fix_ to i64
  %_trans_xor_44 = xor i64 %_trans_p2i_42, %_trans_p2i_43
  %34 = xor i64 %_trans_xor_44, 40, !mcsema_real_eip !53
  %35 = and i64 %34, 16, !mcsema_real_eip !53
  %36 = icmp ne i64 %35, 0, !mcsema_real_eip !53
  store i1 %36, i1* %AF, !mcsema_real_eip !53
  %37 = lshr i64 %33, 63, !mcsema_real_eip !53
  %38 = trunc i64 %37 to i1, !mcsema_real_eip !53
  store i1 %38, i1* %SF, !mcsema_real_eip !53
  %_trans_icmp_eq_46 = icmp eq i64 %_trans_p2i_42, 0
  store i1 %_trans_icmp_eq_46, i1* %ZF, !mcsema_real_eip !53
  %_trans_xor_48 = xor i64 %_trans_p2i_43, 40
  %39 = xor i64 %_trans_xor_48, -1, !mcsema_real_eip !53
  %40 = and i64 %39, %_trans_xor_44, !mcsema_real_eip !53
  %41 = lshr i64 %40, 63, !mcsema_real_eip !53
  %42 = and i64 %41, 1, !mcsema_real_eip !53
  %43 = trunc i64 %42 to i1, !mcsema_real_eip !53
  store i1 %43, i1* %OF, !mcsema_real_eip !53
  %_trans_trunc_53 = trunc i64 %_trans_p2i_42 to i8
  %44 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_53), !mcsema_real_eip !53
  %45 = trunc i8 %44 to i1, !mcsema_real_eip !53
  %46 = xor i1 %45, true, !mcsema_real_eip !53
  store i1 %46, i1* %PF, !mcsema_real_eip !53
  %_trans_icmp_ne_55 = icmp ne i64 %_trans_p2i_42, %RSP_val.89
  store i1 %_trans_icmp_ne_55, i1* %CF, !mcsema_real_eip !53
  store volatile i8* %_new_gep_41, i8** %_RSP_ptr_
  store i64 %33, i64* %XSP, !mcsema_real_eip !53
  %_allin_new_bt_57 = bitcast i8* %_new_gep_41 to i64*
  %_ptr_to_int_ = ptrtoint i64* %_allin_new_bt_57 to i64
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_new_gep_41, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_new_gep_41, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_new_gep_41, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  br i1 %_cond1_n_cond2_cond3_, label %47, label %48

; <label>:47:                                     ; preds = %block_0x60
  %_address_in_parent_stack_bt_ = bitcast i8* %_pot_address_in_parent_stack_ to i64*
  br label %48

; <label>:48:                                     ; preds = %block_0x60, %47
  %49 = phi i64* [ %_allin_new_bt_57, %block_0x60 ], [ %_address_in_parent_stack_bt_, %47 ]
  %_new_load_ = load i64, i64* %49
  store i64 %_new_load_, i64* %XBX, !mcsema_real_eip !54
  %_new_gep_58 = getelementptr i8, i8* %_new_gep_41, i64 8
  %50 = add i64 %33, 8, !mcsema_real_eip !54
  store volatile i8* %_new_gep_58, i8** %_RSP_ptr_
  store i64 %50, i64* %XSP, !mcsema_real_eip !54
  %_allin_new_bt_60 = bitcast i8* %_new_gep_58 to i64*
  %_ptr_to_int_67 = ptrtoint i64* %_allin_new_bt_60 to i64
  %_offset_above_rbp_70 = sub i64 %_ptr_to_int_67, %_local_end_to_int_
  %_pot_address_in_parent_stack_71 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_70
  %_cond1_72 = icmp ugt i8* %_new_gep_58, %_local_stack_end_ptr_
  %_cond2_1_73 = icmp ugt i8* %_new_gep_58, %_parent_stack_end_ptr_
  %_cond2_2_74 = icmp ult i8* %_new_gep_58, %_parent_stack_start_ptr_
  %_cond2_75 = or i1 %_cond2_1_73, %_cond2_2_74
  %_cond4_76 = icmp ule i8* %_pot_address_in_parent_stack_71, %_parent_stack_end_ptr_
  %_cond1_n_cond2_77 = and i1 %_cond1_72, %_cond2_75
  %_cond1_n_cond2_cond3_78 = and i1 %_cond1_n_cond2_77, %_cond4_76
  br i1 %_cond1_n_cond2_cond3_78, label %51, label %52

; <label>:51:                                     ; preds = %48
  %_address_in_parent_stack_bt_80 = bitcast i8* %_pot_address_in_parent_stack_71 to i64*
  br label %52

; <label>:52:                                     ; preds = %48, %51
  %53 = phi i64* [ %_allin_new_bt_60, %48 ], [ %_address_in_parent_stack_bt_80, %51 ]
  %_new_load_81 = load i64, i64* %53
  %_new_int2ptr_ = inttoptr i64 %_new_load_81 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_
  store i64 %_new_load_81, i64* %XBP, !mcsema_real_eip !55
  %_new_gep_61 = getelementptr i8, i8* %_new_gep_58, i64 8
  %54 = add i64 %50, 8, !mcsema_real_eip !55
  store volatile i8* %_new_gep_61, i8** %_RSP_ptr_
  store i64 %54, i64* %XSP, !mcsema_real_eip !55
  %_new_gep_63 = getelementptr i8, i8* %_new_gep_61, i64 8
  %55 = add i64 %54, 8, !mcsema_real_eip !56
  %_allin_new_bt_64 = bitcast i8* %_new_gep_61 to i64*
  %_ptr_to_int_82 = ptrtoint i64* %_allin_new_bt_64 to i64
  %_offset_above_rbp_85 = sub i64 %_ptr_to_int_82, %_local_end_to_int_
  %_pot_address_in_parent_stack_86 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_85
  %_cond1_87 = icmp ugt i8* %_new_gep_61, %_local_stack_end_ptr_
  %_cond2_1_88 = icmp ugt i8* %_new_gep_61, %_parent_stack_end_ptr_
  %_cond2_2_89 = icmp ult i8* %_new_gep_61, %_parent_stack_start_ptr_
  %_cond2_90 = or i1 %_cond2_1_88, %_cond2_2_89
  %_cond4_91 = icmp ule i8* %_pot_address_in_parent_stack_86, %_parent_stack_end_ptr_
  %_cond1_n_cond2_92 = and i1 %_cond1_87, %_cond2_90
  %_cond1_n_cond2_cond3_93 = and i1 %_cond1_n_cond2_92, %_cond4_91
  br i1 %_cond1_n_cond2_cond3_93, label %56, label %57

; <label>:56:                                     ; preds = %52
  %_address_in_parent_stack_bt_95 = bitcast i8* %_pot_address_in_parent_stack_86 to i64*
  br label %57

; <label>:57:                                     ; preds = %52, %56
  %58 = phi i64* [ %_allin_new_bt_64, %52 ], [ %_address_in_parent_stack_bt_95, %56 ]
  %_new_load_96 = load i64, i64* %58
  store i64 %_new_load_96, i64* %XIP, !mcsema_real_eip !56
  store volatile i8* %_new_gep_63, i8** %_RSP_ptr_
  store i64 %55, i64* %XSP, !mcsema_real_eip !56
  ret void, !mcsema_real_eip !56
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
