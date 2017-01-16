#include <stdio.h>

void foo();

void cfoo() {
  printf("This is a C function.\n");
  foo();
}