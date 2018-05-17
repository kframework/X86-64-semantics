
  void swap(int *xp, int *yp)
{
    int temp = *xp;
    *xp = *yp;
    *yp = temp;
}
  
    
    int main()
    {
        int arr[2];
        arr[0] = 4;
        arr[1] = 3;
           int i, j;
                int sum = 10;
    for (i = 0; i < 1; i++)      
        for (j = 0; j < 1-i; j++) 
            if (arr[j] > arr[j+1]) 
                swap( &arr[j] , &arr[j+1]);
    return *arr;
    }
