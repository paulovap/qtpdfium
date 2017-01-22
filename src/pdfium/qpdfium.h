#ifndef QPDFIUM_H
#define QPDFIUM_H

#include <QObject>
#include <QMap>
#include <QWeakPointer>
#include <QSharedPointer>
#include <QVector>
#include "qpdfiumglobal.h"

QT_BEGIN_NAMESPACE

class QPdfiumPage;

class CPDF_Document;
class CPDF_Page;
class PageHolder;

class Q_PDFIUM_EXPORT QPdfium : public QObject
{
    Q_OBJECT
public:

    enum Status {
        SUCCESS = 0,
        FILE_ERROR,
        FORMAT_ERROR,
        PASSWORD_ERROR,
        HANDLER_ERROR,
        FILE_NOT_FOUND_ERROR
    };

    explicit QPdfium(QObject *parent = 0);
    QPdfium(QString filename, QObject *parent = 0);

    virtual ~QPdfium();

    Q_INVOKABLE bool isValid() const;
    Q_INVOKABLE QString filename() const;
    Q_INVOKABLE int pageCount() const;

    QPdfiumPage page(int i);
public slots:
    Status loadFile(QString filename);

private:
    Q_DISABLE_COPY(QPdfium)

    QSharedPointer<CPDF_Document> m_document;
    QVector<QWeakPointer<PageHolder>> m_pages;
    QString m_filename;
    int m_pageCount;
    QPdfium::Status parseError(int err);
};

QT_END_NAMESPACE

#endif // QPDFIUM_H
