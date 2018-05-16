void swap(int *xp, int *yp)
{
    int temp = *xp;
    *xp = *yp;
    *yp = temp;
}

int main()
{
    int a = 1;
    int b = 2;
    swap(&a, &b);
    return 0;
}
