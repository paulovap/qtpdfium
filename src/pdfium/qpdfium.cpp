#include "qpdfium.h"
#include "../3rdparty/pdfium/public/fpdfview.h"
#include "../3rdparty/pdfium/core/fpdfapi/parser/cpdf_document.h"
#include "../3rdparty/pdfium/core/fpdfapi/page/cpdf_page.h"
#include <QFile>

QT_BEGIN_NAMESPACE

class QPdfiumPrivate
{
public:
    QPdfiumPrivate() : 
      document(QSharedPointer<fpdf_document_t__>(nullptr, deleteDocument)),
      pageCount(0),
      status(QPdfium::NOT_LOADED) {}

    QSharedPointer<fpdf_document_t__> document;
    QVector<QWeakPointer<PageHolder>> pages;
    QString filename;
    int pageCount;
    QPdfium::Status status;

    static void deleteDocument(fpdf_document_t__ *document) {
        FPDF_CloseDocument(document);
    }

    QPdfium::Status parseError(int err)
    {
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
};

QPdfium::QPdfium() :
    d(new QPdfiumPrivate)
{
}

QPdfium::QPdfium(QString filename, QString password) :
    d(new QPdfiumPrivate)
{
    loadFile(filename, password);
}

QPdfium::~QPdfium() {
    d->pages.clear();
    d->document.clear();
}

bool QPdfium::isValid() const
{
    return d->document != NULL;
}

QPdfium::Status QPdfium::loadFile(QString filename, QString password)
{
    d->filename = filename;

    d->pages.clear();
    d->document.clear();

    // Pdfium API enable creating new pdfs, but
    // we are using only for read. So we will
    // return error if file does not exists
    if (!QFile::exists(filename)) {
        d->status = FILE_NOT_FOUND_ERROR;
        return d->status;
    }

    d->document.reset(FPDF_LoadDocument(filename.toUtf8().constData(),
                                        password.toUtf8().constData()));

    d->status = d->document ? SUCCESS : d->parseError(FPDF_GetLastError());

    if (d->document){
        d->pageCount = FPDF_GetPageCount(d->document.data());
        d->pages.resize(d->pageCount);
    }

    return d->status;
}

QString QPdfium::filename() const
{
    return d->filename;
}

int QPdfium::pageCount() const
{
    return d->pageCount;
}

QPdfium::Status QPdfium::status() const
{
    return d->status;
}

QPdfiumPage QPdfium::page(int i)
{
    Q_ASSERT( i < d->pageCount && i >=0 );

    auto strongRef = d->pages[i].toStrongRef();
    if (!strongRef)
        strongRef.reset(new PageHolder(d->document.toWeakRef(),
                                       static_cast<fpdf_page_t__*>
                                       (FPDF_LoadPage(d->document.data(), i))));

    d->pages[i] = strongRef.toWeakRef();
    return QPdfiumPage(strongRef, i);
}

QT_END_NAMESPACE

