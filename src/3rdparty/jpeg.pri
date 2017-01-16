# module jpeg
SOURCE_DIR = $$PWD/pdfium/third_party

PRIVATE_HEADERS += \
$$SOURCE_DIR/libjpeg/cderror.h \
$$SOURCE_DIR/libjpeg/cdjpeg.h \
$$SOURCE_DIR/libjpeg/jchuff.h \
$$SOURCE_DIR/libjpeg/jconfig.h \
$$SOURCE_DIR/libjpeg/jdct.h \
$$SOURCE_DIR/libjpeg/jdhuff.h \
$$SOURCE_DIR/libjpeg/jerror.h \
$$SOURCE_DIR/libjpeg/jinclude.h \
$$SOURCE_DIR/libjpeg/jmemsys.h \
$$SOURCE_DIR/libjpeg/jmorecfg.h \
$$SOURCE_DIR/libjpeg/jpegint.h \
$$SOURCE_DIR/libjpeg/jpeglib.h \
$$SOURCE_DIR/libjpeg/jversion.h \
$$SOURCE_DIR/libjpeg/transupp.h

SOURCES += \
$$SOURCE_DIR/libjpeg/fpdfapi_jcapimin.c \
$$SOURCE_DIR/libjpeg/fpdfapi_jcapistd.c \
$$SOURCE_DIR/libjpeg/fpdfapi_jccoefct.c \
$$SOURCE_DIR/libjpeg/fpdfapi_jccolor.c \
$$SOURCE_DIR/libjpeg/fpdfapi_jcdctmgr.c \
$$SOURCE_DIR/libjpeg/fpdfapi_jchuff.c \
$$SOURCE_DIR/libjpeg/fpdfapi_jcinit.c \
$$SOURCE_DIR/libjpeg/fpdfapi_jcmainct.c \
$$SOURCE_DIR/libjpeg/fpdfapi_jcmarker.c \
$$SOURCE_DIR/libjpeg/fpdfapi_jcmaster.c \
$$SOURCE_DIR/libjpeg/fpdfapi_jcomapi.c \
$$SOURCE_DIR/libjpeg/fpdfapi_jcparam.c \
$$SOURCE_DIR/libjpeg/fpdfapi_jcphuff.c \
$$SOURCE_DIR/libjpeg/fpdfapi_jcprepct.c \
$$SOURCE_DIR/libjpeg/fpdfapi_jcsample.c \
$$SOURCE_DIR/libjpeg/fpdfapi_jctrans.c \
$$SOURCE_DIR/libjpeg/fpdfapi_jdapimin.c \
$$SOURCE_DIR/libjpeg/fpdfapi_jdapistd.c \
$$SOURCE_DIR/libjpeg/fpdfapi_jdcoefct.c \
$$SOURCE_DIR/libjpeg/fpdfapi_jdcolor.c \
$$SOURCE_DIR/libjpeg/fpdfapi_jddctmgr.c \
$$SOURCE_DIR/libjpeg/fpdfapi_jdhuff.c \
$$SOURCE_DIR/libjpeg/fpdfapi_jdinput.c \
$$SOURCE_DIR/libjpeg/fpdfapi_jdmainct.c \
$$SOURCE_DIR/libjpeg/fpdfapi_jdmarker.c \
$$SOURCE_DIR/libjpeg/fpdfapi_jdmaster.c \
$$SOURCE_DIR/libjpeg/fpdfapi_jdmerge.c \
$$SOURCE_DIR/libjpeg/fpdfapi_jdphuff.c \
$$SOURCE_DIR/libjpeg/fpdfapi_jdpostct.c \
$$SOURCE_DIR/libjpeg/fpdfapi_jdsample.c \
$$SOURCE_DIR/libjpeg/fpdfapi_jdtrans.c \
$$SOURCE_DIR/libjpeg/fpdfapi_jerror.c \
$$SOURCE_DIR/libjpeg/fpdfapi_jfdctfst.c \
$$SOURCE_DIR/libjpeg/fpdfapi_jfdctint.c \
$$SOURCE_DIR/libjpeg/fpdfapi_jidctfst.c \
$$SOURCE_DIR/libjpeg/fpdfapi_jidctint.c \
$$SOURCE_DIR/libjpeg/fpdfapi_jidctred.c \
$$SOURCE_DIR/libjpeg/fpdfapi_jmemmgr.c \
$$SOURCE_DIR/libjpeg/fpdfapi_jmemnobs.c \
$$SOURCE_DIR/libjpeg/fpdfapi_jutils.c


