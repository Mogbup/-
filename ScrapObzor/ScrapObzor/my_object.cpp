#include "my_object.h"

my_Object::my_Object(int code, QString str)
{
    my_Object_id = code;
    my_Object_naming = str;
}

my_Object::my_Object(const my_Object &object)
{
    my_Object_id = object.my_Object_id;
    my_Object_naming = object.my_Object_naming;
}

int my_Object::id()
{
    return my_Object_id;
}

QString my_Object::naming()
{
    return my_Object_naming;
}
