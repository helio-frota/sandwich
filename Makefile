build: 
	gcc -c cFunction.c -fPIC
	g++ -c -o cPlusPlusFunction.o cPlusPlusFunction.cpp -fPIC
.PHONY: build
