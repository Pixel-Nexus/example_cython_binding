from cython_extension import (
    get_hello_world,
    hello_world_as_python_string,
    ExampleClass,
)


# using our c++ functions in python!
print(get_hello_world())
print(hello_world_as_python_string())


# creating an instance of our c++ class!
example = ExampleClass()
print(example.name)
print(example.get_long())
example.name = "New name!"
print(example.name)
