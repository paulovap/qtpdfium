SOURCE_DIR = $$PWD/pdfium

PRIVATE_HEADERS += \
        $$SOURCE_DIR/core/include/fpdfdoc/fpdf_tagged.h \
        $$SOURCE_DIR/core/include/fpdfdoc/fpdf_vt.h \
        $$SOURCE_DIR/core/include/fpdfdoc/fpdf_ap.h \
        $$SOURCE_DIR/core/include/fpdfdoc/fpdf_doc.h \
        $$SOURCE_DIR/core/src/fpdfdoc/pdf_vt.h \
        $$SOURCE_DIR/core/src/fpdfdoc/tagged_int.h \
        $$SOURCE_DIR/core/src/fpdfdoc/doc_utils.h

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
