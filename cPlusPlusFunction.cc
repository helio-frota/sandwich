#include <iostream>

using namespace std;

extern "C" {
  #include "cFunction.h"
}

void cPPfoo() {
  cout << "This is a C++ function." << endl;
  cfoo();
}