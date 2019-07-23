#include <iostream>
#include <string>

using namespace std;

__global__ void convertData(char* text, int length)
{
    for (unsigned int i = 0; i < length; i++)
    {
        //ALPHA
        if (text[i] == 'a')
            text[i] = 'A';
        else if (text[i] == 'b')
            text[i] = 'B';
        else if (text[i] == 'c')
            text[i] = 'C';
        else if (text[i] == 'd')
            text[i] = 'D';
        else if (text[i] == 'e')
            text[i] = 'E';
        else if (text[i] == 'f')
            text[i] = 'F';
        else if (text[i] == 'g')
            text[i] = 'G';
        else if (text[i] == 'h')
            text[i] = 'H';
        else if (text[i] == 'i')
            text[i] = 'I';
        else if (text[i] == 'j')
            text[i] = 'J';
        else if (text[i] == 'k')
            text[i] = 'K';
        else if (text[i] == 'l')
            text[i] = 'L';
        else if (text[i] == 'm')
            text[i] = 'M';
        else if (text[i] == 'n')
            text[i] = 'N';
        else if (text[i] == 'o')
            text[i] = 'O';
        else if (text[i] == 'p')
            text[i] = 'P';
        else if (text[i] == 'q')
            text[i] = 'Q';
        else if (text[i] == 'r')
            text[i] = 'R';
        else if (text[i] == 's')
            text[i] = 'S';
        else if (text[i] == 't')
            text[i] = 'T';
        else if (text[i] == 'u')
            text[i] = 'U';
        else if (text[i] == 'v')
            text[i] = 'V';
        else if (text[i] == 'w')
            text[i] = 'W';
        else if (text[i] == 'x')
            text[i] = 'X';
        else if (text[i] == 'y')
            text[i] = 'Y';
        else if (text[i] == 'z')
            text[i] = 'Z';
        //NON-ALPHANUMERIC
        else if ((text[i] == '/'))
            text[i] = '.';
        else if ((text[i] == '?'))
            text[i] = '.';
        else if ((text[i] == ','))
            text[i] = '.';
        else if ((text[i] == '"'))
            text[i] = '.';
        else if ((text[i] == '`'))
            text[i] = '.';
        else if ((text[i] == '!'))
            text[i] = '.';
        else if ((text[i] == '@'))
            text[i] = '.';
        else if ((text[i] == '#'))
            text[i] = '.';
        else if ((text[i] == '$'))
            text[i] = '.';
        else if ((text[i] == '%'))
            text[i] = '.';
        else if ((text[i] == '^'))
            text[i] = '.';
        else if ((text[i] == '&'))
            text[i] = '.';
        else if ((text[i] == '*'))
            text[i] = '.';
        else if ((text[i] == '{'))
            text[i] = '.';
        else if ((text[i] == '}'))
            text[i] = '.';
        else if ((text[i] == '|'))
            text[i] = '.';
        else if ((text[i] == '('))
            text[i] = '.';        
        else if ((text[i] == '('))
            text[i] = '.';
        else if ((text[i] == ' '))
            text[i] = '.';
        else if ((text[i] == '+'))
            text[i] = '.';
        else if((text[i] == '='))
            text[i] = '.';
    }
}

int main()
{

    char input[] = "aabfdh.fdsjkl.+@!ckdsj/khj";

    cout << "INPUT:  " << input << endl;

    int N = sizeof(input);

    char* d_text;

    cudaMalloc(&d_text, N*sizeof(char));

    cudaMemcpy(d_text, input, N*sizeof(char), cudaMemcpyHostToDevice);

    convertData <<<1, 1>>>(d_text, N);

    cudaMemcpy(input, d_text, N*sizeof(char), cudaMemcpyDeviceToHost);

    cout << "OUTPUT: " << input << endl;

    cudaFree(d_text);

    return 0;

}
