#ifndef MY_MATERIAL_H
#define MY_MATERIAL_H

#include "my_object.h"
#include "my_class.h"
#include "my_color.h"

class my_Material : public my_Object
{
public:
    my_Material(int code, QString str, my_Color color_that_i_get);
    QString color();
private:
    my_Color *my_color;
};

#endif // MY_MATERIAL_H
