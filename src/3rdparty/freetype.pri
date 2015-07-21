DEFINES += __QT__
DEFINES += FT2_BUILD_LIBRARY
INCLUDEPATH += $$SOURCE_DIR/third_party/freetype/include

SOURCE_DIR = $$PWD/pdfium

PRIVATE_HEADERS += \
        $$SOURCE_DIR/third_party/freetype/include/freetype.h \
        $$SOURCE_DIR/third_party/freetype/include/ft2build.h \
        $$SOURCE_DIR/third_party/freetype/include/ftmm.h \
        $$SOURCE_DIR/third_party/freetype/include/ftotval.h \
        $$SOURCE_DIR/third_party/freetype/include/ftoutln.h \
        $$SOURCE_DIR/third_party/freetype/include/tttables.h \
        $$SOURCE_DIR/third_party/freetype/include/internal/ftobjs.h \
        $$SOURCE_DIR/third_party/freetype/include/internal/ftstream.h \
        $$SOURCE_DIR/third_party/freetype/include/internal/tttypes.h \
        $$SOURCE_DIR/third_party/freetype/src/cff/cffobjs.h \
        $$SOURCE_DIR/third_party/freetype/src/cff/cfftypes.h
SOURCES += \
        $$SOURCE_DIR/third_party/freetype/src/cff/cff.c \
        $$SOURCE_DIR/third_party/freetype/src/base/ftbase.c \
        $$SOURCE_DIR/third_party/freetype/src/base/ftbitmap.c \
        $$SOURCE_DIR/third_party/freetype/src/base/ftglyph.c \
        $$SOURCE_DIR/third_party/freetype/src/base/ftinit.c \
        $$SOURCE_DIR/third_party/freetype/src/base/ftlcdfil.c \
        $$SOURCE_DIR/third_party/freetype/src/base/ftmm.c \
        $$SOURCE_DIR/third_party/freetype/src/base/ftsystem.c \
        $$SOURCE_DIR/third_party/freetype/src/psaux/psaux.c \
        $$SOURCE_DIR/third_party/freetype/src/pshinter/pshinter.c \
        $$SOURCE_DIR/third_party/freetype/src/psnames/psmodule.c \
        $$SOURCE_DIR/third_party/freetype/src/raster/raster.c \
        $$SOURCE_DIR/third_party/freetype/src/sfnt/sfnt.c \
        $$SOURCE_DIR/third_party/freetype/src/smooth/smooth.c \
        $$SOURCE_DIR/third_party/freetype/src/truetype/truetype.c \
        $$SOURCE_DIR/third_party/freetype/src/type1/type1.c \
        $$SOURCE_DIR/third_party/freetype/src/cid/type1cid.c
