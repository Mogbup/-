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

    create_all_interface_objects();
    create_all_layout();
    this->centralWidget()->setLayout(login_page);
    this->centralWidget()->setStyleSheet("background-image:url(/Users/mogbup/Desktop/Снимок экрана 2018-05-20 в 20.51.53.png)");
    // this->centralWidget()->setStyleSheet("QLabel {background-image:url(/Users/mogbup/Documents/ScrapObzor/clear.png)}");
    qDebug() << login_name->styleSheet();

    connect(login_button,SIGNAL(clicked(bool)),this,SLOT(login_btn_clicked())); // SIGNAL, login_button->pressed();, )
}

scrap_window::~scrap_window()
{
    delete ui;
}

void scrap_window::create_all_interface_objects()
{
    // объекты странички логин

    login_square = new QVBoxLayout();
    login_name = new QLineEdit();
        password_name = new QLineEdit();
    log_label = new QLabel();
        log_label->setText("Логин");
        log_label->setStyleSheet("background-image:url(/Users/mogbup/Documents/ScrapObzor/clear.png)");
    pas_label = new QLabel();
        pas_label->setText("Пароль");
        pas_label->setStyleSheet("background-image:url(/Users/mogbup/Documents/ScrapObzor/clear.png)");
    up_v_space = new QSpacerItem(4,80,QSizePolicy::Minimum, QSizePolicy::Minimum);
    down_v_space = new QSpacerItem(4,80,QSizePolicy::Minimum, QSizePolicy::Minimum);

    login_page = new QHBoxLayout();
    login_button = new QPushButton;
        login_button->setText(" > ");
        login_button->setStyleSheet("background-image:url(/Users/mogbup/Documents/ScrapObzor/clear.png);"
                                    "background-color: beige;"
                                    "border-style: outset;"
                                    "border-width: 2px;"
                                    "border-color: grey;");
    left_h_space = new QSpacerItem(80,4,QSizePolicy::Minimum , QSizePolicy::Minimum);
    right_h_space = new QSpacerItem(80,4,QSizePolicy::Minimum, QSizePolicy::Minimum);
}

void scrap_window::create_all_layout()
{
    // страница входа в приложение
    login_square->addSpacerItem(up_v_space);
    login_square->addWidget(log_label);
    login_square->addWidget(login_name);
    login_square->addWidget(pas_label);
    login_square->addWidget(password_name);
    login_square->addSpacerItem(down_v_space);
    login_page->addSpacerItem(left_h_space);
    login_page->addLayout(login_square);
    login_page->addSpacerItem(right_h_space);
    login_page->addWidget(login_button);
}

void scrap_window::login_btn_clicked()
{
    if ((login_name->text() == "Knas") && (password_name->text() == "afahimknas")){
        login_button->setEnabled(false);
    }
    if ((login_name->text() == "MogBup") && (password_name->text() == "MogBup52%@")){
        login_button->setEnabled(false);
    }
}
