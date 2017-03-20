# module fxge
SOURCE_DIR = $$PWD/pdfium

PRIVATE_HEADERS += \
##$$SOURCE_DIR/core/fxge/android/cfpf_skiabufferfont.h \
##$$SOURCE_DIR/core/fxge/android/cfpf_skiadevicemodule.h \
##$$SOURCE_DIR/core/fxge/android/cfpf_skiafilefont.h \
##$$SOURCE_DIR/core/fxge/android/cfpf_skiafont.h \
##$$SOURCE_DIR/core/fxge/android/cfpf_skiafontdescriptor.h \
##$$SOURCE_DIR/core/fxge/android/cfpf_skiafontmgr.h \
##$$SOURCE_DIR/core/fxge/android/cfpf_skiapathfont.h \
##$$SOURCE_DIR/core/fxge/android/cfx_androidfontinfo.h \
$$SOURCE_DIR/core/fxge/cfx_facecache.h \
$$SOURCE_DIR/core/fxge/cfx_fontcache.h \
$$SOURCE_DIR/core/fxge/cfx_fontmapper.h \
$$SOURCE_DIR/core/fxge/cfx_fontmgr.h \
$$SOURCE_DIR/core/fxge/cfx_fxgedevice.h \
$$SOURCE_DIR/core/fxge/cfx_gemodule.h \
$$SOURCE_DIR/core/fxge/cfx_graphstate.h \
$$SOURCE_DIR/core/fxge/cfx_graphstatedata.h \
$$SOURCE_DIR/core/fxge/cfx_pathdata.h \
$$SOURCE_DIR/core/fxge/cfx_renderdevice.h \
$$SOURCE_DIR/core/fxge/cfx_substfont.h \
$$SOURCE_DIR/core/fxge/cfx_unicodeencoding.h \
$$SOURCE_DIR/core/fxge/cfx_windowsdevice.h \
$$SOURCE_DIR/core/fxge/dib/dib_int.h \
$$SOURCE_DIR/core/fxge/fontdata/chromefontdata/chromefontdata.h \
$$SOURCE_DIR/core/fxge/fx_dib.h \
$$SOURCE_DIR/core/fxge/fx_font.h \
$$SOURCE_DIR/core/fxge/fx_freetype.h \
$$SOURCE_DIR/core/fxge/ge/cfx_cliprgn.h \
$$SOURCE_DIR/core/fxge/ge/cfx_folderfontinfo.h \
$$SOURCE_DIR/core/fxge/ge/cttfontdesc.h \
$$SOURCE_DIR/core/fxge/ge/fx_text_int.h \
$$SOURCE_DIR/core/fxge/ifx_renderdevicedriver.h \
$$SOURCE_DIR/core/fxge/ifx_systemfontinfo.h \
$$SOURCE_DIR/core/fxge/agg/fx_agg_driver.h \
$$SOURCE_DIR/core/fxge/win32/cfx_windowsdib.h

SOURCES += \
##$$SOURCE_DIR/core/fxge/android/cfpf_skiadevicemodule.cpp \
##$$SOURCE_DIR/core/fxge/android/cfpf_skiafont.cpp \
##$$SOURCE_DIR/core/fxge/android/cfpf_skiafontmgr.cpp \
##$$SOURCE_DIR/core/fxge/android/cfx_androidfontinfo.cpp \
##$$SOURCE_DIR/core/fxge/android/fx_android_imp.cpp \
$$SOURCE_DIR/core/fxge/dib/fx_dib_composite.cpp \
$$SOURCE_DIR/core/fxge/dib/fx_dib_convert.cpp \
$$SOURCE_DIR/core/fxge/dib/fx_dib_engine.cpp \
$$SOURCE_DIR/core/fxge/dib/fx_dib_main.cpp \
$$SOURCE_DIR/core/fxge/dib/fx_dib_transform.cpp \
$$SOURCE_DIR/core/fxge/fontdata/chromefontdata/FoxitDingbats.cpp \
$$SOURCE_DIR/core/fxge/fontdata/chromefontdata/FoxitFixed.cpp \
$$SOURCE_DIR/core/fxge/fontdata/chromefontdata/FoxitFixedBold.cpp \
$$SOURCE_DIR/core/fxge/fontdata/chromefontdata/FoxitFixedBoldItalic.cpp \
$$SOURCE_DIR/core/fxge/fontdata/chromefontdata/FoxitFixedItalic.cpp \
$$SOURCE_DIR/core/fxge/fontdata/chromefontdata/FoxitSans.cpp \
$$SOURCE_DIR/core/fxge/fontdata/chromefontdata/FoxitSansBold.cpp \
$$SOURCE_DIR/core/fxge/fontdata/chromefontdata/FoxitSansBoldItalic.cpp \
$$SOURCE_DIR/core/fxge/fontdata/chromefontdata/FoxitSansItalic.cpp \
$$SOURCE_DIR/core/fxge/fontdata/chromefontdata/FoxitSansMM.cpp \
$$SOURCE_DIR/core/fxge/fontdata/chromefontdata/FoxitSerif.cpp \
$$SOURCE_DIR/core/fxge/fontdata/chromefontdata/FoxitSerifBold.cpp \
$$SOURCE_DIR/core/fxge/fontdata/chromefontdata/FoxitSerifBoldItalic.cpp \
$$SOURCE_DIR/core/fxge/fontdata/chromefontdata/FoxitSerifItalic.cpp \
$$SOURCE_DIR/core/fxge/fontdata/chromefontdata/FoxitSerifMM.cpp \
$$SOURCE_DIR/core/fxge/fontdata/chromefontdata/FoxitSymbol.cpp \
$$SOURCE_DIR/core/fxge/freetype/fx_freetype.cpp \
$$SOURCE_DIR/core/fxge/ge/cfx_cliprgn.cpp \
$$SOURCE_DIR/core/fxge/ge/cfx_facecache.cpp \
$$SOURCE_DIR/core/fxge/ge/cfx_folderfontinfo.cpp \
$$SOURCE_DIR/core/fxge/ge/cfx_font.cpp \
$$SOURCE_DIR/core/fxge/ge/cfx_fontcache.cpp \
$$SOURCE_DIR/core/fxge/ge/cfx_fontmapper.cpp \
$$SOURCE_DIR/core/fxge/ge/cfx_fontmgr.cpp \
$$SOURCE_DIR/core/fxge/ge/cfx_gemodule.cpp \
$$SOURCE_DIR/core/fxge/ge/cfx_graphstate.cpp \
$$SOURCE_DIR/core/fxge/ge/cfx_graphstatedata.cpp \
$$SOURCE_DIR/core/fxge/ge/cfx_pathdata.cpp \
$$SOURCE_DIR/core/fxge/ge/cfx_renderdevice.cpp \
$$SOURCE_DIR/core/fxge/ge/cfx_substfont.cpp \
$$SOURCE_DIR/core/fxge/ge/cfx_unicodeencoding.cpp \
$$SOURCE_DIR/core/fxge/ge/cttfontdesc.cpp \
$$SOURCE_DIR/core/fxge/ge/fx_ge_fontmap.cpp \
$$SOURCE_DIR/core/fxge/ge/fx_ge_linux.cpp \
$$SOURCE_DIR/core/fxge/ge/fx_ge_text.cpp \
$$SOURCE_DIR/core/fxge/ge/fx_ge_qt.cpp \
$$SOURCE_DIR/core/fxge/agg/fx_agg_driver.cpp \
$$SOURCE_DIR/core/fxge/ifx_renderdevicedriver.cpp


