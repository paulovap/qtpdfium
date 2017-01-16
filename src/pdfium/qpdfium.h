#ifndef QPDFIUM_H
#define QPDFIUM_H

#include <QObject>
#include <QMap>
#include <QWeakPointer>
#include "qpdfiumglobal.h"

QT_BEGIN_NAMESPACE

class QPdfiumPage;

class Q_PDFIUM_EXPORT QPdfium : public QObject
{
    Q_OBJECT
public:
    explicit QPdfium(QObject *parent = 0);
    QPdfium(QString filename, QObject *parent = 0);

    virtual ~QPdfium();

    Q_INVOKABLE bool isValid() const;
    Q_INVOKABLE QString filename() const;
    Q_INVOKABLE int pageCount() const;

    QWeakPointer<QPdfiumPage> page(int i);
public slots:
    void setFilename(QString filename);

private:
    Q_DISABLE_COPY(QPdfium)
    void* m_document;
    QString m_filename;
    int m_pageCount;
    QMap<int, QSharedPointer<QPdfiumPage>> m_pages;
};

QT_END_NAMESPACE

#endif // QPDFIUM_H
