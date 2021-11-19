#include <QCoreApplication>
#include <QDebug>
#include <iostream>

class MySingleton {
public:
   static MySingleton* getInstance() {
        static MySingleton instance;
        return &instance;
    }

    void test() {
        std::cout << "Singleton test" << std::endl;
    }

    void justForTest(){
        qDebug() << "Only for test";
    }
};


int main() {
    MySingleton::getInstance()->test();

    MySingleton::getInstance()->justForTest();

    return 0;
}
