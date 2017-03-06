; ModuleID = 'Output/test_4.clang.trans.opt.bc'
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
%RegState = type <{ i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, [8 x x86_fp80], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], i16, i64, i16, i64, i16, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i128, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>

@data_0x220 = internal constant %0 <{ [88 x i8] c"\0B\00\00\00\0C\00\00\00\0D\00\00\00\0E\00\00\00\0F\00\00\00\10\00\00\00\11\00\00\00\12\00\00\00\13\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00\07\00\00\00\08\00\00\00\09\00\00\00\0A\00\00\00" }>, align 64
@data_0x278 = internal constant %1 <{ [4 x i8] c"%d\0A\00" }>, align 64

; Function Attrs: noinline nounwind
define x86_64_sysvcc void @sub_0(%RegState* nocapture) local_unnamed_addr #0 {
entry:
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !2
  %XBX = getelementptr %RegState, %RegState* %0, i64 0, i32 2, !mcsema_real_eip !2
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !2
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !2
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !2
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !2
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !2
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !2
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !2
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !2
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !2
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !2
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !2
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !2
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !2
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !2
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !2
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !2
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !2
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !2
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !2
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !2
  %R10 = getelementptr %RegState, %RegState* %0, i64 0, i32 66, !mcsema_real_eip !2
  %R11 = getelementptr %RegState, %RegState* %0, i64 0, i32 67, !mcsema_real_eip !2
  %RBP_val.0 = load i64, i64* %XBP, align 8, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, align 8, !mcsema_real_eip !2
  %1 = add i64 %RSP_val.1, -8
  %2 = inttoptr i64 %1 to i64*, !mcsema_real_eip !2
  store i64 %RBP_val.0, i64* %2, align 8, !mcsema_real_eip !2
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %RBX_val.3 = load i64, i64* %XBX, align 8, !mcsema_real_eip !4
  %3 = add i64 %RSP_val.1, -16
  %4 = inttoptr i64 %3 to i64*, !mcsema_real_eip !4
  store i64 %RBX_val.3, i64* %4, align 8, !mcsema_real_eip !4
  store i64 %3, i64* %XSP, align 8, !mcsema_real_eip !4
  %RBP_val.5 = load i64, i64* %XBP, align 8, !mcsema_real_eip !5
  %5 = add i64 %RBP_val.5, 40, !mcsema_real_eip !5
  %6 = inttoptr i64 %5 to i64*, !mcsema_real_eip !5
  %7 = load i64, i64* %6, align 8, !mcsema_real_eip !5
  store i64 %7, i64* %XAX, align 8, !mcsema_real_eip !5
  %8 = add i64 %RBP_val.5, 32, !mcsema_real_eip !6
  %9 = inttoptr i64 %8 to i32*, !mcsema_real_eip !6
  %10 = load i32, i32* %9, align 4, !mcsema_real_eip !6
  %11 = zext i32 %10 to i64, !mcsema_real_eip !6
  store i64 %11, i64* %R10, align 8, !mcsema_real_eip !6
  %12 = add i64 %RBP_val.5, 24, !mcsema_real_eip !7
  %13 = inttoptr i64 %12 to i64*, !mcsema_real_eip !7
  %14 = load i64, i64* %13, align 8, !mcsema_real_eip !7
  store i64 %14, i64* %R11, align 8, !mcsema_real_eip !7
  %15 = add i64 %RBP_val.5, 16, !mcsema_real_eip !8
  %16 = inttoptr i64 %15 to i32*, !mcsema_real_eip !8
  %17 = load i32, i32* %16, align 4, !mcsema_real_eip !8
  %18 = zext i32 %17 to i64, !mcsema_real_eip !8
  store i64 %18, i64* %XBX, align 8, !mcsema_real_eip !8
  %19 = add i64 %RBP_val.5, -12, !mcsema_real_eip !9
  %EDI.10 = bitcast i64* %XDI to i32*, !mcsema_real_eip !9
  %EDI_val.11 = load i32, i32* %EDI.10, align 4, !mcsema_real_eip !9
  %20 = inttoptr i64 %19 to i32*, !mcsema_real_eip !9
  store i32 %EDI_val.11, i32* %20, align 4, !mcsema_real_eip !9
  %RBP_val.12 = load i64, i64* %XBP, align 8, !mcsema_real_eip !10
  %21 = add i64 %RBP_val.12, -16, !mcsema_real_eip !10
  %ESI.13 = bitcast i64* %XSI to i32*, !mcsema_real_eip !10
  %ESI_val.14 = load i32, i32* %ESI.13, align 4, !mcsema_real_eip !10
  %22 = inttoptr i64 %21 to i32*, !mcsema_real_eip !10
  store i32 %ESI_val.14, i32* %22, align 4, !mcsema_real_eip !10
  %RBP_val.15 = load i64, i64* %XBP, align 8, !mcsema_real_eip !11
  %23 = add i64 %RBP_val.15, -20, !mcsema_real_eip !11
  %EDX.16 = bitcast i64* %XDX to i32*, !mcsema_real_eip !11
  %EDX_val.17 = load i32, i32* %EDX.16, align 4, !mcsema_real_eip !11
  %24 = inttoptr i64 %23 to i32*, !mcsema_real_eip !11
  store i32 %EDX_val.17, i32* %24, align 4, !mcsema_real_eip !11
  %RBP_val.18 = load i64, i64* %XBP, align 8, !mcsema_real_eip !12
  %25 = add i64 %RBP_val.18, -24, !mcsema_real_eip !12
  %ECX.19 = bitcast i64* %XCX to i32*, !mcsema_real_eip !12
  %ECX_val.20 = load i32, i32* %ECX.19, align 4, !mcsema_real_eip !12
  %26 = inttoptr i64 %25 to i32*, !mcsema_real_eip !12
  store i32 %ECX_val.20, i32* %26, align 4, !mcsema_real_eip !12
  %RBP_val.21 = load i64, i64* %XBP, align 8, !mcsema_real_eip !13
  %27 = add i64 %RBP_val.21, -28, !mcsema_real_eip !13
  %R8D.22 = bitcast i64* %R8 to i32*, !mcsema_real_eip !13
  %R8D_val.23 = load i32, i32* %R8D.22, align 4, !mcsema_real_eip !13
  %28 = inttoptr i64 %27 to i32*, !mcsema_real_eip !13
  store i32 %R8D_val.23, i32* %28, align 4, !mcsema_real_eip !13
  %RBP_val.24 = load i64, i64* %XBP, align 8, !mcsema_real_eip !14
  %29 = add i64 %RBP_val.24, -32, !mcsema_real_eip !14
  %R9D.25 = bitcast i64* %R9 to i32*, !mcsema_real_eip !14
  %R9D_val.26 = load i32, i32* %R9D.25, align 4, !mcsema_real_eip !14
  %30 = inttoptr i64 %29 to i32*, !mcsema_real_eip !14
  store i32 %R9D_val.26, i32* %30, align 4, !mcsema_real_eip !14
  %RBP_val.27 = load i64, i64* %XBP, align 8, !mcsema_real_eip !15
  %31 = add i64 %RBP_val.27, -36, !mcsema_real_eip !15
  %EBX.28 = bitcast i64* %XBX to i32*, !mcsema_real_eip !15
  %EBX_val.29 = load i32, i32* %EBX.28, align 4, !mcsema_real_eip !15
  %32 = inttoptr i64 %31 to i32*, !mcsema_real_eip !15
  store i32 %EBX_val.29, i32* %32, align 4, !mcsema_real_eip !15
  %RBP_val.30 = load i64, i64* %XBP, align 8, !mcsema_real_eip !16
  %33 = add i64 %RBP_val.30, -48, !mcsema_real_eip !16
  %34 = inttoptr i64 %33 to i64*, !mcsema_real_eip !16
  %R11_val.31 = load i64, i64* %R11, align 8, !mcsema_real_eip !16
  store i64 %R11_val.31, i64* %34, align 8, !mcsema_real_eip !16
  %RBP_val.32 = load i64, i64* %XBP, align 8, !mcsema_real_eip !17
  %35 = add i64 %RBP_val.32, -52, !mcsema_real_eip !17
  %R10D.33 = bitcast i64* %R10 to i32*, !mcsema_real_eip !17
  %R10D_val.34 = load i32, i32* %R10D.33, align 4, !mcsema_real_eip !17
  %36 = inttoptr i64 %35 to i32*, !mcsema_real_eip !17
  store i32 %R10D_val.34, i32* %36, align 4, !mcsema_real_eip !17
  %RBP_val.35 = load i64, i64* %XBP, align 8, !mcsema_real_eip !18
  %37 = add i64 %RBP_val.35, -64, !mcsema_real_eip !18
  %38 = inttoptr i64 %37 to i64*, !mcsema_real_eip !18
  %RAX_val.36 = load i64, i64* %XAX, align 8, !mcsema_real_eip !18
  store i64 %RAX_val.36, i64* %38, align 8, !mcsema_real_eip !18
  %RBP_val.37 = load i64, i64* %XBP, align 8, !mcsema_real_eip !19
  %39 = add i64 %RBP_val.37, -68, !mcsema_real_eip !19
  %40 = inttoptr i64 %39 to i32*, !mcsema_real_eip !19
  store i32 0, i32* %40, align 4, !mcsema_real_eip !19
  %RBP_val.38 = load i64, i64* %XBP, align 8, !mcsema_real_eip !20
  %41 = add i64 %RBP_val.38, -72, !mcsema_real_eip !20
  %42 = inttoptr i64 %41 to i32*, !mcsema_real_eip !20
  store i32 0, i32* %42, align 4, !mcsema_real_eip !20
  %EAX.41 = bitcast i64* %XAX to i32*, !mcsema_real_eip !21
  br label %block_0x45, !mcsema_real_eip !22

block_0x45:                                       ; preds = %block_0x51, %entry
  %RBP_val.39 = load i64, i64* %XBP, align 8, !mcsema_real_eip !22
  %43 = add i64 %RBP_val.39, -72, !mcsema_real_eip !22
  %44 = inttoptr i64 %43 to i32*, !mcsema_real_eip !22
  %45 = load i32, i32* %44, align 4, !mcsema_real_eip !22
  %46 = zext i32 %45 to i64, !mcsema_real_eip !22
  store i64 %46, i64* %XAX, align 8, !mcsema_real_eip !22
  %47 = add i64 %RBP_val.39, -36, !mcsema_real_eip !21
  %48 = inttoptr i64 %47 to i32*, !mcsema_real_eip !21
  %49 = load i32, i32* %48, align 4, !mcsema_real_eip !21
  %50 = sub i32 %45, %49, !mcsema_real_eip !21
  %51 = xor i32 %50, %45, !mcsema_real_eip !21
  %52 = xor i32 %51, %49, !mcsema_real_eip !21
  %53 = and i32 %52, 16, !mcsema_real_eip !21
  %54 = icmp ne i32 %53, 0, !mcsema_real_eip !21
  store i1 %54, i1* %AF, align 1, !mcsema_real_eip !21
  %55 = trunc i32 %50 to i8, !mcsema_real_eip !21
  %56 = tail call i8 @llvm.ctpop.i8(i8 %55), !mcsema_real_eip !21
  %57 = and i8 %56, 1
  %58 = icmp eq i8 %57, 0
  store i1 %58, i1* %PF, align 1, !mcsema_real_eip !21
  %59 = icmp eq i32 %50, 0, !mcsema_real_eip !21
  store i1 %59, i1* %ZF, align 1, !mcsema_real_eip !21
  %60 = icmp slt i32 %50, 0
  store i1 %60, i1* %SF, align 1, !mcsema_real_eip !21
  %61 = icmp ult i32 %45, %49, !mcsema_real_eip !21
  store i1 %61, i1* %CF, align 1, !mcsema_real_eip !21
  %62 = xor i32 %49, %45, !mcsema_real_eip !21
  %63 = and i32 %51, %62, !mcsema_real_eip !21
  %64 = icmp slt i32 %63, 0
  store i1 %64, i1* %OF, align 1, !mcsema_real_eip !21
  %tmp = xor i1 %60, %64
  %65 = add i64 %RBP_val.39, -68
  %66 = inttoptr i64 %65 to i32*
  br i1 %tmp, label %block_0x51, label %block_0x7b, !mcsema_real_eip !23

block_0x51:                                       ; preds = %block_0x45
  %67 = add i64 %RBP_val.39, -48, !mcsema_real_eip !24
  %68 = inttoptr i64 %67 to i64*, !mcsema_real_eip !24
  %69 = load i64, i64* %68, align 8, !mcsema_real_eip !24
  store i64 %69, i64* %XAX, align 8, !mcsema_real_eip !24
  %70 = load i32, i32* %44, align 4, !mcsema_real_eip !25
  %71 = sext i32 %70 to i64, !mcsema_real_eip !25
  store i64 %71, i64* %XCX, align 8, !mcsema_real_eip !25
  %72 = shl nsw i64 %71, 2
  %73 = add i64 %72, %69, !mcsema_real_eip !26
  %74 = inttoptr i64 %73 to i32*, !mcsema_real_eip !26
  %75 = load i32, i32* %74, align 4, !mcsema_real_eip !26
  %76 = zext i32 %75 to i64, !mcsema_real_eip !26
  store i64 %76, i64* %XDX, align 8, !mcsema_real_eip !26
  %77 = add i64 %RBP_val.39, -64, !mcsema_real_eip !27
  %78 = inttoptr i64 %77 to i64*, !mcsema_real_eip !27
  %79 = load i64, i64* %78, align 8, !mcsema_real_eip !27
  store i64 %79, i64* %XAX, align 8, !mcsema_real_eip !27
  %80 = load i32, i32* %44, align 4, !mcsema_real_eip !28
  %81 = sext i32 %80 to i64, !mcsema_real_eip !28
  store i64 %81, i64* %XCX, align 8, !mcsema_real_eip !28
  %82 = shl nsw i64 %81, 2
  %83 = add i64 %82, %79, !mcsema_real_eip !29
  %84 = inttoptr i64 %83 to i32*, !mcsema_real_eip !29
  %85 = load i32, i32* %84, align 4, !mcsema_real_eip !29
  %86 = sub i32 %75, %85, !mcsema_real_eip !29
  %87 = xor i32 %86, %75, !mcsema_real_eip !29
  %88 = xor i32 %87, %85, !mcsema_real_eip !29
  %89 = and i32 %88, 16, !mcsema_real_eip !29
  %90 = icmp ne i32 %89, 0, !mcsema_real_eip !29
  store i1 %90, i1* %AF, align 1, !mcsema_real_eip !29
  %91 = trunc i32 %86 to i8, !mcsema_real_eip !29
  %92 = tail call i8 @llvm.ctpop.i8(i8 %91), !mcsema_real_eip !29
  %93 = and i8 %92, 1
  %94 = icmp eq i8 %93, 0
  store i1 %94, i1* %PF, align 1, !mcsema_real_eip !29
  %95 = icmp eq i32 %86, 0, !mcsema_real_eip !29
  store i1 %95, i1* %ZF, align 1, !mcsema_real_eip !29
  %96 = icmp slt i32 %86, 0
  store i1 %96, i1* %SF, align 1, !mcsema_real_eip !29
  %97 = icmp ult i32 %75, %85, !mcsema_real_eip !29
  store i1 %97, i1* %CF, align 1, !mcsema_real_eip !29
  %98 = xor i32 %85, %75, !mcsema_real_eip !29
  %99 = and i32 %87, %98, !mcsema_real_eip !29
  %100 = icmp slt i32 %99, 0
  store i1 %100, i1* %OF, align 1, !mcsema_real_eip !29
  %101 = zext i32 %86 to i64, !mcsema_real_eip !29
  store i64 %101, i64* %XDX, align 8, !mcsema_real_eip !29
  %102 = load i32, i32* %66, align 4, !mcsema_real_eip !30
  %103 = add i32 %86, %102, !mcsema_real_eip !30
  %104 = xor i32 %103, %102, !mcsema_real_eip !30
  %105 = xor i32 %104, %86, !mcsema_real_eip !30
  %106 = and i32 %105, 16, !mcsema_real_eip !30
  %107 = icmp ne i32 %106, 0, !mcsema_real_eip !30
  store i1 %107, i1* %AF, align 1, !mcsema_real_eip !30
  %108 = icmp slt i32 %103, 0
  store i1 %108, i1* %SF, align 1, !mcsema_real_eip !30
  %109 = icmp eq i32 %103, 0, !mcsema_real_eip !30
  store i1 %109, i1* %ZF, align 1, !mcsema_real_eip !30
  %110 = xor i32 %102, -2147483648, !mcsema_real_eip !30
  %111 = xor i32 %110, %86, !mcsema_real_eip !30
  %112 = and i32 %104, %111, !mcsema_real_eip !30
  %113 = icmp slt i32 %112, 0
  store i1 %113, i1* %OF, align 1, !mcsema_real_eip !30
  %114 = trunc i32 %103 to i8, !mcsema_real_eip !30
  %115 = tail call i8 @llvm.ctpop.i8(i8 %114), !mcsema_real_eip !30
  %116 = and i8 %115, 1
  %117 = icmp eq i8 %116, 0
  store i1 %117, i1* %PF, align 1, !mcsema_real_eip !30
  %118 = icmp ult i32 %103, %102, !mcsema_real_eip !30
  store i1 %118, i1* %CF, align 1, !mcsema_real_eip !30
  %119 = zext i32 %103 to i64, !mcsema_real_eip !30
  store i64 %119, i64* %XDX, align 8, !mcsema_real_eip !30
  store i32 %103, i32* %66, align 4, !mcsema_real_eip !31
  %RBP_val.59 = load i64, i64* %XBP, align 8, !mcsema_real_eip !32
  %120 = add i64 %RBP_val.59, -72, !mcsema_real_eip !32
  %121 = inttoptr i64 %120 to i32*, !mcsema_real_eip !32
  %122 = load i32, i32* %121, align 4, !mcsema_real_eip !32
  %123 = add i32 %122, 1, !mcsema_real_eip !33
  %124 = xor i32 %123, %122, !mcsema_real_eip !33
  %125 = and i32 %124, 16, !mcsema_real_eip !33
  %126 = icmp ne i32 %125, 0, !mcsema_real_eip !33
  store i1 %126, i1* %AF, align 1, !mcsema_real_eip !33
  %127 = icmp slt i32 %123, 0
  store i1 %127, i1* %SF, align 1, !mcsema_real_eip !33
  %128 = icmp eq i32 %123, 0, !mcsema_real_eip !33
  store i1 %128, i1* %ZF, align 1, !mcsema_real_eip !33
  %129 = xor i32 %122, -2147483648, !mcsema_real_eip !33
  %130 = and i32 %124, %129, !mcsema_real_eip !33
  %131 = icmp slt i32 %130, 0
  store i1 %131, i1* %OF, align 1, !mcsema_real_eip !33
  %132 = trunc i32 %123 to i8, !mcsema_real_eip !33
  %133 = tail call i8 @llvm.ctpop.i8(i8 %132), !mcsema_real_eip !33
  %134 = and i8 %133, 1
  %135 = icmp eq i8 %134, 0
  store i1 %135, i1* %PF, align 1, !mcsema_real_eip !33
  %136 = icmp eq i32 %122, -1
  store i1 %136, i1* %CF, align 1, !mcsema_real_eip !33
  %137 = zext i32 %123 to i64, !mcsema_real_eip !33
  store i64 %137, i64* %XAX, align 8, !mcsema_real_eip !33
  store i32 %123, i32* %121, align 4, !mcsema_real_eip !34
  br label %block_0x45, !mcsema_real_eip !35

