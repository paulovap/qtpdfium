#ifndef QPDFIUMPAGE_H
#define QPDFIUMPAGE_H

#include <QObject>
#include <QImage>
#include <QSharedPointer>
#include "qpdfiumglobal.h"


QT_BEGIN_NAMESPACE

class QPdfium;
class CPDF_Page;

class PageHolder {
public:
    CPDF_Page *m_page;
    int i;
    PageHolder(CPDF_Page *page);
    ~PageHolder();
};

class Q_PDFIUM_EXPORT QPdfiumPage
{
public:
    QPdfiumPage(const QPdfiumPage &other);
    QPdfiumPage &operator=(const QPdfiumPage &other);
    ~QPdfiumPage();
    qreal width() const;
    qreal height() const;

    bool isValid() const;
    int index() const;
    QImage image(qreal scale = 1.0);
signals:

private:
    explicit QPdfiumPage(QSharedPointer<PageHolder> page, int index);

    QSharedPointer<PageHolder> m_pageHolder;
    int m_index;

    friend class QPdfium;
};

#endif // QPDFIUMPAGE_H

QT_END_NAMESPACE
