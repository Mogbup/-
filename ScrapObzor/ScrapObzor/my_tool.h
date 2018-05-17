#ifndef MY_TOOL_H
#define MY_TOOL_H

#include "my_object.h"
#include "my_class.h"
#include "my_color.h"

class my_Tool : public my_Object
{
public:
    my_Tool(int code, QString tool);
    my_Tool(const my_Tool &object);
};

#endif // MY_TOOL_H
