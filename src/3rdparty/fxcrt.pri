DEFINES += __QT__
SOURCE_DIR = $$PWD/pdfium

PRIVATE_HEADERS += \
        $$SOURCE_DIR/core/src/fxcrt/plex.h \
        $$SOURCE_DIR/core/src/fxcrt/xml_int.h \
        $$SOURCE_DIR/core/include/fxcrt/fx_arb.h \
        $$SOURCE_DIR/core/include/fxcrt/fx_basic.h \
        $$SOURCE_DIR/core/include/fxcrt/fx_coordinates.h \
        $$SOURCE_DIR/core/include/fxcrt/fx_ext.h \
        $$SOURCE_DIR/core/include/fxcrt/fx_memory.h \
        $$SOURCE_DIR/core/include/fxcrt/fx_safe_types.h \
        $$SOURCE_DIR/core/include/fxcrt/fx_stream.h \
        $$SOURCE_DIR/core/include/fxcrt/fx_string.h \
        $$SOURCE_DIR/core/include/fxcrt/fx_system.h \
        $$SOURCE_DIR/core/include/fxcrt/fx_ucd.h \
        $$SOURCE_DIR/core/include/fxcrt/fx_xml.h \
        $$SOURCE_DIR/core/src/fxcrt/extension.h \
        $$SOURCE_DIR/core/src/fxcrt/fxcrt_platforms.h \
        $$SOURCE_DIR/core/src/fxcrt/fxcrt_posix.h \
        $$SOURCE_DIR/core/src/fxcrt/fxcrt_qt.h \
        $$SOURCE_DIR/core/src/fxcrt/fxcrt_windows.h \
        $$SOURCE_DIR/core/src/fxcrt/fx_arabic.h

SOURCES += \
        $$SOURCE_DIR/core/src/fxcrt/fxcrt_platforms.cpp \
        $$SOURCE_DIR/core/src/fxcrt/fxcrt_posix.cpp \
        $$SOURCE_DIR/core/src/fxcrt/fxcrt_qt.cpp \
        $$SOURCE_DIR/core/src/fxcrt/fxcrt_windows.cpp \
        $$SOURCE_DIR/core/src/fxcrt/fx_arabic.cpp \
        $$SOURCE_DIR/core/src/fxcrt/fx_basic_array.cpp \
        $$SOURCE_DIR/core/src/fxcrt/fx_basic_bstring.cpp \
        $$SOURCE_DIR/core/src/fxcrt/fx_basic_buffer.cpp \
        $$SOURCE_DIR/core/src/fxcrt/fx_basic_coords.cpp \
        $$SOURCE_DIR/core/src/fxcrt/fx_basic_gcc.cpp \
        $$SOURCE_DIR/core/src/fxcrt/fx_basic_list.cpp \
        $$SOURCE_DIR/core/src/fxcrt/fx_basic_maps.cpp \
        $$SOURCE_DIR/core/src/fxcrt/fx_basic_memmgr.cpp \
        $$SOURCE_DIR/core/src/fxcrt/fx_basic_plex.cpp \
        $$SOURCE_DIR/core/src/fxcrt/fx_basic_utf.cpp \
        $$SOURCE_DIR/core/src/fxcrt/fx_basic_util.cpp \
        $$SOURCE_DIR/core/src/fxcrt/fx_basic_wstring.cpp \
        $$SOURCE_DIR/core/src/fxcrt/fx_extension.cpp \
        $$SOURCE_DIR/core/src/fxcrt/fx_ucddata.cpp \
        $$SOURCE_DIR/core/src/fxcrt/fx_unicode.cpp \
        $$SOURCE_DIR/core/src/fxcrt/fx_xml_composer.cpp \
        $$SOURCE_DIR/core/src/fxcrt/fx_xml_parser.cpp

