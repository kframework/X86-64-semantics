void swap(int *xp, int *yp)
{
    int temp = *xp;
    *xp = *yp;
    *yp = temp;
}

void bubbleSort(int arr[], int n)
{
   int i, j;
   for (i = 0; i < n-1; i++)      
       for (j = 0; j < n-i-1; j++) 
           if (arr[j] > arr[j+1]) 
              swap(&arr[j], &arr[j+1]);
}


int main()
{
    int arr[] = {7,6,5, 4,3, 2, 1 ,0};
    bubbleSort(arr, 5);
    return 0;
}

