import os
from setuptools import setup, Extension
from Cython.Build import cythonize


ext_path = os.path.abspath(
    os.path.normpath("./cython/interface.pyx")
)

ext_modules = [
    Extension(
        "cython_extension",
        [ext_path],
        language="c++",
    ),
]

setup(
    name="cython_extension",
    ext_modules=cythonize(ext_modules),
)
