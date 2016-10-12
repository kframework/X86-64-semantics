define void @main() {
entry:
  %X =  alloca i8*
  %Y =  alloca i8*
  %a =  alloca i8
  %b =  alloca i8

  store i8* %a, i8** %X
  store i8* %b, i8** %Y

  %LX = load i8* , i8** %X
  %LY = load i8* , i8** %Y

  ret void

}
