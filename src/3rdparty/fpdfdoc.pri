# module fpdfdoc
SOURCE_DIR = $$PWD/pdfium

PRIVATE_HEADERS += \
$$SOURCE_DIR/core/fpdfdoc/cpvt_word.h \
$$SOURCE_DIR/core/fpdfdoc/ctypeset.h \
$$SOURCE_DIR/core/fpdfdoc/cpdf_annotlist.h \
$$SOURCE_DIR/core/fpdfdoc/cpdf_dest.h \
$$SOURCE_DIR/core/fpdfdoc/cpdf_nametree.h \
$$SOURCE_DIR/core/fpdfdoc/cpdf_formcontrol.h \
$$SOURCE_DIR/core/fpdfdoc/cpdf_occontext.h \
$$SOURCE_DIR/core/fpdfdoc/cpdf_metadata.h \
$$SOURCE_DIR/core/fpdfdoc/cpdf_docjsactions.h \
$$SOURCE_DIR/core/fpdfdoc/cpvt_floatrect.h \
$$SOURCE_DIR/core/fpdfdoc/cpdf_structelement.h \
$$SOURCE_DIR/core/fpdfdoc/cpdf_action.h \
$$SOURCE_DIR/core/fpdfdoc/cpdf_actionfields.h \
$$SOURCE_DIR/core/fpdfdoc/csection.h \
$$SOURCE_DIR/core/fpdfdoc/cpdf_iconfit.h \
$$SOURCE_DIR/core/fpdfdoc/cpvt_line.h \
$$SOURCE_DIR/core/fpdfdoc/cpvt_generateap.h \
$$SOURCE_DIR/core/fpdfdoc/cpvt_wordrange.h \
$$SOURCE_DIR/core/fpdfdoc/cpdf_interactiveform.h \
$$SOURCE_DIR/core/fpdfdoc/cline.h \
$$SOURCE_DIR/core/fpdfdoc/ipvt_fontmap.h \
$$SOURCE_DIR/core/fpdfdoc/cpdf_annot.h \
$$SOURCE_DIR/core/fpdfdoc/cpdf_bookmarktree.h \
$$SOURCE_DIR/core/fpdfdoc/cpvt_lineinfo.h \
$$SOURCE_DIR/core/fpdfdoc/cpdf_defaultappearance.h \
$$SOURCE_DIR/core/fpdfdoc/cpdf_linklist.h \
$$SOURCE_DIR/core/fpdfdoc/cpdf_apsettings.h \
$$SOURCE_DIR/core/fpdfdoc/cpdf_bookmark.h \
$$SOURCE_DIR/core/fpdfdoc/cpdf_structtree.h \
$$SOURCE_DIR/core/fpdfdoc/cpdf_numbertree.h \
$$SOURCE_DIR/core/fpdfdoc/cpvt_wordinfo.h \
$$SOURCE_DIR/core/fpdfdoc/ipdf_formnotify.h \
$$SOURCE_DIR/core/fpdfdoc/cpdf_link.h \
$$SOURCE_DIR/core/fpdfdoc/cpdf_aaction.h \
$$SOURCE_DIR/core/fpdfdoc/cpvt_fontmap.h \
$$SOURCE_DIR/core/fpdfdoc/cpdf_viewerpreferences.h \
$$SOURCE_DIR/core/fpdfdoc/cpdf_pagelabel.h \
$$SOURCE_DIR/core/fpdfdoc/cpdf_filespec.h \
$$SOURCE_DIR/core/fpdfdoc/cpdf_formfield.h \
$$SOURCE_DIR/core/fpdfdoc/cpvt_wordplace.h \
$$SOURCE_DIR/core/fpdfdoc/cpdf_variabletext.h

SOURCES += \
$$SOURCE_DIR/core/fpdfdoc/cpdf_structtree.cpp \
$$SOURCE_DIR/core/fpdfdoc/cpdf_apsettings.cpp \
$$SOURCE_DIR/core/fpdfdoc/cpvt_wordinfo.cpp \
$$SOURCE_DIR/core/fpdfdoc/cpdf_filespec.cpp \
$$SOURCE_DIR/core/fpdfdoc/cpdf_iconfit.cpp \
$$SOURCE_DIR/core/fpdfdoc/cline.cpp \
#$$SOURCE_DIR/core/fpdfdoc/cpdf_defaultappearance_unittest.cpp \
$$SOURCE_DIR/core/fpdfdoc/cpdf_formcontrol.cpp \
$$SOURCE_DIR/core/fpdfdoc/cpdf_interactiveform.cpp \
$$SOURCE_DIR/core/fpdfdoc/cpdf_viewerpreferences.cpp \
$$SOURCE_DIR/core/fpdfdoc/cpvt_fontmap.cpp \
$$SOURCE_DIR/core/fpdfdoc/cpdf_actionfields.cpp \
$$SOURCE_DIR/core/fpdfdoc/cpdf_linklist.cpp \
#$$SOURCE_DIR/core/fpdfdoc/cpdf_nametree_unittest.cpp \
$$SOURCE_DIR/core/fpdfdoc/cpdf_structelement.cpp \
$$SOURCE_DIR/core/fpdfdoc/cpdf_bookmark.cpp \
#$$SOURCE_DIR/core/fpdfdoc/cpdf_dest_unittest.cpp \
$$SOURCE_DIR/core/fpdfdoc/cpdf_bookmarktree.cpp \
$$SOURCE_DIR/core/fpdfdoc/cpdf_docjsactions.cpp \
$$SOURCE_DIR/core/fpdfdoc/csection.cpp \
$$SOURCE_DIR/core/fpdfdoc/cpdf_occontext.cpp \
#$$SOURCE_DIR/core/fpdfdoc/cpdf_formfield_unittest.cpp \
$$SOURCE_DIR/core/fpdfdoc/cpdf_nametree.cpp \
$$SOURCE_DIR/core/fpdfdoc/cpdf_numbertree.cpp \
$$SOURCE_DIR/core/fpdfdoc/cpdf_pagelabel.cpp \
$$SOURCE_DIR/core/fpdfdoc/cpvt_generateap.cpp \
$$SOURCE_DIR/core/fpdfdoc/cpdf_action.cpp \
$$SOURCE_DIR/core/fpdfdoc/cpdf_annotlist.cpp \
$$SOURCE_DIR/core/fpdfdoc/cpdf_metadata.cpp \
$$SOURCE_DIR/core/fpdfdoc/ctypeset.cpp \
$$SOURCE_DIR/core/fpdfdoc/cpdf_formfield.cpp \
$$SOURCE_DIR/core/fpdfdoc/cpdf_dest.cpp \
$$SOURCE_DIR/core/fpdfdoc/cpdf_link.cpp \
$$SOURCE_DIR/core/fpdfdoc/cpdf_aaction.cpp \
$$SOURCE_DIR/core/fpdfdoc/cpdf_annot.cpp \
$$SOURCE_DIR/core/fpdfdoc/cpdf_variabletext.cpp \
#$$SOURCE_DIR/core/fpdfdoc/cpdf_metadata_unittest.cpp \
#$$SOURCE_DIR/core/fpdfdoc/cpdf_filespec_unittest.cpp \
$$SOURCE_DIR/core/fpdfdoc/cpdf_defaultappearance.cpp

