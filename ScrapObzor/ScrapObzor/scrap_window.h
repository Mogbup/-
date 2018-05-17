#ifndef SCRAP_WINDOW_H
#define SCRAP_WINDOW_H

#include "my_material.h"
#include "my_tool.h"

#include <QMainWindow>
#include <QMessageBox> // стд окно сообщений
#include <QtDebug> // стд вывод в консоль

#include <QSqlDatabase> // сама бд
#include <QSqlQuery> // запрос
#include <QSql> // язык

#include <QHBoxLayout> // горизонтальное расположение
#include <QVBoxLayout> // вертикальное расположение
#include <QPushButton> // кнопка
#include <QTextEdit> // текстовое поле

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
    Ui::scrap_window *ui; // форма

    QSqlDatabase scrap_db; // сама база данных

    my_Object *new_one; // объект класса мой_объект для проверки;)



};

#endif // SCRAP_WINDOW_H
