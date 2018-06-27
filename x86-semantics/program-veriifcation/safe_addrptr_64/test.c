int safe_addptr() {
    uint64_t a=10, b=20; 

    uintptr_t r = a + b;
    if(r < a) {
        return 1;
    }
   return 0;
}
