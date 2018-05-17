#ifndef MY_CLASS_H
#define MY_CLASS_H

#include "my_object.h"

class my_Class : public my_Object
{
public:
    my_Class(int code, QString str, my_Class my_parent);
    my_Class(const my_Class &cls);
    my_Class *parent;
};

#endif // MY_CLASS_H
