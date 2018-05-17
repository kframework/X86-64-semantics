int fun(int a)
{
    return a + 10;
}
 
int main()
{
    int (*fun_ptr)(int) = &fun;
    return (*fun_ptr)(10);
 
}
