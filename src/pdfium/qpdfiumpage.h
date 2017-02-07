#ifndef QPDFIUMPAGE_H
#define QPDFIUMPAGE_H

#include <QObject>
#include <QImage>
#include <QSharedPointer>

#include "qpdfiumglobal.h"


QT_BEGIN_NAMESPACE

class QPdfium;
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

class Q_PDFIUM_EXPORT QPdfiumPage
{
public:
    QPdfiumPage(const QPdfiumPage &other);
    QPdfiumPage &operator=(const QPdfiumPage &other);
    virtual ~QPdfiumPage();

    qreal width() const;
    qreal height() const;

    bool isValid() const;
    int pageIndex() const;
    QImage image(qreal scale = 1.0);

    int countChars() const;
    QVector<QRectF> getTextRects(int start = 0, int charCount = -1) const;
    QString text(const QRectF &rect) const;
    QString text() const;
    QString text(int start, int charCount) const;

private:
    QPdfiumPage(QSharedPointer<PageHolder> page, int pageIndex);

    QSharedPointer<PageHolder> m_pageHolder;
    int m_index;

    friend class QPdfium;
};

#endif // QPDFIUMPAGE_H

QT_END_NAMESPACE
