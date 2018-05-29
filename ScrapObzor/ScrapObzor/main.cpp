#include "scrap_window.h"
#include <QApplication>

int main(int argc, char *argv[])
{

    QApplication a(argc, argv);
    scrap_window w;
    w.resize(400,300);
    w.show();

    return a.exec();
}
