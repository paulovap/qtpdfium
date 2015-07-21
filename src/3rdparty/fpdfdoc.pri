SOURCE_DIR = $$PWD/pdfium

PRIVATE_HEADERS += \
        $$SOURCE_DIR/core/include/fpdfdoc/fpdf_tagged.h \
        $$SOURCE_DIR/core/include/fpdfdoc/fpdf_vt.h \
        $$SOURCE_DIR/core/include/fpdfdoc/fpdf_ap.h \
        $$SOURCE_DIR/core/include/fpdfdoc/fpdf_doc.h \
        $$SOURCE_DIR/core/src/fpdfdoc/pdf_vt.h \
        $$SOURCE_DIR/core/src/fpdfdoc/tagged_int.h \
        $$SOURCE_DIR/core/src/fpdfdoc/doc_action.h \
        $$SOURCE_DIR/core/src/fpdfdoc/doc_annot.h \
        $$SOURCE_DIR/core/src/fpdfdoc/doc_ap.h \
        $$SOURCE_DIR/core/src/fpdfdoc/doc_basic.h \
        $$SOURCE_DIR/core/src/fpdfdoc/doc_bookmark.h \
        $$SOURCE_DIR/core/src/fpdfdoc/doc_form.h \
        $$SOURCE_DIR/core/src/fpdfdoc/doc_formcontrol.h \
        $$SOURCE_DIR/core/src/fpdfdoc/doc_formfield.h \
        $$SOURCE_DIR/core/src/fpdfdoc/doc_link.h \
        $$SOURCE_DIR/core/src/fpdfdoc/doc_metadata.h \
        $$SOURCE_DIR/core/src/fpdfdoc/doc_ocg.h \
        $$SOURCE_DIR/core/src/fpdfdoc/doc_tagged.h \
        $$SOURCE_DIR/core/src/fpdfdoc/doc_utils.h \
        $$SOURCE_DIR/core/src/fpdfdoc/doc_utils.h \
        $$SOURCE_DIR/core/src/fpdfdoc/doc_viewerPreferences.h \
        $$SOURCE_DIR/core/src/fpdfdoc/doc_vt.h \
        $$SOURCE_DIR/core/src/fpdfdoc/doc_vtmodule.h

SOURCES += \
        $$SOURCE_DIR/core/src/fpdfdoc/doc_action.cpp \
        $$SOURCE_DIR/core/src/fpdfdoc/doc_annot.cpp \
        $$SOURCE_DIR/core/src/fpdfdoc/doc_ap.cpp \
        $$SOURCE_DIR/core/src/fpdfdoc/doc_basic.cpp \
        $$SOURCE_DIR/core/src/fpdfdoc/doc_bookmark.cpp \
        $$SOURCE_DIR/core/src/fpdfdoc/doc_form.cpp \
        $$SOURCE_DIR/core/src/fpdfdoc/doc_formcontrol.cpp \
        $$SOURCE_DIR/core/src/fpdfdoc/doc_formfield.cpp \
        $$SOURCE_DIR/core/src/fpdfdoc/doc_link.cpp \
        $$SOURCE_DIR/core/src/fpdfdoc/doc_metadata.cpp \
        $$SOURCE_DIR/core/src/fpdfdoc/doc_ocg.cpp \
        $$SOURCE_DIR/core/src/fpdfdoc/doc_tagged.cpp \
        $$SOURCE_DIR/core/src/fpdfdoc/doc_utils.cpp \
        $$SOURCE_DIR/core/src/fpdfdoc/doc_viewerPreferences.cpp \
        $$SOURCE_DIR/core/src/fpdfdoc/doc_vt.cpp \
        $$SOURCE_DIR/core/src/fpdfdoc/doc_vtmodule.cpp
