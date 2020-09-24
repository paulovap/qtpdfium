#ifndef QPDFIUM_H
#define QPDFIUM_H

#include <QObject>
#include <QMap>
#include <QWeakPointer>
#include <QSharedPointer>
#include <QVector>

#include "qpdfiumpage.h"
#include "qpdfiumglobal.h"

QT_BEGIN_NAMESPACE

class QPdfiumPrivate;

class Q_PDFIUM_EXPORT QPdfium
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


    explicit QPdfium();
    QPdfium(QString filename, QString password = QString());

    virtual ~QPdfium();

    bool isValid() const;
    QString filename() const;
    int pageCount() const;
    Status status() const;
    QPdfiumPage page(int i);

public Q_SLOTS:
    Status loadFile(QString filename, QString password = QString());

private:
    Q_DISABLE_COPY(QPdfium)

    QScopedPointer<QPdfiumPrivate> d;
};

QT_END_NAMESPACE

#endif // QPDFIUM_H
