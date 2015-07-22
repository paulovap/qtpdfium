#ifndef QTPDFIUMGLOBAL_H
#define QTPDFIUMGLOBAL_H

#include <QtCore/qglobal.h>

QT_BEGIN_NAMESPACE

#ifndef QT_STATIC
#    if defined(QT_BUILD_PDFIUM_LIB)
#      define Q_PDFIUM_EXPORT Q_DECL_EXPORT
#    else
#      define Q_PDFIUM_EXPORT Q_DECL_IMPORT
#    endif
#else
#    define Q_PDFIUM_EXPORT
#endif


class PdfiumGlobal {
public:
    PdfiumGlobal();
    ~PdfiumGlobal();

private:
    void initPdfium();
    void shutdownPdfium();
};

QT_END_NAMESPACE

#endif // QTPDFIUMGLOBAL
