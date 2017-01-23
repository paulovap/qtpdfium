#include "qpdfium.h"
#include "../3rdparty/pdfium/public/fpdfview.h"
#include "../3rdparty/pdfium/core/fpdfapi/parser/cpdf_document.h"
#include "../3rdparty/pdfium/core/fpdfapi/page/cpdf_page.h"
#include <QFile>

QT_BEGIN_NAMESPACE

QPdfium::QPdfium(QObject *parent)
    : QObject(parent)
    , m_document(nullptr)
    , m_pageCount(0)
{
}

QPdfium::QPdfium(QString filename, QObject *parent)
    : QObject(parent)
    , m_document(nullptr)
    , m_pageCount(0)
{
    loadFile(filename);
}

QPdfium::~QPdfium() {
    m_pages.clear();
    m_document.clear();
    m_document = nullptr;
}

bool QPdfium::isValid() const
{
    return m_document != NULL;
}

QPdfium::Status QPdfium::loadFile(QString filename)
{
    if (m_filename != filename) {
        m_filename = filename;

        m_pages.clear();
        m_document.reset(static_cast<CPDF_Document*>(
                             FPDF_LoadDocument(m_filename.toUtf8().constData(), NULL)));

        if (m_document){
            m_pageCount = m_document->GetPageCount();
            m_pages.resize(m_pageCount);
        }

        // Pdfium API enable creating new pdfs, but
        // we are using only for read. So we will
        // return error if file does not exists
        if (!QFile::exists(filename))
            return QPdfium::FILE_ERROR;
        return parseError(FPDF_GetLastError());
    }
    return QPdfium::SUCCESS;
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

QPdfiumPage QPdfium::page(int i)
{
    Q_ASSERT( i < m_pageCount && i >=0 );

    auto strongRef = m_pages[i].toStrongRef();
    if (!strongRef)
        strongRef.reset(new PageHolder(static_cast<CPDF_Page*>
                                       (FPDF_LoadPage(m_document.data(), i))));

    m_pages[i] = strongRef.toWeakRef();
    return QPdfiumPage(strongRef, i);
}

QT_END_NAMESPACE
