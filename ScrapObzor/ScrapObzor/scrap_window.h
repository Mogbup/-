#ifndef SCRAP_WINDOW_H
#define SCRAP_WINDOW_H

#include <QMainWindow>

#include <QString> // стд строка
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
    Ui::scrap_window *ui;
    QSqlDatabase scrap_db;

};

#endif // SCRAP_WINDOW_H
