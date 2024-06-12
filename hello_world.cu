#include <iostream>

// CUDA kernel function to print "Hello, World!" from GPU
__global__ void helloFromGPU() {
    printf("Hello, World! from GPU thread %d\n", threadIdx.x);
}

int main() {
    // Print from CPU
    std::cout << "Hello, World! from CPU\n";

    // Launch the kernel with one block and one thread
    helloFromGPU<<<1, 10>>>();

    // Wait for the GPU to finish
    cudaDeviceSynchronize();

    return 0;
}