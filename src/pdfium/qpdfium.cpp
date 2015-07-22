#include "qpdfium.h"
#include "qpdfiumpage.h"
#include "../3rdparty/pdfium/public/fpdfview.h"

QT_BEGIN_NAMESPACE

QPdfium::QPdfium(QString filename, QObject *parent)
    : QObject(parent)
    , m_document(nullptr)
    , m_filename(filename)
{
    m_document = FPDF_LoadDocument(m_filename.toUtf8().constData(), NULL);
}

QPdfium::~QPdfium() {
    if (m_document)
        FPDF_CloseDocument(m_document);
    m_document = nullptr;
}

bool QPdfium::isValid() const
{
    return m_document != NULL;
}

QString QPdfium::filename() const
{
    return m_filename;
}

int QPdfium::pageCount() const
{
        if (m_document)
            return FPDF_GetPageCount(m_document);
        return 0;
}

QPdfiumPage *QPdfium::page(int i)
{
    return new QPdfiumPage(FPDF_LoadPage(m_document, i), i, this);
}

QT_END_NAMESPACE
