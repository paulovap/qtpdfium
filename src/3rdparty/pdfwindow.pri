# module pdfwindow
SOURCE_DIR = $$PWD/pdfium

PRIVATE_HEADERS += \
$$SOURCE_DIR/fpdfsdk/pdfwindow/PWL_Button.h \
$$SOURCE_DIR/fpdfsdk/pdfwindow/PWL_Caret.h \
$$SOURCE_DIR/fpdfsdk/pdfwindow/PWL_ComboBox.h \
$$SOURCE_DIR/fpdfsdk/pdfwindow/PWL_Edit.h \
$$SOURCE_DIR/fpdfsdk/pdfwindow/PWL_EditCtrl.h \
$$SOURCE_DIR/fpdfsdk/pdfwindow/PWL_FontMap.h \
$$SOURCE_DIR/fpdfsdk/pdfwindow/PWL_Icon.h \
$$SOURCE_DIR/fpdfsdk/pdfwindow/PWL_ListBox.h \
$$SOURCE_DIR/fpdfsdk/pdfwindow/PWL_ScrollBar.h \
$$SOURCE_DIR/fpdfsdk/pdfwindow/PWL_SpecialButton.h \
$$SOURCE_DIR/fpdfsdk/pdfwindow/PWL_Utils.h \
$$SOURCE_DIR/fpdfsdk/pdfwindow/PWL_Wnd.h

SOURCES += \
$$SOURCE_DIR/fpdfsdk/pdfwindow/PWL_Button.cpp \
$$SOURCE_DIR/fpdfsdk/pdfwindow/PWL_Caret.cpp \
$$SOURCE_DIR/fpdfsdk/pdfwindow/PWL_ComboBox.cpp \
$$SOURCE_DIR/fpdfsdk/pdfwindow/PWL_Edit.cpp \
$$SOURCE_DIR/fpdfsdk/pdfwindow/PWL_EditCtrl.cpp \
$$SOURCE_DIR/fpdfsdk/pdfwindow/PWL_FontMap.cpp \
$$SOURCE_DIR/fpdfsdk/pdfwindow/PWL_Icon.cpp \
$$SOURCE_DIR/fpdfsdk/pdfwindow/PWL_ListBox.cpp \
$$SOURCE_DIR/fpdfsdk/pdfwindow/PWL_ScrollBar.cpp \
$$SOURCE_DIR/fpdfsdk/pdfwindow/PWL_SpecialButton.cpp \
$$SOURCE_DIR/fpdfsdk/pdfwindow/PWL_Utils.cpp \
$$SOURCE_DIR/fpdfsdk/pdfwindow/PWL_Wnd.cpp


