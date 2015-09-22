
SOURCE_DIR = $$PWD/pdfium

PRIVATE_HEADERS += \
    $$SOURCE_DIR/core/src/fxge/ge/text_int.h \
    $$SOURCE_DIR/core/src/fxge/dib/dib_int.h \
    $$SOURCE_DIR/core/src/fxge/android/fx_fpf.h \
    $$SOURCE_DIR/core/src/fxge/apple/apple_int.h \
    $$SOURCE_DIR/core/src/fxge/agg/include/fx_agg_driver.h \
    $$SOURCE_DIR/core/src/fxge/fontdata/chromefontdata/chromefontdata.h \
    $$SOURCE_DIR/core/include/fxge/fpf.h \
    $$SOURCE_DIR/core/include/fxge/fx_dib.h \
    $$SOURCE_DIR/core/include/fxge/fx_font.h \
    $$SOURCE_DIR/core/include/fxge/fx_freetype.h \
    $$SOURCE_DIR/core/include/fxge/fx_ge.h \
    $$SOURCE_DIR/core/include/fxge/fx_ge_apple.h \
    $$SOURCE_DIR/core/include/fxge/fx_ge_win32.h

SOURCES += \
    $$SOURCE_DIR/core/src/fxge/agg/src/fx_agg_driver.cpp \
    $$SOURCE_DIR/core/src/fxge/dib/fx_dib_composite.cpp \
    $$SOURCE_DIR/core/src/fxge/dib/fx_dib_convert.cpp \
    $$SOURCE_DIR/core/src/fxge/dib/fx_dib_engine.cpp \
    $$SOURCE_DIR/core/src/fxge/dib/fx_dib_main.cpp \
    $$SOURCE_DIR/core/src/fxge/dib/fx_dib_transform.cpp \
    $$SOURCE_DIR/core/src/fxge/fontdata/chromefontdata/FoxitDingbats.c \
    $$SOURCE_DIR/core/src/fxge/fontdata/chromefontdata/FoxitFixed.c \
    $$SOURCE_DIR/core/src/fxge/fontdata/chromefontdata/FoxitFixedBold.c \
    $$SOURCE_DIR/core/src/fxge/fontdata/chromefontdata/FoxitFixedBoldItalic.c \
    $$SOURCE_DIR/core/src/fxge/fontdata/chromefontdata/FoxitFixedItalic.c \
    $$SOURCE_DIR/core/src/fxge/fontdata/chromefontdata/FoxitSans.c \
    $$SOURCE_DIR/core/src/fxge/fontdata/chromefontdata/FoxitSansBold.c \
    $$SOURCE_DIR/core/src/fxge/fontdata/chromefontdata/FoxitSansBoldItalic.c \
    $$SOURCE_DIR/core/src/fxge/fontdata/chromefontdata/FoxitSansItalic.c \
    $$SOURCE_DIR/core/src/fxge/fontdata/chromefontdata/FoxitSansMM.c \
    $$SOURCE_DIR/core/src/fxge/fontdata/chromefontdata/FoxitSerif.c \
    $$SOURCE_DIR/core/src/fxge/fontdata/chromefontdata/FoxitSerifBold.c \
    $$SOURCE_DIR/core/src/fxge/fontdata/chromefontdata/FoxitSerifBoldItalic.c \
    $$SOURCE_DIR/core/src/fxge/fontdata/chromefontdata/FoxitSerifItalic.c \
    $$SOURCE_DIR/core/src/fxge/fontdata/chromefontdata/FoxitSerifMM.c \
    $$SOURCE_DIR/core/src/fxge/fontdata/chromefontdata/FoxitSymbol.c \
    $$SOURCE_DIR/core/src/fxge/freetype/fx_freetype.c \
    $$SOURCE_DIR/core/src/fxge/ge/fx_ge.cpp \
    $$SOURCE_DIR/core/src/fxge/ge/fx_ge_device.cpp \
    $$SOURCE_DIR/core/src/fxge/ge/fx_ge_font.cpp \
    $$SOURCE_DIR/core/src/fxge/ge/fx_ge_fontmap.cpp \
    $$SOURCE_DIR/core/src/fxge/ge/fx_ge_qt.cpp \
    $$SOURCE_DIR/core/src/fxge/ge/fx_ge_path.cpp \
    $$SOURCE_DIR/core/src/fxge/ge/fx_ge_ps.cpp \
    $$SOURCE_DIR/core/src/fxge/ge/fx_ge_text.cpp


