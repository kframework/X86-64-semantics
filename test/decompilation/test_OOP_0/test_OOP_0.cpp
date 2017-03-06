#include<iostream>
using namespace std;

class Base {
  private:
    int x;
  public:
    Base(): x(42) {}
    virtual void func() {
      cout << "I am Base\n";
    }
};

class Derived: public Base {
  private:
    int y;
  public:
    Derived(): y(42) {}
    virtual void func() {
      cout << "I am Derived\n";
    }
};

int main() {
  Base *b = new Derived();
  b->func();

  return 0;
}
