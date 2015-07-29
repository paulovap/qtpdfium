#ifndef QPDFIUMPAGE_H
#define QPDFIUMPAGE_H

#include <QObject>
#include <QImage>
#include "qpdfiumglobal.h"

QT_BEGIN_NAMESPACE

class QPdfium;

class Q_PDFIUM_EXPORT QPdfiumPage : public QObject
{
    Q_OBJECT
public:
    ~QPdfiumPage();
    qreal width() const;
    qreal height() const;

    bool isValid() const;
    int index() const;
    QImage image(qreal scale = 1.0);
signals:

public slots:
private:
    Q_DISABLE_COPY(QPdfiumPage)
    explicit QPdfiumPage(void *page, int index, QObject *parent = 0);

    friend class QPdfium;

    void* m_page;
    int m_index;
};

#endif // QPDFIUMPAGE_H

QT_END_NAMESPACE
