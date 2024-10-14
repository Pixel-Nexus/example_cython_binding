#include <string>

#ifndef C_CODE_H
#define C_CODE_H

std::string get_hello_world();


class ExampleClass
{
public:
    ExampleClass();
    ~ExampleClass();
    long get_long();
    std::string name;
protected:
private:
};

#endif