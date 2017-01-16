# module fx_zlib
SOURCE_DIR = $$PWD/pdfium/third_party

PRIVATE_HEADERS += \

SOURCES += \
$$SOURCE_DIR/zlib_v128/adler32.c \
$$SOURCE_DIR/zlib_v128/compress.c \
$$SOURCE_DIR/zlib_v128/crc32.c \
$$SOURCE_DIR/zlib_v128/deflate.c \
$$SOURCE_DIR/zlib_v128/gzclose.c \
$$SOURCE_DIR/zlib_v128/gzlib.c \
$$SOURCE_DIR/zlib_v128/gzread.c \
$$SOURCE_DIR/zlib_v128/gzwrite.c \
$$SOURCE_DIR/zlib_v128/infback.c \
$$SOURCE_DIR/zlib_v128/inffast.c \
$$SOURCE_DIR/zlib_v128/inflate.c \
$$SOURCE_DIR/zlib_v128/inftrees.c \
$$SOURCE_DIR/zlib_v128/trees.c \
$$SOURCE_DIR/zlib_v128/uncompr.c \
$$SOURCE_DIR/zlib_v128/zutil.c


