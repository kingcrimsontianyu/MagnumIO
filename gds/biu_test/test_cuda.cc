// host: g++ test_cuda.cc -o test_cuda.bin -L/usr/local/cuda/lib64 -lcudart_static -I/usr/local/cuda/include
// docker: g++ test_cuda.cc -o test_cuda.bin -pthread -ldl -lrt -L/home/coder/.conda/envs/rapids/targets/sbsa-linux/lib -lcudart_static -I/home/coder/.conda/envs/rapids/targets/sbsa-linux/include

#include <iostream>
#include <cuda_runtime.h>

int main() {
    int count{};
    auto err_code = cudaGetDeviceCount(&count);
    std::cout << "device count: " << count << ", err code: " << err_code << std::endl;
    return 0;
}