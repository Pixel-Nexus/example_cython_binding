#include <string>
#include "c_code.h"


std::string get_hello_world()
{
    return "Hello world!";
}


ExampleClass::ExampleClass() {
    this->name = "Example_Class_Name";
}

ExampleClass::~ExampleClass() {}

long ExampleClass::get_long() {
    long value = 100000;
    return value;
}