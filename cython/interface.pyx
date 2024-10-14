from libcpp.string cimport string
cimport extension


def get_hello_world():
    """ Return the character array from C as bytes.
    """
    # you can use the same function name for the python 
    # function because we are importing the extension
    # file directly instead of importing from it
    return extension.get_hello_world()


def hello_world_as_python_string():
    """ Return the character array from C as a python string.
    """
    # the return is converted to python bytes
    hello_world_bytes = extension.get_hello_world()

    # any needed data conversion can happen before returning the value
    hello_world_string = hello_world_bytes.decode("utf-8")
    return hello_world_string


cdef class ExampleClass:
    """ Example of a c++ class python wrapper.
    """
    # defined as a private member of the class
    cdef extension.ExampleClass c_example_class
    
    def __init__(self):
        # initialize the c++ class object
        self.c_example_class = extension.ExampleClass()

    def get_long(self):
        # return the result from the c++ class
        return self.c_example_class.get_long()

    @property
    def name(self):
        return self.c_example_class.name

    @name.setter
    def name(self, name):
        # convert python string to bytes 
        bytes = name.encode("utf-8")

        # assign the bytes to a c++ string variable 
        cdef string new_name = bytes

        # assign pass the converted value to the c++ class
        self.c_example_class.name = new_name