#include <QCoreApplication>
#include <iostream>

class General
{
public:
    virtual ~General() {}

    virtual void setGeneral(General *g)
    {
       gen = g;
    }

    virtual void generalReq()
    {
        if (gen != 0)
        {
            gen->generalReq();
        }
    }
private:
    General *gen;
};

class General2 : public General
{
public:
    ~General2(){}

    bool gen2()
    {
        return false;
    }

    virtual void generalReq()
    {
        if (gen2())
        {
            std::cout<<"Fine General 2"<< std::endl;
        }
        else
        {
            std::cout<<"Not fine General 2"<< std::endl;
            General::generalReq();
        }
    }
};

class General3 : public General
{
public:
    ~General3() {}

    bool gen3()
    {
        return true;
    }

    virtual void generalReq()
    {
        if (gen3())
        {
            std::cout << "Fine General 3"<< std::endl;
        }
        else
        {
            std::cout<< "Not fine General 3"<<std::endl;
            General::generalReq();
        }
    }
};


int main()
{
    General2 gen2;
    General3 gen3;

    gen2.setGeneral(&gen3);
    gen2.generalReq();
    return 0;

}
