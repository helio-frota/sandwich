#include <iostream>

using namespace std;

extern "C" void cfoo();

void cPPfoo() {
  cout << "This is a C++ function." << endl;
  cout << "now call call C function cfoo." << endl;
  cfoo();
}
