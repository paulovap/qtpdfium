# module fx_freetype
SOURCE_DIR = $$PWD/pdfium/third_party

DEFINES += FT2_BUILD_LIBRARY
INCLUDEPATH += $$PWD/pdfium/third_party/freetype/include \
    $$PWD/pdfium/third_party/freetype/include/freetype

PRIVATE_HEADERS += \
$$SOURCE_DIR/freetype/include/freetype/freetype.h \
$$SOURCE_DIR/freetype/include/freetype/ftmm.h \
$$SOURCE_DIR/freetype/include/freetype/ftotval.h \
$$SOURCE_DIR/freetype/include/freetype/ftoutln.h \
$$SOURCE_DIR/freetype/include/freetype/internal/ftobjs.h \
$$SOURCE_DIR/freetype/include/freetype/internal/ftstream.h \
$$SOURCE_DIR/freetype/include/freetype/internal/tttypes.h \
$$SOURCE_DIR/freetype/include/freetype/tttables.h \
$$SOURCE_DIR/freetype/include/ft2build.h \
$$SOURCE_DIR/freetype/src/base/ftbase.h \
$$SOURCE_DIR/freetype/src/cff/cffobjs.h \
$$SOURCE_DIR/freetype/src/cff/cfftypes.h

SOURCES += \
$$SOURCE_DIR/freetype/src/base/ftbase.c \
$$SOURCE_DIR/freetype/src/base/ftbitmap.c \
$$SOURCE_DIR/freetype/src/base/ftglyph.c \
$$SOURCE_DIR/freetype/src/base/ftinit.c \
$$SOURCE_DIR/freetype/src/base/ftlcdfil.c \
$$SOURCE_DIR/freetype/src/base/ftmm.c \
$$SOURCE_DIR/freetype/src/base/ftsystem.c \
$$SOURCE_DIR/freetype/src/cff/cff.c \
$$SOURCE_DIR/freetype/src/cid/type1cid.c \
$$SOURCE_DIR/freetype/src/psaux/psaux.c \
$$SOURCE_DIR/freetype/src/pshinter/pshinter.c \
$$SOURCE_DIR/freetype/src/psnames/psmodule.c \
$$SOURCE_DIR/freetype/src/raster/raster.c \
$$SOURCE_DIR/freetype/src/sfnt/sfnt.c \
$$SOURCE_DIR/freetype/src/smooth/smooth.c \
$$SOURCE_DIR/freetype/src/truetype/truetype.c \
$$SOURCE_DIR/freetype/src/type1/type1.c


