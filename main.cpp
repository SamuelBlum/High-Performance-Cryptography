#include <stdio.h>
#include <iostream>
#include <cstring>
#include <string>
#include "Convert.cpp"

using namespace std;

int main()
{

    Convert convert;

    char input[] = "hel0 09x.jhel0 09x.jhel====++++sdmvds/ 09x.jhel0 09x.jhel0 09x.jhel0 09xa";

    cout << "INPUT:  " << input << endl;

    cout << "OUTPUT: " << convert.convertData(input, sizeof(input)) << endl;

    return 0;
}
