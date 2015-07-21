
SOURCE_DIR = $$PWD/pdfium

PRIVATE_HEADERS += \
    $$SOURCE_DIR/core/include/fdrm/fx_crypt.h

SOURCES += \
    $$SOURCE_DIR/core/src/fdrm/crypto/fx_crypt.cpp \
    $$SOURCE_DIR/core/src/fdrm/crypto/fx_crypt_aes.cpp \
    $$SOURCE_DIR/core/src/fdrm/crypto/fx_crypt_sha.cpp
