# module fdrm
SOURCE_DIR = $$PWD/pdfium

PRIVATE_HEADERS += \
$$SOURCE_DIR/core/fdrm/fx_crypt.h

SOURCES += \
#$$SOURCE_DIR/core/fdrm/fx_crypt_unittest.cpp \
$$SOURCE_DIR/core/fdrm/fx_crypt_sha.cpp \
$$SOURCE_DIR/core/fdrm/fx_crypt.cpp \
$$SOURCE_DIR/core/fdrm/fx_crypt_aes.cpp


