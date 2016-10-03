int foo(int x) {

  int local_var1;
  int local_var2;

  local_var1 = x ;
  local_var2 = x -1;

  return x != 0 && 0 == (local_var1 & local_var2); 
}
