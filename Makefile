build: 
#	as -o asmFunction.o asmFunction.s
	gcc -c cFunction.c asmFunction.s -fPIC
	g++ -c -o cPlusPlusFunction.o cPlusPlusFunction.cpp -fPIC
.PHONY: build
