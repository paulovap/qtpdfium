#ifndef QPDFPAGE_H
#define QPDFPAGE_H

#include <QObject>
#include <QImage>
#include <QSharedPointer>

#include "qpdfglobal.h"


QT_BEGIN_NAMESPACE

class QPdf;
class CPDF_Page;
class CPDF_TextPage;
class CPDF_Document;

class PageHolder {
public:
    QWeakPointer<CPDF_Document> m_doc;
    CPDF_Page *m_page;
    CPDF_TextPage *m_textPage;
    int i;
    PageHolder(QWeakPointer<CPDF_Document> doc, CPDF_Page *page);
    ~PageHolder();
};

class Q_PDF_EXPORT QPdfPage
{
public:
    QPdfPage(const QPdfPage &other);
    QPdfPage &operator=(const QPdfPage &other);
    virtual ~QPdfPage();

    qreal width() const;
    qreal height() const;

    bool isValid() const;
    int pageIndex() const;
    QImage image(qreal scale = 1.0);

    QString text();
    QString text(int start, int size);

private:
    QPdfPage(QSharedPointer<PageHolder> page, int pageIndex);

    QSharedPointer<PageHolder> m_pageHolder;
    int m_index;

    friend class QPdf;
};

#endif // QPDFPAGE_H

QT_END_NAMESPACE
