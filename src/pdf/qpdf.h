#ifndef QPDF_H
#define QPDF_H

#include <QObject>
#include <QMap>
#include <QWeakPointer>
#include <QSharedPointer>
#include <QVector>

#include "qpdfpage.h"
#include "qpdfglobal.h"

QT_BEGIN_NAMESPACE

class CPDF_Document;
class CPDF_Page;
class PageHolder;

class Q_PDF_EXPORT QPdf
{

public:
    enum Status {
        NOT_LOADED = -1,
        SUCCESS = 0,
        FILE_ERROR,
        FORMAT_ERROR,
        PASSWORD_ERROR,
        HANDLER_ERROR,
        FILE_NOT_FOUND_ERROR
    };


    explicit QPdf();
    QPdf(QString filename, QString password = QString());

    virtual ~QPdf();

    bool isValid() const;
    QString filename() const;
    int pageCount() const;
    Status status() const;
    QPdfPage page(int i);

public slots:
    Status loadFile(QString filename, QString password = QString());

private:
    Q_DISABLE_COPY(QPdf)

    QSharedPointer<CPDF_Document> m_document;
    QVector<QWeakPointer<PageHolder>> m_pages;
    QString m_filename;
    int m_pageCount;
    Status m_status;
    QPdf::Status parseError(int err);
};

QT_END_NAMESPACE

#endif // QPDF_H
