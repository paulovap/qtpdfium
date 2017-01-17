# module formfiller
SOURCE_DIR = $$PWD/pdfium

PRIVATE_HEADERS += \
$$SOURCE_DIR/fpdfsdk/formfiller/cba_fontmap.h \
$$SOURCE_DIR/fpdfsdk/formfiller/cffl_checkbox.h \
$$SOURCE_DIR/fpdfsdk/formfiller/cffl_combobox.h \
$$SOURCE_DIR/fpdfsdk/formfiller/cffl_formfiller.h \
$$SOURCE_DIR/fpdfsdk/formfiller/cffl_interactiveformfiller.h \
$$SOURCE_DIR/fpdfsdk/formfiller/cffl_listbox.h \
$$SOURCE_DIR/fpdfsdk/formfiller/cffl_pushbutton.h \
$$SOURCE_DIR/fpdfsdk/formfiller/cffl_radiobutton.h \
$$SOURCE_DIR/fpdfsdk/formfiller/cffl_textfield.h

SOURCES += \
$$SOURCE_DIR/fpdfsdk/formfiller/cba_fontmap.cpp \
$$SOURCE_DIR/fpdfsdk/formfiller/cffl_checkbox.cpp \
$$SOURCE_DIR/fpdfsdk/formfiller/cffl_combobox.cpp \
$$SOURCE_DIR/fpdfsdk/formfiller/cffl_formfiller.cpp \
$$SOURCE_DIR/fpdfsdk/formfiller/cffl_interactiveformfiller.cpp \
$$SOURCE_DIR/fpdfsdk/formfiller/cffl_listbox.cpp \
$$SOURCE_DIR/fpdfsdk/formfiller/cffl_pushbutton.cpp \
$$SOURCE_DIR/fpdfsdk/formfiller/cffl_radiobutton.cpp \
$$SOURCE_DIR/fpdfsdk/formfiller/cffl_textfield.cpp


