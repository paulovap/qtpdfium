# module fxedit
SOURCE_DIR = $$PWD/pdfium

PRIVATE_HEADERS += \
$$SOURCE_DIR/fpdfsdk/fxedit/fx_edit.h \
$$SOURCE_DIR/fpdfsdk/fxedit/fxet_edit.h \
$$SOURCE_DIR/fpdfsdk/fxedit/fxet_list.h

SOURCES += \
$$SOURCE_DIR/fpdfsdk/fxedit/fxet_ap.cpp \
$$SOURCE_DIR/fpdfsdk/fxedit/fxet_edit.cpp \
$$SOURCE_DIR/fpdfsdk/fxedit/fxet_list.cpp


