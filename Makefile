# Makefile for lab00, Johnny Perez, CS32, W25

CXX=clang++
# CXX=g++

#adding a rule to link
helloWorld: helloWorld.o
	${CXX} helloWorld.o -o helloWorld

#adding a rule to compile  (do not actually have to do this)
helloWorld.o: helloWorld.cpp
	${CXX} -c helloWorld.cpp

#rule for make clean
clean:
	/bin/rm -f *.o helloWorld lab00Test

#rule to link lab00Test
lab00Test: lab00Test.o tddFuncs.o arrayFuncs.o
	${CXX} lab00Test.o tddFuncs.o arrayFuncs.o -o lab00Test
