build: 
	rm *.o
	as -o asmFunction.o asmFunction.s
	gcc -c cFunction.c asmFunction.s
	g++ -c -o cPlusPlusFunction.o cPlusPlusFunction.cpp
	g++ -c -o mainCpp.o mainCpp.cpp
	g++ mainCpp.o cPlusPlusFunction.o cFunction.o asmFunction.o -o test
.PHONY: build
