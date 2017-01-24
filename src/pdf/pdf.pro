TARGET = QtPdf

DEFINES += __QT__ \
    OPJ_STATIC \
    PNG_PREFIX \
    PNG_USE_READ_MACROS

# This is to prevent an undefined reference of qt_version_tag
# when on Linux, x86 architecture and the GNU tools.
DEFINES += QT_NO_VERSION_TAGGING

QT = core-private core gui
CONFIG += warn_on strict_flags c++11
load(qt_module)

#QMAKE_DOCS = $$PWD/doc/qtpdf.qdocconf
include($$PWD/../3rdparty/pdfium.pri)


PRIVATE_HEADERS += \
    $$PWD/qpdfglobal.h

PUBLIC_HEADERS += \
    $$PWD/qpdf.h \
    $$PWD/qpdfpage.h
SOURCES += \
    $$PWD/qpdfglobal.cpp \
    $$PWD/qpdf.cpp \
    $$PWD/qpdfpage.cpp

HEADERS += $$PUBLIC_HEADERS $$PRIVATE_HEADERS

