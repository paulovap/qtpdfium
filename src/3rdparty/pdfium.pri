
SOURCE_DIR = $$PWD/pdfium

PRIVATE_HEADERS += \
        $$SOURCE_DIR/fpdfsdk/src/resource.h \
        $$SOURCE_DIR/public/fpdf_dataavail.h \
        $$SOURCE_DIR/public/fpdf_doc.h \
        $$SOURCE_DIR/public/fpdf_edit.h \
        $$SOURCE_DIR/public/fpdf_ext.h \
        $$SOURCE_DIR/public/fpdf_flatten.h \
        $$SOURCE_DIR/public/fpdf_fwlevent.h \
        $$SOURCE_DIR/public/fpdf_ppo.h \
        $$SOURCE_DIR/public/fpdf_progressive.h \
        $$SOURCE_DIR/public/fpdf_save.h \
        $$SOURCE_DIR/public/fpdf_searchex.h \
        $$SOURCE_DIR/public/fpdf_text.h \
        $$SOURCE_DIR/public/fpdf_transformpage.h \
        $$SOURCE_DIR/public/fpdfview.h
SOURCES += \
    $$SOURCE_DIR/fpdfsdk/src/fpdfdoc.cpp \
        $$SOURCE_DIR/fpdfsdk/src/fpdfeditimg.cpp \
        $$SOURCE_DIR/fpdfsdk/src/fpdfeditpage.cpp \
        $$SOURCE_DIR/fpdfsdk/src/fpdfppo.cpp \
        $$SOURCE_DIR/fpdfsdk/src/fpdfsave.cpp \
        $$SOURCE_DIR/fpdfsdk/src/fpdftext.cpp \
        $$SOURCE_DIR/fpdfsdk/src/fpdfview.cpp \
        $$SOURCE_DIR/fpdfsdk/src/fpdf_dataavail.cpp \
        $$SOURCE_DIR/fpdfsdk/src/fpdf_ext.cpp \
        $$SOURCE_DIR/fpdfsdk/src/fpdf_flatten.cpp \
        $$SOURCE_DIR/fpdfsdk/src/fpdf_progressive.cpp \
        $$SOURCE_DIR/fpdfsdk/src/fpdf_searchex.cpp \
        $$SOURCE_DIR/fpdfsdk/src/fpdf_transformpage.cpp \
        $$SOURCE_DIR/fpdfsdk/src/fsdk_rendercontext.cpp

include(dfrm.pri)
include(fxcrt.pri)
include(fpdftext.pri)
include(fxcodec.pri)
include(fxedit.pri)
include(fxge.pri)
include(freetype.pri)
include(fx_agg.pri)
include(fx_lcms2.pri)
include(fx_zlib.pri)
include(fx_libjpeg.pri)
include(fx_libopenjpeg.pri)
include(fpdfapi.pri)
include(fpdfdoc.pri)
