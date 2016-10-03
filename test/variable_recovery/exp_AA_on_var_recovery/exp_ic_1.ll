@.str0 = private unnamed_addr constant [6 x i8] c"0 %x\0A\00", align 1
@.str1 = private unnamed_addr constant [6 x i8] c"1 %x\0A\00", align 1
@.str2 = private unnamed_addr constant [6 x i8] c"2 %x\0A\00", align 1
@.str3 = private unnamed_addr constant [6 x i8] c"3 %x\0A\00", align 1

%struct.regs = type <{ i64, i64}>


define  i64 @main(%struct.regs*) {
entry:

  %stack  =  alloca i8, i64 4 
  %RSP_val = alloca i64

  ;%RSP = getelementptr inbounds %struct.regs, %struct.regs* %0, i64 0, i32 1
  ;%temp  = load i64, i64*%RSP
  ;store i64 %temp, i64* %RSP_val
  
  %stack_bt = bitcast i8* %stack to i64*
  %stack_int = ptrtoint i64* %stack_bt to i64
  store i64 %stack_int, i64* %RSP_val
  
  %A = load i64, i64* %RSP_val
  %B = add i64 %A, 4
  store i64 %B , i64* %RSP_val

  %C = load i64, i64* %RSP_val
  %D = add i64 %C, 4
  %E = inttoptr i64 %D to i64*
  %F = load i64, i64* %E

  ret i64 %F
}

declare i32 @printf(i8*, ...)

; %call0 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str0, i32 0, i32 0), i8* %alloca1)
; %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str1, i32 0, i32 0), i8* %_next_)
; %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str2, i32 0, i32 0), i64* %RSP_val)
