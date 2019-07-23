#include "Convert.hpp"

Convert::Convert()
{
}

Convert::~Convert()
{
}

char *Convert::convertData(char *src, int src_length)
{

    for (int i = 0; i < (src_length-1); i++)
    {
        if (isalnum(src[i]))
        {
            src[i] = toupper(src[i]);        
        }
        else
        {
            src[i] = newChar;
        }
    }

    return src;

}
