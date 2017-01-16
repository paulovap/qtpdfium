# module fpdfxfa
SOURCE_DIR = $$PWD/pdfium

PRIVATE_HEADERS += \
$$SOURCE_DIR/fpdfsdk/fpdfxfa/cpdfxfa_context.h \
$$SOURCE_DIR/fpdfsdk/fpdfxfa/cpdfxfa_docenvironment.h \
$$SOURCE_DIR/fpdfsdk/fpdfxfa/cpdfxfa_page.h \
$$SOURCE_DIR/fpdfsdk/fpdfxfa/cxfa_fwladaptertimermgr.h

SOURCES += \
$$SOURCE_DIR/fpdfsdk/fpdfxfa/cpdfxfa_context.cpp \
$$SOURCE_DIR/fpdfsdk/fpdfxfa/cpdfxfa_docenvironment.cpp \
$$SOURCE_DIR/fpdfsdk/fpdfxfa/cpdfxfa_page.cpp \
$$SOURCE_DIR/fpdfsdk/fpdfxfa/cxfa_fwladaptertimermgr.cpp


