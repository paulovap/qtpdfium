TEMPLATE = app
TARGET = vaya
QT += concurrent qml quick pdfium
CONFIG += c++11

macx: CONFIG+=app_bundle

RESOURCES += qml.qrc

SOURCES += \
    main.cpp


