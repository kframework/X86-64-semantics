void checkFn() {
}

int doWork() {
    int a = 0;
    for( ; a < 2; a++ ) {
        checkFn();
    }

    return a;
}
