MACOSX := 10.11

build:  asmFunction.o
	clang -c -o cFunction.o cFunction.c -fPIC
	clang++ -c -o cPlusPlusFunction.o cPlusPlusFunction.cc -fPIC

asmFunction.o: asmFunction.s
	as -W -arch x86_64 -o $@ $<
	# also creating an executable named asmFunction to be able to run the assembly code
	# standalone
	ld -e _foo -macosx_version_min $(MACOSX) -lc -lSystem -arch x86_64 $@ -o asmFunction

## main is just used to verify that things are compiled and setup correctly
main: main.cc
	clang++ -c -o cPlusPlusFunction.o cPlusPlusFunction.cc -fPIC
	clang++ -o main main.cc asmFunction.o cPlusPlusFunction.o cFunction.o -I.

clean: 
	rm -f *.o
	rm -f asmFunction main

.PHONY: build clean
