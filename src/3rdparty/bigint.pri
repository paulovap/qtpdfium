# module bigint
SOURCE_DIR = $$PWD/pdfium/third_party

PRIVATE_HEADERS += \
$$SOURCE_DIR/bigint/BigInteger.hh \
$$SOURCE_DIR/bigint/BigIntegerLibrary.hh \
$$SOURCE_DIR/bigint/BigIntegerUtils.cc \
$$SOURCE_DIR/bigint/BigIntegerUtils.hh \
$$SOURCE_DIR/bigint/BigUnsigned.cc \
$$SOURCE_DIR/bigint/BigUnsigned.hh \
$$SOURCE_DIR/bigint/BigUnsignedInABase.cc \
$$SOURCE_DIR/bigint/BigUnsignedInABase.hh \
$$SOURCE_DIR/bigint/NumberlikeArray.hh

SOURCES += \
$$SOURCE_DIR/bigint/BigInteger.cc \
$$SOURCE_DIR/bigint/BigIntegerUtils.cc \
$$SOURCE_DIR/bigint/BigUnsigned.cc \
$$SOURCE_DIR/bigint/BigUnsignedInABase.cc


