#ifndef MY_OBJECT_H
#define MY_OBJECT_H

#include <QString>

class my_Object
{
public:
    my_Object(int code, QString str);
    my_Object(const my_Object &object);
    int id();
    QString naming();
    int my_Object_id;
    QString my_Object_naming;
};

#endif // MY_OBJECT_H
