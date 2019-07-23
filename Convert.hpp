#include <iostream>
#include <fstream>
#include <string>

class Convert
{

public:

    const char newChar = '.';

    Convert();
   
    ~Convert();

    char *convertData(char *src, int src_length);


};

