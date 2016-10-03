; ModuleID = 'exp_AA_1.ll'
source_filename = "exp_AA_1.ll"

@.str0 = private unnamed_addr constant [6 x i8] c"0 %x\0A\00", align 1
@.str1 = private unnamed_addr constant [6 x i8] c"1 %x\0A\00", align 1
@.str2 = private unnamed_addr constant [6 x i8] c"2 %x\0A\00", align 1
@.str3 = private unnamed_addr constant [6 x i8] c"3 %x\0A\00", align 1

define i16 @main() {
entry:
  %alloca21 = alloca [4 x i16], align 2
  %_next_ = getelementptr inbounds [4 x i16], [4 x i16]* %alloca21, i64 0, i64 1
  %ret_val = load i16, i16* %_next_, align 2
  ret i16 %ret_val
}

declare i32 @printf(i8*, ...)