block_0x7b:                                       ; preds = %block_0x45
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  %138 = load i32, i32* %66, align 4, !mcsema_real_eip !36
  %139 = zext i32 %138 to i64, !mcsema_real_eip !36
  store i64 %139, i64* %XAX, align 8, !mcsema_real_eip !36
  %140 = add i64 %RBP_val.39, -12, !mcsema_real_eip !37
  %141 = inttoptr i64 %140 to i32*, !mcsema_real_eip !37
  %142 = load i32, i32* %141, align 4, !mcsema_real_eip !37
  %143 = zext i32 %142 to i64, !mcsema_real_eip !37
  store i64 %143, i64* %XCX, align 8, !mcsema_real_eip !37
  %144 = add i64 %RBP_val.39, -16, !mcsema_real_eip !38
  %145 = inttoptr i64 %144 to i32*, !mcsema_real_eip !38
  %146 = load i32, i32* %145, align 4, !mcsema_real_eip !38
  %147 = add i32 %142, %146, !mcsema_real_eip !38
  %148 = xor i32 %147, %146, !mcsema_real_eip !38
  %149 = xor i32 %148, %142, !mcsema_real_eip !38
  %150 = and i32 %149, 16, !mcsema_real_eip !38
  %151 = icmp ne i32 %150, 0, !mcsema_real_eip !38
  store i1 %151, i1* %AF, align 1, !mcsema_real_eip !38
  %152 = icmp slt i32 %147, 0
  store i1 %152, i1* %SF, align 1, !mcsema_real_eip !38
  %153 = icmp eq i32 %147, 0, !mcsema_real_eip !38
  store i1 %153, i1* %ZF, align 1, !mcsema_real_eip !38
  %154 = xor i32 %146, -2147483648, !mcsema_real_eip !38
  %155 = xor i32 %154, %142, !mcsema_real_eip !38
  %156 = and i32 %148, %155, !mcsema_real_eip !38
  %157 = icmp slt i32 %156, 0
  store i1 %157, i1* %OF, align 1, !mcsema_real_eip !38
  %158 = trunc i32 %147 to i8, !mcsema_real_eip !38
  %159 = tail call i8 @llvm.ctpop.i8(i8 %158), !mcsema_real_eip !38
  %160 = and i8 %159, 1
  %161 = icmp eq i8 %160, 0
  store i1 %161, i1* %PF, align 1, !mcsema_real_eip !38
  %162 = icmp ult i32 %147, %146, !mcsema_real_eip !38
  store i1 %162, i1* %CF, align 1, !mcsema_real_eip !38
  %163 = zext i32 %147 to i64, !mcsema_real_eip !38
  store i64 %163, i64* %XCX, align 8, !mcsema_real_eip !38
  %164 = add i64 %RBP_val.39, -20, !mcsema_real_eip !39
  %165 = inttoptr i64 %164 to i32*, !mcsema_real_eip !39
  %166 = load i32, i32* %165, align 4, !mcsema_real_eip !39
  %167 = add i32 %147, %166, !mcsema_real_eip !39
  %168 = xor i32 %167, %166, !mcsema_real_eip !39
  %169 = xor i32 %168, %147, !mcsema_real_eip !39
  %170 = and i32 %169, 16, !mcsema_real_eip !39
  %171 = icmp ne i32 %170, 0, !mcsema_real_eip !39
  store i1 %171, i1* %AF, align 1, !mcsema_real_eip !39
  %172 = icmp slt i32 %167, 0
  store i1 %172, i1* %SF, align 1, !mcsema_real_eip !39
  %173 = icmp eq i32 %167, 0, !mcsema_real_eip !39
  store i1 %173, i1* %ZF, align 1, !mcsema_real_eip !39
  %174 = xor i32 %166, -2147483648, !mcsema_real_eip !39
  %175 = xor i32 %174, %147, !mcsema_real_eip !39
  %176 = and i32 %168, %175, !mcsema_real_eip !39
  %177 = icmp slt i32 %176, 0
  store i1 %177, i1* %OF, align 1, !mcsema_real_eip !39
  %178 = trunc i32 %167 to i8, !mcsema_real_eip !39
  %179 = tail call i8 @llvm.ctpop.i8(i8 %178), !mcsema_real_eip !39
  %180 = and i8 %179, 1
  %181 = icmp eq i8 %180, 0
  store i1 %181, i1* %PF, align 1, !mcsema_real_eip !39
  %182 = icmp ult i32 %167, %166, !mcsema_real_eip !39
  store i1 %182, i1* %CF, align 1, !mcsema_real_eip !39
  %183 = zext i32 %167 to i64, !mcsema_real_eip !39
  store i64 %183, i64* %XCX, align 8, !mcsema_real_eip !39
  %184 = add i64 %RBP_val.39, -24, !mcsema_real_eip !40
  %185 = inttoptr i64 %184 to i32*, !mcsema_real_eip !40
  %186 = load i32, i32* %185, align 4, !mcsema_real_eip !40
  %187 = add i32 %167, %186, !mcsema_real_eip !40
  %188 = xor i32 %187, %186, !mcsema_real_eip !40
  %189 = xor i32 %188, %167, !mcsema_real_eip !40
  %190 = and i32 %189, 16, !mcsema_real_eip !40
  %191 = icmp ne i32 %190, 0, !mcsema_real_eip !40
  store i1 %191, i1* %AF, align 1, !mcsema_real_eip !40
  %192 = icmp slt i32 %187, 0
  store i1 %192, i1* %SF, align 1, !mcsema_real_eip !40
  %193 = icmp eq i32 %187, 0, !mcsema_real_eip !40
  store i1 %193, i1* %ZF, align 1, !mcsema_real_eip !40
  %194 = xor i32 %186, -2147483648, !mcsema_real_eip !40
  %195 = xor i32 %194, %167, !mcsema_real_eip !40
  %196 = and i32 %188, %195, !mcsema_real_eip !40
  %197 = icmp slt i32 %196, 0
  store i1 %197, i1* %OF, align 1, !mcsema_real_eip !40
  %198 = trunc i32 %187 to i8, !mcsema_real_eip !40
  %199 = tail call i8 @llvm.ctpop.i8(i8 %198), !mcsema_real_eip !40
  %200 = and i8 %199, 1
  %201 = icmp eq i8 %200, 0
  store i1 %201, i1* %PF, align 1, !mcsema_real_eip !40
  %202 = icmp ult i32 %187, %186, !mcsema_real_eip !40
  store i1 %202, i1* %CF, align 1, !mcsema_real_eip !40
  %203 = zext i32 %187 to i64, !mcsema_real_eip !40
  store i64 %203, i64* %XCX, align 8, !mcsema_real_eip !40
  %204 = add i64 %RBP_val.39, -28, !mcsema_real_eip !41
  %205 = inttoptr i64 %204 to i32*, !mcsema_real_eip !41
  %206 = load i32, i32* %205, align 4, !mcsema_real_eip !41
  %207 = add i32 %187, %206, !mcsema_real_eip !41
  %208 = xor i32 %207, %206, !mcsema_real_eip !41
  %209 = xor i32 %208, %187, !mcsema_real_eip !41
  %210 = and i32 %209, 16, !mcsema_real_eip !41
  %211 = icmp ne i32 %210, 0, !mcsema_real_eip !41
  store i1 %211, i1* %AF, align 1, !mcsema_real_eip !41
  %212 = icmp slt i32 %207, 0
  store i1 %212, i1* %SF, align 1, !mcsema_real_eip !41
  %213 = icmp eq i32 %207, 0, !mcsema_real_eip !41
  store i1 %213, i1* %ZF, align 1, !mcsema_real_eip !41
  %214 = xor i32 %206, -2147483648, !mcsema_real_eip !41
  %215 = xor i32 %214, %187, !mcsema_real_eip !41
  %216 = and i32 %208, %215, !mcsema_real_eip !41
  %217 = icmp slt i32 %216, 0
  store i1 %217, i1* %OF, align 1, !mcsema_real_eip !41
  %218 = trunc i32 %207 to i8, !mcsema_real_eip !41
  %219 = tail call i8 @llvm.ctpop.i8(i8 %218), !mcsema_real_eip !41
  %220 = and i8 %219, 1
  %221 = icmp eq i8 %220, 0
  store i1 %221, i1* %PF, align 1, !mcsema_real_eip !41
  %222 = icmp ult i32 %207, %206, !mcsema_real_eip !41
  store i1 %222, i1* %CF, align 1, !mcsema_real_eip !41
  %223 = zext i32 %207 to i64, !mcsema_real_eip !41
  store i64 %223, i64* %XCX, align 8, !mcsema_real_eip !41
  %224 = add i64 %RBP_val.39, -32, !mcsema_real_eip !42
  %225 = inttoptr i64 %224 to i32*, !mcsema_real_eip !42
  %226 = load i32, i32* %225, align 4, !mcsema_real_eip !42
  %227 = add i32 %207, %226, !mcsema_real_eip !42
  %228 = xor i32 %227, %226, !mcsema_real_eip !42
  %229 = xor i32 %228, %207, !mcsema_real_eip !42
  %230 = and i32 %229, 16, !mcsema_real_eip !42
  %231 = icmp ne i32 %230, 0, !mcsema_real_eip !42
  store i1 %231, i1* %AF, align 1, !mcsema_real_eip !42
  %232 = icmp eq i32 %227, 0, !mcsema_real_eip !42
  store i1 %232, i1* %ZF, align 1, !mcsema_real_eip !42
  %233 = trunc i32 %227 to i8, !mcsema_real_eip !42
  %234 = tail call i8 @llvm.ctpop.i8(i8 %233), !mcsema_real_eip !42
  %235 = and i8 %234, 1
  %236 = icmp eq i8 %235, 0
  store i1 %236, i1* %PF, align 1, !mcsema_real_eip !42
  %237 = zext i32 %227 to i64, !mcsema_real_eip !42
  store i64 %237, i64* %XCX, align 8, !mcsema_real_eip !42
  %EAX_val.85 = load i32, i32* %EAX.41, align 4, !mcsema_real_eip !43
  %238 = sext i32 %EAX_val.85 to i64, !mcsema_real_eip !43
  %239 = sext i32 %227 to i64, !mcsema_real_eip !43
  %240 = mul nsw i64 %238, %239, !mcsema_real_eip !43
  %241 = trunc i64 %240 to i32, !mcsema_real_eip !43
  %sext = shl i64 %240, 32
  %242 = ashr exact i64 %sext, 32
  %243 = icmp ne i64 %242, %240, !mcsema_real_eip !43
  %244 = icmp slt i32 %241, 0, !mcsema_real_eip !43
  store i1 %244, i1* %SF, align 1, !mcsema_real_eip !43
  store i1 %243, i1* %OF, align 1, !mcsema_real_eip !43
  store i1 %243, i1* %CF, align 1, !mcsema_real_eip !43
  %245 = and i64 %240, 4294967295
  store i64 %245, i64* %XAX, align 8, !mcsema_real_eip !43
  %RSP_val.86 = load i64, i64* %XSP, align 8, !mcsema_real_eip !44
  %246 = inttoptr i64 %RSP_val.86 to i64*, !mcsema_real_eip !44
  %247 = load i64, i64* %246, align 8, !mcsema_real_eip !44
  store i64 %247, i64* %XBX, align 8, !mcsema_real_eip !44
  %248 = add i64 %RSP_val.86, 8, !mcsema_real_eip !44
  store i64 %248, i64* %XSP, align 8, !mcsema_real_eip !44
  %249 = inttoptr i64 %248 to i64*, !mcsema_real_eip !45
  %250 = load i64, i64* %249, align 8, !mcsema_real_eip !45
  store i64 %250, i64* %XBP, align 8, !mcsema_real_eip !45
  %251 = add i64 %RSP_val.86, 16, !mcsema_real_eip !45
  store i64 %251, i64* %XSP, align 8, !mcsema_real_eip !45
  %252 = add i64 %RSP_val.86, 24, !mcsema_real_eip !46
  %253 = inttoptr i64 %251 to i64*, !mcsema_real_eip !46
  %254 = load i64, i64* %253, align 8, !mcsema_real_eip !46
  store i64 %254, i64* %XIP, align 8, !mcsema_real_eip !46
  store i64 %252, i64* %XSP, align 8, !mcsema_real_eip !46
  ret void, !mcsema_real_eip !46
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_a0(%RegState*) local_unnamed_addr #1 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_.sroa.0 = alloca i64, align 8
  %_local_stack_start_ptr_1 = alloca [272 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [272 x i8], [272 x i8]* %_local_stack_start_ptr_1, i64 0, i64 272
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !47
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !47
  %XBX = getelementptr %RegState, %RegState* %0, i64 0, i32 2, !mcsema_real_eip !47
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !47
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !47
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !47
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !47
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !47
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !47
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !47
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !47
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !47
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !47
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !47
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !47
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !47
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !47
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !47
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !47
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !47
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !47
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !47
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !47
  %R10 = getelementptr %RegState, %RegState* %0, i64 0, i32 66, !mcsema_real_eip !47
  %R11 = getelementptr %RegState, %RegState* %0, i64 0, i32 67, !mcsema_real_eip !47
  %R12 = getelementptr %RegState, %RegState* %0, i64 0, i32 68, !mcsema_real_eip !47
  %R13 = getelementptr %RegState, %RegState* %0, i64 0, i32 69, !mcsema_real_eip !47
  %R14 = getelementptr %RegState, %RegState* %0, i64 0, i32 70, !mcsema_real_eip !47
  %R15 = getelementptr %RegState, %RegState* %0, i64 0, i32 71, !mcsema_real_eip !47
  %RSP_val.90 = load i64, i64* %XSP, align 8, !mcsema_real_eip !47
  %_new_gep_ = getelementptr inbounds [272 x i8], [272 x i8]* %_local_stack_start_ptr_1, i64 0, i64 264
  %1 = add i64 %RSP_val.90, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  store volatile i64 undef, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  %2 = ptrtoint i8* %_new_gep_ to i64
  store volatile i64 %2, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !48
  %R15_val.92 = load i64, i64* %R15, align 8, !mcsema_real_eip !49
  %_new_gep_3 = getelementptr inbounds [272 x i8], [272 x i8]* %_local_stack_start_ptr_1, i64 0, i64 256
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  store i64 %R15_val.92, i64* %_allin_new_bt_4, align 8, !mcsema_real_eip !49
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  %R14_val.94 = load i64, i64* %R14, align 8, !mcsema_real_eip !50
  %_new_gep_6 = getelementptr inbounds [272 x i8], [272 x i8]* %_local_stack_start_ptr_1, i64 0, i64 248
  %_allin_new_bt_7 = bitcast i8* %_new_gep_6 to i64*
  store i64 %R14_val.94, i64* %_allin_new_bt_7, align 8, !mcsema_real_eip !50
  store volatile i8* %_new_gep_6, i8** %_RSP_ptr_, align 8
  %R13_val.96 = load i64, i64* %R13, align 8, !mcsema_real_eip !51
  %_new_gep_9 = getelementptr inbounds [272 x i8], [272 x i8]* %_local_stack_start_ptr_1, i64 0, i64 240
  %_allin_new_bt_10 = bitcast i8* %_new_gep_9 to i64*
  store i64 %R13_val.96, i64* %_allin_new_bt_10, align 8, !mcsema_real_eip !51
  store volatile i8* %_new_gep_9, i8** %_RSP_ptr_, align 8
  %R12_val.98 = load i64, i64* %R12, align 8, !mcsema_real_eip !52
  %_new_gep_12 = getelementptr inbounds [272 x i8], [272 x i8]* %_local_stack_start_ptr_1, i64 0, i64 232
  %_allin_new_bt_13 = bitcast i8* %_new_gep_12 to i64*
  store i64 %R12_val.98, i64* %_allin_new_bt_13, align 8, !mcsema_real_eip !52
  store volatile i8* %_new_gep_12, i8** %_RSP_ptr_, align 8
  %RBX_val.100 = load i64, i64* %XBX, align 8, !mcsema_real_eip !53
  %_new_gep_15 = getelementptr inbounds [272 x i8], [272 x i8]* %_local_stack_start_ptr_1, i64 0, i64 224
  %_allin_new_bt_16 = bitcast i8* %_new_gep_15 to i64*
  store i64 %RBX_val.100, i64* %_allin_new_bt_16, align 8, !mcsema_real_eip !53
  store volatile i8* %_new_gep_15, i8** %_RSP_ptr_, align 8
  %_new_gep_18 = getelementptr inbounds [272 x i8], [272 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %3 = add i64 %RSP_val.90, -264
  %_trans_p2i_ = ptrtoint i8* %_new_gep_18 to i64
  %_trans_p2i_19 = ptrtoint i8* %_new_gep_15 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_19
  %4 = and i64 %_trans_xor_, 16
  %5 = icmp eq i64 %4, 0
  store i1 %5, i1* %AF, align 1, !mcsema_real_eip !54
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %6 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !54
  %7 = and i8 %6, 1
  %8 = icmp eq i8 %7, 0
  store i1 %8, i1* %PF, align 1, !mcsema_real_eip !54
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !54
  %9 = icmp slt i64 %3, 0
  store i1 %9, i1* %SF, align 1, !mcsema_real_eip !54
  %_trans_icmp_ne_ = icmp ne i8* %_new_gep_15, inttoptr (i64 216 to i8*)
  store i1 %_trans_icmp_ne_, i1* %CF, align 1, !mcsema_real_eip !54
  %10 = and i64 %_trans_xor_, %_trans_p2i_19, !mcsema_real_eip !54
  %11 = icmp slt i64 %10, 0
  store i1 %11, i1* %OF, align 1, !mcsema_real_eip !54
  store volatile i8* %_new_gep_18, i8** %_RSP_ptr_, align 8
  store i64 %3, i64* %XSP, align 8, !mcsema_real_eip !54
  store i64 100, i64* %XAX, align 8, !mcsema_real_eip !55
  store i64 200, i64* %XCX, align 8, !mcsema_real_eip !56
  %12 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> <i64 400, i64 500>, <2 x i64>* %12, align 8
  %13 = bitcast i64* %R10 to <2 x i64>*
  store <2 x i64> <i64 600, i64 10>, <2 x i64>* %13, align 8
  %14 = bitcast i64* %_RBP_ptr_.sroa.0 to i8**
  %_new_gep_29 = getelementptr inbounds [272 x i8], [272 x i8]* %_local_stack_start_ptr_1, i64 0, i64 120
  %15 = ptrtoint i8* %_new_gep_29 to i64
  store i64 %15, i64* %XBX, align 8, !mcsema_real_eip !57
  %_new_gep_32 = getelementptr inbounds [272 x i8], [272 x i8]* %_local_stack_start_ptr_1, i64 0, i64 168
  %16 = ptrtoint i8* %_new_gep_32 to i64
  store i64 %16, i64* %R14, align 8, !mcsema_real_eip !58
  store i64 add (i64 ptrtoint (%0* @data_0x220 to i64), i64 48), i64* %R15, align 8, !mcsema_real_eip !59
  %17 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> <i64 ptrtoint (%0* @data_0x220 to i64), i64 40>, <2 x i64>* %17, align 8
  %_new_gep_35 = getelementptr inbounds [272 x i8], [272 x i8]* %_local_stack_start_ptr_1, i64 0, i64 220
  %18 = bitcast i8* %_new_gep_35 to i32*
  store i32 0, i32* %18, align 4, !mcsema_real_eip !60
  %_new_gep_38 = getelementptr inbounds [272 x i8], [272 x i8]* %_local_stack_start_ptr_1, i64 0, i64 216
  %EDI.109 = bitcast i64* %XDI to i32*, !mcsema_real_eip !61
  %EDI_val.110 = load i32, i32* %EDI.109, align 4, !mcsema_real_eip !61
  %19 = bitcast i8* %_new_gep_38 to i32*
  store i32 %EDI_val.110, i32* %19, align 4, !mcsema_real_eip !61
  %_new_gep_41 = getelementptr inbounds [272 x i8], [272 x i8]* %_local_stack_start_ptr_1, i64 0, i64 208
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %RSI_val.112 = load i64, i64* %XSI, align 8, !mcsema_real_eip !62
  store i64 %RSI_val.112, i64* %_allin_new_bt_42, align 8, !mcsema_real_eip !62
  store i64 %16, i64* %XDI, align 8, !mcsema_real_eip !63
  store i64 ptrtoint (%0* @data_0x220 to i64), i64* %XSI, align 8, !mcsema_real_eip !64
  %_new_gep_44 = getelementptr inbounds [272 x i8], [272 x i8]* %_local_stack_start_ptr_1, i64 0, i64 112
  %20 = bitcast i8* %_new_gep_44 to i32*
  store i32 300, i32* %20, align 4, !mcsema_real_eip !65
  store i64 40, i64* %XDX, align 8, !mcsema_real_eip !66
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_467 = load i8*, i8** %14, align 8
  %_new_gep_47 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_467, i64 -160
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  store i64 add (i64 ptrtoint (%0* @data_0x220 to i64), i64 48), i64* %_allin_new_bt_48, align 8, !mcsema_real_eip !67
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_498 = load i8*, i8** %14, align 8
  %_new_gep_50 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_498, i64 -168
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  %R13_val.123 = load i64, i64* %R13, align 8, !mcsema_real_eip !68
  store i64 %R13_val.123, i64* %_allin_new_bt_51, align 8, !mcsema_real_eip !68
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_529 = load i8*, i8** %14, align 8
  %_new_gep_53 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_529, i64 -172
  %EAX.125 = bitcast i64* %XAX to i32*, !mcsema_real_eip !69
  %EAX_val.126 = load i32, i32* %EAX.125, align 4, !mcsema_real_eip !69
  %21 = bitcast i8* %_new_gep_53 to i32*
  store i32 %EAX_val.126, i32* %21, align 4, !mcsema_real_eip !69
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5510 = load i8*, i8** %14, align 8
  %_new_gep_56 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5510, i64 -176
  %ECX.128 = bitcast i64* %XCX to i32*, !mcsema_real_eip !70
  %ECX_val.129 = load i32, i32* %ECX.128, align 4, !mcsema_real_eip !70
  %22 = bitcast i8* %_new_gep_56 to i32*
  store i32 %ECX_val.129, i32* %22, align 4, !mcsema_real_eip !70
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5811 = load i8*, i8** %14, align 8
  %_new_gep_59 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_5811, i64 -184
  %_allin_new_bt_60 = bitcast i8* %_new_gep_59 to i64*
  %R14_val.131 = load i64, i64* %R14, align 8, !mcsema_real_eip !71
  store i64 %R14_val.131, i64* %_allin_new_bt_60, align 8, !mcsema_real_eip !71
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6112 = load i8*, i8** %14, align 8
  %_new_gep_62 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6112, i64 -188
  %R8D.133 = bitcast i64* %R8 to i32*, !mcsema_real_eip !72
  %R8D_val.134 = load i32, i32* %R8D.133, align 4, !mcsema_real_eip !72
  %23 = bitcast i8* %_new_gep_62 to i32*
  store i32 %R8D_val.134, i32* %23, align 4, !mcsema_real_eip !72
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6413 = load i8*, i8** %14, align 8
  %_new_gep_65 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6413, i64 -192
  %R9D.136 = bitcast i64* %R9 to i32*, !mcsema_real_eip !73
  %R9D_val.137 = load i32, i32* %R9D.136, align 4, !mcsema_real_eip !73
  %24 = bitcast i8* %_new_gep_65 to i32*
  store i32 %R9D_val.137, i32* %24, align 4, !mcsema_real_eip !73
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6714 = load i8*, i8** %14, align 8
  %_new_gep_68 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_6714, i64 -196
  %R10D.139 = bitcast i64* %R10 to i32*, !mcsema_real_eip !74
  %R10D_val.140 = load i32, i32* %R10D.139, align 4, !mcsema_real_eip !74
  %25 = bitcast i8* %_new_gep_68 to i32*
  store i32 %R10D_val.140, i32* %25, align 4, !mcsema_real_eip !74
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7015 = load i8*, i8** %14, align 8
  %_new_gep_71 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7015, i64 -200
  %R11D.142 = bitcast i64* %R11 to i32*, !mcsema_real_eip !75
  %R11D_val.143 = load i32, i32* %R11D.142, align 4, !mcsema_real_eip !75
  %26 = bitcast i8* %_new_gep_71 to i32*
  store i32 %R11D_val.143, i32* %26, align 4, !mcsema_real_eip !75
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7316 = load i8*, i8** %14, align 8
  %_new_gep_74 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7316, i64 -208
  %_allin_new_bt_75 = bitcast i8* %_new_gep_74 to i64*
  %RBX_val.145 = load i64, i64* %XBX, align 8, !mcsema_real_eip !76
  store i64 %RBX_val.145, i64* %_allin_new_bt_75, align 8, !mcsema_real_eip !76
  %RDI_val.146 = load i64, i64* %XDI, align 8, !mcsema_real_eip !77
  %RSI_val.147 = load i64, i64* %XSI, align 8, !mcsema_real_eip !77
  %RDX_val.148 = load i64, i64* %XDX, align 8, !mcsema_real_eip !77
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_76 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.149 = load i64, i64* %XSP, align 8, !mcsema_real_eip !77
  %_new_gep_77 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_76, i64 -8
  %27 = add i64 %RSP_val.149, -8
  %_allin_new_bt_78 = bitcast i8* %_new_gep_77 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_78, align 8, !mcsema_real_eip !77
  store volatile i8* %_new_gep_77, i8** %_RSP_ptr_, align 8
  store i64 %27, i64* %XSP, align 8, !mcsema_real_eip !77
  %28 = call x86_64_sysvcc i64 @_memcpy(i64 %RDI_val.146, i64 %RSI_val.147, i64 %RDX_val.148)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 %28, i64* %XAX, align 8, !mcsema_real_eip !77
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7917 = load i8*, i8** %14, align 8
  %_new_gep_80 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7917, i64 -208
  %_allin_new_bt_81 = bitcast i8* %_new_gep_80 to i64*
  %29 = load i64, i64* %_allin_new_bt_81, align 8, !mcsema_real_eip !78
  store i64 %29, i64* %XDX, align 8, !mcsema_real_eip !78
  store i64 %29, i64* %XDI, align 8, !mcsema_real_eip !79
  %_new_gep_83 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7917, i64 -160
  %_allin_new_bt_84 = bitcast i8* %_new_gep_83 to i64*
  %30 = load i64, i64* %_allin_new_bt_84, align 8, !mcsema_real_eip !80
  store i64 %30, i64* %XSI, align 8, !mcsema_real_eip !80
  %_new_gep_86 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_7917, i64 -168
  %_allin_new_bt_87 = bitcast i8* %_new_gep_86 to i64*
  %31 = load i64, i64* %_allin_new_bt_87, align 8, !mcsema_real_eip !81
  store i64 %31, i64* %XDX, align 8, !mcsema_real_eip !81
  %RSP_val.157 = load i64, i64* %XSP, align 8, !mcsema_real_eip !82
  %32 = add i64 %RSP_val.157, -8
  %_allin_new_bt_90 = bitcast i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_90, align 8, !mcsema_real_eip !82
  store volatile i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i8** %_RSP_ptr_, align 8
  store i64 %32, i64* %XSP, align 8, !mcsema_real_eip !82
  %33 = call x86_64_sysvcc i64 @_memcpy(i64 %29, i64 %30, i64 %31)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_202 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_203 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_202, i64 8
  store i8* %_gep_fix_203, i8** %_RSP_ptr_, align 8
  store i64 %33, i64* %XAX, align 8, !mcsema_real_eip !82
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9118 = load i8*, i8** %14, align 8
  %_new_gep_92 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9118, i64 -172
  %34 = bitcast i8* %_new_gep_92 to i32*
  %35 = load i32, i32* %34, align 4, !mcsema_real_eip !83
  %36 = zext i32 %35 to i64, !mcsema_real_eip !83
  store i64 %36, i64* %XDI, align 8, !mcsema_real_eip !83
  %_new_gep_95 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9118, i64 -176
  %37 = bitcast i8* %_new_gep_95 to i32*
  %38 = load i32, i32* %37, align 4, !mcsema_real_eip !84
  %39 = zext i32 %38 to i64, !mcsema_real_eip !84
  store i64 %39, i64* %XSI, align 8, !mcsema_real_eip !84
  %_new_gep_98 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9118, i64 -152
  %40 = bitcast i8* %_new_gep_98 to i32*
  %41 = load i32, i32* %40, align 4, !mcsema_real_eip !85
  %42 = zext i32 %41 to i64, !mcsema_real_eip !85
  store i64 %42, i64* %XDX, align 8, !mcsema_real_eip !85
  %_new_gep_101 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9118, i64 -188
  %43 = bitcast i8* %_new_gep_101 to i32*
  %44 = load i32, i32* %43, align 4, !mcsema_real_eip !86
  %45 = zext i32 %44 to i64, !mcsema_real_eip !86
  store i64 %45, i64* %XCX, align 8, !mcsema_real_eip !86
  %_new_gep_104 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9118, i64 -192
  %46 = bitcast i8* %_new_gep_104 to i32*
  %47 = load i32, i32* %46, align 4, !mcsema_real_eip !87
  %48 = zext i32 %47 to i64, !mcsema_real_eip !87
  store i64 %48, i64* %R8, align 8, !mcsema_real_eip !87
  %_new_gep_107 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_9118, i64 -196
  %49 = bitcast i8* %_new_gep_107 to i32*
  %50 = load i32, i32* %49, align 4, !mcsema_real_eip !88
  %51 = zext i32 %50 to i64, !mcsema_real_eip !88
  store i64 %51, i64* %R9, align 8, !mcsema_real_eip !88
  %52 = bitcast i8* %_gep_fix_203 to i32*
  store i32 10, i32* %52, align 4, !mcsema_real_eip !89
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_11219 = load i8*, i8** %14, align 8
  %_new_gep_113 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_11219, i64 -184
  %_allin_new_bt_114 = bitcast i8* %_new_gep_113 to i64*
  %53 = load i64, i64* %_allin_new_bt_114, align 8, !mcsema_real_eip !90
  store i64 %53, i64* %XBX, align 8, !mcsema_real_eip !90
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_115 = load i8*, i8** %_RSP_ptr_, align 8
  %_new_gep_116 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_115, i64 8
  %_allin_new_bt_117 = bitcast i8* %_new_gep_116 to i64*
  store i64 %53, i64* %_allin_new_bt_117, align 8, !mcsema_real_eip !91
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_118 = load i8*, i8** %_RSP_ptr_, align 8
  %_new_gep_119 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_118, i64 16
  %54 = bitcast i8* %_new_gep_119 to i32*
  store i32 10, i32* %54, align 4, !mcsema_real_eip !92
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_12120 = load i8*, i8** %14, align 8
  %_new_gep_122 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_12120, i64 -208
  %_allin_new_bt_123 = bitcast i8* %_new_gep_122 to i64*
  %55 = load i64, i64* %_allin_new_bt_123, align 8, !mcsema_real_eip !93
  store i64 %55, i64* %R14, align 8, !mcsema_real_eip !93
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_124 = load i8*, i8** %_RSP_ptr_, align 8
  %_new_gep_125 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_124, i64 24
  %_allin_new_bt_126 = bitcast i8* %_new_gep_125 to i64*
  store i64 %55, i64* %_allin_new_bt_126, align 8, !mcsema_real_eip !94
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_127 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.172 = load i64, i64* %XSP, align 8, !mcsema_real_eip !95
  %_new_gep_128 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_127, i64 -8
  %56 = add i64 %RSP_val.172, -8
  %_allin_new_bt_129 = bitcast i8* %_new_gep_128 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_129, align 8, !mcsema_real_eip !95
  store volatile i8* %_new_gep_128, i8** %_RSP_ptr_, align 8
  store i64 %56, i64* %XSP, align 8, !mcsema_real_eip !95
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_20421 = load i8*, i8** %14, align 8
  call x86_64_sysvcc void @sub_0.1(%RegState* %0, i8* %_new_gep_128, i8* %_local_stack_end_ptr_, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_20421)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_206 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_207 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_206, i64 8
  store i8* %_gep_fix_207, i8** %_RSP_ptr_, align 8
  store i64 ptrtoint (%1* @data_0x278 to i64), i64* %XDI, align 8, !mcsema_real_eip !96
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_13022 = load i8*, i8** %14, align 8
  %_new_gep_131 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_13022, i64 -148
  %EAX_val.175 = load i32, i32* %EAX.125, align 4, !mcsema_real_eip !97
  %57 = bitcast i8* %_new_gep_131 to i32*
  store i32 %EAX_val.175, i32* %57, align 4, !mcsema_real_eip !97
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_13323 = load i8*, i8** %14, align 8
  %_new_gep_134 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_13323, i64 -148
  %58 = bitcast i8* %_new_gep_134 to i32*
  %59 = load i32, i32* %58, align 4, !mcsema_real_eip !98
  %60 = zext i32 %59 to i64, !mcsema_real_eip !98
  store i64 %60, i64* %XSI, align 8, !mcsema_real_eip !98
  %AL.177 = bitcast i64* %XAX to i8*, !mcsema_real_eip !99
  store i8 0, i8* %AL.177, align 1, !mcsema_real_eip !99
  %RDI_val.178 = load i64, i64* %XDI, align 8, !mcsema_real_eip !100
  %RDX_val.180 = load i64, i64* %XDX, align 8, !mcsema_real_eip !100
  %RCX_val.181 = load i64, i64* %XCX, align 8, !mcsema_real_eip !100
  %R8_val.182 = load i64, i64* %R8, align 8, !mcsema_real_eip !100
  %R9_val.183 = load i64, i64* %R9, align 8, !mcsema_real_eip !100
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_136 = load i8*, i8** %_RSP_ptr_, align 8
  %_allin_new_bt_137 = bitcast i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_136 to i64*
  %61 = load i64, i64* %_allin_new_bt_137, align 8, !mcsema_real_eip !100
  %_new_gep_138 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_136, i64 8
  %_allin_new_bt_139 = bitcast i8* %_new_gep_138 to i64*
  %62 = load i64, i64* %_allin_new_bt_139, align 8, !mcsema_real_eip !100
  %_new_gep_140 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_136, i64 16
  %_allin_new_bt_141 = bitcast i8* %_new_gep_140 to i64*
  %63 = load i64, i64* %_allin_new_bt_141, align 8, !mcsema_real_eip !100
  %_new_gep_142 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_136, i64 24
  %_allin_new_bt_143 = bitcast i8* %_new_gep_142 to i64*
  %64 = load i64, i64* %_allin_new_bt_143, align 8, !mcsema_real_eip !100
  %_new_gep_144 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_136, i64 32
  %_allin_new_bt_145 = bitcast i8* %_new_gep_144 to i64*
  %65 = load i64, i64* %_allin_new_bt_145, align 8, !mcsema_real_eip !100
  %_new_gep_146 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_136, i64 40
  %_allin_new_bt_147 = bitcast i8* %_new_gep_146 to i64*
  %66 = load i64, i64* %_allin_new_bt_147, align 8, !mcsema_real_eip !100
  %_new_gep_148 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_136, i64 48
  %_allin_new_bt_149 = bitcast i8* %_new_gep_148 to i64*
  %67 = load i64, i64* %_allin_new_bt_149, align 8, !mcsema_real_eip !100
  %_new_gep_150 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_136, i64 56
  %_allin_new_bt_151 = bitcast i8* %_new_gep_150 to i64*
  %68 = load i64, i64* %_allin_new_bt_151, align 8, !mcsema_real_eip !100
  %_new_gep_152 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_136, i64 64
  %_allin_new_bt_153 = bitcast i8* %_new_gep_152 to i64*
  %69 = load i64, i64* %_allin_new_bt_153, align 8, !mcsema_real_eip !100
  %_new_gep_154 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_136, i64 72
  %_allin_new_bt_155 = bitcast i8* %_new_gep_154 to i64*
  %70 = load i64, i64* %_allin_new_bt_155, align 8, !mcsema_real_eip !100
  %RSP_val.185 = load i64, i64* %XSP, align 8, !mcsema_real_eip !100
  %_new_gep_157 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_136, i64 -8
  %71 = add i64 %RSP_val.185, -8
  %_allin_new_bt_158 = bitcast i8* %_new_gep_157 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_158, align 8, !mcsema_real_eip !100
  store volatile i8* %_new_gep_157, i8** %_RSP_ptr_, align 8
  store i64 %71, i64* %XSP, align 8, !mcsema_real_eip !100
  %72 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.178, i64 %60, i64 %RDX_val.180, i64 %RCX_val.181, i64 %R8_val.182, i64 %R9_val.183, i64 %61, i64 %62, i64 %63, i64 %64, i64 %65, i64 %66, i64 %67, i64 %68, i64 %69, i64 %70)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_208 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_209 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_208, i64 8
  store i8* %_gep_fix_209, i8** %_RSP_ptr_, align 8
  store i64 %72, i64* %XAX, align 8, !mcsema_real_eip !100
  %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_15924 = load i8*, i8** %14, align 8
  %_new_gep_160 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_15924, i64 -148
  %73 = bitcast i8* %_new_gep_160 to i32*
  %74 = load i32, i32* %73, align 4, !mcsema_real_eip !101
  %75 = zext i32 %74 to i64, !mcsema_real_eip !101
  store i64 %75, i64* %XCX, align 8, !mcsema_real_eip !101
  %_new_gep_163 = getelementptr i8, i8* %_RBP_ptr_.sroa.0.0._RBP_ptr_.sroa.0.0._RBP_ptr_.0._load_rbp_ptr_15924, i64 -212
  %76 = trunc i64 %72 to i32
  %77 = bitcast i8* %_new_gep_163 to i32*
  store i32 %76, i32* %77, align 4, !mcsema_real_eip !102
  %ECX_val.191 = load i32, i32* %ECX.128, align 4, !mcsema_real_eip !103
  %78 = zext i32 %ECX_val.191 to i64, !mcsema_real_eip !103
  store i64 %78, i64* %XAX, align 8, !mcsema_real_eip !103
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_165 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.192 = load i64, i64* %XSP, align 8, !mcsema_real_eip !104
  %_new_gep_166 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_165, i64 216
  %79 = add i64 %RSP_val.192, 216, !mcsema_real_eip !104
  %_trans_p2i_167 = ptrtoint i8* %_new_gep_166 to i64
  %_trans_p2i_168 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_165 to i64
  %_trans_xor_169 = xor i64 %_trans_p2i_167, %_trans_p2i_168
  %80 = and i64 %_trans_xor_169, 16
  %81 = icmp eq i64 %80, 0
  store i1 %81, i1* %AF, align 1, !mcsema_real_eip !104
  %82 = icmp slt i64 %79, 0
  store i1 %82, i1* %SF, align 1, !mcsema_real_eip !104
  %_trans_icmp_eq_171 = icmp eq i8* %_new_gep_166, null
  store i1 %_trans_icmp_eq_171, i1* %ZF, align 1, !mcsema_real_eip !104
  %83 = xor i64 %_trans_p2i_168, -9223372036854775808, !mcsema_real_eip !104
  %84 = and i64 %_trans_xor_169, %83, !mcsema_real_eip !104
  %85 = icmp slt i64 %84, 0
  store i1 %85, i1* %OF, align 1, !mcsema_real_eip !104
  %_trans_trunc_178 = trunc i64 %_trans_p2i_167 to i8
  %86 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_178), !mcsema_real_eip !104
  %87 = and i8 %86, 1
  %88 = icmp eq i8 %87, 0
  store i1 %88, i1* %PF, align 1, !mcsema_real_eip !104
  %_trans_icmp_ne_180 = icmp ne i64 %RSP_val.192, %_trans_p2i_167
  store i1 %_trans_icmp_ne_180, i1* %CF, align 1, !mcsema_real_eip !104
  store volatile i8* %_new_gep_166, i8** %_RSP_ptr_, align 8
  store i64 %79, i64* %XSP, align 8, !mcsema_real_eip !104
  %_allin_new_bt_182 = bitcast i8* %_new_gep_166 to i64*
  %89 = load i64, i64* %_allin_new_bt_182, align 8, !mcsema_real_eip !105
  store i64 %89, i64* %XBX, align 8, !mcsema_real_eip !105
  %_new_gep_183 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_165, i64 224
  %90 = add i64 %RSP_val.192, 224, !mcsema_real_eip !105
  store volatile i8* %_new_gep_183, i8** %_RSP_ptr_, align 8
  store i64 %90, i64* %XSP, align 8, !mcsema_real_eip !105
  %_allin_new_bt_185 = bitcast i8* %_new_gep_183 to i64*
  %91 = load i64, i64* %_allin_new_bt_185, align 8, !mcsema_real_eip !106
  store i64 %91, i64* %R12, align 8, !mcsema_real_eip !106
  %_new_gep_186 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_165, i64 232
  %92 = add i64 %RSP_val.192, 232, !mcsema_real_eip !106
  store volatile i8* %_new_gep_186, i8** %_RSP_ptr_, align 8
  store i64 %92, i64* %XSP, align 8, !mcsema_real_eip !106
  %_allin_new_bt_188 = bitcast i8* %_new_gep_186 to i64*
  %93 = load i64, i64* %_allin_new_bt_188, align 8, !mcsema_real_eip !107
  store i64 %93, i64* %R13, align 8, !mcsema_real_eip !107
  %_new_gep_189 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_165, i64 240
  %94 = add i64 %RSP_val.192, 240, !mcsema_real_eip !107
  store volatile i8* %_new_gep_189, i8** %_RSP_ptr_, align 8
  store i64 %94, i64* %XSP, align 8, !mcsema_real_eip !107
  %_allin_new_bt_191 = bitcast i8* %_new_gep_189 to i64*
  %95 = load i64, i64* %_allin_new_bt_191, align 8, !mcsema_real_eip !108
  store i64 %95, i64* %R14, align 8, !mcsema_real_eip !108
  %_new_gep_192 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_165, i64 248
  %96 = add i64 %RSP_val.192, 248, !mcsema_real_eip !108
  store volatile i8* %_new_gep_192, i8** %_RSP_ptr_, align 8
  store i64 %96, i64* %XSP, align 8, !mcsema_real_eip !108
  %_allin_new_bt_194 = bitcast i8* %_new_gep_192 to i64*
  %97 = load i64, i64* %_allin_new_bt_194, align 8, !mcsema_real_eip !109
  store i64 %97, i64* %R15, align 8, !mcsema_real_eip !109
  %_new_gep_195 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_165, i64 256
  %98 = add i64 %RSP_val.192, 256, !mcsema_real_eip !109
  store volatile i8* %_new_gep_195, i8** %_RSP_ptr_, align 8
  store i64 %98, i64* %XSP, align 8, !mcsema_real_eip !109
  %_allin_new_bt_197 = bitcast i8* %_new_gep_195 to i64*
  %99 = load i64, i64* %_allin_new_bt_197, align 8, !mcsema_real_eip !110
  store volatile i64 %99, i64* %_RBP_ptr_.sroa.0, align 8
  store i64 %99, i64* %XBP, align 8, !mcsema_real_eip !110
  %_new_gep_198 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_165, i64 264
  %100 = add i64 %RSP_val.192, 264, !mcsema_real_eip !110
  store volatile i8* %_new_gep_198, i8** %_RSP_ptr_, align 8
  store i64 %100, i64* %XSP, align 8, !mcsema_real_eip !110
  %_new_gep_200 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_165, i64 272
  %101 = add i64 %RSP_val.192, 272, !mcsema_real_eip !111
  %_allin_new_bt_201 = bitcast i8* %_new_gep_198 to i64*
  %102 = load i64, i64* %_allin_new_bt_201, align 8, !mcsema_real_eip !111
  store i64 %102, i64* %XIP, align 8, !mcsema_real_eip !111
  store volatile i8* %_new_gep_200, i8** %_RSP_ptr_, align 8
  store i64 %101, i64* %XSP, align 8, !mcsema_real_eip !111
  ret void, !mcsema_real_eip !111
}

