#include "my_material.h"

my_Material::my_Material(int code, QString str, my_Color color_that_i_get) : my_Object(code, str)
{
    my_color = new my_Color(color_that_i_get);
}

QString my_Material::color()
{
    return my_color->naming;
}
