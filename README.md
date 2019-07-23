# High-Performance-Cryptography
CUDA and Multithreaded Crypto. This can be used for mining in BlockChain

## How to compile
-normal = g++ --std=c++11 -o normal main.cpp
-cuda = nvcc -o cuda cuda.cu
-multithread = g++ --std=c++11 -o multithread multithread.cpp -pthread