; Function Attrs: nounwind readnone
declare i8 @llvm.ctpop.i8(i8) #2

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_memcpy(i64, i64, i64) local_unnamed_addr #3

; Function Attrs: naked noinline
declare x86_64_sysvcc i64 @_printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #3

; Function Attrs: noinline nounwind
define x86_64_sysvcc void @sub_0.1(%RegState* nocapture, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #0 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_1 = alloca [80 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [80 x i8], [80 x i8]* %_local_stack_start_ptr_1, i64 0, i64 80
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !2
  %XBX = getelementptr %RegState, %RegState* %0, i64 0, i32 2, !mcsema_real_eip !2
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !2
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !2
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !2
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !2
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !2
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !2
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !2
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !2
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !2
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !2
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !2
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !2
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !2
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !2
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !2
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !2
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !2
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !2
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !2
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !2
  %R10 = getelementptr %RegState, %RegState* %0, i64 0, i32 66, !mcsema_real_eip !2
  %R11 = getelementptr %RegState, %RegState* %0, i64 0, i32 67, !mcsema_real_eip !2
  %RSP_val.1 = load i64, i64* %XSP, align 8, !mcsema_real_eip !2
  %_new_gep_ = getelementptr inbounds [80 x i8], [80 x i8]* %_local_stack_start_ptr_1, i64 0, i64 72
  %1 = add i64 %RSP_val.1, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !3
  %RBX_val.3 = load i64, i64* %XBX, align 8, !mcsema_real_eip !4
  %_new_gep_3 = getelementptr inbounds [80 x i8], [80 x i8]* %_local_stack_start_ptr_1, i64 0, i64 64
  %2 = add i64 %RSP_val.1, -16
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  store i64 %RBX_val.3, i64* %_allin_new_bt_4, align 8, !mcsema_real_eip !4
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  store i64 %2, i64* %XSP, align 8, !mcsema_real_eip !4
  %_new_gep_6 = getelementptr [80 x i8], [80 x i8]* %_local_stack_start_ptr_1, i64 0, i64 112
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 32
  %_cond1_ = icmp ugt i8* %_new_gep_6, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_new_gep_6, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_new_gep_6, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  %.v = select i1 %_cond1_n_cond2_cond3_, i8* %_pot_address_in_parent_stack_, i8* %_new_gep_6
  %3 = bitcast i8* %.v to i64*
  %_new_load_ = load i64, i64* %3, align 8
  store i64 %_new_load_, i64* %XAX, align 8, !mcsema_real_eip !5
  %_new_gep_9 = getelementptr [80 x i8], [80 x i8]* %_local_stack_start_ptr_1, i64 0, i64 104
  %_pot_address_in_parent_stack_117 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 24
  %_cond1_118 = icmp ugt i8* %_new_gep_9, %_local_stack_end_ptr_
  %_cond2_1_119 = icmp ugt i8* %_new_gep_9, %_parent_stack_end_ptr_
  %_cond2_2_120 = icmp ult i8* %_new_gep_9, %_parent_stack_start_ptr_
  %_cond2_121 = or i1 %_cond2_1_119, %_cond2_2_120
  %_cond4_122 = icmp ule i8* %_pot_address_in_parent_stack_117, %_parent_stack_end_ptr_
  %_cond1_n_cond2_123 = and i1 %_cond1_118, %_cond2_121
  %_cond1_n_cond2_cond3_124 = and i1 %_cond1_n_cond2_123, %_cond4_122
  %_address_in_parent_stack_bt_126..v = select i1 %_cond1_n_cond2_cond3_124, i8* %_pot_address_in_parent_stack_117, i8* %_new_gep_9
  %_address_in_parent_stack_bt_126. = bitcast i8* %_address_in_parent_stack_bt_126..v to i32*
  %_new_load_127 = load i32, i32* %_address_in_parent_stack_bt_126., align 4
  %4 = zext i32 %_new_load_127 to i64, !mcsema_real_eip !6
  store i64 %4, i64* %R10, align 8, !mcsema_real_eip !6
  %_new_gep_12 = getelementptr [80 x i8], [80 x i8]* %_local_stack_start_ptr_1, i64 0, i64 96
  %_pot_address_in_parent_stack_132 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 16
  %_cond1_133 = icmp ugt i8* %_new_gep_12, %_local_stack_end_ptr_
  %_cond2_1_134 = icmp ugt i8* %_new_gep_12, %_parent_stack_end_ptr_
  %_cond2_2_135 = icmp ult i8* %_new_gep_12, %_parent_stack_start_ptr_
  %_cond2_136 = or i1 %_cond2_1_134, %_cond2_2_135
  %_cond4_137 = icmp ule i8* %_pot_address_in_parent_stack_132, %_parent_stack_end_ptr_
  %_cond1_n_cond2_138 = and i1 %_cond1_133, %_cond2_136
  %_cond1_n_cond2_cond3_139 = and i1 %_cond1_n_cond2_138, %_cond4_137
  %.v2 = select i1 %_cond1_n_cond2_cond3_139, i8* %_pot_address_in_parent_stack_132, i8* %_new_gep_12
  %5 = bitcast i8* %.v2 to i64*
  %_new_load_142 = load i64, i64* %5, align 8
  store i64 %_new_load_142, i64* %R11, align 8, !mcsema_real_eip !7
  %_new_gep_15 = getelementptr [80 x i8], [80 x i8]* %_local_stack_start_ptr_1, i64 0, i64 88
  %_pot_address_in_parent_stack_147 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 8
  %_cond1_148 = icmp ugt i8* %_new_gep_15, %_local_stack_end_ptr_
  %_cond2_1_149 = icmp ugt i8* %_new_gep_15, %_parent_stack_end_ptr_
  %_cond2_2_150 = icmp ult i8* %_new_gep_15, %_parent_stack_start_ptr_
  %_cond2_151 = or i1 %_cond2_1_149, %_cond2_2_150
  %_cond4_152 = icmp ule i8* %_pot_address_in_parent_stack_147, %_parent_stack_end_ptr_
  %_cond1_n_cond2_153 = and i1 %_cond1_148, %_cond2_151
  %_cond1_n_cond2_cond3_154 = and i1 %_cond1_n_cond2_153, %_cond4_152
  %_address_in_parent_stack_bt_156..v = select i1 %_cond1_n_cond2_cond3_154, i8* %_pot_address_in_parent_stack_147, i8* %_new_gep_15
  %_address_in_parent_stack_bt_156. = bitcast i8* %_address_in_parent_stack_bt_156..v to i32*
  %_new_load_157 = load i32, i32* %_address_in_parent_stack_bt_156., align 4
  %6 = zext i32 %_new_load_157 to i64, !mcsema_real_eip !8
  store i64 %6, i64* %XBX, align 8, !mcsema_real_eip !8
  %_new_gep_18 = getelementptr inbounds [80 x i8], [80 x i8]* %_local_stack_start_ptr_1, i64 0, i64 60
  %EDI.10 = bitcast i64* %XDI to i32*, !mcsema_real_eip !9
  %EDI_val.11 = load i32, i32* %EDI.10, align 4, !mcsema_real_eip !9
  %7 = bitcast i8* %_new_gep_18 to i32*
  store i32 %EDI_val.11, i32* %7, align 4, !mcsema_real_eip !9
  %_new_gep_21 = getelementptr inbounds [80 x i8], [80 x i8]* %_local_stack_start_ptr_1, i64 0, i64 56
  %ESI.13 = bitcast i64* %XSI to i32*, !mcsema_real_eip !10
  %ESI_val.14 = load i32, i32* %ESI.13, align 4, !mcsema_real_eip !10
  %8 = bitcast i8* %_new_gep_21 to i32*
  store i32 %ESI_val.14, i32* %8, align 4, !mcsema_real_eip !10
  %_new_gep_24 = getelementptr inbounds [80 x i8], [80 x i8]* %_local_stack_start_ptr_1, i64 0, i64 52
  %EDX.16 = bitcast i64* %XDX to i32*, !mcsema_real_eip !11
  %EDX_val.17 = load i32, i32* %EDX.16, align 4, !mcsema_real_eip !11
  %9 = bitcast i8* %_new_gep_24 to i32*
  store i32 %EDX_val.17, i32* %9, align 4, !mcsema_real_eip !11
  %_new_gep_27 = getelementptr inbounds [80 x i8], [80 x i8]* %_local_stack_start_ptr_1, i64 0, i64 48
  %ECX.19 = bitcast i64* %XCX to i32*, !mcsema_real_eip !12
  %ECX_val.20 = load i32, i32* %ECX.19, align 4, !mcsema_real_eip !12
  %10 = bitcast i8* %_new_gep_27 to i32*
  store i32 %ECX_val.20, i32* %10, align 4, !mcsema_real_eip !12
  %_new_gep_30 = getelementptr inbounds [80 x i8], [80 x i8]* %_local_stack_start_ptr_1, i64 0, i64 44
  %R8D.22 = bitcast i64* %R8 to i32*, !mcsema_real_eip !13
  %R8D_val.23 = load i32, i32* %R8D.22, align 4, !mcsema_real_eip !13
  %11 = bitcast i8* %_new_gep_30 to i32*
  store i32 %R8D_val.23, i32* %11, align 4, !mcsema_real_eip !13
  %_new_gep_33 = getelementptr inbounds [80 x i8], [80 x i8]* %_local_stack_start_ptr_1, i64 0, i64 40
  %R9D.25 = bitcast i64* %R9 to i32*, !mcsema_real_eip !14
  %R9D_val.26 = load i32, i32* %R9D.25, align 4, !mcsema_real_eip !14
  %12 = bitcast i8* %_new_gep_33 to i32*
  store i32 %R9D_val.26, i32* %12, align 4, !mcsema_real_eip !14
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_35 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_36 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_35, i64 -36
  %13 = bitcast i8* %_new_gep_36 to i32*
  store i32 %_new_load_157, i32* %13, align 4, !mcsema_real_eip !15
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_38 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_39 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_38, i64 -48
  %_allin_new_bt_40 = bitcast i8* %_new_gep_39 to i64*
  %R11_val.31 = load i64, i64* %R11, align 8, !mcsema_real_eip !16
  store i64 %R11_val.31, i64* %_allin_new_bt_40, align 8, !mcsema_real_eip !16
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_41 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_42 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_41, i64 -52
  %R10D.33 = bitcast i64* %R10 to i32*, !mcsema_real_eip !17
  %R10D_val.34 = load i32, i32* %R10D.33, align 4, !mcsema_real_eip !17
  %14 = bitcast i8* %_new_gep_42 to i32*
  store i32 %R10D_val.34, i32* %14, align 4, !mcsema_real_eip !17
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_44 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_45 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_44, i64 -64
  %_allin_new_bt_46 = bitcast i8* %_new_gep_45 to i64*
  %RAX_val.36 = load i64, i64* %XAX, align 8, !mcsema_real_eip !18
  store i64 %RAX_val.36, i64* %_allin_new_bt_46, align 8, !mcsema_real_eip !18
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_47 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_48 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_47, i64 -68
  %15 = bitcast i8* %_new_gep_48 to i32*
  store i32 0, i32* %15, align 4, !mcsema_real_eip !19
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_50 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_51 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_50, i64 -72
  %16 = bitcast i8* %_new_gep_51 to i32*
  store i32 0, i32* %16, align 4, !mcsema_real_eip !20
  %EAX.41 = bitcast i64* %XAX to i32*, !mcsema_real_eip !21
  br label %block_0x45, !mcsema_real_eip !22

block_0x45:                                       ; preds = %block_0x51, %entry
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_53 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_54 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_53, i64 -72
  %17 = ptrtoint i8* %_new_gep_54 to i64
  %_offset_above_rbp_161 = sub i64 %17, %_local_end_to_int_
  %_pot_address_in_parent_stack_162 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_161
  %_cond1_163 = icmp ugt i8* %_new_gep_54, %_local_stack_end_ptr_
  %_cond2_1_164 = icmp ugt i8* %_new_gep_54, %_parent_stack_end_ptr_
  %_cond2_2_165 = icmp ult i8* %_new_gep_54, %_parent_stack_start_ptr_
  %_cond2_166 = or i1 %_cond2_1_164, %_cond2_2_165
  %_cond4_167 = icmp ule i8* %_pot_address_in_parent_stack_162, %_parent_stack_end_ptr_
  %_cond1_n_cond2_168 = and i1 %_cond1_163, %_cond2_166
  %_cond1_n_cond2_cond3_169 = and i1 %_cond1_n_cond2_168, %_cond4_167
  %_address_in_parent_stack_bt_171..v = select i1 %_cond1_n_cond2_cond3_169, i8* %_pot_address_in_parent_stack_162, i8* %_new_gep_54
  %_address_in_parent_stack_bt_171. = bitcast i8* %_address_in_parent_stack_bt_171..v to i32*
  %_new_load_172 = load i32, i32* %_address_in_parent_stack_bt_171., align 4
  %18 = zext i32 %_new_load_172 to i64, !mcsema_real_eip !22
  store i64 %18, i64* %XAX, align 8, !mcsema_real_eip !22
  %_new_gep_57 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_53, i64 -36
  %19 = ptrtoint i8* %_new_gep_57 to i64
  %_offset_above_rbp_176 = sub i64 %19, %_local_end_to_int_
  %_pot_address_in_parent_stack_177 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_176
  %_cond1_178 = icmp ugt i8* %_new_gep_57, %_local_stack_end_ptr_
  %_cond2_1_179 = icmp ugt i8* %_new_gep_57, %_parent_stack_end_ptr_
  %_cond2_2_180 = icmp ult i8* %_new_gep_57, %_parent_stack_start_ptr_
  %_cond2_181 = or i1 %_cond2_1_179, %_cond2_2_180
  %_cond4_182 = icmp ule i8* %_pot_address_in_parent_stack_177, %_parent_stack_end_ptr_
  %_cond1_n_cond2_183 = and i1 %_cond1_178, %_cond2_181
  %_cond1_n_cond2_cond3_184 = and i1 %_cond1_n_cond2_183, %_cond4_182
  %.v3 = select i1 %_cond1_n_cond2_cond3_184, i8* %_pot_address_in_parent_stack_177, i8* %_new_gep_57
  %20 = bitcast i8* %.v3 to i32*
  %_new_load_187 = load i32, i32* %20, align 4
  %21 = sub i32 %_new_load_172, %_new_load_187, !mcsema_real_eip !21
  %22 = xor i32 %21, %_new_load_172, !mcsema_real_eip !21
  %23 = xor i32 %22, %_new_load_187, !mcsema_real_eip !21
  %24 = and i32 %23, 16, !mcsema_real_eip !21
  %25 = icmp ne i32 %24, 0, !mcsema_real_eip !21
  store i1 %25, i1* %AF, align 1, !mcsema_real_eip !21
  %26 = trunc i32 %21 to i8, !mcsema_real_eip !21
  %27 = call i8 @llvm.ctpop.i8(i8 %26), !mcsema_real_eip !21
  %28 = and i8 %27, 1
  %29 = icmp eq i8 %28, 0
  store i1 %29, i1* %PF, align 1, !mcsema_real_eip !21
  %30 = icmp eq i32 %21, 0, !mcsema_real_eip !21
  store i1 %30, i1* %ZF, align 1, !mcsema_real_eip !21
  %31 = icmp slt i32 %21, 0
  store i1 %31, i1* %SF, align 1, !mcsema_real_eip !21
  %32 = icmp ult i32 %_new_load_172, %_new_load_187, !mcsema_real_eip !21
  store i1 %32, i1* %CF, align 1, !mcsema_real_eip !21
  %33 = xor i32 %_new_load_187, %_new_load_172, !mcsema_real_eip !21
  %34 = and i32 %22, %33, !mcsema_real_eip !21
  %35 = icmp slt i32 %34, 0
  store i1 %35, i1* %OF, align 1, !mcsema_real_eip !21
  %tmp = xor i1 %31, %35
  br i1 %tmp, label %block_0x51, label %block_0x7b, !mcsema_real_eip !23

block_0x51:                                       ; preds = %block_0x45
  %_new_gep_60 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_53, i64 -48
  %_ptr_to_int_188 = ptrtoint i8* %_new_gep_60 to i64
  %_offset_above_rbp_191 = sub i64 %_ptr_to_int_188, %_local_end_to_int_
  %_pot_address_in_parent_stack_192 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_191
  %_cond1_193 = icmp ugt i8* %_new_gep_60, %_local_stack_end_ptr_
  %_cond2_1_194 = icmp ugt i8* %_new_gep_60, %_parent_stack_end_ptr_
  %_cond2_2_195 = icmp ult i8* %_new_gep_60, %_parent_stack_start_ptr_
  %_cond2_196 = or i1 %_cond2_1_194, %_cond2_2_195
  %_cond4_197 = icmp ule i8* %_pot_address_in_parent_stack_192, %_parent_stack_end_ptr_
  %_cond1_n_cond2_198 = and i1 %_cond1_193, %_cond2_196
  %_cond1_n_cond2_cond3_199 = and i1 %_cond1_n_cond2_198, %_cond4_197
  %_address_in_parent_stack_bt_201._allin_new_bt_61.v = select i1 %_cond1_n_cond2_cond3_199, i8* %_pot_address_in_parent_stack_192, i8* %_new_gep_60
  %_address_in_parent_stack_bt_201._allin_new_bt_61 = bitcast i8* %_address_in_parent_stack_bt_201._allin_new_bt_61.v to i64*
  %_new_load_202 = load i64, i64* %_address_in_parent_stack_bt_201._allin_new_bt_61, align 8
  store i64 %_new_load_202, i64* %XAX, align 8, !mcsema_real_eip !24
  %_new_load_217 = load i32, i32* %_address_in_parent_stack_bt_171., align 4
  %36 = sext i32 %_new_load_217 to i64, !mcsema_real_eip !25
  store i64 %36, i64* %XCX, align 8, !mcsema_real_eip !25
  %37 = shl nsw i64 %36, 2
  %38 = add i64 %37, %_new_load_202, !mcsema_real_eip !26
  %39 = inttoptr i64 %38 to i32*, !mcsema_real_eip !26
  %_ptr_bt_220 = inttoptr i64 %38 to i8*
  %_offset_above_rbp_221 = sub i64 %38, %_local_end_to_int_
  %_pot_address_in_parent_stack_222 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_221
  %_cond1_223 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_220
  %_cond2_1_224 = icmp ugt i8* %_ptr_bt_220, %_parent_stack_end_ptr_
  %_cond2_2_225 = icmp ult i8* %_ptr_bt_220, %_parent_stack_start_ptr_
  %_cond2_226 = or i1 %_cond2_1_224, %_cond2_2_225
  %_cond4_227 = icmp ule i8* %_pot_address_in_parent_stack_222, %_parent_stack_end_ptr_
  %_cond1_n_cond2_228 = and i1 %_cond1_223, %_cond2_226
  %_cond1_n_cond2_cond3_229 = and i1 %_cond4_227, %_cond1_n_cond2_228
  %_address_in_parent_stack_bt_231 = bitcast i8* %_pot_address_in_parent_stack_222 to i32*
  %_address_in_parent_stack_bt_231. = select i1 %_cond1_n_cond2_cond3_229, i32* %_address_in_parent_stack_bt_231, i32* %39
  %_new_load_232 = load i32, i32* %_address_in_parent_stack_bt_231., align 4
  %40 = zext i32 %_new_load_232 to i64, !mcsema_real_eip !26
  store i64 %40, i64* %XDX, align 8, !mcsema_real_eip !26
  %_new_gep_66 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_53, i64 -64
  %_ptr_to_int_233 = ptrtoint i8* %_new_gep_66 to i64
  %_offset_above_rbp_236 = sub i64 %_ptr_to_int_233, %_local_end_to_int_
  %_pot_address_in_parent_stack_237 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_236
  %_cond1_238 = icmp ugt i8* %_new_gep_66, %_local_stack_end_ptr_
  %_cond2_1_239 = icmp ugt i8* %_new_gep_66, %_parent_stack_end_ptr_
  %_cond2_2_240 = icmp ult i8* %_new_gep_66, %_parent_stack_start_ptr_
  %_cond2_241 = or i1 %_cond2_1_239, %_cond2_2_240
  %_cond4_242 = icmp ule i8* %_pot_address_in_parent_stack_237, %_parent_stack_end_ptr_
  %_cond1_n_cond2_243 = and i1 %_cond1_238, %_cond2_241
  %_cond1_n_cond2_cond3_244 = and i1 %_cond1_n_cond2_243, %_cond4_242
  %.v4 = select i1 %_cond1_n_cond2_cond3_244, i8* %_pot_address_in_parent_stack_237, i8* %_new_gep_66
  %41 = bitcast i8* %.v4 to i64*
  %_new_load_247 = load i64, i64* %41, align 8
  store i64 %_new_load_247, i64* %XAX, align 8, !mcsema_real_eip !27
  %_new_load_262 = load i32, i32* %_address_in_parent_stack_bt_171., align 4
  %42 = sext i32 %_new_load_262 to i64, !mcsema_real_eip !28
  store i64 %42, i64* %XCX, align 8, !mcsema_real_eip !28
  %43 = shl nsw i64 %42, 2
  %44 = add i64 %43, %_new_load_247, !mcsema_real_eip !29
  %45 = inttoptr i64 %44 to i32*, !mcsema_real_eip !29
  %_ptr_bt_265 = inttoptr i64 %44 to i8*
  %_offset_above_rbp_266 = sub i64 %44, %_local_end_to_int_
  %_pot_address_in_parent_stack_267 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_266
  %_cond1_268 = icmp ult i8* %_local_stack_end_ptr_, %_ptr_bt_265
  %_cond2_1_269 = icmp ugt i8* %_ptr_bt_265, %_parent_stack_end_ptr_
  %_cond2_2_270 = icmp ult i8* %_ptr_bt_265, %_parent_stack_start_ptr_
  %_cond2_271 = or i1 %_cond2_1_269, %_cond2_2_270
  %_cond4_272 = icmp ule i8* %_pot_address_in_parent_stack_267, %_parent_stack_end_ptr_
  %_cond1_n_cond2_273 = and i1 %_cond1_268, %_cond2_271
  %_cond1_n_cond2_cond3_274 = and i1 %_cond4_272, %_cond1_n_cond2_273
  %_address_in_parent_stack_bt_276 = bitcast i8* %_pot_address_in_parent_stack_267 to i32*
  %46 = select i1 %_cond1_n_cond2_cond3_274, i32* %_address_in_parent_stack_bt_276, i32* %45
  %_new_load_277 = load i32, i32* %46, align 4
  %47 = sub i32 %_new_load_232, %_new_load_277, !mcsema_real_eip !29
  %48 = xor i32 %47, %_new_load_232, !mcsema_real_eip !29
  %49 = xor i32 %48, %_new_load_277, !mcsema_real_eip !29
  %50 = and i32 %49, 16, !mcsema_real_eip !29
  %51 = icmp ne i32 %50, 0, !mcsema_real_eip !29
  store i1 %51, i1* %AF, align 1, !mcsema_real_eip !29
  %52 = trunc i32 %47 to i8, !mcsema_real_eip !29
  %53 = call i8 @llvm.ctpop.i8(i8 %52), !mcsema_real_eip !29
  %54 = and i8 %53, 1
  %55 = icmp eq i8 %54, 0
  store i1 %55, i1* %PF, align 1, !mcsema_real_eip !29
  %56 = icmp eq i32 %47, 0, !mcsema_real_eip !29
  store i1 %56, i1* %ZF, align 1, !mcsema_real_eip !29
  %57 = icmp slt i32 %47, 0
  store i1 %57, i1* %SF, align 1, !mcsema_real_eip !29
  %58 = icmp ult i32 %_new_load_232, %_new_load_277, !mcsema_real_eip !29
  store i1 %58, i1* %CF, align 1, !mcsema_real_eip !29
  %59 = xor i32 %_new_load_277, %_new_load_232, !mcsema_real_eip !29
  %60 = and i32 %48, %59, !mcsema_real_eip !29
  %61 = icmp slt i32 %60, 0
  store i1 %61, i1* %OF, align 1, !mcsema_real_eip !29
  %62 = zext i32 %47 to i64, !mcsema_real_eip !29
  store i64 %62, i64* %XDX, align 8, !mcsema_real_eip !29
  %_new_gep_72 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_53, i64 -68
  %63 = ptrtoint i8* %_new_gep_72 to i64
  %64 = bitcast i8* %_new_gep_72 to i32*
  %_offset_above_rbp_281 = sub i64 %63, %_local_end_to_int_
  %_pot_address_in_parent_stack_282 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_281
  %_cond1_283 = icmp ugt i8* %_new_gep_72, %_local_stack_end_ptr_
  %_cond2_1_284 = icmp ugt i8* %_new_gep_72, %_parent_stack_end_ptr_
  %_cond2_2_285 = icmp ult i8* %_new_gep_72, %_parent_stack_start_ptr_
  %_cond2_286 = or i1 %_cond2_1_284, %_cond2_2_285
  %_cond4_287 = icmp ule i8* %_pot_address_in_parent_stack_282, %_parent_stack_end_ptr_
  %_cond1_n_cond2_288 = and i1 %_cond1_283, %_cond2_286
  %_cond1_n_cond2_cond3_289 = and i1 %_cond1_n_cond2_288, %_cond4_287
  %_address_in_parent_stack_bt_291 = bitcast i8* %_pot_address_in_parent_stack_282 to i32*
  %_address_in_parent_stack_bt_291. = select i1 %_cond1_n_cond2_cond3_289, i32* %_address_in_parent_stack_bt_291, i32* %64
  %_new_load_292 = load i32, i32* %_address_in_parent_stack_bt_291., align 4
  %65 = add i32 %47, %_new_load_292, !mcsema_real_eip !30
  %66 = xor i32 %65, %_new_load_292, !mcsema_real_eip !30
  %67 = xor i32 %66, %47, !mcsema_real_eip !30
  %68 = and i32 %67, 16, !mcsema_real_eip !30
  %69 = icmp ne i32 %68, 0, !mcsema_real_eip !30
  store i1 %69, i1* %AF, align 1, !mcsema_real_eip !30
  %70 = icmp slt i32 %65, 0
  store i1 %70, i1* %SF, align 1, !mcsema_real_eip !30
  %71 = icmp eq i32 %65, 0, !mcsema_real_eip !30
  store i1 %71, i1* %ZF, align 1, !mcsema_real_eip !30
  %72 = xor i32 %_new_load_292, -2147483648, !mcsema_real_eip !30
  %73 = xor i32 %72, %47, !mcsema_real_eip !30
  %74 = and i32 %66, %73, !mcsema_real_eip !30
  %75 = icmp slt i32 %74, 0
  store i1 %75, i1* %OF, align 1, !mcsema_real_eip !30
  %76 = trunc i32 %65 to i8, !mcsema_real_eip !30
  %77 = call i8 @llvm.ctpop.i8(i8 %76), !mcsema_real_eip !30
  %78 = and i8 %77, 1
  %79 = icmp eq i8 %78, 0
  store i1 %79, i1* %PF, align 1, !mcsema_real_eip !30
  %80 = icmp ult i32 %65, %_new_load_292, !mcsema_real_eip !30
  store i1 %80, i1* %CF, align 1, !mcsema_real_eip !30
  %81 = zext i32 %65 to i64, !mcsema_real_eip !30
  store i64 %81, i64* %XDX, align 8, !mcsema_real_eip !30
  store i32 %65, i32* %64, align 4, !mcsema_real_eip !31
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_77 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_78 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_77, i64 -72
  %82 = ptrtoint i8* %_new_gep_78 to i64
  %83 = bitcast i8* %_new_gep_78 to i32*
  %_offset_above_rbp_296 = sub i64 %82, %_local_end_to_int_
  %_pot_address_in_parent_stack_297 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_296
  %_cond1_298 = icmp ugt i8* %_new_gep_78, %_local_stack_end_ptr_
  %_cond2_1_299 = icmp ugt i8* %_new_gep_78, %_parent_stack_end_ptr_
  %_cond2_2_300 = icmp ult i8* %_new_gep_78, %_parent_stack_start_ptr_
  %_cond2_301 = or i1 %_cond2_1_299, %_cond2_2_300
  %_cond4_302 = icmp ule i8* %_pot_address_in_parent_stack_297, %_parent_stack_end_ptr_
  %_cond1_n_cond2_303 = and i1 %_cond1_298, %_cond2_301
  %_cond1_n_cond2_cond3_304 = and i1 %_cond1_n_cond2_303, %_cond4_302
  %_address_in_parent_stack_bt_306 = bitcast i8* %_pot_address_in_parent_stack_297 to i32*
  %84 = select i1 %_cond1_n_cond2_cond3_304, i32* %_address_in_parent_stack_bt_306, i32* %83
  %_new_load_307 = load i32, i32* %84, align 4
  %85 = add i32 %_new_load_307, 1, !mcsema_real_eip !33
  %86 = xor i32 %85, %_new_load_307, !mcsema_real_eip !33
  %87 = and i32 %86, 16, !mcsema_real_eip !33
  %88 = icmp ne i32 %87, 0, !mcsema_real_eip !33
  store i1 %88, i1* %AF, align 1, !mcsema_real_eip !33
  %89 = icmp slt i32 %85, 0
  store i1 %89, i1* %SF, align 1, !mcsema_real_eip !33
  %90 = icmp eq i32 %85, 0, !mcsema_real_eip !33
  store i1 %90, i1* %ZF, align 1, !mcsema_real_eip !33
  %91 = xor i32 %_new_load_307, -2147483648, !mcsema_real_eip !33
  %92 = and i32 %86, %91, !mcsema_real_eip !33
  %93 = icmp slt i32 %92, 0
  store i1 %93, i1* %OF, align 1, !mcsema_real_eip !33
  %94 = trunc i32 %85 to i8, !mcsema_real_eip !33
  %95 = call i8 @llvm.ctpop.i8(i8 %94), !mcsema_real_eip !33
  %96 = and i8 %95, 1
  %97 = icmp eq i8 %96, 0
  store i1 %97, i1* %PF, align 1, !mcsema_real_eip !33
  %98 = icmp eq i32 %_new_load_307, -1
  store i1 %98, i1* %CF, align 1, !mcsema_real_eip !33
  %99 = zext i32 %85 to i64, !mcsema_real_eip !33
  store i64 %99, i64* %XAX, align 8, !mcsema_real_eip !33
  store i32 %85, i32* %83, align 4, !mcsema_real_eip !34
  br label %block_0x45, !mcsema_real_eip !35

block_0x7b:                                       ; preds = %block_0x45
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !2
  %_new_gep_84 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_53, i64 -68
  %100 = ptrtoint i8* %_new_gep_84 to i64
  %_offset_above_rbp_311 = sub i64 %100, %_local_end_to_int_
  %_pot_address_in_parent_stack_312 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_311
  %_cond1_313 = icmp ugt i8* %_new_gep_84, %_local_stack_end_ptr_
  %_cond2_1_314 = icmp ugt i8* %_new_gep_84, %_parent_stack_end_ptr_
  %_cond2_2_315 = icmp ult i8* %_new_gep_84, %_parent_stack_start_ptr_
  %_cond2_316 = or i1 %_cond2_1_314, %_cond2_2_315
  %_cond4_317 = icmp ule i8* %_pot_address_in_parent_stack_312, %_parent_stack_end_ptr_
  %_cond1_n_cond2_318 = and i1 %_cond1_313, %_cond2_316
  %_cond1_n_cond2_cond3_319 = and i1 %_cond1_n_cond2_318, %_cond4_317
  %_address_in_parent_stack_bt_321..v = select i1 %_cond1_n_cond2_cond3_319, i8* %_pot_address_in_parent_stack_312, i8* %_new_gep_84
  %_address_in_parent_stack_bt_321. = bitcast i8* %_address_in_parent_stack_bt_321..v to i32*
  %_new_load_322 = load i32, i32* %_address_in_parent_stack_bt_321., align 4
  %101 = zext i32 %_new_load_322 to i64, !mcsema_real_eip !36
  store i64 %101, i64* %XAX, align 8, !mcsema_real_eip !36
  %_new_gep_87 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_53, i64 -12
  %102 = ptrtoint i8* %_new_gep_87 to i64
  %_offset_above_rbp_326 = sub i64 %102, %_local_end_to_int_
  %_pot_address_in_parent_stack_327 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_326
  %_cond1_328 = icmp ugt i8* %_new_gep_87, %_local_stack_end_ptr_
  %_cond2_1_329 = icmp ugt i8* %_new_gep_87, %_parent_stack_end_ptr_
  %_cond2_2_330 = icmp ult i8* %_new_gep_87, %_parent_stack_start_ptr_
  %_cond2_331 = or i1 %_cond2_1_329, %_cond2_2_330
  %_cond4_332 = icmp ule i8* %_pot_address_in_parent_stack_327, %_parent_stack_end_ptr_
  %_cond1_n_cond2_333 = and i1 %_cond1_328, %_cond2_331
  %_cond1_n_cond2_cond3_334 = and i1 %_cond1_n_cond2_333, %_cond4_332
  %.v5 = select i1 %_cond1_n_cond2_cond3_334, i8* %_pot_address_in_parent_stack_327, i8* %_new_gep_87
  %103 = bitcast i8* %.v5 to i32*
  %_new_load_337 = load i32, i32* %103, align 4
  %104 = zext i32 %_new_load_337 to i64, !mcsema_real_eip !37
  store i64 %104, i64* %XCX, align 8, !mcsema_real_eip !37
  %_new_gep_90 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_53, i64 -16
  %105 = ptrtoint i8* %_new_gep_90 to i64
  %_offset_above_rbp_341 = sub i64 %105, %_local_end_to_int_
  %_pot_address_in_parent_stack_342 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_341
  %_cond1_343 = icmp ugt i8* %_new_gep_90, %_local_stack_end_ptr_
  %_cond2_1_344 = icmp ugt i8* %_new_gep_90, %_parent_stack_end_ptr_
  %_cond2_2_345 = icmp ult i8* %_new_gep_90, %_parent_stack_start_ptr_
  %_cond2_346 = or i1 %_cond2_1_344, %_cond2_2_345
  %_cond4_347 = icmp ule i8* %_pot_address_in_parent_stack_342, %_parent_stack_end_ptr_
  %_cond1_n_cond2_348 = and i1 %_cond1_343, %_cond2_346
  %_cond1_n_cond2_cond3_349 = and i1 %_cond1_n_cond2_348, %_cond4_347
  %_address_in_parent_stack_bt_351..v = select i1 %_cond1_n_cond2_cond3_349, i8* %_pot_address_in_parent_stack_342, i8* %_new_gep_90
  %_address_in_parent_stack_bt_351. = bitcast i8* %_address_in_parent_stack_bt_351..v to i32*
  %_new_load_352 = load i32, i32* %_address_in_parent_stack_bt_351., align 4
  %106 = add i32 %_new_load_337, %_new_load_352, !mcsema_real_eip !38
  %107 = xor i32 %106, %_new_load_352, !mcsema_real_eip !38
  %108 = xor i32 %107, %_new_load_337, !mcsema_real_eip !38
  %109 = and i32 %108, 16, !mcsema_real_eip !38
  %110 = icmp ne i32 %109, 0, !mcsema_real_eip !38
  store i1 %110, i1* %AF, align 1, !mcsema_real_eip !38
  %111 = icmp slt i32 %106, 0
  store i1 %111, i1* %SF, align 1, !mcsema_real_eip !38
  %112 = icmp eq i32 %106, 0, !mcsema_real_eip !38
  store i1 %112, i1* %ZF, align 1, !mcsema_real_eip !38
  %113 = xor i32 %_new_load_352, -2147483648, !mcsema_real_eip !38
  %114 = xor i32 %113, %_new_load_337, !mcsema_real_eip !38
  %115 = and i32 %107, %114, !mcsema_real_eip !38
  %116 = icmp slt i32 %115, 0
  store i1 %116, i1* %OF, align 1, !mcsema_real_eip !38
  %117 = trunc i32 %106 to i8, !mcsema_real_eip !38
  %118 = call i8 @llvm.ctpop.i8(i8 %117), !mcsema_real_eip !38
  %119 = and i8 %118, 1
  %120 = icmp eq i8 %119, 0
  store i1 %120, i1* %PF, align 1, !mcsema_real_eip !38
  %121 = icmp ult i32 %106, %_new_load_352, !mcsema_real_eip !38
  store i1 %121, i1* %CF, align 1, !mcsema_real_eip !38
  %122 = zext i32 %106 to i64, !mcsema_real_eip !38
  store i64 %122, i64* %XCX, align 8, !mcsema_real_eip !38
  %_new_gep_93 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_53, i64 -20
  %123 = ptrtoint i8* %_new_gep_93 to i64
  %_offset_above_rbp_356 = sub i64 %123, %_local_end_to_int_
  %_pot_address_in_parent_stack_357 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_356
  %_cond1_358 = icmp ugt i8* %_new_gep_93, %_local_stack_end_ptr_
  %_cond2_1_359 = icmp ugt i8* %_new_gep_93, %_parent_stack_end_ptr_
  %_cond2_2_360 = icmp ult i8* %_new_gep_93, %_parent_stack_start_ptr_
  %_cond2_361 = or i1 %_cond2_1_359, %_cond2_2_360
  %_cond4_362 = icmp ule i8* %_pot_address_in_parent_stack_357, %_parent_stack_end_ptr_
  %_cond1_n_cond2_363 = and i1 %_cond1_358, %_cond2_361
  %_cond1_n_cond2_cond3_364 = and i1 %_cond1_n_cond2_363, %_cond4_362
  %.v6 = select i1 %_cond1_n_cond2_cond3_364, i8* %_pot_address_in_parent_stack_357, i8* %_new_gep_93
  %124 = bitcast i8* %.v6 to i32*
  %_new_load_367 = load i32, i32* %124, align 4
  %125 = add i32 %106, %_new_load_367, !mcsema_real_eip !39
  %126 = xor i32 %125, %_new_load_367, !mcsema_real_eip !39
  %127 = xor i32 %126, %106, !mcsema_real_eip !39
  %128 = and i32 %127, 16, !mcsema_real_eip !39
  %129 = icmp ne i32 %128, 0, !mcsema_real_eip !39
  store i1 %129, i1* %AF, align 1, !mcsema_real_eip !39
  %130 = icmp slt i32 %125, 0
  store i1 %130, i1* %SF, align 1, !mcsema_real_eip !39
  %131 = icmp eq i32 %125, 0, !mcsema_real_eip !39
  store i1 %131, i1* %ZF, align 1, !mcsema_real_eip !39
  %132 = xor i32 %_new_load_367, -2147483648, !mcsema_real_eip !39
  %133 = xor i32 %132, %106, !mcsema_real_eip !39
  %134 = and i32 %126, %133, !mcsema_real_eip !39
  %135 = icmp slt i32 %134, 0
  store i1 %135, i1* %OF, align 1, !mcsema_real_eip !39
  %136 = trunc i32 %125 to i8, !mcsema_real_eip !39
  %137 = call i8 @llvm.ctpop.i8(i8 %136), !mcsema_real_eip !39
  %138 = and i8 %137, 1
  %139 = icmp eq i8 %138, 0
  store i1 %139, i1* %PF, align 1, !mcsema_real_eip !39
  %140 = icmp ult i32 %125, %_new_load_367, !mcsema_real_eip !39
  store i1 %140, i1* %CF, align 1, !mcsema_real_eip !39
  %141 = zext i32 %125 to i64, !mcsema_real_eip !39
  store i64 %141, i64* %XCX, align 8, !mcsema_real_eip !39
  %_new_gep_96 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_53, i64 -24
  %142 = ptrtoint i8* %_new_gep_96 to i64
  %_offset_above_rbp_371 = sub i64 %142, %_local_end_to_int_
  %_pot_address_in_parent_stack_372 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_371
  %_cond1_373 = icmp ugt i8* %_new_gep_96, %_local_stack_end_ptr_
  %_cond2_1_374 = icmp ugt i8* %_new_gep_96, %_parent_stack_end_ptr_
  %_cond2_2_375 = icmp ult i8* %_new_gep_96, %_parent_stack_start_ptr_
  %_cond2_376 = or i1 %_cond2_1_374, %_cond2_2_375
  %_cond4_377 = icmp ule i8* %_pot_address_in_parent_stack_372, %_parent_stack_end_ptr_
  %_cond1_n_cond2_378 = and i1 %_cond1_373, %_cond2_376
  %_cond1_n_cond2_cond3_379 = and i1 %_cond1_n_cond2_378, %_cond4_377
  %_address_in_parent_stack_bt_381..v = select i1 %_cond1_n_cond2_cond3_379, i8* %_pot_address_in_parent_stack_372, i8* %_new_gep_96
  %_address_in_parent_stack_bt_381. = bitcast i8* %_address_in_parent_stack_bt_381..v to i32*
  %_new_load_382 = load i32, i32* %_address_in_parent_stack_bt_381., align 4
  %143 = add i32 %125, %_new_load_382, !mcsema_real_eip !40
  %144 = xor i32 %143, %_new_load_382, !mcsema_real_eip !40
  %145 = xor i32 %144, %125, !mcsema_real_eip !40
  %146 = and i32 %145, 16, !mcsema_real_eip !40
  %147 = icmp ne i32 %146, 0, !mcsema_real_eip !40
  store i1 %147, i1* %AF, align 1, !mcsema_real_eip !40
  %148 = icmp slt i32 %143, 0
  store i1 %148, i1* %SF, align 1, !mcsema_real_eip !40
  %149 = icmp eq i32 %143, 0, !mcsema_real_eip !40
  store i1 %149, i1* %ZF, align 1, !mcsema_real_eip !40
  %150 = xor i32 %_new_load_382, -2147483648, !mcsema_real_eip !40
  %151 = xor i32 %150, %125, !mcsema_real_eip !40
  %152 = and i32 %144, %151, !mcsema_real_eip !40
  %153 = icmp slt i32 %152, 0
  store i1 %153, i1* %OF, align 1, !mcsema_real_eip !40
  %154 = trunc i32 %143 to i8, !mcsema_real_eip !40
  %155 = call i8 @llvm.ctpop.i8(i8 %154), !mcsema_real_eip !40
  %156 = and i8 %155, 1
  %157 = icmp eq i8 %156, 0
  store i1 %157, i1* %PF, align 1, !mcsema_real_eip !40
  %158 = icmp ult i32 %143, %_new_load_382, !mcsema_real_eip !40
  store i1 %158, i1* %CF, align 1, !mcsema_real_eip !40
  %159 = zext i32 %143 to i64, !mcsema_real_eip !40
  store i64 %159, i64* %XCX, align 8, !mcsema_real_eip !40
  %_new_gep_99 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_53, i64 -28
  %160 = ptrtoint i8* %_new_gep_99 to i64
  %_offset_above_rbp_386 = sub i64 %160, %_local_end_to_int_
  %_pot_address_in_parent_stack_387 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_386
  %_cond1_388 = icmp ugt i8* %_new_gep_99, %_local_stack_end_ptr_
  %_cond2_1_389 = icmp ugt i8* %_new_gep_99, %_parent_stack_end_ptr_
  %_cond2_2_390 = icmp ult i8* %_new_gep_99, %_parent_stack_start_ptr_
  %_cond2_391 = or i1 %_cond2_1_389, %_cond2_2_390
  %_cond4_392 = icmp ule i8* %_pot_address_in_parent_stack_387, %_parent_stack_end_ptr_
  %_cond1_n_cond2_393 = and i1 %_cond1_388, %_cond2_391
  %_cond1_n_cond2_cond3_394 = and i1 %_cond1_n_cond2_393, %_cond4_392
  %.v7 = select i1 %_cond1_n_cond2_cond3_394, i8* %_pot_address_in_parent_stack_387, i8* %_new_gep_99
  %161 = bitcast i8* %.v7 to i32*
  %_new_load_397 = load i32, i32* %161, align 4
  %162 = add i32 %143, %_new_load_397, !mcsema_real_eip !41
  %163 = xor i32 %162, %_new_load_397, !mcsema_real_eip !41
  %164 = xor i32 %163, %143, !mcsema_real_eip !41
  %165 = and i32 %164, 16, !mcsema_real_eip !41
  %166 = icmp ne i32 %165, 0, !mcsema_real_eip !41
  store i1 %166, i1* %AF, align 1, !mcsema_real_eip !41
  %167 = icmp slt i32 %162, 0
  store i1 %167, i1* %SF, align 1, !mcsema_real_eip !41
  %168 = icmp eq i32 %162, 0, !mcsema_real_eip !41
  store i1 %168, i1* %ZF, align 1, !mcsema_real_eip !41
  %169 = xor i32 %_new_load_397, -2147483648, !mcsema_real_eip !41
  %170 = xor i32 %169, %143, !mcsema_real_eip !41
  %171 = and i32 %163, %170, !mcsema_real_eip !41
  %172 = icmp slt i32 %171, 0
  store i1 %172, i1* %OF, align 1, !mcsema_real_eip !41
  %173 = trunc i32 %162 to i8, !mcsema_real_eip !41
  %174 = call i8 @llvm.ctpop.i8(i8 %173), !mcsema_real_eip !41
  %175 = and i8 %174, 1
  %176 = icmp eq i8 %175, 0
  store i1 %176, i1* %PF, align 1, !mcsema_real_eip !41
  %177 = icmp ult i32 %162, %_new_load_397, !mcsema_real_eip !41
  store i1 %177, i1* %CF, align 1, !mcsema_real_eip !41
  %178 = zext i32 %162 to i64, !mcsema_real_eip !41
  store i64 %178, i64* %XCX, align 8, !mcsema_real_eip !41
  %_new_gep_102 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_53, i64 -32
  %179 = ptrtoint i8* %_new_gep_102 to i64
  %_offset_above_rbp_401 = sub i64 %179, %_local_end_to_int_
  %_pot_address_in_parent_stack_402 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_401
  %_cond1_403 = icmp ugt i8* %_new_gep_102, %_local_stack_end_ptr_
  %_cond2_1_404 = icmp ugt i8* %_new_gep_102, %_parent_stack_end_ptr_
  %_cond2_2_405 = icmp ult i8* %_new_gep_102, %_parent_stack_start_ptr_
  %_cond2_406 = or i1 %_cond2_1_404, %_cond2_2_405
  %_cond4_407 = icmp ule i8* %_pot_address_in_parent_stack_402, %_parent_stack_end_ptr_
  %_cond1_n_cond2_408 = and i1 %_cond1_403, %_cond2_406
  %_cond1_n_cond2_cond3_409 = and i1 %_cond1_n_cond2_408, %_cond4_407
  %_address_in_parent_stack_bt_411..v = select i1 %_cond1_n_cond2_cond3_409, i8* %_pot_address_in_parent_stack_402, i8* %_new_gep_102
  %_address_in_parent_stack_bt_411. = bitcast i8* %_address_in_parent_stack_bt_411..v to i32*
  %_new_load_412 = load i32, i32* %_address_in_parent_stack_bt_411., align 4
  %180 = add i32 %162, %_new_load_412, !mcsema_real_eip !42
  %181 = xor i32 %180, %_new_load_412, !mcsema_real_eip !42
  %182 = xor i32 %181, %162, !mcsema_real_eip !42
  %183 = and i32 %182, 16, !mcsema_real_eip !42
  %184 = icmp ne i32 %183, 0, !mcsema_real_eip !42
  store i1 %184, i1* %AF, align 1, !mcsema_real_eip !42
  %185 = icmp eq i32 %180, 0, !mcsema_real_eip !42
  store i1 %185, i1* %ZF, align 1, !mcsema_real_eip !42
  %186 = trunc i32 %180 to i8, !mcsema_real_eip !42
  %187 = call i8 @llvm.ctpop.i8(i8 %186), !mcsema_real_eip !42
  %188 = and i8 %187, 1
  %189 = icmp eq i8 %188, 0
  store i1 %189, i1* %PF, align 1, !mcsema_real_eip !42
  %190 = zext i32 %180 to i64, !mcsema_real_eip !42
  store i64 %190, i64* %XCX, align 8, !mcsema_real_eip !42
  %EAX_val.85 = load i32, i32* %EAX.41, align 4, !mcsema_real_eip !43
  %191 = sext i32 %EAX_val.85 to i64, !mcsema_real_eip !43
  %192 = sext i32 %180 to i64, !mcsema_real_eip !43
  %193 = mul nsw i64 %191, %192, !mcsema_real_eip !43
  %194 = trunc i64 %193 to i32, !mcsema_real_eip !43
  %sext = shl i64 %193, 32
  %195 = ashr exact i64 %sext, 32
  %196 = icmp ne i64 %195, %193, !mcsema_real_eip !43
  %197 = icmp slt i32 %194, 0, !mcsema_real_eip !43
  store i1 %197, i1* %SF, align 1, !mcsema_real_eip !43
  store i1 %196, i1* %OF, align 1, !mcsema_real_eip !43
  store i1 %196, i1* %CF, align 1, !mcsema_real_eip !43
  %198 = and i64 %193, 4294967295
  store i64 %198, i64* %XAX, align 8, !mcsema_real_eip !43
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_104 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.86 = load i64, i64* %XSP, align 8, !mcsema_real_eip !44
  %_ptr_to_int_413 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_104 to i64
  %_offset_above_rbp_416 = sub i64 %_ptr_to_int_413, %_local_end_to_int_
  %_pot_address_in_parent_stack_417 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_416
  %_cond1_418 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_104, %_local_stack_end_ptr_
  %_cond2_1_419 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_104, %_parent_stack_end_ptr_
  %_cond2_2_420 = icmp ult i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_104, %_parent_stack_start_ptr_
  %_cond2_421 = or i1 %_cond2_1_419, %_cond2_2_420
  %_cond4_422 = icmp ule i8* %_pot_address_in_parent_stack_417, %_parent_stack_end_ptr_
  %_cond1_n_cond2_423 = and i1 %_cond1_418, %_cond2_421
  %_cond1_n_cond2_cond3_424 = and i1 %_cond1_n_cond2_423, %_cond4_422
  %.v8 = select i1 %_cond1_n_cond2_cond3_424, i8* %_pot_address_in_parent_stack_417, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_104
  %199 = bitcast i8* %.v8 to i64*
  %_new_load_427 = load i64, i64* %199, align 8
  store i64 %_new_load_427, i64* %XBX, align 8, !mcsema_real_eip !44
  %_new_gep_106 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_104, i64 8
  %200 = add i64 %RSP_val.86, 8, !mcsema_real_eip !44
  store volatile i8* %_new_gep_106, i8** %_RSP_ptr_, align 8
  store i64 %200, i64* %XSP, align 8, !mcsema_real_eip !44
  %_ptr_to_int_428 = ptrtoint i8* %_new_gep_106 to i64
  %_offset_above_rbp_431 = sub i64 %_ptr_to_int_428, %_local_end_to_int_
  %_pot_address_in_parent_stack_432 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_431
  %_cond1_433 = icmp ugt i8* %_new_gep_106, %_local_stack_end_ptr_
  %_cond2_1_434 = icmp ugt i8* %_new_gep_106, %_parent_stack_end_ptr_
  %_cond2_2_435 = icmp ult i8* %_new_gep_106, %_parent_stack_start_ptr_
  %_cond2_436 = or i1 %_cond2_1_434, %_cond2_2_435
  %_cond4_437 = icmp ule i8* %_pot_address_in_parent_stack_432, %_parent_stack_end_ptr_
  %_cond1_n_cond2_438 = and i1 %_cond1_433, %_cond2_436
  %_cond1_n_cond2_cond3_439 = and i1 %_cond1_n_cond2_438, %_cond4_437
  %_address_in_parent_stack_bt_441._allin_new_bt_108.v = select i1 %_cond1_n_cond2_cond3_439, i8* %_pot_address_in_parent_stack_432, i8* %_new_gep_106
  %_address_in_parent_stack_bt_441._allin_new_bt_108 = bitcast i8* %_address_in_parent_stack_bt_441._allin_new_bt_108.v to i64*
  %_new_load_442 = load i64, i64* %_address_in_parent_stack_bt_441._allin_new_bt_108, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_442 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_442, i64* %XBP, align 8, !mcsema_real_eip !45
  %_new_gep_109 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_104, i64 16
  %201 = add i64 %RSP_val.86, 16, !mcsema_real_eip !45
  store volatile i8* %_new_gep_109, i8** %_RSP_ptr_, align 8
  store i64 %201, i64* %XSP, align 8, !mcsema_real_eip !45
  %_new_gep_111 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_104, i64 24
  %202 = add i64 %RSP_val.86, 24, !mcsema_real_eip !46
  %_ptr_to_int_443 = ptrtoint i8* %_new_gep_109 to i64
  %_offset_above_rbp_446 = sub i64 %_ptr_to_int_443, %_local_end_to_int_
  %_pot_address_in_parent_stack_447 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_446
  %_cond1_448 = icmp ugt i8* %_new_gep_109, %_local_stack_end_ptr_
  %_cond2_1_449 = icmp ugt i8* %_new_gep_109, %_parent_stack_end_ptr_
  %_cond2_2_450 = icmp ult i8* %_new_gep_109, %_parent_stack_start_ptr_
  %_cond2_451 = or i1 %_cond2_1_449, %_cond2_2_450
  %_cond4_452 = icmp ule i8* %_pot_address_in_parent_stack_447, %_parent_stack_end_ptr_
  %_cond1_n_cond2_453 = and i1 %_cond1_448, %_cond2_451
  %_cond1_n_cond2_cond3_454 = and i1 %_cond1_n_cond2_453, %_cond4_452
  %.v9 = select i1 %_cond1_n_cond2_cond3_454, i8* %_pot_address_in_parent_stack_447, i8* %_new_gep_109
  %203 = bitcast i8* %.v9 to i64*
  %_new_load_457 = load i64, i64* %203, align 8
  store i64 %_new_load_457, i64* %XIP, align 8, !mcsema_real_eip !46
  store volatile i8* %_new_gep_111, i8** %_RSP_ptr_, align 8
  store i64 %202, i64* %XSP, align 8, !mcsema_real_eip !46
  ret void, !mcsema_real_eip !46
}

