from setuptools import setup, find_packages

setup(
    name="module2",
    version="1.0.0",
    packages=find_packages(),
    install_requires=[
        "moduleA @ git+ssh://git@github.com/Valpoli/moduleA.git@main",
        "moduleB @ git+ssh://git@github.com/Valpoli/moduleB.git@main",
    ]
)
