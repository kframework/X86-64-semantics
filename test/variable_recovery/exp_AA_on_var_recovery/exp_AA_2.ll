@.str0 = private unnamed_addr constant [6 x i8] c"0 %x\0A\00", align 1
@.str1 = private unnamed_addr constant [6 x i8] c"1 %x\0A\00", align 1
@.str2 = private unnamed_addr constant [6 x i8] c"2 %x\0A\00", align 1
@.str3 = private unnamed_addr constant [6 x i8] c"3 %x\0A\00", align 1


define  i32 @main(i16* %alloca2) {
entry:

  %alloca2_bt  = bitcast i16* %alloca2  to i8*
  %_in_alloca2_1 = getelementptr inbounds i8, i8* %alloca2_bt, i32 1
  %_in_next_0= getelementptr inbounds i8, i8* %alloca2_bt, i32 2

  %_next_ = getelementptr inbounds i16, i16* %alloca2, i32 1


  ret i32 0
}

declare i32 @printf(i8*, ...)

; %call0 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str0, i32 0, i32 0), i8* %alloca1)
; %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str1, i32 0, i32 0), i8* %_next_)
; %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str2, i32 0, i32 0), i64* %RSP_val)
