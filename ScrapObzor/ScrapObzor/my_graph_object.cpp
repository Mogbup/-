#include "my_graph_object.h"

my_graph_object::my_graph_object(QString str)
{
    graph_element = new QVBoxLayout;
    image_path = new QPixmap(str);

    image = new QLabel;
    text_label = new QLabel;
    btn = new QPushButton;
    image->setPixmap(*image_path);

    graph_element->addWidget(image);
    graph_element->addWidget(text_label);
    graph_element->addWidget(btn);
}
