# module fpdftext
SOURCE_DIR = $$PWD/pdfium

PRIVATE_HEADERS += \
$$SOURCE_DIR/core/fpdftext/cpdf_textpage.h \
$$SOURCE_DIR/core/fpdftext/cpdf_textpagefind.h \
$$SOURCE_DIR/core/fpdftext/unicodenormalizationdata.h \
$$SOURCE_DIR/core/fpdftext/cpdf_linkextract.h

SOURCES += \
$$SOURCE_DIR/core/fpdftext/unicodenormalizationdata.cpp \
#$$SOURCE_DIR/core/fpdftext/cpdf_linkextract_unittest.cpp \
$$SOURCE_DIR/core/fpdftext/cpdf_textpagefind.cpp \
$$SOURCE_DIR/core/fpdftext/cpdf_textpage.cpp \
$$SOURCE_DIR/core/fpdftext/cpdf_linkextract.cpp


