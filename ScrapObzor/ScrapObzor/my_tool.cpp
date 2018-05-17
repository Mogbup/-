#include "my_tool.h"

my_Tool::my_Tool(int code, QString tool) : my_Object(code, tool)
{
    int i = 1;
}

my_Tool::my_Tool(const my_Tool &object) : my_Object(object)
{
    int i = 1;
}
