# module fxjs
SOURCE_DIR = $$PWD/pdfium

PRIVATE_HEADERS += \
$$SOURCE_DIR/fxjs/cjs_event_context_stub.h \
$$SOURCE_DIR/fxjs/cjs_runtimestub.h \
$$SOURCE_DIR/fxjs/ijs_event_context.h \
$$SOURCE_DIR/fxjs/ijs_runtime.h

SOURCES += \
$$SOURCE_DIR/fxjs/cjs_event_context_stub.cpp \
$$SOURCE_DIR/fxjs/cjs_runtimestub.cpp \
$$SOURCE_DIR/fxjs/ijs_runtime.cpp

