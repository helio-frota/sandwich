#include <stdio.h>
#include "cFunction.h"

extern void foo(void);

void cfoo() {
  printf("This is a C function.\n");
  printf("Now going to call an Assembly function.\n");
  foo();
}
