#ifndef SCRAP_WINDOW_H
#define SCRAP_WINDOW_H

//мои классы

#include "my_material.h"
#include "my_tool.h"
#include "my_graph_object.h"

//общее

#include <QMainWindow>

#include <QtDebug> // стд вывод в консоль

// библиотеки для бд

#include <QSqlDatabase> // сама бд
#include <QSqlQuery> // запрос
#include <QSql> // язык

// билиотеки для графона

#include <QMessageBox> // стд окно сообщений
#include <QHBoxLayout> // горизонтальное расположение
#include <QVBoxLayout> // вертикальное расположение
#include <QPushButton> // кнопка
#include <QTextEdit> // текстовое поле
#include <QSpacerItem> // спейсер
#include <QLineEdit> // поле для ввода
#include <QLabel> // ярлычок дляя подписи

namespace Ui {
class scrap_window;
}

class scrap_window : public QMainWindow
{
    Q_OBJECT

public:
    explicit scrap_window(QWidget *parent = 0);
    ~scrap_window();

    Ui::scrap_window *ui; // форма

    QSqlDatabase scrap_db; // сама база данных

    my_Object *new_one; // объект класса мой_объект для проверки;)

// объекты странички логин
    QHBoxLayout *login_page; // страница входа
    QPushButton *login_button; // кнопка логин
    QLineEdit *login_name;
    QLineEdit *password_name;
    QLabel *log_label;
    QLabel *pas_label;
    QVBoxLayout *login_square;
    QSpacerItem *up_v_space;
    QSpacerItem *down_v_space;
    QSpacerItem *left_h_space;
    QSpacerItem *right_h_space;

// объекты домашней странички Knas
    QPushButton *find_button;
    QPushButton *add_button;
    my_graph_object *material;

// объекты странички
// объекты странички
// объекты странички
// объекты странички
// объекты странички
// объекты странички
// объекты странички

// создание всех объектов, которые описаны сверху
    void create_all_interface_objects();
// создание всех страничек
    void create_all_layout();

private slots:

    void login_btn_clicked();

};

#endif // SCRAP_WINDOW_H
