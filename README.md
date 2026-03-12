# lab5-BrandonAngeles

## Part 1
### helloworld (without optimization)
#### Compile
gcc -O0 -S -m32 helloworld.c
### helloworld (with optimization)
#### Compile
gcc -O4 -S -m32 helloworld.c

## Part 2
### HelloWorld (C)
#### Compile
gcc -m32 HelloWorld.c -o HelloWorld
#### Run
./HelloWorld
### HelloWorldCpp (C++)
#### Compile
g++ -m32 HelloWorldCpp.cpp -o HelloWorldCpp
#### Run
./HelloWorldCpp

## Part 3
### whileLoop
#### Compile
gcc -m32 whileLoop.c -o whileLoop
#### Run
./whileLoop
### maxOfArray
#### Compile
gcc -m32 -no-pie maxOfArray.s -o maxOfArray
#### Run
./maxOfArray