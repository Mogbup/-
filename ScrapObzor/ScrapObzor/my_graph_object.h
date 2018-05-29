#ifndef MY_GRAPH_OBJECT_H
#define MY_GRAPH_OBJECT_H

#include <QVBoxLayout>
#include <QPushButton>
#include <QPixmap>
#include <QLabel>
#include <QString>

class my_graph_object
{
public:
    my_graph_object(QString str);

    QVBoxLayout *graph_element;
    QPixmap *image_path;
    QLabel *image;
    QLabel *text_label;
    QPushButton *btn;

};

#endif // MY_GRAPH_OBJECT_H
