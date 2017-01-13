#include <stdio.h>

// this is to avoid a warning.
int foo(int x);

int main() {
  printf("%d \n",foo(1));
  return 0;
}
