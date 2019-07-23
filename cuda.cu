#include <iostream>
#include <string>

using namespace std;

__global__ void convertData(char* text, int length)
{
    for (unsigned int i = 0; i < length; i++)
    {
        //ALPHA
        if (text[i] >= 'A')
    }
}

int main()
{

    char input[] = "aabfdh.fdsjkl.+@!ckdsj/khj";

    cout << "INPUT:  " << input << endl;

    int N = sizeof(input);

    char* d_text;

    //Memory Allocation

    cudaMalloc(&d_text, N*sizeof(char));

    //Copy input datastream to GPU

    cudaMemcpy(d_text, input, N*sizeof(char), cudaMemcpyHostToDevice);

    convertData <<<1, 1>>>(d_text, N);

    //Copy output datastream back to the CPU

    cudaMemcpy(input, d_text, N*sizeof(char), cudaMemcpyDeviceToHost);

    cout << "OUTPUT: " << input << endl;

    cudaFree(d_text);

    return 0;

}
