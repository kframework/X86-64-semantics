@.str0 = private unnamed_addr constant [6 x i8] c"0 %x\0A\00", align 1
@.str1 = private unnamed_addr constant [6 x i8] c"1 %x\0A\00", align 1
@.str2 = private unnamed_addr constant [6 x i8] c"2 %x\0A\00", align 1
@.str3 = private unnamed_addr constant [6 x i8] c"3 %x\0A\00", align 1


define  i32 @main() {
entry:
  %_local_stack_start_ptr_ = alloca i8, i64 32
  %_bt_local_stack_start_ptr_ = bitcast i8* %_local_stack_start_ptr_ to i64*


  %RSP_val = alloca i64*

  store i64* %_bt_local_stack_start_ptr_, i64** %RSP_val


  %RSP_val1 = load i64*, i64** %RSP_val 
  %_bt_RSP_val1 = bitcast i64* %RSP_val1 to i8*
  %add2 = getelementptr inbounds i8, i8* %_bt_RSP_val1, i32 16


  ;%_p2i_local_stack_start_ptr_ =  ptrtoint i64* %_bt_local_stack_start_ptr_ to i64
  ;%add1 =  add i64 %_p2i_local_stack_start_ptr_, 16
  ;%_i2p_next = inttoptr i64 %add1 to i64*


  ret i32 0
}

declare i32 @printf(i8*, ...)


; MayAlias:	i64** %RSP_val, i8* %_bt_RSP_val1
; %_local_stack_start_ptr_ = alloca i8, i64 32
;  %_bt_local_stack_start_ptr_ = bitcast i8* %_local_stack_start_ptr_ to i64*
;


;  %RSP_val = alloca i64*
;  %a  =  bitcast i64** %RSP_val to i64*

 ; store i64* %a, i64** %RSP_val


 ; %RSP_val1 = load i64*, i64** %RSP_val 

