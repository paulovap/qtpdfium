# module pdfwindow
SOURCE_DIR = $$PWD/pdfium

PRIVATE_HEADERS += \
$$SOURCE_DIR/fpdfsdk/pwl/cpwl_button.h \
$$SOURCE_DIR/fpdfsdk/pwl/cpwl_icon.h \
$$SOURCE_DIR/fpdfsdk/pwl/cpwl_list_box.h \
$$SOURCE_DIR/fpdfsdk/pwl/cpwl_edit_impl.h \
$$SOURCE_DIR/fpdfsdk/pwl/cpwl_special_button.h \
$$SOURCE_DIR/fpdfsdk/pwl/cpwl_timer.h \
$$SOURCE_DIR/fpdfsdk/pwl/cpwl_font_map.h \
$$SOURCE_DIR/fpdfsdk/pwl/cpwl_appstream.h \
$$SOURCE_DIR/fpdfsdk/pwl/cpwl_caret.h \
$$SOURCE_DIR/fpdfsdk/pwl/cpwl_edit_ctrl.h \
$$SOURCE_DIR/fpdfsdk/pwl/cpwl_edit.h \
$$SOURCE_DIR/fpdfsdk/pwl/cpwl_timer_handler.h \
$$SOURCE_DIR/fpdfsdk/pwl/cpwl_wnd.h \
$$SOURCE_DIR/fpdfsdk/pwl/cpwl_combo_box.h \
$$SOURCE_DIR/fpdfsdk/pwl/cpwl_list_impl.h \
$$SOURCE_DIR/fpdfsdk/pwl/cpwl_scroll_bar.h

SOURCES += \
$$SOURCE_DIR/fpdfsdk/pwl/cpwl_list_impl.cpp \
$$SOURCE_DIR/fpdfsdk/pwl/cpwl_caret.cpp \
#$$SOURCE_DIR/fpdfsdk/pwl/cpwl_edit_embeddertest.cpp \
$$SOURCE_DIR/fpdfsdk/pwl/cpwl_font_map.cpp \
$$SOURCE_DIR/fpdfsdk/pwl/cpwl_scroll_bar.cpp \
$$SOURCE_DIR/fpdfsdk/pwl/cpwl_appstream.cpp \
$$SOURCE_DIR/fpdfsdk/pwl/cpwl_edit_impl.cpp \
$$SOURCE_DIR/fpdfsdk/pwl/cpwl_list_box.cpp \
$$SOURCE_DIR/fpdfsdk/pwl/cpwl_edit.cpp \
$$SOURCE_DIR/fpdfsdk/pwl/cpwl_edit_ctrl.cpp \
$$SOURCE_DIR/fpdfsdk/pwl/cpwl_button.cpp \
$$SOURCE_DIR/fpdfsdk/pwl/cpwl_combo_box.cpp \
$$SOURCE_DIR/fpdfsdk/pwl/cpwl_special_button.cpp \
$$SOURCE_DIR/fpdfsdk/pwl/cpwl_wnd.cpp \
$$SOURCE_DIR/fpdfsdk/pwl/cpwl_timer_handler.cpp \
$$SOURCE_DIR/fpdfsdk/pwl/cpwl_timer.cpp \
$$SOURCE_DIR/fpdfsdk/pwl/cpwl_icon.cpp \
#$$SOURCE_DIR/fpdfsdk/pwl/cpwl_combo_box_embeddertest.cpp

