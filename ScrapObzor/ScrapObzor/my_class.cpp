#include "my_class.h"

my_Class::my_Class(int code, QString str, my_Class my_parent) : my_Object(code, str)
{
    parent = new my_Class(my_parent);
}

my_Class::my_Class(const my_Class &cls) : my_Object(cls)
{
    int i = 1;
}