; Function Attrs: noinline
define x86_64_sysvcc void @sub_a0.2(%RegState*, i8* readonly %_parent_stack_start_ptr_, i8* readnone %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_) local_unnamed_addr #1 {
entry:
  %_RSP_ptr_ = alloca i8*, align 8
  %_RBP_ptr_ = alloca i8*, align 8
  %_local_stack_start_ptr_1 = alloca [272 x i8], align 1
  %_local_stack_end_ptr_ = getelementptr inbounds [272 x i8], [272 x i8]* %_local_stack_start_ptr_1, i64 0, i64 272
  store i8* %_local_stack_end_ptr_, i8** %_RSP_ptr_, align 8
  store i8* %_parent_stack_rbp_ptr_, i8** %_RBP_ptr_, align 8
  %XIP = getelementptr %RegState, %RegState* %0, i64 0, i32 0, !mcsema_real_eip !47
  %XAX = getelementptr %RegState, %RegState* %0, i64 0, i32 1, !mcsema_real_eip !47
  %XBX = getelementptr %RegState, %RegState* %0, i64 0, i32 2, !mcsema_real_eip !47
  %XCX = getelementptr %RegState, %RegState* %0, i64 0, i32 3, !mcsema_real_eip !47
  %XDX = getelementptr %RegState, %RegState* %0, i64 0, i32 4, !mcsema_real_eip !47
  %XSI = getelementptr %RegState, %RegState* %0, i64 0, i32 5, !mcsema_real_eip !47
  %XDI = getelementptr %RegState, %RegState* %0, i64 0, i32 6, !mcsema_real_eip !47
  %XBP = getelementptr %RegState, %RegState* %0, i64 0, i32 8, !mcsema_real_eip !47
  %XSP = getelementptr %RegState, %RegState* %0, i64 0, i32 7, !mcsema_real_eip !47
  %ZF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 12, !mcsema_real_eip !47
  %ZF = bitcast i8* %ZF_full to i1*, !mcsema_real_eip !47
  %PF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 10, !mcsema_real_eip !47
  %PF = bitcast i8* %PF_full to i1*, !mcsema_real_eip !47
  %AF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 11, !mcsema_real_eip !47
  %AF = bitcast i8* %AF_full to i1*, !mcsema_real_eip !47
  %CF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 9, !mcsema_real_eip !47
  %CF = bitcast i8* %CF_full to i1*, !mcsema_real_eip !47
  %SF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 13, !mcsema_real_eip !47
  %SF = bitcast i8* %SF_full to i1*, !mcsema_real_eip !47
  %OF_full = getelementptr %RegState, %RegState* %0, i64 0, i32 14, !mcsema_real_eip !47
  %OF = bitcast i8* %OF_full to i1*, !mcsema_real_eip !47
  %R8 = getelementptr %RegState, %RegState* %0, i64 0, i32 64, !mcsema_real_eip !47
  %R9 = getelementptr %RegState, %RegState* %0, i64 0, i32 65, !mcsema_real_eip !47
  %R10 = getelementptr %RegState, %RegState* %0, i64 0, i32 66, !mcsema_real_eip !47
  %R11 = getelementptr %RegState, %RegState* %0, i64 0, i32 67, !mcsema_real_eip !47
  %R12 = getelementptr %RegState, %RegState* %0, i64 0, i32 68, !mcsema_real_eip !47
  %R13 = getelementptr %RegState, %RegState* %0, i64 0, i32 69, !mcsema_real_eip !47
  %R14 = getelementptr %RegState, %RegState* %0, i64 0, i32 70, !mcsema_real_eip !47
  %R15 = getelementptr %RegState, %RegState* %0, i64 0, i32 71, !mcsema_real_eip !47
  %RSP_val.90 = load i64, i64* %XSP, align 8, !mcsema_real_eip !47
  %_new_gep_ = getelementptr inbounds [272 x i8], [272 x i8]* %_local_stack_start_ptr_1, i64 0, i64 264
  %1 = add i64 %RSP_val.90, -8
  %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
  %_new_ptr2int_ = ptrtoint i8* %_parent_stack_rbp_ptr_ to i64
  store volatile i64 %_new_ptr2int_, i64* %_allin_new_bt_, align 8
  store volatile i8* %_new_gep_, i8** %_RSP_ptr_, align 8
  store volatile i8* %_new_gep_, i8** %_RBP_ptr_, align 8
  store i64 %1, i64* %XBP, align 8, !mcsema_real_eip !48
  %R15_val.92 = load i64, i64* %R15, align 8, !mcsema_real_eip !49
  %_new_gep_3 = getelementptr inbounds [272 x i8], [272 x i8]* %_local_stack_start_ptr_1, i64 0, i64 256
  %_allin_new_bt_4 = bitcast i8* %_new_gep_3 to i64*
  store i64 %R15_val.92, i64* %_allin_new_bt_4, align 8, !mcsema_real_eip !49
  store volatile i8* %_new_gep_3, i8** %_RSP_ptr_, align 8
  %R14_val.94 = load i64, i64* %R14, align 8, !mcsema_real_eip !50
  %_new_gep_6 = getelementptr inbounds [272 x i8], [272 x i8]* %_local_stack_start_ptr_1, i64 0, i64 248
  %_allin_new_bt_7 = bitcast i8* %_new_gep_6 to i64*
  store i64 %R14_val.94, i64* %_allin_new_bt_7, align 8, !mcsema_real_eip !50
  store volatile i8* %_new_gep_6, i8** %_RSP_ptr_, align 8
  %R13_val.96 = load i64, i64* %R13, align 8, !mcsema_real_eip !51
  %_new_gep_9 = getelementptr inbounds [272 x i8], [272 x i8]* %_local_stack_start_ptr_1, i64 0, i64 240
  %_allin_new_bt_10 = bitcast i8* %_new_gep_9 to i64*
  store i64 %R13_val.96, i64* %_allin_new_bt_10, align 8, !mcsema_real_eip !51
  store volatile i8* %_new_gep_9, i8** %_RSP_ptr_, align 8
  %R12_val.98 = load i64, i64* %R12, align 8, !mcsema_real_eip !52
  %_new_gep_12 = getelementptr inbounds [272 x i8], [272 x i8]* %_local_stack_start_ptr_1, i64 0, i64 232
  %_allin_new_bt_13 = bitcast i8* %_new_gep_12 to i64*
  store i64 %R12_val.98, i64* %_allin_new_bt_13, align 8, !mcsema_real_eip !52
  store volatile i8* %_new_gep_12, i8** %_RSP_ptr_, align 8
  %RBX_val.100 = load i64, i64* %XBX, align 8, !mcsema_real_eip !53
  %_new_gep_15 = getelementptr inbounds [272 x i8], [272 x i8]* %_local_stack_start_ptr_1, i64 0, i64 224
  %_allin_new_bt_16 = bitcast i8* %_new_gep_15 to i64*
  store i64 %RBX_val.100, i64* %_allin_new_bt_16, align 8, !mcsema_real_eip !53
  store volatile i8* %_new_gep_15, i8** %_RSP_ptr_, align 8
  %_new_gep_18 = getelementptr inbounds [272 x i8], [272 x i8]* %_local_stack_start_ptr_1, i64 0, i64 8
  %2 = add i64 %RSP_val.90, -264
  %_trans_p2i_ = ptrtoint i8* %_new_gep_18 to i64
  %_trans_p2i_19 = ptrtoint i8* %_new_gep_15 to i64
  %_trans_xor_ = xor i64 %_trans_p2i_, %_trans_p2i_19
  %3 = and i64 %_trans_xor_, 16
  %4 = icmp eq i64 %3, 0
  store i1 %4, i1* %AF, align 1, !mcsema_real_eip !54
  %_trans_trunc_ = trunc i64 %_trans_p2i_ to i8
  %5 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_), !mcsema_real_eip !54
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  store i1 %7, i1* %PF, align 1, !mcsema_real_eip !54
  store i1 false, i1* %ZF, align 1, !mcsema_real_eip !54
  %8 = icmp slt i64 %2, 0
  store i1 %8, i1* %SF, align 1, !mcsema_real_eip !54
  %_trans_icmp_ne_ = icmp ne i8* %_new_gep_15, inttoptr (i64 216 to i8*)
  store i1 %_trans_icmp_ne_, i1* %CF, align 1, !mcsema_real_eip !54
  %9 = and i64 %_trans_xor_, %_trans_p2i_19, !mcsema_real_eip !54
  %10 = icmp slt i64 %9, 0
  store i1 %10, i1* %OF, align 1, !mcsema_real_eip !54
  store volatile i8* %_new_gep_18, i8** %_RSP_ptr_, align 8
  store i64 %2, i64* %XSP, align 8, !mcsema_real_eip !54
  store i64 100, i64* %XAX, align 8, !mcsema_real_eip !55
  store i64 200, i64* %XCX, align 8, !mcsema_real_eip !56
  %11 = bitcast i64* %R8 to <2 x i64>*
  store <2 x i64> <i64 400, i64 500>, <2 x i64>* %11, align 8
  %12 = bitcast i64* %R10 to <2 x i64>*
  store <2 x i64> <i64 600, i64 10>, <2 x i64>* %12, align 8
  %_new_gep_29 = getelementptr inbounds [272 x i8], [272 x i8]* %_local_stack_start_ptr_1, i64 0, i64 120
  %13 = ptrtoint i8* %_new_gep_29 to i64
  store i64 %13, i64* %XBX, align 8, !mcsema_real_eip !57
  %_new_gep_32 = getelementptr inbounds [272 x i8], [272 x i8]* %_local_stack_start_ptr_1, i64 0, i64 168
  %14 = ptrtoint i8* %_new_gep_32 to i64
  store i64 %14, i64* %R14, align 8, !mcsema_real_eip !58
  store i64 add (i64 ptrtoint (%0* @data_0x220 to i64), i64 48), i64* %R15, align 8, !mcsema_real_eip !59
  %15 = bitcast i64* %R12 to <2 x i64>*
  store <2 x i64> <i64 ptrtoint (%0* @data_0x220 to i64), i64 40>, <2 x i64>* %15, align 8
  %_new_gep_35 = getelementptr inbounds [272 x i8], [272 x i8]* %_local_stack_start_ptr_1, i64 0, i64 220
  %16 = bitcast i8* %_new_gep_35 to i32*
  store i32 0, i32* %16, align 4, !mcsema_real_eip !60
  %_new_gep_38 = getelementptr inbounds [272 x i8], [272 x i8]* %_local_stack_start_ptr_1, i64 0, i64 216
  %EDI.109 = bitcast i64* %XDI to i32*, !mcsema_real_eip !61
  %EDI_val.110 = load i32, i32* %EDI.109, align 4, !mcsema_real_eip !61
  %17 = bitcast i8* %_new_gep_38 to i32*
  store i32 %EDI_val.110, i32* %17, align 4, !mcsema_real_eip !61
  %_new_gep_41 = getelementptr inbounds [272 x i8], [272 x i8]* %_local_stack_start_ptr_1, i64 0, i64 208
  %_allin_new_bt_42 = bitcast i8* %_new_gep_41 to i64*
  %RSI_val.112 = load i64, i64* %XSI, align 8, !mcsema_real_eip !62
  store i64 %RSI_val.112, i64* %_allin_new_bt_42, align 8, !mcsema_real_eip !62
  store i64 %14, i64* %XDI, align 8, !mcsema_real_eip !63
  store i64 ptrtoint (%0* @data_0x220 to i64), i64* %XSI, align 8, !mcsema_real_eip !64
  %_new_gep_44 = getelementptr inbounds [272 x i8], [272 x i8]* %_local_stack_start_ptr_1, i64 0, i64 112
  %18 = bitcast i8* %_new_gep_44 to i32*
  store i32 300, i32* %18, align 4, !mcsema_real_eip !65
  store i64 40, i64* %XDX, align 8, !mcsema_real_eip !66
  %_new_gep_47 = getelementptr inbounds [272 x i8], [272 x i8]* %_local_stack_start_ptr_1, i64 0, i64 104
  %_allin_new_bt_48 = bitcast i8* %_new_gep_47 to i64*
  store i64 add (i64 ptrtoint (%0* @data_0x220 to i64), i64 48), i64* %_allin_new_bt_48, align 8, !mcsema_real_eip !67
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_49 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_50 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_49, i64 -168
  %_allin_new_bt_51 = bitcast i8* %_new_gep_50 to i64*
  store i64 40, i64* %_allin_new_bt_51, align 8, !mcsema_real_eip !68
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_52 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_53 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_52, i64 -172
  %EAX.125 = bitcast i64* %XAX to i32*, !mcsema_real_eip !69
  %EAX_val.126 = load i32, i32* %EAX.125, align 4, !mcsema_real_eip !69
  %19 = bitcast i8* %_new_gep_53 to i32*
  store i32 %EAX_val.126, i32* %19, align 4, !mcsema_real_eip !69
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_55 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_56 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_55, i64 -176
  %ECX.128 = bitcast i64* %XCX to i32*, !mcsema_real_eip !70
  %ECX_val.129 = load i32, i32* %ECX.128, align 4, !mcsema_real_eip !70
  %20 = bitcast i8* %_new_gep_56 to i32*
  store i32 %ECX_val.129, i32* %20, align 4, !mcsema_real_eip !70
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_58 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_59 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_58, i64 -184
  %_allin_new_bt_60 = bitcast i8* %_new_gep_59 to i64*
  %R14_val.131 = load i64, i64* %R14, align 8, !mcsema_real_eip !71
  store i64 %R14_val.131, i64* %_allin_new_bt_60, align 8, !mcsema_real_eip !71
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_61 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_62 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_61, i64 -188
  %R8D.133 = bitcast i64* %R8 to i32*, !mcsema_real_eip !72
  %R8D_val.134 = load i32, i32* %R8D.133, align 4, !mcsema_real_eip !72
  %21 = bitcast i8* %_new_gep_62 to i32*
  store i32 %R8D_val.134, i32* %21, align 4, !mcsema_real_eip !72
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_64 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_65 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_64, i64 -192
  %R9D.136 = bitcast i64* %R9 to i32*, !mcsema_real_eip !73
  %R9D_val.137 = load i32, i32* %R9D.136, align 4, !mcsema_real_eip !73
  %22 = bitcast i8* %_new_gep_65 to i32*
  store i32 %R9D_val.137, i32* %22, align 4, !mcsema_real_eip !73
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_67 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_68 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_67, i64 -196
  %R10D.139 = bitcast i64* %R10 to i32*, !mcsema_real_eip !74
  %R10D_val.140 = load i32, i32* %R10D.139, align 4, !mcsema_real_eip !74
  %23 = bitcast i8* %_new_gep_68 to i32*
  store i32 %R10D_val.140, i32* %23, align 4, !mcsema_real_eip !74
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_70 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_71 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_70, i64 -200
  %R11D.142 = bitcast i64* %R11 to i32*, !mcsema_real_eip !75
  %R11D_val.143 = load i32, i32* %R11D.142, align 4, !mcsema_real_eip !75
  %24 = bitcast i8* %_new_gep_71 to i32*
  store i32 %R11D_val.143, i32* %24, align 4, !mcsema_real_eip !75
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_73 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_74 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_73, i64 -208
  %_allin_new_bt_75 = bitcast i8* %_new_gep_74 to i64*
  %RBX_val.145 = load i64, i64* %XBX, align 8, !mcsema_real_eip !76
  store i64 %RBX_val.145, i64* %_allin_new_bt_75, align 8, !mcsema_real_eip !76
  %RDI_val.146 = load i64, i64* %XDI, align 8, !mcsema_real_eip !77
  %RSI_val.147 = load i64, i64* %XSI, align 8, !mcsema_real_eip !77
  %RDX_val.148 = load i64, i64* %XDX, align 8, !mcsema_real_eip !77
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_76 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.149 = load i64, i64* %XSP, align 8, !mcsema_real_eip !77
  %_new_gep_77 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_76, i64 -8
  %25 = add i64 %RSP_val.149, -8
  %_allin_new_bt_78 = bitcast i8* %_new_gep_77 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_78, align 8, !mcsema_real_eip !77
  store volatile i8* %_new_gep_77, i8** %_RSP_ptr_, align 8
  store i64 %25, i64* %XSP, align 8, !mcsema_real_eip !77
  %26 = call x86_64_sysvcc i64 @_memcpy(i64 %RDI_val.146, i64 %RSI_val.147, i64 %RDX_val.148)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_ = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i64 8
  store i8* %_gep_fix_, i8** %_RSP_ptr_, align 8
  store i64 %26, i64* %XAX, align 8, !mcsema_real_eip !77
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_79 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_80 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_79, i64 -208
  %_ptr_to_int_ = ptrtoint i8* %_new_gep_80 to i64
  %_local_end_to_int_ = ptrtoint i8* %_local_stack_end_ptr_ to i64
  %_offset_above_rbp_ = sub i64 %_ptr_to_int_, %_local_end_to_int_
  %_pot_address_in_parent_stack_ = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_
  %_cond1_ = icmp ugt i8* %_new_gep_80, %_local_stack_end_ptr_
  %_cond2_1_ = icmp ugt i8* %_new_gep_80, %_parent_stack_end_ptr_
  %_cond2_2_ = icmp ult i8* %_new_gep_80, %_parent_stack_start_ptr_
  %_cond2_ = or i1 %_cond2_1_, %_cond2_2_
  %_cond4_ = icmp ule i8* %_pot_address_in_parent_stack_, %_parent_stack_end_ptr_
  %_cond1_n_cond2_ = and i1 %_cond1_, %_cond2_
  %_cond1_n_cond2_cond3_ = and i1 %_cond1_n_cond2_, %_cond4_
  %.v = select i1 %_cond1_n_cond2_cond3_, i8* %_pot_address_in_parent_stack_, i8* %_new_gep_80
  %27 = bitcast i8* %.v to i64*
  %_new_load_ = load i64, i64* %27, align 8
  store i64 %_new_load_, i64* %XDX, align 8, !mcsema_real_eip !78
  store i64 %_new_load_, i64* %XDI, align 8, !mcsema_real_eip !79
  %_new_gep_83 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_79, i64 -160
  %_ptr_to_int_210 = ptrtoint i8* %_new_gep_83 to i64
  %_offset_above_rbp_213 = sub i64 %_ptr_to_int_210, %_local_end_to_int_
  %_pot_address_in_parent_stack_214 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_213
  %_cond1_215 = icmp ugt i8* %_new_gep_83, %_local_stack_end_ptr_
  %_cond2_1_216 = icmp ugt i8* %_new_gep_83, %_parent_stack_end_ptr_
  %_cond2_2_217 = icmp ult i8* %_new_gep_83, %_parent_stack_start_ptr_
  %_cond2_218 = or i1 %_cond2_1_216, %_cond2_2_217
  %_cond4_219 = icmp ule i8* %_pot_address_in_parent_stack_214, %_parent_stack_end_ptr_
  %_cond1_n_cond2_220 = and i1 %_cond1_215, %_cond2_218
  %_cond1_n_cond2_cond3_221 = and i1 %_cond1_n_cond2_220, %_cond4_219
  %_address_in_parent_stack_bt_223._allin_new_bt_84.v = select i1 %_cond1_n_cond2_cond3_221, i8* %_pot_address_in_parent_stack_214, i8* %_new_gep_83
  %_address_in_parent_stack_bt_223._allin_new_bt_84 = bitcast i8* %_address_in_parent_stack_bt_223._allin_new_bt_84.v to i64*
  %_new_load_224 = load i64, i64* %_address_in_parent_stack_bt_223._allin_new_bt_84, align 8
  store i64 %_new_load_224, i64* %XSI, align 8, !mcsema_real_eip !80
  %_new_gep_86 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_79, i64 -168
  %_ptr_to_int_225 = ptrtoint i8* %_new_gep_86 to i64
  %_offset_above_rbp_228 = sub i64 %_ptr_to_int_225, %_local_end_to_int_
  %_pot_address_in_parent_stack_229 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_228
  %_cond1_230 = icmp ugt i8* %_new_gep_86, %_local_stack_end_ptr_
  %_cond2_1_231 = icmp ugt i8* %_new_gep_86, %_parent_stack_end_ptr_
  %_cond2_2_232 = icmp ult i8* %_new_gep_86, %_parent_stack_start_ptr_
  %_cond2_233 = or i1 %_cond2_1_231, %_cond2_2_232
  %_cond4_234 = icmp ule i8* %_pot_address_in_parent_stack_229, %_parent_stack_end_ptr_
  %_cond1_n_cond2_235 = and i1 %_cond1_230, %_cond2_233
  %_cond1_n_cond2_cond3_236 = and i1 %_cond1_n_cond2_235, %_cond4_234
  %.v2 = select i1 %_cond1_n_cond2_cond3_236, i8* %_pot_address_in_parent_stack_229, i8* %_new_gep_86
  %28 = bitcast i8* %.v2 to i64*
  %_new_load_239 = load i64, i64* %28, align 8
  store i64 %_new_load_239, i64* %XDX, align 8, !mcsema_real_eip !81
  %RSP_val.157 = load i64, i64* %XSP, align 8, !mcsema_real_eip !82
  %29 = add i64 %RSP_val.157, -8
  %_allin_new_bt_90 = bitcast i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_ to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_90, align 8, !mcsema_real_eip !82
  store volatile i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_, i8** %_RSP_ptr_, align 8
  store i64 %29, i64* %XSP, align 8, !mcsema_real_eip !82
  %30 = call x86_64_sysvcc i64 @_memcpy(i64 %_new_load_, i64 %_new_load_224, i64 %_new_load_239)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_202 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_203 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_202, i64 8
  store i8* %_gep_fix_203, i8** %_RSP_ptr_, align 8
  store i64 %30, i64* %XAX, align 8, !mcsema_real_eip !82
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_91 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_92 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_91, i64 -172
  %31 = ptrtoint i8* %_new_gep_92 to i64
  %_offset_above_rbp_243 = sub i64 %31, %_local_end_to_int_
  %_pot_address_in_parent_stack_244 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_243
  %_cond1_245 = icmp ugt i8* %_new_gep_92, %_local_stack_end_ptr_
  %_cond2_1_246 = icmp ugt i8* %_new_gep_92, %_parent_stack_end_ptr_
  %_cond2_2_247 = icmp ult i8* %_new_gep_92, %_parent_stack_start_ptr_
  %_cond2_248 = or i1 %_cond2_1_246, %_cond2_2_247
  %_cond4_249 = icmp ule i8* %_pot_address_in_parent_stack_244, %_parent_stack_end_ptr_
  %_cond1_n_cond2_250 = and i1 %_cond1_245, %_cond2_248
  %_cond1_n_cond2_cond3_251 = and i1 %_cond1_n_cond2_250, %_cond4_249
  %_address_in_parent_stack_bt_253..v = select i1 %_cond1_n_cond2_cond3_251, i8* %_pot_address_in_parent_stack_244, i8* %_new_gep_92
  %_address_in_parent_stack_bt_253. = bitcast i8* %_address_in_parent_stack_bt_253..v to i32*
  %_new_load_254 = load i32, i32* %_address_in_parent_stack_bt_253., align 4
  %32 = zext i32 %_new_load_254 to i64, !mcsema_real_eip !83
  store i64 %32, i64* %XDI, align 8, !mcsema_real_eip !83
  %_new_gep_95 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_91, i64 -176
  %33 = ptrtoint i8* %_new_gep_95 to i64
  %_offset_above_rbp_258 = sub i64 %33, %_local_end_to_int_
  %_pot_address_in_parent_stack_259 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_258
  %_cond1_260 = icmp ugt i8* %_new_gep_95, %_local_stack_end_ptr_
  %_cond2_1_261 = icmp ugt i8* %_new_gep_95, %_parent_stack_end_ptr_
  %_cond2_2_262 = icmp ult i8* %_new_gep_95, %_parent_stack_start_ptr_
  %_cond2_263 = or i1 %_cond2_1_261, %_cond2_2_262
  %_cond4_264 = icmp ule i8* %_pot_address_in_parent_stack_259, %_parent_stack_end_ptr_
  %_cond1_n_cond2_265 = and i1 %_cond1_260, %_cond2_263
  %_cond1_n_cond2_cond3_266 = and i1 %_cond1_n_cond2_265, %_cond4_264
  %.v3 = select i1 %_cond1_n_cond2_cond3_266, i8* %_pot_address_in_parent_stack_259, i8* %_new_gep_95
  %34 = bitcast i8* %.v3 to i32*
  %_new_load_269 = load i32, i32* %34, align 4
  %35 = zext i32 %_new_load_269 to i64, !mcsema_real_eip !84
  store i64 %35, i64* %XSI, align 8, !mcsema_real_eip !84
  %_new_gep_98 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_91, i64 -152
  %36 = ptrtoint i8* %_new_gep_98 to i64
  %_offset_above_rbp_273 = sub i64 %36, %_local_end_to_int_
  %_pot_address_in_parent_stack_274 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_273
  %_cond1_275 = icmp ugt i8* %_new_gep_98, %_local_stack_end_ptr_
  %_cond2_1_276 = icmp ugt i8* %_new_gep_98, %_parent_stack_end_ptr_
  %_cond2_2_277 = icmp ult i8* %_new_gep_98, %_parent_stack_start_ptr_
  %_cond2_278 = or i1 %_cond2_1_276, %_cond2_2_277
  %_cond4_279 = icmp ule i8* %_pot_address_in_parent_stack_274, %_parent_stack_end_ptr_
  %_cond1_n_cond2_280 = and i1 %_cond1_275, %_cond2_278
  %_cond1_n_cond2_cond3_281 = and i1 %_cond1_n_cond2_280, %_cond4_279
  %_address_in_parent_stack_bt_283..v = select i1 %_cond1_n_cond2_cond3_281, i8* %_pot_address_in_parent_stack_274, i8* %_new_gep_98
  %_address_in_parent_stack_bt_283. = bitcast i8* %_address_in_parent_stack_bt_283..v to i32*
  %_new_load_284 = load i32, i32* %_address_in_parent_stack_bt_283., align 4
  %37 = zext i32 %_new_load_284 to i64, !mcsema_real_eip !85
  store i64 %37, i64* %XDX, align 8, !mcsema_real_eip !85
  %_new_gep_101 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_91, i64 -188
  %38 = ptrtoint i8* %_new_gep_101 to i64
  %_offset_above_rbp_288 = sub i64 %38, %_local_end_to_int_
  %_pot_address_in_parent_stack_289 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_288
  %_cond1_290 = icmp ugt i8* %_new_gep_101, %_local_stack_end_ptr_
  %_cond2_1_291 = icmp ugt i8* %_new_gep_101, %_parent_stack_end_ptr_
  %_cond2_2_292 = icmp ult i8* %_new_gep_101, %_parent_stack_start_ptr_
  %_cond2_293 = or i1 %_cond2_1_291, %_cond2_2_292
  %_cond4_294 = icmp ule i8* %_pot_address_in_parent_stack_289, %_parent_stack_end_ptr_
  %_cond1_n_cond2_295 = and i1 %_cond1_290, %_cond2_293
  %_cond1_n_cond2_cond3_296 = and i1 %_cond1_n_cond2_295, %_cond4_294
  %.v4 = select i1 %_cond1_n_cond2_cond3_296, i8* %_pot_address_in_parent_stack_289, i8* %_new_gep_101
  %39 = bitcast i8* %.v4 to i32*
  %_new_load_299 = load i32, i32* %39, align 4
  %40 = zext i32 %_new_load_299 to i64, !mcsema_real_eip !86
  store i64 %40, i64* %XCX, align 8, !mcsema_real_eip !86
  %_new_gep_104 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_91, i64 -192
  %41 = ptrtoint i8* %_new_gep_104 to i64
  %_offset_above_rbp_303 = sub i64 %41, %_local_end_to_int_
  %_pot_address_in_parent_stack_304 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_303
  %_cond1_305 = icmp ugt i8* %_new_gep_104, %_local_stack_end_ptr_
  %_cond2_1_306 = icmp ugt i8* %_new_gep_104, %_parent_stack_end_ptr_
  %_cond2_2_307 = icmp ult i8* %_new_gep_104, %_parent_stack_start_ptr_
  %_cond2_308 = or i1 %_cond2_1_306, %_cond2_2_307
  %_cond4_309 = icmp ule i8* %_pot_address_in_parent_stack_304, %_parent_stack_end_ptr_
  %_cond1_n_cond2_310 = and i1 %_cond1_305, %_cond2_308
  %_cond1_n_cond2_cond3_311 = and i1 %_cond1_n_cond2_310, %_cond4_309
  %_address_in_parent_stack_bt_313..v = select i1 %_cond1_n_cond2_cond3_311, i8* %_pot_address_in_parent_stack_304, i8* %_new_gep_104
  %_address_in_parent_stack_bt_313. = bitcast i8* %_address_in_parent_stack_bt_313..v to i32*
  %_new_load_314 = load i32, i32* %_address_in_parent_stack_bt_313., align 4
  %42 = zext i32 %_new_load_314 to i64, !mcsema_real_eip !87
  store i64 %42, i64* %R8, align 8, !mcsema_real_eip !87
  %_new_gep_107 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_91, i64 -196
  %43 = ptrtoint i8* %_new_gep_107 to i64
  %_offset_above_rbp_318 = sub i64 %43, %_local_end_to_int_
  %_pot_address_in_parent_stack_319 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_318
  %_cond1_320 = icmp ugt i8* %_new_gep_107, %_local_stack_end_ptr_
  %_cond2_1_321 = icmp ugt i8* %_new_gep_107, %_parent_stack_end_ptr_
  %_cond2_2_322 = icmp ult i8* %_new_gep_107, %_parent_stack_start_ptr_
  %_cond2_323 = or i1 %_cond2_1_321, %_cond2_2_322
  %_cond4_324 = icmp ule i8* %_pot_address_in_parent_stack_319, %_parent_stack_end_ptr_
  %_cond1_n_cond2_325 = and i1 %_cond1_320, %_cond2_323
  %_cond1_n_cond2_cond3_326 = and i1 %_cond1_n_cond2_325, %_cond4_324
  %.v5 = select i1 %_cond1_n_cond2_cond3_326, i8* %_pot_address_in_parent_stack_319, i8* %_new_gep_107
  %44 = bitcast i8* %.v5 to i32*
  %_new_load_329 = load i32, i32* %44, align 4
  %45 = zext i32 %_new_load_329 to i64, !mcsema_real_eip !88
  store i64 %45, i64* %R9, align 8, !mcsema_real_eip !88
  %46 = bitcast i8* %_gep_fix_203 to i32*
  store i32 10, i32* %46, align 4, !mcsema_real_eip !89
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_112 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_113 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_112, i64 -184
  %_ptr_to_int_330 = ptrtoint i8* %_new_gep_113 to i64
  %_offset_above_rbp_333 = sub i64 %_ptr_to_int_330, %_local_end_to_int_
  %_pot_address_in_parent_stack_334 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_333
  %_cond1_335 = icmp ugt i8* %_new_gep_113, %_local_stack_end_ptr_
  %_cond2_1_336 = icmp ugt i8* %_new_gep_113, %_parent_stack_end_ptr_
  %_cond2_2_337 = icmp ult i8* %_new_gep_113, %_parent_stack_start_ptr_
  %_cond2_338 = or i1 %_cond2_1_336, %_cond2_2_337
  %_cond4_339 = icmp ule i8* %_pot_address_in_parent_stack_334, %_parent_stack_end_ptr_
  %_cond1_n_cond2_340 = and i1 %_cond1_335, %_cond2_338
  %_cond1_n_cond2_cond3_341 = and i1 %_cond1_n_cond2_340, %_cond4_339
  %_address_in_parent_stack_bt_343._allin_new_bt_114.v = select i1 %_cond1_n_cond2_cond3_341, i8* %_pot_address_in_parent_stack_334, i8* %_new_gep_113
  %_address_in_parent_stack_bt_343._allin_new_bt_114 = bitcast i8* %_address_in_parent_stack_bt_343._allin_new_bt_114.v to i64*
  %_new_load_344 = load i64, i64* %_address_in_parent_stack_bt_343._allin_new_bt_114, align 8
  store i64 %_new_load_344, i64* %XBX, align 8, !mcsema_real_eip !90
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_115 = load i8*, i8** %_RSP_ptr_, align 8
  %_new_gep_116 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_115, i64 8
  %_allin_new_bt_117 = bitcast i8* %_new_gep_116 to i64*
  store i64 %_new_load_344, i64* %_allin_new_bt_117, align 8, !mcsema_real_eip !91
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_118 = load i8*, i8** %_RSP_ptr_, align 8
  %_new_gep_119 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_118, i64 16
  %47 = bitcast i8* %_new_gep_119 to i32*
  store i32 10, i32* %47, align 4, !mcsema_real_eip !92
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_121 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_122 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_121, i64 -208
  %_ptr_to_int_345 = ptrtoint i8* %_new_gep_122 to i64
  %_offset_above_rbp_348 = sub i64 %_ptr_to_int_345, %_local_end_to_int_
  %_pot_address_in_parent_stack_349 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_348
  %_cond1_350 = icmp ugt i8* %_new_gep_122, %_local_stack_end_ptr_
  %_cond2_1_351 = icmp ugt i8* %_new_gep_122, %_parent_stack_end_ptr_
  %_cond2_2_352 = icmp ult i8* %_new_gep_122, %_parent_stack_start_ptr_
  %_cond2_353 = or i1 %_cond2_1_351, %_cond2_2_352
  %_cond4_354 = icmp ule i8* %_pot_address_in_parent_stack_349, %_parent_stack_end_ptr_
  %_cond1_n_cond2_355 = and i1 %_cond1_350, %_cond2_353
  %_cond1_n_cond2_cond3_356 = and i1 %_cond1_n_cond2_355, %_cond4_354
  %.v6 = select i1 %_cond1_n_cond2_cond3_356, i8* %_pot_address_in_parent_stack_349, i8* %_new_gep_122
  %48 = bitcast i8* %.v6 to i64*
  %_new_load_359 = load i64, i64* %48, align 8
  store i64 %_new_load_359, i64* %R14, align 8, !mcsema_real_eip !93
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_124 = load i8*, i8** %_RSP_ptr_, align 8
  %_new_gep_125 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_124, i64 24
  %_allin_new_bt_126 = bitcast i8* %_new_gep_125 to i64*
  store i64 %_new_load_359, i64* %_allin_new_bt_126, align 8, !mcsema_real_eip !94
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_127 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.172 = load i64, i64* %XSP, align 8, !mcsema_real_eip !95
  %_new_gep_128 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_127, i64 -8
  %49 = add i64 %RSP_val.172, -8
  %_allin_new_bt_129 = bitcast i8* %_new_gep_128 to i64*
  store i64 -4981261766360305936, i64* %_allin_new_bt_129, align 8, !mcsema_real_eip !95
  store volatile i8* %_new_gep_128, i8** %_RSP_ptr_, align 8
  store i64 %49, i64* %XSP, align 8, !mcsema_real_eip !95
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_204 = load i8*, i8** %_RBP_ptr_, align 8
  call x86_64_sysvcc void @sub_0.1(%RegState* %0, i8* %_new_gep_128, i8* %_local_stack_end_ptr_, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_204)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_206 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_207 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_206, i64 8
  store i8* %_gep_fix_207, i8** %_RSP_ptr_, align 8
  store i64 ptrtoint (%1* @data_0x278 to i64), i64* %XDI, align 8, !mcsema_real_eip !96
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_130 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_131 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_130, i64 -148
  %EAX_val.175 = load i32, i32* %EAX.125, align 4, !mcsema_real_eip !97
  %50 = bitcast i8* %_new_gep_131 to i32*
  store i32 %EAX_val.175, i32* %50, align 4, !mcsema_real_eip !97
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_133 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_134 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_133, i64 -148
  %51 = ptrtoint i8* %_new_gep_134 to i64
  %_offset_above_rbp_363 = sub i64 %51, %_local_end_to_int_
  %_pot_address_in_parent_stack_364 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_363
  %_cond1_365 = icmp ugt i8* %_new_gep_134, %_local_stack_end_ptr_
  %_cond2_1_366 = icmp ugt i8* %_new_gep_134, %_parent_stack_end_ptr_
  %_cond2_2_367 = icmp ult i8* %_new_gep_134, %_parent_stack_start_ptr_
  %_cond2_368 = or i1 %_cond2_1_366, %_cond2_2_367
  %_cond4_369 = icmp ule i8* %_pot_address_in_parent_stack_364, %_parent_stack_end_ptr_
  %_cond1_n_cond2_370 = and i1 %_cond1_365, %_cond2_368
  %_cond1_n_cond2_cond3_371 = and i1 %_cond1_n_cond2_370, %_cond4_369
  %_address_in_parent_stack_bt_373..v = select i1 %_cond1_n_cond2_cond3_371, i8* %_pot_address_in_parent_stack_364, i8* %_new_gep_134
  %_address_in_parent_stack_bt_373. = bitcast i8* %_address_in_parent_stack_bt_373..v to i32*
  %_new_load_374 = load i32, i32* %_address_in_parent_stack_bt_373., align 4
  %52 = zext i32 %_new_load_374 to i64, !mcsema_real_eip !98
  store i64 %52, i64* %XSI, align 8, !mcsema_real_eip !98
  %AL.177 = bitcast i64* %XAX to i8*, !mcsema_real_eip !99
  store i8 0, i8* %AL.177, align 1, !mcsema_real_eip !99
  %RDI_val.178 = load i64, i64* %XDI, align 8, !mcsema_real_eip !100
  %RDX_val.180 = load i64, i64* %XDX, align 8, !mcsema_real_eip !100
  %RCX_val.181 = load i64, i64* %XCX, align 8, !mcsema_real_eip !100
  %R8_val.182 = load i64, i64* %R8, align 8, !mcsema_real_eip !100
  %R9_val.183 = load i64, i64* %R9, align 8, !mcsema_real_eip !100
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_136 = load i8*, i8** %_RSP_ptr_, align 8
  %_ptr_to_int_375 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_136 to i64
  %_offset_above_rbp_378 = sub i64 %_ptr_to_int_375, %_local_end_to_int_
  %_pot_address_in_parent_stack_379 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_378
  %_cond1_380 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_136, %_local_stack_end_ptr_
  %_cond2_1_381 = icmp ugt i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_136, %_parent_stack_end_ptr_
  %_cond2_2_382 = icmp ult i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_136, %_parent_stack_start_ptr_
  %_cond2_383 = or i1 %_cond2_1_381, %_cond2_2_382
  %_cond4_384 = icmp ule i8* %_pot_address_in_parent_stack_379, %_parent_stack_end_ptr_
  %_cond1_n_cond2_385 = and i1 %_cond1_380, %_cond2_383
  %_cond1_n_cond2_cond3_386 = and i1 %_cond1_n_cond2_385, %_cond4_384
  %.v7 = select i1 %_cond1_n_cond2_cond3_386, i8* %_pot_address_in_parent_stack_379, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_136
  %53 = bitcast i8* %.v7 to i64*
  %_new_load_389 = load i64, i64* %53, align 8
  %_new_gep_138 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_136, i64 8
  %_ptr_to_int_390 = ptrtoint i8* %_new_gep_138 to i64
  %_offset_above_rbp_393 = sub i64 %_ptr_to_int_390, %_local_end_to_int_
  %_pot_address_in_parent_stack_394 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_393
  %_cond1_395 = icmp ugt i8* %_new_gep_138, %_local_stack_end_ptr_
  %_cond2_1_396 = icmp ugt i8* %_new_gep_138, %_parent_stack_end_ptr_
  %_cond2_2_397 = icmp ult i8* %_new_gep_138, %_parent_stack_start_ptr_
  %_cond2_398 = or i1 %_cond2_1_396, %_cond2_2_397
  %_cond4_399 = icmp ule i8* %_pot_address_in_parent_stack_394, %_parent_stack_end_ptr_
  %_cond1_n_cond2_400 = and i1 %_cond1_395, %_cond2_398
  %_cond1_n_cond2_cond3_401 = and i1 %_cond1_n_cond2_400, %_cond4_399
  %_address_in_parent_stack_bt_403._allin_new_bt_139.v = select i1 %_cond1_n_cond2_cond3_401, i8* %_pot_address_in_parent_stack_394, i8* %_new_gep_138
  %_address_in_parent_stack_bt_403._allin_new_bt_139 = bitcast i8* %_address_in_parent_stack_bt_403._allin_new_bt_139.v to i64*
  %_new_load_404 = load i64, i64* %_address_in_parent_stack_bt_403._allin_new_bt_139, align 8
  %_new_gep_140 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_136, i64 16
  %_ptr_to_int_405 = ptrtoint i8* %_new_gep_140 to i64
  %_offset_above_rbp_408 = sub i64 %_ptr_to_int_405, %_local_end_to_int_
  %_pot_address_in_parent_stack_409 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_408
  %_cond1_410 = icmp ugt i8* %_new_gep_140, %_local_stack_end_ptr_
  %_cond2_1_411 = icmp ugt i8* %_new_gep_140, %_parent_stack_end_ptr_
  %_cond2_2_412 = icmp ult i8* %_new_gep_140, %_parent_stack_start_ptr_
  %_cond2_413 = or i1 %_cond2_1_411, %_cond2_2_412
  %_cond4_414 = icmp ule i8* %_pot_address_in_parent_stack_409, %_parent_stack_end_ptr_
  %_cond1_n_cond2_415 = and i1 %_cond1_410, %_cond2_413
  %_cond1_n_cond2_cond3_416 = and i1 %_cond1_n_cond2_415, %_cond4_414
  %.v8 = select i1 %_cond1_n_cond2_cond3_416, i8* %_pot_address_in_parent_stack_409, i8* %_new_gep_140
  %54 = bitcast i8* %.v8 to i64*
  %_new_load_419 = load i64, i64* %54, align 8
  %_new_gep_142 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_136, i64 24
  %_ptr_to_int_420 = ptrtoint i8* %_new_gep_142 to i64
  %_offset_above_rbp_423 = sub i64 %_ptr_to_int_420, %_local_end_to_int_
  %_pot_address_in_parent_stack_424 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_423
  %_cond1_425 = icmp ugt i8* %_new_gep_142, %_local_stack_end_ptr_
  %_cond2_1_426 = icmp ugt i8* %_new_gep_142, %_parent_stack_end_ptr_
  %_cond2_2_427 = icmp ult i8* %_new_gep_142, %_parent_stack_start_ptr_
  %_cond2_428 = or i1 %_cond2_1_426, %_cond2_2_427
  %_cond4_429 = icmp ule i8* %_pot_address_in_parent_stack_424, %_parent_stack_end_ptr_
  %_cond1_n_cond2_430 = and i1 %_cond1_425, %_cond2_428
  %_cond1_n_cond2_cond3_431 = and i1 %_cond1_n_cond2_430, %_cond4_429
  %_address_in_parent_stack_bt_433._allin_new_bt_143.v = select i1 %_cond1_n_cond2_cond3_431, i8* %_pot_address_in_parent_stack_424, i8* %_new_gep_142
  %_address_in_parent_stack_bt_433._allin_new_bt_143 = bitcast i8* %_address_in_parent_stack_bt_433._allin_new_bt_143.v to i64*
  %_new_load_434 = load i64, i64* %_address_in_parent_stack_bt_433._allin_new_bt_143, align 8
  %_new_gep_144 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_136, i64 32
  %_ptr_to_int_435 = ptrtoint i8* %_new_gep_144 to i64
  %_offset_above_rbp_438 = sub i64 %_ptr_to_int_435, %_local_end_to_int_
  %_pot_address_in_parent_stack_439 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_438
  %_cond1_440 = icmp ugt i8* %_new_gep_144, %_local_stack_end_ptr_
  %_cond2_1_441 = icmp ugt i8* %_new_gep_144, %_parent_stack_end_ptr_
  %_cond2_2_442 = icmp ult i8* %_new_gep_144, %_parent_stack_start_ptr_
  %_cond2_443 = or i1 %_cond2_1_441, %_cond2_2_442
  %_cond4_444 = icmp ule i8* %_pot_address_in_parent_stack_439, %_parent_stack_end_ptr_
  %_cond1_n_cond2_445 = and i1 %_cond1_440, %_cond2_443
  %_cond1_n_cond2_cond3_446 = and i1 %_cond1_n_cond2_445, %_cond4_444
  %.v9 = select i1 %_cond1_n_cond2_cond3_446, i8* %_pot_address_in_parent_stack_439, i8* %_new_gep_144
  %55 = bitcast i8* %.v9 to i64*
  %_new_load_449 = load i64, i64* %55, align 8
  %_new_gep_146 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_136, i64 40
  %_ptr_to_int_450 = ptrtoint i8* %_new_gep_146 to i64
  %_offset_above_rbp_453 = sub i64 %_ptr_to_int_450, %_local_end_to_int_
  %_pot_address_in_parent_stack_454 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_453
  %_cond1_455 = icmp ugt i8* %_new_gep_146, %_local_stack_end_ptr_
  %_cond2_1_456 = icmp ugt i8* %_new_gep_146, %_parent_stack_end_ptr_
  %_cond2_2_457 = icmp ult i8* %_new_gep_146, %_parent_stack_start_ptr_
  %_cond2_458 = or i1 %_cond2_1_456, %_cond2_2_457
  %_cond4_459 = icmp ule i8* %_pot_address_in_parent_stack_454, %_parent_stack_end_ptr_
  %_cond1_n_cond2_460 = and i1 %_cond1_455, %_cond2_458
  %_cond1_n_cond2_cond3_461 = and i1 %_cond1_n_cond2_460, %_cond4_459
  %_address_in_parent_stack_bt_463._allin_new_bt_147.v = select i1 %_cond1_n_cond2_cond3_461, i8* %_pot_address_in_parent_stack_454, i8* %_new_gep_146
  %_address_in_parent_stack_bt_463._allin_new_bt_147 = bitcast i8* %_address_in_parent_stack_bt_463._allin_new_bt_147.v to i64*
  %_new_load_464 = load i64, i64* %_address_in_parent_stack_bt_463._allin_new_bt_147, align 8
  %_new_gep_148 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_136, i64 48
  %_ptr_to_int_465 = ptrtoint i8* %_new_gep_148 to i64
  %_offset_above_rbp_468 = sub i64 %_ptr_to_int_465, %_local_end_to_int_
  %_pot_address_in_parent_stack_469 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_468
  %_cond1_470 = icmp ugt i8* %_new_gep_148, %_local_stack_end_ptr_
  %_cond2_1_471 = icmp ugt i8* %_new_gep_148, %_parent_stack_end_ptr_
  %_cond2_2_472 = icmp ult i8* %_new_gep_148, %_parent_stack_start_ptr_
  %_cond2_473 = or i1 %_cond2_1_471, %_cond2_2_472
  %_cond4_474 = icmp ule i8* %_pot_address_in_parent_stack_469, %_parent_stack_end_ptr_
  %_cond1_n_cond2_475 = and i1 %_cond1_470, %_cond2_473
  %_cond1_n_cond2_cond3_476 = and i1 %_cond1_n_cond2_475, %_cond4_474
  %.v10 = select i1 %_cond1_n_cond2_cond3_476, i8* %_pot_address_in_parent_stack_469, i8* %_new_gep_148
  %56 = bitcast i8* %.v10 to i64*
  %_new_load_479 = load i64, i64* %56, align 8
  %_new_gep_150 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_136, i64 56
  %_ptr_to_int_480 = ptrtoint i8* %_new_gep_150 to i64
  %_offset_above_rbp_483 = sub i64 %_ptr_to_int_480, %_local_end_to_int_
  %_pot_address_in_parent_stack_484 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_483
  %_cond1_485 = icmp ugt i8* %_new_gep_150, %_local_stack_end_ptr_
  %_cond2_1_486 = icmp ugt i8* %_new_gep_150, %_parent_stack_end_ptr_
  %_cond2_2_487 = icmp ult i8* %_new_gep_150, %_parent_stack_start_ptr_
  %_cond2_488 = or i1 %_cond2_1_486, %_cond2_2_487
  %_cond4_489 = icmp ule i8* %_pot_address_in_parent_stack_484, %_parent_stack_end_ptr_
  %_cond1_n_cond2_490 = and i1 %_cond1_485, %_cond2_488
  %_cond1_n_cond2_cond3_491 = and i1 %_cond1_n_cond2_490, %_cond4_489
  %_address_in_parent_stack_bt_493._allin_new_bt_151.v = select i1 %_cond1_n_cond2_cond3_491, i8* %_pot_address_in_parent_stack_484, i8* %_new_gep_150
  %_address_in_parent_stack_bt_493._allin_new_bt_151 = bitcast i8* %_address_in_parent_stack_bt_493._allin_new_bt_151.v to i64*
  %_new_load_494 = load i64, i64* %_address_in_parent_stack_bt_493._allin_new_bt_151, align 8
  %_new_gep_152 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_136, i64 64
  %_ptr_to_int_495 = ptrtoint i8* %_new_gep_152 to i64
  %_offset_above_rbp_498 = sub i64 %_ptr_to_int_495, %_local_end_to_int_
  %_pot_address_in_parent_stack_499 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_498
  %_cond1_500 = icmp ugt i8* %_new_gep_152, %_local_stack_end_ptr_
  %_cond2_1_501 = icmp ugt i8* %_new_gep_152, %_parent_stack_end_ptr_
  %_cond2_2_502 = icmp ult i8* %_new_gep_152, %_parent_stack_start_ptr_
  %_cond2_503 = or i1 %_cond2_1_501, %_cond2_2_502
  %_cond4_504 = icmp ule i8* %_pot_address_in_parent_stack_499, %_parent_stack_end_ptr_
  %_cond1_n_cond2_505 = and i1 %_cond1_500, %_cond2_503
  %_cond1_n_cond2_cond3_506 = and i1 %_cond1_n_cond2_505, %_cond4_504
  %.v11 = select i1 %_cond1_n_cond2_cond3_506, i8* %_pot_address_in_parent_stack_499, i8* %_new_gep_152
  %57 = bitcast i8* %.v11 to i64*
  %_new_load_509 = load i64, i64* %57, align 8
  %_new_gep_154 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_136, i64 72
  %_ptr_to_int_510 = ptrtoint i8* %_new_gep_154 to i64
  %_offset_above_rbp_513 = sub i64 %_ptr_to_int_510, %_local_end_to_int_
  %_pot_address_in_parent_stack_514 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_513
  %_cond1_515 = icmp ugt i8* %_new_gep_154, %_local_stack_end_ptr_
  %_cond2_1_516 = icmp ugt i8* %_new_gep_154, %_parent_stack_end_ptr_
  %_cond2_2_517 = icmp ult i8* %_new_gep_154, %_parent_stack_start_ptr_
  %_cond2_518 = or i1 %_cond2_1_516, %_cond2_2_517
  %_cond4_519 = icmp ule i8* %_pot_address_in_parent_stack_514, %_parent_stack_end_ptr_
  %_cond1_n_cond2_520 = and i1 %_cond1_515, %_cond2_518
  %_cond1_n_cond2_cond3_521 = and i1 %_cond1_n_cond2_520, %_cond4_519
  %_address_in_parent_stack_bt_523._allin_new_bt_155.v = select i1 %_cond1_n_cond2_cond3_521, i8* %_pot_address_in_parent_stack_514, i8* %_new_gep_154
  %_address_in_parent_stack_bt_523._allin_new_bt_155 = bitcast i8* %_address_in_parent_stack_bt_523._allin_new_bt_155.v to i64*
  %_new_load_524 = load i64, i64* %_address_in_parent_stack_bt_523._allin_new_bt_155, align 8
  %RSP_val.185 = load i64, i64* %XSP, align 8, !mcsema_real_eip !100
  %_new_gep_157 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_136, i64 -8
  %58 = add i64 %RSP_val.185, -8
  %_allin_new_bt_158 = bitcast i8* %_new_gep_157 to i64*
  store i64 -2415393069852865332, i64* %_allin_new_bt_158, align 8, !mcsema_real_eip !100
  store volatile i8* %_new_gep_157, i8** %_RSP_ptr_, align 8
  store i64 %58, i64* %XSP, align 8, !mcsema_real_eip !100
  %59 = call x86_64_sysvcc i64 @_printf(i64 %RDI_val.178, i64 %52, i64 %RDX_val.180, i64 %RCX_val.181, i64 %R8_val.182, i64 %R9_val.183, i64 %_new_load_389, i64 %_new_load_404, i64 %_new_load_419, i64 %_new_load_434, i64 %_new_load_449, i64 %_new_load_464, i64 %_new_load_479, i64 %_new_load_494, i64 %_new_load_509, i64 %_new_load_524)
  %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_208 = load i8*, i8** %_RSP_ptr_, align 8
  %_gep_fix_209 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._rsp_fix_208, i64 8
  store i8* %_gep_fix_209, i8** %_RSP_ptr_, align 8
  store i64 %59, i64* %XAX, align 8, !mcsema_real_eip !100
  %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_159 = load i8*, i8** %_RBP_ptr_, align 8
  %_new_gep_160 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_159, i64 -148
  %60 = ptrtoint i8* %_new_gep_160 to i64
  %_offset_above_rbp_528 = sub i64 %60, %_local_end_to_int_
  %_pot_address_in_parent_stack_529 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_528
  %_cond1_530 = icmp ugt i8* %_new_gep_160, %_local_stack_end_ptr_
  %_cond2_1_531 = icmp ugt i8* %_new_gep_160, %_parent_stack_end_ptr_
  %_cond2_2_532 = icmp ult i8* %_new_gep_160, %_parent_stack_start_ptr_
  %_cond2_533 = or i1 %_cond2_1_531, %_cond2_2_532
  %_cond4_534 = icmp ule i8* %_pot_address_in_parent_stack_529, %_parent_stack_end_ptr_
  %_cond1_n_cond2_535 = and i1 %_cond1_530, %_cond2_533
  %_cond1_n_cond2_cond3_536 = and i1 %_cond1_n_cond2_535, %_cond4_534
  %.v12 = select i1 %_cond1_n_cond2_cond3_536, i8* %_pot_address_in_parent_stack_529, i8* %_new_gep_160
  %61 = bitcast i8* %.v12 to i32*
  %_new_load_539 = load i32, i32* %61, align 4
  %62 = zext i32 %_new_load_539 to i64, !mcsema_real_eip !101
  store i64 %62, i64* %XCX, align 8, !mcsema_real_eip !101
  %_new_gep_163 = getelementptr i8, i8* %_RBP_ptr_.0._RBP_ptr_.0._load_rbp_ptr_159, i64 -212
  %63 = trunc i64 %59 to i32
  %64 = bitcast i8* %_new_gep_163 to i32*
  store i32 %63, i32* %64, align 4, !mcsema_real_eip !102
  %ECX_val.191 = load i32, i32* %ECX.128, align 4, !mcsema_real_eip !103
  %65 = zext i32 %ECX_val.191 to i64, !mcsema_real_eip !103
  store i64 %65, i64* %XAX, align 8, !mcsema_real_eip !103
  %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_165 = load i8*, i8** %_RSP_ptr_, align 8
  %RSP_val.192 = load i64, i64* %XSP, align 8, !mcsema_real_eip !104
  %_new_gep_166 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_165, i64 216
  %66 = add i64 %RSP_val.192, 216, !mcsema_real_eip !104
  %_trans_p2i_167 = ptrtoint i8* %_new_gep_166 to i64
  %_trans_p2i_168 = ptrtoint i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_165 to i64
  %_trans_xor_169 = xor i64 %_trans_p2i_167, %_trans_p2i_168
  %67 = and i64 %_trans_xor_169, 16
  %68 = icmp eq i64 %67, 0
  store i1 %68, i1* %AF, align 1, !mcsema_real_eip !104
  %69 = icmp slt i64 %66, 0
  store i1 %69, i1* %SF, align 1, !mcsema_real_eip !104
  %_trans_icmp_eq_171 = icmp eq i8* %_new_gep_166, null
  store i1 %_trans_icmp_eq_171, i1* %ZF, align 1, !mcsema_real_eip !104
  %70 = xor i64 %_trans_p2i_168, -9223372036854775808, !mcsema_real_eip !104
  %71 = and i64 %_trans_xor_169, %70, !mcsema_real_eip !104
  %72 = icmp slt i64 %71, 0
  store i1 %72, i1* %OF, align 1, !mcsema_real_eip !104
  %_trans_trunc_178 = trunc i64 %_trans_p2i_167 to i8
  %73 = call i8 @llvm.ctpop.i8(i8 %_trans_trunc_178), !mcsema_real_eip !104
  %74 = and i8 %73, 1
  %75 = icmp eq i8 %74, 0
  store i1 %75, i1* %PF, align 1, !mcsema_real_eip !104
  %_trans_icmp_ne_180 = icmp ne i64 %RSP_val.192, %_trans_p2i_167
  store i1 %_trans_icmp_ne_180, i1* %CF, align 1, !mcsema_real_eip !104
  store volatile i8* %_new_gep_166, i8** %_RSP_ptr_, align 8
  store i64 %66, i64* %XSP, align 8, !mcsema_real_eip !104
  %_offset_above_rbp_543 = sub i64 %_trans_p2i_167, %_local_end_to_int_
  %_pot_address_in_parent_stack_544 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_543
  %_cond1_545 = icmp ugt i8* %_new_gep_166, %_local_stack_end_ptr_
  %_cond2_1_546 = icmp ugt i8* %_new_gep_166, %_parent_stack_end_ptr_
  %_cond2_2_547 = icmp ult i8* %_new_gep_166, %_parent_stack_start_ptr_
  %_cond2_548 = or i1 %_cond2_1_546, %_cond2_2_547
  %_cond4_549 = icmp ule i8* %_pot_address_in_parent_stack_544, %_parent_stack_end_ptr_
  %_cond1_n_cond2_550 = and i1 %_cond1_545, %_cond2_548
  %_cond1_n_cond2_cond3_551 = and i1 %_cond1_n_cond2_550, %_cond4_549
  %_address_in_parent_stack_bt_553._allin_new_bt_182.v = select i1 %_cond1_n_cond2_cond3_551, i8* %_pot_address_in_parent_stack_544, i8* %_new_gep_166
  %_address_in_parent_stack_bt_553._allin_new_bt_182 = bitcast i8* %_address_in_parent_stack_bt_553._allin_new_bt_182.v to i64*
  %_new_load_554 = load i64, i64* %_address_in_parent_stack_bt_553._allin_new_bt_182, align 8
  store i64 %_new_load_554, i64* %XBX, align 8, !mcsema_real_eip !105
  %_new_gep_183 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_165, i64 224
  %76 = add i64 %RSP_val.192, 224, !mcsema_real_eip !105
  store volatile i8* %_new_gep_183, i8** %_RSP_ptr_, align 8
  store i64 %76, i64* %XSP, align 8, !mcsema_real_eip !105
  %_ptr_to_int_555 = ptrtoint i8* %_new_gep_183 to i64
  %_offset_above_rbp_558 = sub i64 %_ptr_to_int_555, %_local_end_to_int_
  %_pot_address_in_parent_stack_559 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_558
  %_cond1_560 = icmp ugt i8* %_new_gep_183, %_local_stack_end_ptr_
  %_cond2_1_561 = icmp ugt i8* %_new_gep_183, %_parent_stack_end_ptr_
  %_cond2_2_562 = icmp ult i8* %_new_gep_183, %_parent_stack_start_ptr_
  %_cond2_563 = or i1 %_cond2_1_561, %_cond2_2_562
  %_cond4_564 = icmp ule i8* %_pot_address_in_parent_stack_559, %_parent_stack_end_ptr_
  %_cond1_n_cond2_565 = and i1 %_cond1_560, %_cond2_563
  %_cond1_n_cond2_cond3_566 = and i1 %_cond1_n_cond2_565, %_cond4_564
  %.v13 = select i1 %_cond1_n_cond2_cond3_566, i8* %_pot_address_in_parent_stack_559, i8* %_new_gep_183
  %77 = bitcast i8* %.v13 to i64*
  %_new_load_569 = load i64, i64* %77, align 8
  store i64 %_new_load_569, i64* %R12, align 8, !mcsema_real_eip !106
  %_new_gep_186 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_165, i64 232
  %78 = add i64 %RSP_val.192, 232, !mcsema_real_eip !106
  store volatile i8* %_new_gep_186, i8** %_RSP_ptr_, align 8
  store i64 %78, i64* %XSP, align 8, !mcsema_real_eip !106
  %_ptr_to_int_570 = ptrtoint i8* %_new_gep_186 to i64
  %_offset_above_rbp_573 = sub i64 %_ptr_to_int_570, %_local_end_to_int_
  %_pot_address_in_parent_stack_574 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_573
  %_cond1_575 = icmp ugt i8* %_new_gep_186, %_local_stack_end_ptr_
  %_cond2_1_576 = icmp ugt i8* %_new_gep_186, %_parent_stack_end_ptr_
  %_cond2_2_577 = icmp ult i8* %_new_gep_186, %_parent_stack_start_ptr_
  %_cond2_578 = or i1 %_cond2_1_576, %_cond2_2_577
  %_cond4_579 = icmp ule i8* %_pot_address_in_parent_stack_574, %_parent_stack_end_ptr_
  %_cond1_n_cond2_580 = and i1 %_cond1_575, %_cond2_578
  %_cond1_n_cond2_cond3_581 = and i1 %_cond1_n_cond2_580, %_cond4_579
  %_address_in_parent_stack_bt_583._allin_new_bt_188.v = select i1 %_cond1_n_cond2_cond3_581, i8* %_pot_address_in_parent_stack_574, i8* %_new_gep_186
  %_address_in_parent_stack_bt_583._allin_new_bt_188 = bitcast i8* %_address_in_parent_stack_bt_583._allin_new_bt_188.v to i64*
  %_new_load_584 = load i64, i64* %_address_in_parent_stack_bt_583._allin_new_bt_188, align 8
  store i64 %_new_load_584, i64* %R13, align 8, !mcsema_real_eip !107
  %_new_gep_189 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_165, i64 240
  %79 = add i64 %RSP_val.192, 240, !mcsema_real_eip !107
  store volatile i8* %_new_gep_189, i8** %_RSP_ptr_, align 8
  store i64 %79, i64* %XSP, align 8, !mcsema_real_eip !107
  %_ptr_to_int_585 = ptrtoint i8* %_new_gep_189 to i64
  %_offset_above_rbp_588 = sub i64 %_ptr_to_int_585, %_local_end_to_int_
  %_pot_address_in_parent_stack_589 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_588
  %_cond1_590 = icmp ugt i8* %_new_gep_189, %_local_stack_end_ptr_
  %_cond2_1_591 = icmp ugt i8* %_new_gep_189, %_parent_stack_end_ptr_
  %_cond2_2_592 = icmp ult i8* %_new_gep_189, %_parent_stack_start_ptr_
  %_cond2_593 = or i1 %_cond2_1_591, %_cond2_2_592
  %_cond4_594 = icmp ule i8* %_pot_address_in_parent_stack_589, %_parent_stack_end_ptr_
  %_cond1_n_cond2_595 = and i1 %_cond1_590, %_cond2_593
  %_cond1_n_cond2_cond3_596 = and i1 %_cond1_n_cond2_595, %_cond4_594
  %.v14 = select i1 %_cond1_n_cond2_cond3_596, i8* %_pot_address_in_parent_stack_589, i8* %_new_gep_189
  %80 = bitcast i8* %.v14 to i64*
  %_new_load_599 = load i64, i64* %80, align 8
  store i64 %_new_load_599, i64* %R14, align 8, !mcsema_real_eip !108
  %_new_gep_192 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_165, i64 248
  %81 = add i64 %RSP_val.192, 248, !mcsema_real_eip !108
  store volatile i8* %_new_gep_192, i8** %_RSP_ptr_, align 8
  store i64 %81, i64* %XSP, align 8, !mcsema_real_eip !108
  %_ptr_to_int_600 = ptrtoint i8* %_new_gep_192 to i64
  %_offset_above_rbp_603 = sub i64 %_ptr_to_int_600, %_local_end_to_int_
  %_pot_address_in_parent_stack_604 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_603
  %_cond1_605 = icmp ugt i8* %_new_gep_192, %_local_stack_end_ptr_
  %_cond2_1_606 = icmp ugt i8* %_new_gep_192, %_parent_stack_end_ptr_
  %_cond2_2_607 = icmp ult i8* %_new_gep_192, %_parent_stack_start_ptr_
  %_cond2_608 = or i1 %_cond2_1_606, %_cond2_2_607
  %_cond4_609 = icmp ule i8* %_pot_address_in_parent_stack_604, %_parent_stack_end_ptr_
  %_cond1_n_cond2_610 = and i1 %_cond1_605, %_cond2_608
  %_cond1_n_cond2_cond3_611 = and i1 %_cond1_n_cond2_610, %_cond4_609
  %_address_in_parent_stack_bt_613._allin_new_bt_194.v = select i1 %_cond1_n_cond2_cond3_611, i8* %_pot_address_in_parent_stack_604, i8* %_new_gep_192
  %_address_in_parent_stack_bt_613._allin_new_bt_194 = bitcast i8* %_address_in_parent_stack_bt_613._allin_new_bt_194.v to i64*
  %_new_load_614 = load i64, i64* %_address_in_parent_stack_bt_613._allin_new_bt_194, align 8
  store i64 %_new_load_614, i64* %R15, align 8, !mcsema_real_eip !109
  %_new_gep_195 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_165, i64 256
  %82 = add i64 %RSP_val.192, 256, !mcsema_real_eip !109
  store volatile i8* %_new_gep_195, i8** %_RSP_ptr_, align 8
  store i64 %82, i64* %XSP, align 8, !mcsema_real_eip !109
  %_ptr_to_int_615 = ptrtoint i8* %_new_gep_195 to i64
  %_offset_above_rbp_618 = sub i64 %_ptr_to_int_615, %_local_end_to_int_
  %_pot_address_in_parent_stack_619 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_618
  %_cond1_620 = icmp ugt i8* %_new_gep_195, %_local_stack_end_ptr_
  %_cond2_1_621 = icmp ugt i8* %_new_gep_195, %_parent_stack_end_ptr_
  %_cond2_2_622 = icmp ult i8* %_new_gep_195, %_parent_stack_start_ptr_
  %_cond2_623 = or i1 %_cond2_1_621, %_cond2_2_622
  %_cond4_624 = icmp ule i8* %_pot_address_in_parent_stack_619, %_parent_stack_end_ptr_
  %_cond1_n_cond2_625 = and i1 %_cond1_620, %_cond2_623
  %_cond1_n_cond2_cond3_626 = and i1 %_cond1_n_cond2_625, %_cond4_624
  %.v15 = select i1 %_cond1_n_cond2_cond3_626, i8* %_pot_address_in_parent_stack_619, i8* %_new_gep_195
  %83 = bitcast i8* %.v15 to i64*
  %_new_load_629 = load i64, i64* %83, align 8
  %_new_int2ptr_ = inttoptr i64 %_new_load_629 to i8*
  store volatile i8* %_new_int2ptr_, i8** %_RBP_ptr_, align 8
  store i64 %_new_load_629, i64* %XBP, align 8, !mcsema_real_eip !110
  %_new_gep_198 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_165, i64 264
  %84 = add i64 %RSP_val.192, 264, !mcsema_real_eip !110
  store volatile i8* %_new_gep_198, i8** %_RSP_ptr_, align 8
  store i64 %84, i64* %XSP, align 8, !mcsema_real_eip !110
  %_new_gep_200 = getelementptr i8, i8* %_RSP_ptr_.0._RSP_ptr_.0._load_rsp_ptr_165, i64 272
  %85 = add i64 %RSP_val.192, 272, !mcsema_real_eip !111
  %_ptr_to_int_630 = ptrtoint i8* %_new_gep_198 to i64
  %_offset_above_rbp_633 = sub i64 %_ptr_to_int_630, %_local_end_to_int_
  %_pot_address_in_parent_stack_634 = getelementptr i8, i8* %_parent_stack_start_ptr_, i64 %_offset_above_rbp_633
  %_cond1_635 = icmp ugt i8* %_new_gep_198, %_local_stack_end_ptr_
  %_cond2_1_636 = icmp ugt i8* %_new_gep_198, %_parent_stack_end_ptr_
  %_cond2_2_637 = icmp ult i8* %_new_gep_198, %_parent_stack_start_ptr_
  %_cond2_638 = or i1 %_cond2_1_636, %_cond2_2_637
  %_cond4_639 = icmp ule i8* %_pot_address_in_parent_stack_634, %_parent_stack_end_ptr_
  %_cond1_n_cond2_640 = and i1 %_cond1_635, %_cond2_638
  %_cond1_n_cond2_cond3_641 = and i1 %_cond1_n_cond2_640, %_cond4_639
  %_address_in_parent_stack_bt_643._allin_new_bt_201.v = select i1 %_cond1_n_cond2_cond3_641, i8* %_pot_address_in_parent_stack_634, i8* %_new_gep_198
  %_address_in_parent_stack_bt_643._allin_new_bt_201 = bitcast i8* %_address_in_parent_stack_bt_643._allin_new_bt_201.v to i64*
  %_new_load_644 = load i64, i64* %_address_in_parent_stack_bt_643._allin_new_bt_201, align 8
  store i64 %_new_load_644, i64* %XIP, align 8, !mcsema_real_eip !111
  store volatile i8* %_new_gep_200, i8** %_RSP_ptr_, align 8
  store i64 %85, i64* %XSP, align 8, !mcsema_real_eip !111
  ret void, !mcsema_real_eip !111
}

