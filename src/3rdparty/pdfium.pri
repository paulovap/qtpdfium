# module pdfium
SOURCE_DIR = $$PWD/pdfium

INCLUDEPATH += $$SOURCE_DIR

#if(QMAKE_HOST.arch, x86_64) {
#    DEFINES += "_FX_CPU_=_FX_X64_"
#} else {
#    DEFINES += "_FX_CPU_=_FX_X32_"
#}

PRIVATE_HEADERS += \
$$SOURCE_DIR/fpdfsdk/cba_annotiterator.h \
$$SOURCE_DIR/fpdfsdk/cfx_systemhandler.h \
$$SOURCE_DIR/fpdfsdk/cpdfsdk_annot.h \
$$SOURCE_DIR/fpdfsdk/cpdfsdk_annothandlermgr.h \
$$SOURCE_DIR/fpdfsdk/cpdfsdk_baannot.h \
$$SOURCE_DIR/fpdfsdk/cpdfsdk_baannothandler.h \
$$SOURCE_DIR/fpdfsdk/cpdfsdk_datetime.h \
$$SOURCE_DIR/fpdfsdk/cpdfsdk_formfillenvironment.h \
$$SOURCE_DIR/fpdfsdk/cpdfsdk_interform.h \
$$SOURCE_DIR/fpdfsdk/cpdfsdk_pageview.h \
$$SOURCE_DIR/fpdfsdk/cpdfsdk_widget.h \
$$SOURCE_DIR/fpdfsdk/cpdfsdk_widgethandler.h \
$$SOURCE_DIR/fpdfsdk/fsdk_actionhandler.h \
$$SOURCE_DIR/fpdfsdk/fsdk_pauseadapter.h \
$$SOURCE_DIR/fpdfsdk/pdfsdk_fieldaction.h \
$$SOURCE_DIR/public/fpdf_dataavail.h \
$$SOURCE_DIR/public/fpdf_doc.h \
$$SOURCE_DIR/public/fpdf_edit.h \
$$SOURCE_DIR/public/fpdf_ext.h \
$$SOURCE_DIR/public/fpdf_flatten.h \
$$SOURCE_DIR/public/fpdf_formfill.h \
$$SOURCE_DIR/public/fpdf_fwlevent.h \
$$SOURCE_DIR/public/fpdf_ppo.h \
$$SOURCE_DIR/public/fpdf_progressive.h \
$$SOURCE_DIR/public/fpdf_save.h \
$$SOURCE_DIR/public/fpdf_searchex.h \
$$SOURCE_DIR/public/fpdf_structtree.h \
$$SOURCE_DIR/public/fpdf_sysfontinfo.h \
$$SOURCE_DIR/public/fpdf_text.h \
$$SOURCE_DIR/public/fpdf_transformpage.h \
$$SOURCE_DIR/public/fpdfview.h \
$$SOURCE_DIR/fpdfsdk/cpdfsdk_annotiteration.h

SOURCES += \
$$SOURCE_DIR/fpdfsdk/cba_annotiterator.cpp \
$$SOURCE_DIR/fpdfsdk/cfx_systemhandler.cpp \
$$SOURCE_DIR/fpdfsdk/cpdfsdk_annot.cpp \
$$SOURCE_DIR/fpdfsdk/cpdfsdk_annothandlermgr.cpp \
$$SOURCE_DIR/fpdfsdk/cpdfsdk_baannot.cpp \
$$SOURCE_DIR/fpdfsdk/cpdfsdk_baannothandler.cpp \
$$SOURCE_DIR/fpdfsdk/cpdfsdk_datetime.cpp \
$$SOURCE_DIR/fpdfsdk/cpdfsdk_formfillenvironment.cpp \
$$SOURCE_DIR/fpdfsdk/cpdfsdk_interform.cpp \
$$SOURCE_DIR/fpdfsdk/cpdfsdk_pageview.cpp \
$$SOURCE_DIR/fpdfsdk/cpdfsdk_widget.cpp \
$$SOURCE_DIR/fpdfsdk/cpdfsdk_widgethandler.cpp \
$$SOURCE_DIR/fpdfsdk/fpdf_dataavail.cpp \
$$SOURCE_DIR/fpdfsdk/fpdf_ext.cpp \
$$SOURCE_DIR/fpdfsdk/fpdf_flatten.cpp \
$$SOURCE_DIR/fpdfsdk/fpdf_progressive.cpp \
$$SOURCE_DIR/fpdfsdk/fpdf_searchex.cpp \
$$SOURCE_DIR/fpdfsdk/fpdf_structtree.cpp \
$$SOURCE_DIR/fpdfsdk/fpdf_sysfontinfo.cpp \
$$SOURCE_DIR/fpdfsdk/fpdf_transformpage.cpp \
$$SOURCE_DIR/fpdfsdk/fpdfdoc.cpp \
$$SOURCE_DIR/fpdfsdk/fpdfeditimg.cpp \
$$SOURCE_DIR/fpdfsdk/fpdfeditpage.cpp \
$$SOURCE_DIR/fpdfsdk/fpdfformfill.cpp \
$$SOURCE_DIR/fpdfsdk/fpdfppo.cpp \
$$SOURCE_DIR/fpdfsdk/fpdfsave.cpp \
$$SOURCE_DIR/fpdfsdk/fpdftext.cpp \
$$SOURCE_DIR/fpdfsdk/fpdfview.cpp \
$$SOURCE_DIR/fpdfsdk/fsdk_actionhandler.cpp \
$$SOURCE_DIR/fpdfsdk/fsdk_pauseadapter.cpp \
$$SOURCE_DIR/fpdfsdk/pdfsdk_fieldaction.cpp \
$$SOURCE_DIR/fpdfsdk/cpdfsdk_annotiteration.cpp

include(fdrm.pri)
include(formfiller.pri)
include(fpdfapi.pri)
include(fpdfdoc.pri)
include(fpdftext.pri)
include(fxcodec.pri)
include(fxcrt.pri)
include(fxedit.pri)
include(fxge.pri)
include(javascript.pri)
include(pdfwindow.pri)
# include(fpdfxfa.pri)
# include(fxjs.pri)
# include(xfa.pri)

#third party
include(bigint.pri)
include(fx_freetype.pri)
include(fx_libopenjpeg.pri)
include(fx_zlib.pri)
include(fx_agg.pri)
include(fx_lcms2.pri)
include(fx_lpng.pri)
include(jpeg.pri)
