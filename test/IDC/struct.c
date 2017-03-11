#include <stdio.h>

 struct client  {
  char code;
  long id;
  char name[32];
  struct client *next;
} ;

void print_clients(struct client *ptr) {
  while ( ptr != NULL ) {
    printf("ID: %4ld Name: %-32s\n",ptr->id,ptr->name);
    ptr = ptr->next;
  }
}
