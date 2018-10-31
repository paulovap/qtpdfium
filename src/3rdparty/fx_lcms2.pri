# module fx_lcms2
SOURCE_DIR = $$PWD/pdfium/third_party

PRIVATE_HEADERS += \
$$SOURCE_DIR/lcms/include/lcms2.h \
$$SOURCE_DIR/lcms/include/lcms2_plugin.h

SOURCES += \
$$SOURCE_DIR/lcms/src/cmscam02.c \
$$SOURCE_DIR/lcms/src/cmscgats.c \
$$SOURCE_DIR/lcms/src/cmscnvrt.c \
$$SOURCE_DIR/lcms/src/cmserr.c \
$$SOURCE_DIR/lcms/src/cmsgamma.c \
$$SOURCE_DIR/lcms/src/cmsgmt.c \
$$SOURCE_DIR/lcms/src/cmshalf.c \
$$SOURCE_DIR/lcms/src/cmsintrp.c \
$$SOURCE_DIR/lcms/src/cmsio0.c \
$$SOURCE_DIR/lcms/src/cmsio1.c \
$$SOURCE_DIR/lcms/src/cmslut.c \
$$SOURCE_DIR/lcms/src/cmsmd5.c \
$$SOURCE_DIR/lcms/src/cmsmtrx.c \
$$SOURCE_DIR/lcms/src/cmsnamed.c \
$$SOURCE_DIR/lcms/src/cmsopt.c \
$$SOURCE_DIR/lcms/src/cmspack.c \
$$SOURCE_DIR/lcms/src/cmspcs.c \
$$SOURCE_DIR/lcms/src/cmsplugin.c \
$$SOURCE_DIR/lcms/src/cmsps2.c \
$$SOURCE_DIR/lcms/src/cmssamp.c \
$$SOURCE_DIR/lcms/src/cmssm.c \
$$SOURCE_DIR/lcms/src/cmstypes.c \
$$SOURCE_DIR/lcms/src/cmsvirt.c \
$$SOURCE_DIR/lcms/src/cmswtpnt.c \
$$SOURCE_DIR/lcms/src/cmsxform.c \
$$SOURCE_DIR/lcms/src/cmsalpha.c


