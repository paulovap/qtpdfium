#include "qpdf.h"
#include "../3rdparty/pdfium/public/fpdfview.h"
#include "../3rdparty/pdfium/core/fpdfapi/parser/cpdf_document.h"
#include "../3rdparty/pdfium/core/fpdfapi/page/cpdf_page.h"
#include <QFile>

QT_BEGIN_NAMESPACE

QPdf::QPdf()
    : m_document(nullptr)
    , m_pageCount(0)
    , m_status(NOT_LOADED)
{
}

QPdf::QPdf(QString filename, QString password)
    : m_document(nullptr)
    , m_pageCount(0)
    , m_status(NOT_LOADED)
{
    loadFile(filename, password);
}

QPdf::~QPdf() {
    m_pages.clear();
    m_document.clear();
}

bool QPdf::isValid() const
{
    return m_document != NULL;
}

QPdf::Status QPdf::loadFile(QString filename, QString password)
{
    m_filename = filename;

    m_pages.clear();
    m_document.clear();

    // Pdfium API enable creating new pdfs, but
    // we are using only for read. So we will
    // return error if file does not exists
    if (!QFile::exists(filename)) {
        m_status = FILE_NOT_FOUND_ERROR;
        return m_status;
    }

    void* ptr = FPDF_LoadDocument(m_filename.toUtf8().constData(),
                                  password.toUtf8().constData());
    auto doc = static_cast<CPDF_Document*>(ptr);

    m_document.reset(doc);
    m_status = m_document ? SUCCESS : parseError(FPDF_GetLastError());

    if (m_document){
        m_pageCount = m_document->GetPageCount();
        m_pages.resize(m_pageCount);
    }

    return m_status;
}

QPdf::Status QPdf::parseError(int err) {
    QPdf::Status err_code = QPdf::SUCCESS;
    // Translate FPDFAPI error code to FPDFVIEW error code
    switch (err) {
    case FPDF_ERR_SUCCESS:
        err_code = QPdf::SUCCESS;
        break;
    case FPDF_ERR_FILE:
        err_code = QPdf::FILE_ERROR;
        break;
    case FPDF_ERR_FORMAT:
        err_code = QPdf::FORMAT_ERROR;
        break;
    case FPDF_ERR_PASSWORD:
        err_code = QPdf::PASSWORD_ERROR;
        break;
    case FPDF_ERR_SECURITY:
        err_code = QPdf::HANDLER_ERROR;
        break;
    }
    return err_code;
}

QString QPdf::filename() const
{
    return m_filename;
}

int QPdf::pageCount() const
{
    return m_pageCount;
}

QPdf::Status QPdf::status() const
{
    return m_status;
}

QPdfPage QPdf::page(int i)
{
    Q_ASSERT( i < m_pageCount && i >=0 );

    auto strongRef = m_pages[i].toStrongRef();
    if (!strongRef)
        strongRef.reset(new PageHolder(m_document.toWeakRef(),
                                       static_cast<CPDF_Page*>
                                       (FPDF_LoadPage(m_document.data(), i))));

    m_pages[i] = strongRef.toWeakRef();
    return QPdfPage(strongRef, i);
}

QT_END_NAMESPACE
