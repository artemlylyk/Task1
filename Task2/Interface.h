#ifndef INTERFACE_H
#define INTERFACE_H
class MyClassImlp;
class MyClass {
public:
  ~MyClass();
   MyClass () noexcept;
   void test();

private:
 MyClassImlp *m_pImpl;
};

#endif // INTERFACE_H
