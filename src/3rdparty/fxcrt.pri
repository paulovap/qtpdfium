# module fxcrt
SOURCE_DIR = $$PWD/pdfium

PRIVATE_HEADERS += \
$$SOURCE_DIR/core/fxcrt/fxcrt_qt.h \
$$SOURCE_DIR/core/fxcrt/cfx_maybe_owned.h \
$$SOURCE_DIR/core/fxcrt/cfx_observable.h \
$$SOURCE_DIR/core/fxcrt/cfx_retain_ptr.h \
$$SOURCE_DIR/core/fxcrt/cfx_shared_copy_on_write.h \
$$SOURCE_DIR/core/fxcrt/cfx_string_c_template.h \
$$SOURCE_DIR/core/fxcrt/cfx_string_data_template.h \
$$SOURCE_DIR/core/fxcrt/cfx_string_pool_template.h \
$$SOURCE_DIR/core/fxcrt/cfx_weak_ptr.h \
$$SOURCE_DIR/core/fxcrt/extension.h \
$$SOURCE_DIR/core/fxcrt/fx_basic.h \
$$SOURCE_DIR/core/fxcrt/fx_bidi.h \
$$SOURCE_DIR/core/fxcrt/fx_coordinates.h \
$$SOURCE_DIR/core/fxcrt/fx_ext.h \
$$SOURCE_DIR/core/fxcrt/fx_memory.h \
$$SOURCE_DIR/core/fxcrt/fx_safe_types.h \
$$SOURCE_DIR/core/fxcrt/fx_stream.h \
$$SOURCE_DIR/core/fxcrt/fx_string.h \
$$SOURCE_DIR/core/fxcrt/fx_system.h \
$$SOURCE_DIR/core/fxcrt/fx_ucd.h \
$$SOURCE_DIR/core/fxcrt/fx_xml.h \
$$SOURCE_DIR/core/fxcrt/fxcrt_posix.h \
$$SOURCE_DIR/core/fxcrt/fxcrt_windows.h \
$$SOURCE_DIR/core/fxcrt/xml_int.h

SOURCES += \
$$SOURCE_DIR/core/fxcrt/fxcrt_qt.cpp \
$$SOURCE_DIR/core/fxcrt/fx_basic_array.cpp \
$$SOURCE_DIR/core/fxcrt/fx_basic_bstring.cpp \
$$SOURCE_DIR/core/fxcrt/fx_basic_buffer.cpp \
$$SOURCE_DIR/core/fxcrt/fx_basic_coords.cpp \
$$SOURCE_DIR/core/fxcrt/fx_basic_gcc.cpp \
$$SOURCE_DIR/core/fxcrt/fx_basic_memmgr.cpp \
$$SOURCE_DIR/core/fxcrt/fx_basic_utf.cpp \
$$SOURCE_DIR/core/fxcrt/fx_basic_util.cpp \
$$SOURCE_DIR/core/fxcrt/fx_basic_wstring.cpp \
$$SOURCE_DIR/core/fxcrt/fx_bidi.cpp \
$$SOURCE_DIR/core/fxcrt/fx_extension.cpp \
$$SOURCE_DIR/core/fxcrt/fx_ucddata.cpp \
$$SOURCE_DIR/core/fxcrt/fx_unicode.cpp \
$$SOURCE_DIR/core/fxcrt/fx_xml_composer.cpp \
$$SOURCE_DIR/core/fxcrt/fx_xml_parser.cpp \
$$SOURCE_DIR/core/fxcrt/fxcrt_posix.cpp \
$$SOURCE_DIR/core/fxcrt/fxcrt_stream.cpp \
$$SOURCE_DIR/core/fxcrt/fxcrt_windows.cpp


