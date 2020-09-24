# module pdfium
SOURCE_DIR = $$PWD/pdfium

INCLUDEPATH += $$SOURCE_DIR

DEFINES += USE_SYSTEM_FREETYPE DEFINE_PS_TABLES_DATA USE_SYSTEM_ICUUC USE_SYSTEM_LIBJPEG USE_SYSTEM_ZLIB
CONFIG += link_pkgconfig
PKGCONFIG += icu-uc freetype2 zlib libjpeg

#if(QMAKE_HOST.arch, x86_64) {
#    DEFINES += "_FX_CPU_=_FX_X64_"
#} else {
#    DEFINES += "_FX_CPU_=_FX_X32_"
#}

PRIVATE_HEADERS += \
$$SOURCE_DIR/fpdfsdk/cpdfsdk_baannot.h \
$$SOURCE_DIR/fpdfsdk/cfx_systemhandler.h \
$$SOURCE_DIR/fpdfsdk/cpdfsdk_formfillenvironment.h \
$$SOURCE_DIR/fpdfsdk/cpdfsdk_annothandlermgr.h \
$$SOURCE_DIR/fpdfsdk/cpdf_annotcontext.h \
$$SOURCE_DIR/fpdfsdk/cpdfsdk_interactiveform.h \
$$SOURCE_DIR/fpdfsdk/cpdfsdk_helpers.h \
$$SOURCE_DIR/fpdfsdk/cpdfsdk_annot.h \
$$SOURCE_DIR/fpdfsdk/cpdfsdk_baannothandler.h \
$$SOURCE_DIR/fpdfsdk/cpdfsdk_widget.h \
$$SOURCE_DIR/fpdfsdk/cpdfsdk_annotiterator.h \
$$SOURCE_DIR/fpdfsdk/fpdf_view_c_api_test.h \
$$SOURCE_DIR/fpdfsdk/cpdfsdk_fieldaction.h \
$$SOURCE_DIR/fpdfsdk/cpdfsdk_annotiteration.h \
$$SOURCE_DIR/fpdfsdk/cpdfsdk_common.h \
$$SOURCE_DIR/fpdfsdk/cpdfsdk_actionhandler.h \
#$$SOURCE_DIR/fpdfsdk/cpdfsdk_xfawidgethandler.h \
$$SOURCE_DIR/fpdfsdk/cpdfsdk_pageview.h \
$$SOURCE_DIR/fpdfsdk/ipdfsdk_pauseadapter.h \
#$$SOURCE_DIR/fpdfsdk/cpdfsdk_xfawidget.h \
$$SOURCE_DIR/fpdfsdk/cpdfsdk_widgethandler.h \
$$SOURCE_DIR/fpdfsdk/cpdfsdk_filewriteadapter.h \
$$SOURCE_DIR/fpdfsdk/cpdfsdk_customaccess.h \
$$SOURCE_DIR/fpdfsdk/ipdfsdk_annothandler.h \
$$SOURCE_DIR/public/fpdf_dataavail.h \
$$SOURCE_DIR/public/fpdf_flatten.h \
$$SOURCE_DIR/public/fpdf_formfill.h \
$$SOURCE_DIR/public/fpdf_ext.h \
$$SOURCE_DIR/public/fpdf_progressive.h \
$$SOURCE_DIR/public/fpdf_structtree.h \
$$SOURCE_DIR/public/fpdf_text.h \
$$SOURCE_DIR/public/fpdf_attachment.h \
$$SOURCE_DIR/public/fpdf_edit.h \
$$SOURCE_DIR/public/fpdf_transformpage.h \
$$SOURCE_DIR/public/fpdf_sysfontinfo.h \
$$SOURCE_DIR/public/fpdf_save.h \
$$SOURCE_DIR/public/fpdf_fwlevent.h \
$$SOURCE_DIR/public/fpdf_searchex.h \
$$SOURCE_DIR/public/fpdfview.h \
$$SOURCE_DIR/public/fpdf_doc.h \
$$SOURCE_DIR/public/fpdf_catalog.h \
$$SOURCE_DIR/public/fpdf_annot.h \
$$SOURCE_DIR/public/fpdf_ppo.h \
$$SOURCE_DIR/public/cpp/fpdf_scopers.h \
$$SOURCE_DIR/public/cpp/fpdf_deleters.h

