#include "scrap_window.h"
#include "ui_scrap_window.h"
#include <QDebug>
#include <QSqlError>
#include <QSqlRecord>


scrap_window::scrap_window(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::scrap_window)
{
    ui->setupUi(this);
    scrap_db = QSqlDatabase::addDatabase("QPSQL");
    scrap_db.setHostName("localhost");
    scrap_db.setDatabaseName("scrap");
    scrap_db.setUserName("mogbup_4");
    scrap_db.setPassword("1234");
    if (!scrap_db.open()){ // если не открылась
        qDebug() << scrap_db.lastError().text(); // вывести ошибку
    }
    else{ // иначе
        qDebug() << "БД открыта"; // вывести сообщение об успехе
    }



    new_one = new my_Object(23,"Объект");
    qDebug() << new_one->id();
    qDebug() << new_one->naming();

    new_col = new my_Color(33,"Белый");
}

scrap_window::~scrap_window()
{
    delete ui;
}
