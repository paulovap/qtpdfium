
#include <QtCore>
#include <QString>
#include "qpdfiumglobal.h"
#include "../3rdparty/pdfium/public/fpdfview.h"
QT_BEGIN_NAMESPACE

bool initialized = false;

const static PdfiumGlobal instance = PdfiumGlobal();

void PdfiumGlobal::initPdfium()
{
    if (!initialized) {
        FPDF_InitLibrary();
        initialized = true;
    }
}

void PdfiumGlobal::shutdownPdfium()
{
    if (initialized) {
        FPDF_DestroyLibrary();
        initialized = false;
    }
}


PdfiumGlobal::PdfiumGlobal()
{
    initPdfium();
}

PdfiumGlobal::~PdfiumGlobal()
{
    shutdownPdfium();
}

QT_END_NAMESPACE


