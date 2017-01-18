build: 
	rm *.o
	as -o asmFunction.o asmFunction.s
	gcc -c cFunction.c asmFunction.s -fPIC
	g++ -c -o cPlusPlusFunction.o cPlusPlusFunction.cpp -fPIC
#	g++ -c -o mainCpp.o mainCpp.cpp
#	g++ mainCpp.o cPlusPlusFunction.o cFunction.o asmFunction.o -o test
#	gcc -shared -o libcFunction.so cFunction.o
.PHONY: build
