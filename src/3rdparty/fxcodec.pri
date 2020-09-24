# module fxcodec
SOURCE_DIR = $$PWD/pdfium

PRIVATE_HEADERS += \
$$SOURCE_DIR/core/fxcodec/JBig2_DocumentContext.h \
$$SOURCE_DIR/core/fxcodec/gif/cfx_lzwdecompressor.h \
$$SOURCE_DIR/core/fxcodec/gif/cfx_gif.h \
$$SOURCE_DIR/core/fxcodec/gif/cfx_gifcontext.h \
$$SOURCE_DIR/core/fxcodec/jbig2/JBig2_HuffmanDecoder.h \
$$SOURCE_DIR/core/fxcodec/jbig2/JBig2_Image.h \
$$SOURCE_DIR/core/fxcodec/jbig2/JBig2_BitStream.h \
$$SOURCE_DIR/core/fxcodec/jbig2/JBig2_PatternDict.h \
$$SOURCE_DIR/core/fxcodec/jbig2/JBig2_SddProc.h \
$$SOURCE_DIR/core/fxcodec/jbig2/JBig2_Define.h \
$$SOURCE_DIR/core/fxcodec/jbig2/JBig2_SymbolDict.h \
$$SOURCE_DIR/core/fxcodec/jbig2/JBig2_Page.h \
$$SOURCE_DIR/core/fxcodec/jbig2/JBig2_GrdProc.h \
$$SOURCE_DIR/core/fxcodec/jbig2/JBig2_ArithDecoder.h \
$$SOURCE_DIR/core/fxcodec/jbig2/JBig2_TrdProc.h \
$$SOURCE_DIR/core/fxcodec/jbig2/JBig2_GrrdProc.h \
$$SOURCE_DIR/core/fxcodec/jbig2/JBig2_Segment.h \
$$SOURCE_DIR/core/fxcodec/jbig2/JBig2_ArithIntDecoder.h \
$$SOURCE_DIR/core/fxcodec/jbig2/JBig2_HuffmanTable.h \
$$SOURCE_DIR/core/fxcodec/jbig2/JBig2_HtrdProc.h \
$$SOURCE_DIR/core/fxcodec/jbig2/JBig2_Context.h \
$$SOURCE_DIR/core/fxcodec/jbig2/JBig2_PddProc.h \
$$SOURCE_DIR/core/fxcodec/fx_codec_def.h \
$$SOURCE_DIR/core/fxcodec/bmp/fx_bmp.h \
$$SOURCE_DIR/core/fxcodec/bmp/cfx_bmpdecompressor.h \
$$SOURCE_DIR/core/fxcodec/bmp/cfx_bmpcontext.h \
$$SOURCE_DIR/core/fxcodec/codec/ccodec_jpegmodule.h \
#$$SOURCE_DIR/core/fxcodec/codec/ccodec_progressivedecoder.h \
$$SOURCE_DIR/core/fxcodec/codec/ccodec_basicmodule.h \
$$SOURCE_DIR/core/fxcodec/codec/ccodec_faxmodule.h \
#$$SOURCE_DIR/core/fxcodec/codec/ccodec_bmpmodule.h \
$$SOURCE_DIR/core/fxcodec/codec/codec_int.h \
$$SOURCE_DIR/core/fxcodec/codec/ccodec_jbig2module.h \
#$$SOURCE_DIR/core/fxcodec/codec/ccodec_pngmodule.h \
$$SOURCE_DIR/core/fxcodec/codec/ccodec_flatemodule.h \
$$SOURCE_DIR/core/fxcodec/codec/ccodec_scanlinedecoder.h \
#$$SOURCE_DIR/core/fxcodec/codec/ccodec_tiffmodule.h \
$$SOURCE_DIR/core/fxcodec/codec/ccodec_iccmodule.h \
$$SOURCE_DIR/core/fxcodec/codec/cjpx_decoder.h \
$$SOURCE_DIR/core/fxcodec/codec/codec_module_iface.h \
$$SOURCE_DIR/core/fxcodec/codec/cfx_codec_memory.h \
#$$SOURCE_DIR/core/fxcodec/codec/ccodec_gifmodule.h \
#$$SOURCE_DIR/core/fxcodec/codec/ccodec_jpxmodule.h \
$$SOURCE_DIR/core/fxcodec/fx_codec.h

