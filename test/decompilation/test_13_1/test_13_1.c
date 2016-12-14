void __attribute__((noinline)) checkFn() {
}

int doWork() {
    int a = 2;
    //for( ; a < 2; a++ ) {
    checkFn();
    //}

    return a;
}
