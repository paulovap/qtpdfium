TEMPLATE = app
TARGET = pdf_reader
QT += concurrent qml quick pdfium
CONFIG += c++11

macx: CONFIG+=app_bundle

RESOURCES += qml.qrc

SOURCES += \
    main.cpp

target.path = $$[QT_INSTALL_EXAMPLES]/pdfium/viewer-qml
INSTALLS += target