SOURCES += \
$$SOURCE_DIR/core/fxcodec/gif/cfx_gifcontext.cpp \
$$SOURCE_DIR/core/fxcodec/gif/cfx_gif.cpp \
#$$SOURCE_DIR/core/fxcodec/gif/cfx_lzwdecompressor_unittest.cpp \
#$$SOURCE_DIR/core/fxcodec/gif/cfx_gifcontext_unittest.cpp \
$$SOURCE_DIR/core/fxcodec/gif/cfx_lzwdecompressor.cpp \
$$SOURCE_DIR/core/fxcodec/jbig2/JBig2_GrdProc.cpp \
$$SOURCE_DIR/core/fxcodec/jbig2/JBig2_HtrdProc.cpp \
$$SOURCE_DIR/core/fxcodec/jbig2/JBig2_SymbolDict.cpp \
$$SOURCE_DIR/core/fxcodec/jbig2/JBig2_HuffmanDecoder.cpp \
$$SOURCE_DIR/core/fxcodec/jbig2/JBig2_ArithDecoder.cpp \
$$SOURCE_DIR/core/fxcodec/jbig2/JBig2_PddProc.cpp \
$$SOURCE_DIR/core/fxcodec/jbig2/JBig2_SddProc.cpp \
#$$SOURCE_DIR/core/fxcodec/jbig2/JBig2_Image_unittest.cpp \
$$SOURCE_DIR/core/fxcodec/jbig2/JBig2_BitStream.cpp \
$$SOURCE_DIR/core/fxcodec/jbig2/JBig2_Image.cpp \
$$SOURCE_DIR/core/fxcodec/jbig2/JBig2_PatternDict.cpp \
#$$SOURCE_DIR/core/fxcodec/jbig2/JBig2_BitStream_unittest.cpp \
$$SOURCE_DIR/core/fxcodec/jbig2/JBig2_TrdProc.cpp \
$$SOURCE_DIR/core/fxcodec/jbig2/JBig2_Segment.cpp \
$$SOURCE_DIR/core/fxcodec/jbig2/JBig2_Context.cpp \
$$SOURCE_DIR/core/fxcodec/jbig2/JBig2_ArithIntDecoder.cpp \
$$SOURCE_DIR/core/fxcodec/jbig2/JBig2_GrrdProc.cpp \
$$SOURCE_DIR/core/fxcodec/jbig2/JBig2_HuffmanTable.cpp \
$$SOURCE_DIR/core/fxcodec/bmp/cfx_bmpcontext.cpp \
$$SOURCE_DIR/core/fxcodec/bmp/cfx_bmpdecompressor.cpp \
$$SOURCE_DIR/core/fxcodec/bmp/fx_bmp.cpp \
#$$SOURCE_DIR/core/fxcodec/codec/fx_codec_rle_unittest.cpp \
#$$SOURCE_DIR/core/fxcodec/codec/ccodec_progressivedecoder.cpp \
$$SOURCE_DIR/core/fxcodec/codec/ccodec_jpxmodule.cpp \
#$$SOURCE_DIR/core/fxcodec/codec/fx_codec_embeddertest.cpp \
#$$SOURCE_DIR/core/fxcodec/codec/ccodec_gifmodule.cpp \
#$$SOURCE_DIR/core/fxcodec/codec/ccodec_bmpmodule.cpp \
#$$SOURCE_DIR/core/fxcodec/codec/fx_codec_jpx_unittest.cpp \
$$SOURCE_DIR/core/fxcodec/codec/ccodec_iccmodule.cpp \
$$SOURCE_DIR/core/fxcodec/codec/ccodec_jbig2module.cpp \
$$SOURCE_DIR/core/fxcodec/codec/ccodec_jpegmodule.cpp \
$$SOURCE_DIR/core/fxcodec/codec/ccodec_flatemodule.cpp \
$$SOURCE_DIR/core/fxcodec/codec/ccodec_scanlinedecoder.cpp \
#$$SOURCE_DIR/core/fxcodec/codec/ccodec_pngmodule.cpp \
$$SOURCE_DIR/core/fxcodec/codec/fx_codec.cpp \
$$SOURCE_DIR/core/fxcodec/codec/cfx_codec_memory.cpp \
$$SOURCE_DIR/core/fxcodec/codec/ccodec_faxmodule.cpp \
#$$SOURCE_DIR/core/fxcodec/codec/fx_codec_a85_unittest.cpp \
#$$SOURCE_DIR/core/fxcodec/codec/ccodec_tiffmodule.cpp

