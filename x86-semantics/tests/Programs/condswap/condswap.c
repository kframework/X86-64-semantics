void swap(int *xp, int *yp)
{
    int temp = *xp;
    *xp = *yp;
    *yp = temp;
}

void bubbleSort(int *a, int *b)
{
           if (*a > *b) 
              swap(a, b);
}


int main()
{
    //int arr[] = {4,3};
    int a = 4;
    int b = 3;
    bubbleSort(&a, &b);
    return 0;
}

