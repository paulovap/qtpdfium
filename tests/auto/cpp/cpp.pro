TARGET = tst_cpp

QT += core concurrent pdf testlib network
CONFIG += testcase c++11

INCLUDEPATH += ../../src/pdf
VPATH += ../../../src/pdf

SOURCES += \
    tst_cpp.cpp

DEFINES += "DATA=\\\"$$PWD/data\\\""

RESOURCES += \
    res.qrc
