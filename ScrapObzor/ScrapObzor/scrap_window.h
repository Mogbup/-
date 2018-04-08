#ifndef SCRAP_WINDOW_H
#define SCRAP_WINDOW_H

#include <QMainWindow>

namespace Ui {
class scrap_window;
}

class scrap_window : public QMainWindow
{
    Q_OBJECT

public:
    explicit scrap_window(QWidget *parent = 0);
    ~scrap_window();

private:
    Ui::scrap_window *ui;
};

#endif // SCRAP_WINDOW_H