attributes #0 = { noinline nounwind }
attributes #1 = { noinline }
attributes #2 = { nounwind readnone }
attributes #3 = { naked noinline }

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
!21 = !{i64 72}
!22 = !{i64 69}
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
!57 = !{i64 219}
!58 = !{i64 226}
!59 = !{i64 230}
!60 = !{i64 259}
!61 = !{i64 266}
!62 = !{i64 269}
!63 = !{i64 276}
!64 = !{i64 279}
!65 = !{i64 282}
!66 = !{i64 288}
!67 = !{i64 291}
!68 = !{i64 298}
!69 = !{i64 305}
!70 = !{i64 311}
!71 = !{i64 317}
!72 = !{i64 324}
!73 = !{i64 331}
!74 = !{i64 338}
!75 = !{i64 345}
!76 = !{i64 352}
!77 = !{i64 359}
!78 = !{i64 364}
!79 = !{i64 371}
!80 = !{i64 374}
!81 = !{i64 381}
!82 = !{i64 388}
!83 = !{i64 393}
!84 = !{i64 399}
!85 = !{i64 405}
!86 = !{i64 411}
!87 = !{i64 417}
!88 = !{i64 424}
!89 = !{i64 431}
!90 = !{i64 438}
!91 = !{i64 445}
!92 = !{i64 450}
!93 = !{i64 458}
!94 = !{i64 465}
!95 = !{i64 470}
!96 = !{i64 475}
!97 = !{i64 485}
!98 = !{i64 491}
!99 = !{i64 497}
!100 = !{i64 499}
!101 = !{i64 504}
!102 = !{i64 510}
!103 = !{i64 516}
!104 = !{i64 518}
!105 = !{i64 525}
!106 = !{i64 526}
!107 = !{i64 528}
!108 = !{i64 530}
!109 = !{i64 532}
!110 = !{i64 534}
!111 = !{i64 535}
