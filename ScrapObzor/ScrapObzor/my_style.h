#ifndef MY_STYLE_H
#define MY_STYLE_H

#include "my_object.h"
#include <QString>

class my_Style : public my_Object
{
public:
    my_Style(int code, QString style);
    QString naming;
};

#endif // MY_STYLE_H
