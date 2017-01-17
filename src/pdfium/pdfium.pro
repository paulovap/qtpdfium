TARGET = QtPdfium

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

#QMAKE_DOCS = $$PWD/doc/qtpdfium.qdocconf
include($$PWD/../3rdparty/pdfium.pri)


PRIVATE_HEADERS += \
    $$PWD/qpdfiumglobal.h

PUBLIC_HEADERS += \
    $$PWD/qpdfium.h \
    $$PWD/qpdfiumpage.h
SOURCES += \
    $$PWD/qpdfiumglobal.cpp \
    $$PWD/qpdfium.cpp \
    $$PWD/qpdfiumpage.cpp

HEADERS += $$PUBLIC_HEADERS $$PRIVATE_HEADERS

