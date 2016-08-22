#include <stdio.h>
struct TIME{
  int minutes;
  int hours;
};
struct TIME update(struct TIME t);

int main(){
    struct TIME t;
    t.minutes = 100;
    t.hours = 200;
    update(t);
    return 0;
}

struct TIME update(struct TIME t){
    struct TIME differ;

    differ.minutes = t.minutes +20;
    differ.hours = t.hours +30;

    return differ;
}