SOURCES += \
#$$SOURCE_DIR/fpdfsdk/fpdf_doc_unittest.cpp \
$$SOURCE_DIR/fpdfsdk/fpdf_sysfontinfo.cpp \
#$$SOURCE_DIR/fpdfsdk/fpdf_annot_embeddertest.cpp \
$$SOURCE_DIR/fpdfsdk/fpdf_save.cpp \
$$SOURCE_DIR/fpdfsdk/cpdfsdk_pageview.cpp \
$$SOURCE_DIR/fpdfsdk/cpdfsdk_actionhandler.cpp \
$$SOURCE_DIR/fpdfsdk/cpdfsdk_interactiveform.cpp \
$$SOURCE_DIR/fpdfsdk/cpdfsdk_helpers.cpp \
#$$SOURCE_DIR/fpdfsdk/fpdf_structtree_embeddertest.cpp \
$$SOURCE_DIR/fpdfsdk/cfx_systemhandler.cpp \
$$SOURCE_DIR/fpdfsdk/cpdfsdk_annotiterator.cpp \
#$$SOURCE_DIR/fpdfsdk/fpdf_ppo_embeddertest.cpp \
$$SOURCE_DIR/fpdfsdk/ipdfsdk_pauseadapter.cpp \
#$$SOURCE_DIR/fpdfsdk/fpdf_editimg_unittest.cpp \
#$$SOURCE_DIR/fpdfsdk/fpdf_dataavail_embeddertest.cpp \
$$SOURCE_DIR/fpdfsdk/fpdf_editpage.cpp \
#$$SOURCE_DIR/fpdfsdk/fpdf_flatten_embeddertest.cpp \
$$SOURCE_DIR/fpdfsdk/cpdfsdk_customaccess.cpp \
$$SOURCE_DIR/fpdfsdk/cpdfsdk_widgethandler.cpp \
$$SOURCE_DIR/fpdfsdk/fpdf_structtree.cpp \
$$SOURCE_DIR/fpdfsdk/fpdf_catalog.cpp \
$$SOURCE_DIR/fpdfsdk/fpdf_doc.cpp \
$$SOURCE_DIR/fpdfsdk/fpdf_view.cpp \
$$SOURCE_DIR/fpdfsdk/fpdf_ext.cpp \
$$SOURCE_DIR/fpdfsdk/cpdfsdk_baannot.cpp \
$$SOURCE_DIR/fpdfsdk/cpdfsdk_annothandlermgr.cpp \
#$$SOURCE_DIR/fpdfsdk/fpdf_catalog_unittest.cpp \
$$SOURCE_DIR/fpdfsdk/cpdf_annotcontext.cpp \
#$$SOURCE_DIR/fpdfsdk/fpdf_transformpage_embeddertest.cpp \
#$$SOURCE_DIR/fpdfsdk/fpdf_doc_embeddertest.cpp \
#$$SOURCE_DIR/fpdfsdk/fpdf_edit_unittest.cpp \
$$SOURCE_DIR/fpdfsdk/cpdfsdk_widget.cpp \
$$SOURCE_DIR/fpdfsdk/fpdf_searchex.cpp \
$$SOURCE_DIR/fpdfsdk/cpdfsdk_formfillenvironment.cpp \
#$$SOURCE_DIR/fpdfsdk/cpdfsdk_xfawidget.cpp \
#$$SOURCE_DIR/fpdfsdk/fpdf_text_embeddertest.cpp \
#$$SOURCE_DIR/fpdfsdk/cpdfsdk_xfawidgethandler.cpp \
$$SOURCE_DIR/fpdfsdk/fpdf_transformpage.cpp \
$$SOURCE_DIR/fpdfsdk/cpdfsdk_annot.cpp \
$$SOURCE_DIR/fpdfsdk/cpdfsdk_fieldaction.cpp \
#$$SOURCE_DIR/fpdfsdk/fpdf_edit_embeddertest.cpp \
#$$SOURCE_DIR/fpdfsdk/fpdf_formfill_embeddertest.cpp \
#$$SOURCE_DIR/fpdfsdk/fpdf_ext_embeddertest.cpp \
$$SOURCE_DIR/fpdfsdk/fpdf_editpath.cpp \
#$$SOURCE_DIR/fpdfsdk/fpdf_attachment_embeddertest.cpp \
$$SOURCE_DIR/fpdfsdk/cpdfsdk_baannothandler.cpp \
$$SOURCE_DIR/fpdfsdk/fpdf_attachment.cpp \
$$SOURCE_DIR/fpdfsdk/fpdf_flatten.cpp \
$$SOURCE_DIR/fpdfsdk/fpdf_editimg.cpp \
#$$SOURCE_DIR/fpdfsdk/cpdfsdk_annotiterator_embeddertest.cpp \
#$$SOURCE_DIR/fpdfsdk/fpdf_save_embeddertest.cpp \
$$SOURCE_DIR/fpdfsdk/fpdf_edittext.cpp \
$$SOURCE_DIR/fpdfsdk/fpdf_dataavail.cpp \
$$SOURCE_DIR/fpdfsdk/fpdf_formfill.cpp \
$$SOURCE_DIR/fpdfsdk/fpdf_text.cpp \
$$SOURCE_DIR/fpdfsdk/fpdf_annot.cpp \
#$$SOURCE_DIR/fpdfsdk/fpdf_editpath_embeddertest.cpp \
$$SOURCE_DIR/fpdfsdk/fpdf_ppo.cpp \
#$$SOURCE_DIR/fpdfsdk/fpdf_view_embeddertest.cpp \
$$SOURCE_DIR/fpdfsdk/cpdfsdk_filewriteadapter.cpp \
$$SOURCE_DIR/fpdfsdk/cpdfsdk_annotiteration.cpp \
$$SOURCE_DIR/fpdfsdk/fpdf_progressive.cpp

include(fdrm.pri)
include(formfiller.pri)
include(fpdfapi.pri)
include(fpdfdoc.pri)
include(fpdftext.pri)
include(fxcodec.pri)
include(fxcrt.pri)
include(fxge.pri)
include(pdfwindow.pri)
include(fxjs.pri)

#third party
include(base.pri)
include(bigint.pri)
include(fx_libopenjpeg.pri)
include(fx_agg.pri)
include(fx_lcms2.pri)
include(fx_lpng.pri)
