#include <iostream>

using namespace std;

extern "C" {
  #include "cPart.h"
}

void callingCPart() {
  cout << "This is a C++ function." << endl;
  cPart();
}