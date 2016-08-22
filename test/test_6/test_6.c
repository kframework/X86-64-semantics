#include <stdio.h>
struct TIME{
  int seconds;
  int minutes;
  int hours;
};
struct TIME Difference(struct TIME t1, struct TIME t2);

int main(){
    struct TIME t1,t2;
    //scanf("%d%d%d",&t1.hours,&t1.minutes,&t1.seconds);
    //scanf("%d%d%d",&t2.hours,&t2.minutes,&t2.seconds);
    Difference(t1,t2);
    //printf("%d:%d:%d ",t2.hours,t2.minutes,t2.seconds);
    //printf("= %d:%d:%d\n",diff.hours,diff.minutes,diff.seconds);
    return 0;
}

struct TIME Difference(struct TIME t1, struct TIME t2){
    struct TIME differ;
    if(t2.seconds>t1.seconds){
        --t1.minutes;
        t1.seconds+=60;
    }
    differ.seconds=t1.seconds-t2.seconds;
    if(t2.minutes>t1.minutes){
        --t1.hours;
        t1.minutes+=60;
    }
    differ.minutes=t1.minutes-t2.minutes;
    differ.hours=t1.hours-t2.hours;

    return differ;
}
