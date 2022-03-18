from setuptools import setup, find_packages


setup(
    name="pony",
    version="0.0.1",
    description="qnix system manipulation",
    author="Leo Qiao",
    author_email="qiaofeitong@hotmail.com",
    packages=find_packages(),
    install_requires=[
        "Click",
    ],
    entry_points = {
        "console_scripts": ["pony = src.app:main"]
    }
)
