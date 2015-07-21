SOURCE_DIR = $$PWD/pdfium

unix: QMAKE_CFLAGS += -Wno-extra

PRIVATE_HEADERS += \
        $$SOURCE_DIR/third_party/agg23/agg_basics.h \
        $$SOURCE_DIR/third_party/agg23/agg_clip_liang_barsky.h \
        $$SOURCE_DIR/third_party/agg23/agg_conv_dash.h \
        $$SOURCE_DIR/third_party/agg23/agg_conv_stroke.h \
        $$SOURCE_DIR/third_party/agg23/agg_rasterizer_scanline_aa.h \
        $$SOURCE_DIR/third_party/agg23/agg_renderer_scanline.h \
        $$SOURCE_DIR/third_party/agg23/agg_rendering_buffer.h \
        $$SOURCE_DIR/third_party/agg23/agg_scanline_u.h \
        $$SOURCE_DIR/third_party/agg23/agg_curves.h \
        $$SOURCE_DIR/third_party/agg23/agg_path_storage.h

SOURCES += \
        $$SOURCE_DIR/third_party/agg23/agg_path_storage.cpp \
        $$SOURCE_DIR/third_party/agg23/agg_curves.cpp \
        $$SOURCE_DIR/third_party/agg23/agg_rasterizer_scanline_aa.cpp \
        $$SOURCE_DIR/third_party/agg23/agg_vcgen_dash.cpp \
        $$SOURCE_DIR/third_party/agg23/agg_vcgen_stroke.cpp

