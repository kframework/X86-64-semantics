define void @main() {
entry:
  %X =  alloca i8*
  %Y =  alloca i8*

  %a =  alloca i8, i64 32
  %b =  alloca i8
  %c =  alloca i8

  store i8* %a, i8** %X
  store i8* %b, i8** %Y

  %LX = load i8* , i8** %X
  %LY = load i8* , i8** %Y

  %_new_addr_ = getelementptr i8, i8* %LX, i64 8
  %_new_val_  = ptrtoint i8* %LY to i8
  store i8 %_new_val_ , i8* %_new_addr_
  store i8* %_new_addr_ , i8** %X
  ; The folllowing makes %LX %LY May Alias
  ; store i8* %_new_addr_ , i8** %Y

  %_new_addr_1 = getelementptr i8, i8* %LX, i64 24
  %foo83 = ptrtoint i8* %_new_addr_1 to i8
  store i8 %foo83, i8* %c

  %LYY = load i8*, i8** %Y
  %_new_gep_6 = getelementptr i8, i8* %LYY, i64 24
  %foo90 = load i8, i8* %c
  store i8 %foo90, i8* %_new_gep_6

  %LYYY = load i8*, i8** %Y
  %_new_gep_9 = getelementptr i8, i8* %LYYY, i64 24
  %foo94 = load i8, i8* %_new_gep_9
  store i8 %foo94, i8* %c

  %foo95 = inttoptr i8 %foo94 to i8*
  store i8 1, i8* %foo95

  %foo101 = add i8 %foo94, 4
  %foo102 = inttoptr i8 %foo101 to i8*
  store i8 2, i8* %foo102


  


  ret void

}
