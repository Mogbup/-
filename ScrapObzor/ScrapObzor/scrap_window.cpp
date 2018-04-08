#include "scrap_window.h"
#include "ui_scrap_window.h"

scrap_window::scrap_window(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::scrap_window)
{
    ui->setupUi(this);
}

scrap_window::~scrap_window()
{
    delete ui;
}
