build: 
	gcc -c cFunction.c asmFunction.s
	g++ -c -o cPlusPlusFunction.o cPlusPlusFunction.cpp
	g++ -o main cFunction.o cPlusPlusFunction.o
.PHONY: build
