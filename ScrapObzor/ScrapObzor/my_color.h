#ifndef MY_COLOR_H
#define MY_COLOR_H

#include "my_object.h"
#include <QString>

class my_Color : public my_Object
{
public:
    my_Color(int code, QString color);
    QString naming;
};

#endif // MY_COLOR_H
