#include "head.h"
#include <QDebug>


class New : public Call {
    New();
    ~New();

    Call print(){
    qDebug() << "Hello Skaa!!!";
    }

};

