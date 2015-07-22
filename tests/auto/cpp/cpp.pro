TARGET = tst_cpp

QT += core concurrent pdfium testlib
CONFIG += testcase c++11

INCLUDEPATH += ../../src/pdfium
VPATH += ../../../src/pdfium

SOURCES += \
    tst_cpp.cpp

DEFINES += "DATA=\\\"$$PWD/data\\\""
