#ifndef QPDFIUMPAGE_H
#define QPDFIUMPAGE_H

#include <QObject>
#include <QImage>
#include <QSharedPointer>

#include "qpdfiumglobal.h"


QT_BEGIN_NAMESPACE

class QPdfium;
struct fpdf_page_t__;
struct fpdf_textpage_t__;
struct fpdf_document_t__;

class PageHolder {
public:
    QWeakPointer<fpdf_document_t__> m_doc;
    fpdf_page_t__ *m_page;
    fpdf_textpage_t__ *m_textPage;
    int index;
    PageHolder(QWeakPointer<fpdf_document_t__> doc, fpdf_page_t__ *page);
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

    friend class QPdfium;
};

#endif // QPDFIUMPAGE_H

QT_END_NAMESPACE
