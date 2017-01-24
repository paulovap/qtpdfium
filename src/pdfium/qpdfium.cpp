#include "qpdfium.h"
#include "../3rdparty/pdfium/public/fpdfview.h"
#include "../3rdparty/pdfium/core/fpdfapi/parser/cpdf_document.h"
#include "../3rdparty/pdfium/core/fpdfapi/page/cpdf_page.h"
#include <QFile>

QT_BEGIN_NAMESPACE

QPdfium::QPdfium()
    : m_document(nullptr)
    , m_pageCount(0)
    , m_status(NOT_LOADED)
{
}

QPdfium::QPdfium(QString filename, QString password)
    : m_document(nullptr)
    , m_pageCount(0)
    , m_status(NOT_LOADED)
{
    loadFile(filename, password);
}

QPdfium::~QPdfium() {
    m_pages.clear();
    m_document.clear();
}

bool QPdfium::isValid() const
{
    return m_document != NULL;
}

QPdfium::Status QPdfium::loadFile(QString filename, QString password)
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

QPdfium::Status QPdfium::parseError(int err) {
    QPdfium::Status err_code = QPdfium::SUCCESS;
    // Translate FPDFAPI error code to FPDFVIEW error code
    switch (err) {
    case FPDF_ERR_SUCCESS:
        err_code = QPdfium::SUCCESS;
        break;
    case FPDF_ERR_FILE:
        err_code = QPdfium::FILE_ERROR;
        break;
    case FPDF_ERR_FORMAT:
        err_code = QPdfium::FORMAT_ERROR;
        break;
    case FPDF_ERR_PASSWORD:
        err_code = QPdfium::PASSWORD_ERROR;
        break;
    case FPDF_ERR_SECURITY:
        err_code = QPdfium::HANDLER_ERROR;
        break;
    }
    return err_code;
}

QString QPdfium::filename() const
{
    return m_filename;
}

int QPdfium::pageCount() const
{
    return m_pageCount;
}

QPdfium::Status QPdfium::status() const
{
    return m_status;
}

QPdfiumPage QPdfium::page(int i)
{
    Q_ASSERT( i < m_pageCount && i >=0 );

    auto strongRef = m_pages[i].toStrongRef();
    if (!strongRef)
        strongRef.reset(new PageHolder(m_document.toWeakRef(),
                                       static_cast<CPDF_Page*>
                                       (FPDF_LoadPage(m_document.data(), i))));

    m_pages[i] = strongRef.toWeakRef();
    return QPdfiumPage(strongRef, i);
}

QT_END_NAMESPACE
