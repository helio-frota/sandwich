build: 
	as -o hw.o hw.s
	ld -o hw hw.o

.PHONY: build
