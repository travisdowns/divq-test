#!/bin/bash
mkdir -p obj
mkdir -p bin

for i in {0..32}; do 
	nasm -f elf64 -dOFFSET=$i divq-test.s -o obj/divq-test$i.o
	ld obj/divq-test$i.o -o bin/divq-test$i
done

nasm -f elf64 test2.s -o obj/test2.o
ld obj/test2.o -o bin/test2
