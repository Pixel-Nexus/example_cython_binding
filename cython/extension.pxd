from libcpp.string cimport string


# defining our C function
cdef extern from "../src/c_code.h":
    string get_hello_world()

    cdef cppclass ExampleClass "ExampleClass":
        ExampleClass()
        long get_long()
        string name


# If you use a header file, you will need
# to add the complete definitions.
cdef extern from "../src/c_code.cpp":
    pass
