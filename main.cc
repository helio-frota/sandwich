#include <iostream>

extern void cPPfoo();

int main() {
  std::cout << "main..." << std::endl;
  cPPfoo();
}
