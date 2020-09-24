# module fx_lpng
SOURCE_DIR = $$PWD/pdfium/third_party

contains(QT_ARCH, arm) {
    SOURCES += \
    $$SOURCE_DIR/libpng16/arm/arm_init.c \
    $$SOURCE_DIR/libpng16/arm/filter_neon_intrinsics.c \
    $$SOURCE_DIR/libpng16/arm/palette_neon_intrinsics.c
    
    DEFINES += \
    PNG_ARM_NEON_OPT=2 \
    PNG_ARM_NEON_IMPLEMENTATION=1
}

PRIVATE_HEADERS += \
$$SOURCE_DIR/libpng16/png.h \
$$SOURCE_DIR/libpng16/pngconf.h \
$$SOURCE_DIR/libpng16/pngdebug.h \
$$SOURCE_DIR/libpng16/pnginfo.h \
$$SOURCE_DIR/libpng16/pnglibconf.h \
$$SOURCE_DIR/libpng16/pngprefix.h \
$$SOURCE_DIR/libpng16/pngpriv.h \
$$SOURCE_DIR/libpng16/pngstruct.h

SOURCES += \
$$SOURCE_DIR/libpng16/png.c \
$$SOURCE_DIR/libpng16/pngerror.c \
$$SOURCE_DIR/libpng16/pngget.c \
$$SOURCE_DIR/libpng16/pngmem.c \
$$SOURCE_DIR/libpng16/pngpread.c \
$$SOURCE_DIR/libpng16/pngread.c \
$$SOURCE_DIR/libpng16/pngrio.c \
$$SOURCE_DIR/libpng16/pngrtran.c \
$$SOURCE_DIR/libpng16/pngrutil.c \
$$SOURCE_DIR/libpng16/pngset.c \
$$SOURCE_DIR/libpng16/pngtrans.c \
$$SOURCE_DIR/libpng16/pngwio.c \
$$SOURCE_DIR/libpng16/pngwrite.c \
$$SOURCE_DIR/libpng16/pngwtran.c \
$$SOURCE_DIR/libpng16/pngwutil.c

