TARGET = QtPdfium
QT = core-private
CONFIG += warn_on strict_flags c++11
QMAKE_CFLAGS += -Wno-unused-parameter
QMAKE_CXXFLAGS += -Wno-unused-parameter
load(qt_module)

#QMAKE_DOCS = $$PWD/doc/qtleveldb.qdocconf
include($$PWD/../3rdparty/pdfium.pri)


PRIVATE_HEADERS += \
    $$PWD/qpdfiumglobal.h

SOURCES += \
    $$PWD/qpdfiumglobal.cpp
HEADERS += $$PUBLIC_HEADERS $$PRIVATE_HEADERS
