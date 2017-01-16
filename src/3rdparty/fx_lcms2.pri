# module fx_lcms2
SOURCE_DIR = $$PWD/pdfium/third_party

PRIVATE_HEADERS += \
$$SOURCE_DIR/lcms2-2.6/include/lcms2.h \
$$SOURCE_DIR/lcms2-2.6/include/lcms2_plugin.h

SOURCES += \
$$SOURCE_DIR/lcms2-2.6/src/cmscam02.c \
$$SOURCE_DIR/lcms2-2.6/src/cmscgats.c \
$$SOURCE_DIR/lcms2-2.6/src/cmscnvrt.c \
$$SOURCE_DIR/lcms2-2.6/src/cmserr.c \
$$SOURCE_DIR/lcms2-2.6/src/cmsgamma.c \
$$SOURCE_DIR/lcms2-2.6/src/cmsgmt.c \
$$SOURCE_DIR/lcms2-2.6/src/cmshalf.c \
$$SOURCE_DIR/lcms2-2.6/src/cmsintrp.c \
$$SOURCE_DIR/lcms2-2.6/src/cmsio0.c \
$$SOURCE_DIR/lcms2-2.6/src/cmsio1.c \
$$SOURCE_DIR/lcms2-2.6/src/cmslut.c \
$$SOURCE_DIR/lcms2-2.6/src/cmsmd5.c \
$$SOURCE_DIR/lcms2-2.6/src/cmsmtrx.c \
$$SOURCE_DIR/lcms2-2.6/src/cmsnamed.c \
$$SOURCE_DIR/lcms2-2.6/src/cmsopt.c \
$$SOURCE_DIR/lcms2-2.6/src/cmspack.c \
$$SOURCE_DIR/lcms2-2.6/src/cmspcs.c \
$$SOURCE_DIR/lcms2-2.6/src/cmsplugin.c \
$$SOURCE_DIR/lcms2-2.6/src/cmsps2.c \
$$SOURCE_DIR/lcms2-2.6/src/cmssamp.c \
$$SOURCE_DIR/lcms2-2.6/src/cmssm.c \
$$SOURCE_DIR/lcms2-2.6/src/cmstypes.c \
$$SOURCE_DIR/lcms2-2.6/src/cmsvirt.c \
$$SOURCE_DIR/lcms2-2.6/src/cmswtpnt.c \
$$SOURCE_DIR/lcms2-2.6/src/cmsxform.c


