#include <QCoreApplication>
#include "Interface.h"
#include <QtDebug>
#include <iostream>
class MyClassImlp{
public:

   void test() {
        std::cout << "Test";
    }
};

MyClass::MyClass() noexcept : m_pImpl(new MyClassImlp){

}

void MyClass::test()
{
   m_pImpl->test();
}


int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    return a.exec();

}
