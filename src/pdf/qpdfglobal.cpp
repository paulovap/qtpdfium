
#include <QtCore>
#include <QString>
#include "qpdfglobal.h"
#include "../3rdparty/pdfium/public/fpdfview.h"
QT_BEGIN_NAMESPACE

bool initialized = false;

const static PdfGlobal instance = PdfGlobal();

void PdfGlobal::initPdf()
{
    if (!initialized) {
        FPDF_InitLibrary();
        initialized = true;
    }
}

void PdfGlobal::shutdownPdf()
{
    if (initialized) {
        FPDF_DestroyLibrary();
        initialized = false;
    }
}


PdfGlobal::PdfGlobal()
{
    initPdf();
}

PdfGlobal::~PdfGlobal()
{
    shutdownPdf();
}

QT_END_NAMESPACE


