
SOURCE_DIR = $$PWD/pdfium

PRIVATE_HEADERS += \
        $$SOURCE_DIR/core/src/fpdftext/text_int.h \
        $$SOURCE_DIR/core/src/fpdftext/txtproc.h \
        $$SOURCE_DIR/core/src/fpdftext/unicodenormalizationdata.h \
        $$SOURCE_DIR/core/include/fpdftext/fpdf_text.h

SOURCES += \
        $$SOURCE_DIR/core/src/fpdftext/fpdf_text.cpp \
        $$SOURCE_DIR/core/src/fpdftext/fpdf_text_int.cpp \
        $$SOURCE_DIR/core/src/fpdftext/fpdf_text_search.cpp \
        $$SOURCE_DIR/core/src/fpdftext/unicodenormalization.cpp \
        $$SOURCE_DIR/core/src/fpdftext/unicodenormalizationdata.cpp

