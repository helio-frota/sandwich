build: 
	as -o hw.o hw.s
	ld -o hw hw.o
	gcc main.c hwc.c -o main

.PHONY: build
