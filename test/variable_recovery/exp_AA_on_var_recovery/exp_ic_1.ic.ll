; ModuleID = 'exp_ic_1.ll'
source_filename = "exp_ic_1.ll"

%struct.regs = type <{ i64, i64 }>

@.str0 = private unnamed_addr constant [6 x i8] c"0 %x\0A\00", align 1
@.str1 = private unnamed_addr constant [6 x i8] c"1 %x\0A\00", align 1
@.str2 = private unnamed_addr constant [6 x i8] c"2 %x\0A\00", align 1
@.str3 = private unnamed_addr constant [6 x i8] c"3 %x\0A\00", align 1

define i64 @main(%struct.regs*) {
entry:
  %stack1 = alloca [4 x i8], align 1
  %stack_int = ptrtoint [4 x i8]* %stack1 to i64
  %D = add i64 %stack_int, 8
  %E = inttoptr i64 %D to i64*
  %F = load i64, i64* %E, align 4
  ret i64 %F
}

declare i32 @printf(i8*, ...)
