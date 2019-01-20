#include<stdint.h>
#include<stdio.h>
uintptr_t safe_addptr(int *of, uint64_t a, uint64_t b) {
    
    uintptr_t r = a + b;
    printf("%d %d %d\n", sizeof(r), sizeof(a), sizeof(b));
    printf("%p %lld %lld\n", (void *)r, a, b);

    if (r < a) {
    //if (r < a || r < b) {
      *of = 1;
    } 
    return r;

}


int main() {
    int of = 0;
    
    safe_addptr(&of, 4294967295, 18446744069414584320);
    printf("Overflow: %d\n", of); 
    return 0;
}    


/*
int safe_addptr() {
    uint64_t a=10, b=20; 

    uintptr_t r = a + b;
    if(r < a) {
        return 1;
    }
   return 0;
}
*/
