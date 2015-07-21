SOURCE_DIR = $$PWD/pdfium

PRIVATE_HEADERS += \
    $$SOURCE_DIR/third_party/libjpeg/cderror.h \
    $$SOURCE_DIR/third_party/libjpeg/cdjpeg.h \
    $$SOURCE_DIR/third_party/libjpeg/jchuff.h \
    $$SOURCE_DIR/third_party/libjpeg/jconfig.h \
    $$SOURCE_DIR/third_party/libjpeg/jdct.h \
    $$SOURCE_DIR/third_party/libjpeg/jdhuff.h \
    $$SOURCE_DIR/third_party/libjpeg/jerror.h \
    $$SOURCE_DIR/third_party/libjpeg/jinclude.h \
    $$SOURCE_DIR/third_party/libjpeg/jmemsys.h \
    $$SOURCE_DIR/third_party/libjpeg/jmorecfg.h \
    $$SOURCE_DIR/third_party/libjpeg/jpegint.h \
    $$SOURCE_DIR/third_party/libjpeg/jpeglib.h \
    $$SOURCE_DIR/third_party/libjpeg/jversion.h \
    $$SOURCE_DIR/third_party/libjpeg/transupp.h

SOURCES += \
    $$SOURCE_DIR/third_party/libjpeg/fpdfapi_jcapimin.c \
    $$SOURCE_DIR/third_party/libjpeg/fpdfapi_jcapistd.c \
    $$SOURCE_DIR/third_party/libjpeg/fpdfapi_jccoefct.c \
    $$SOURCE_DIR/third_party/libjpeg/fpdfapi_jccolor.c \
    $$SOURCE_DIR/third_party/libjpeg/fpdfapi_jcdctmgr.c \
    $$SOURCE_DIR/third_party/libjpeg/fpdfapi_jchuff.c \
    $$SOURCE_DIR/third_party/libjpeg/fpdfapi_jcinit.c \
    $$SOURCE_DIR/third_party/libjpeg/fpdfapi_jcmainct.c \
    $$SOURCE_DIR/third_party/libjpeg/fpdfapi_jcmarker.c \
    $$SOURCE_DIR/third_party/libjpeg/fpdfapi_jcmaster.c \
    $$SOURCE_DIR/third_party/libjpeg/fpdfapi_jcomapi.c \
    $$SOURCE_DIR/third_party/libjpeg/fpdfapi_jcparam.c \
    $$SOURCE_DIR/third_party/libjpeg/fpdfapi_jcphuff.c \
    $$SOURCE_DIR/third_party/libjpeg/fpdfapi_jcprepct.c \
    $$SOURCE_DIR/third_party/libjpeg/fpdfapi_jcsample.c \
    $$SOURCE_DIR/third_party/libjpeg/fpdfapi_jctrans.c \
    $$SOURCE_DIR/third_party/libjpeg/fpdfapi_jdapimin.c \
    $$SOURCE_DIR/third_party/libjpeg/fpdfapi_jdapistd.c \
    $$SOURCE_DIR/third_party/libjpeg/fpdfapi_jdcoefct.c \
    $$SOURCE_DIR/third_party/libjpeg/fpdfapi_jdcolor.c \
    $$SOURCE_DIR/third_party/libjpeg/fpdfapi_jddctmgr.c \
    $$SOURCE_DIR/third_party/libjpeg/fpdfapi_jdhuff.c \
    $$SOURCE_DIR/third_party/libjpeg/fpdfapi_jdinput.c \
    $$SOURCE_DIR/third_party/libjpeg/fpdfapi_jdmainct.c \
    $$SOURCE_DIR/third_party/libjpeg/fpdfapi_jdmarker.c \
    $$SOURCE_DIR/third_party/libjpeg/fpdfapi_jdmaster.c \
    $$SOURCE_DIR/third_party/libjpeg/fpdfapi_jdmerge.c \
    $$SOURCE_DIR/third_party/libjpeg/fpdfapi_jdphuff.c \
    $$SOURCE_DIR/third_party/libjpeg/fpdfapi_jdpostct.c \
    $$SOURCE_DIR/third_party/libjpeg/fpdfapi_jdsample.c \
    $$SOURCE_DIR/third_party/libjpeg/fpdfapi_jdtrans.c \
    $$SOURCE_DIR/third_party/libjpeg/fpdfapi_jerror.c \
    $$SOURCE_DIR/third_party/libjpeg/fpdfapi_jfdctfst.c \
    $$SOURCE_DIR/third_party/libjpeg/fpdfapi_jfdctint.c \
    $$SOURCE_DIR/third_party/libjpeg/fpdfapi_jidctfst.c \
    $$SOURCE_DIR/third_party/libjpeg/fpdfapi_jidctint.c \
    $$SOURCE_DIR/third_party/libjpeg/fpdfapi_jidctred.c \
    $$SOURCE_DIR/third_party/libjpeg/fpdfapi_jmemmgr.c \
    $$SOURCE_DIR/third_party/libjpeg/fpdfapi_jmemnobs.c \
    $$SOURCE_DIR/third_party/libjpeg/fpdfapi_jutils.c

