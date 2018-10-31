#include "qpdfiumpage.h"
#include "../3rdparty/pdfium/public/fpdfview.h"
#include "../3rdparty/pdfium/public/fpdf_text.h"
#include "../3rdparty/pdfium/core/fpdfapi/page/cpdf_page.h"
#include "../3rdparty/pdfium/core/fpdftext/cpdf_textpage.h"


QT_BEGIN_NAMESPACE

PageHolder::PageHolder(QWeakPointer<fpdf_document_t__> doc, fpdf_page_t__ *page)
    : m_doc(doc)
    , m_page(page)
    , m_textPage(static_cast<fpdf_textpage_t__*>(FPDFText_LoadPage(page)))
{
}

PageHolder::~PageHolder()
{
    if (m_textPage)
        FPDFText_ClosePage(m_textPage);
    if (m_page)
        FPDF_ClosePage(m_page);
}

QPdfiumPage::QPdfiumPage(QSharedPointer<PageHolder> page, int index)
    : m_pageHolder(page)
{
    m_pageHolder->index = index;
}

QPdfiumPage::QPdfiumPage(const QPdfiumPage &other)
    : m_pageHolder(other.m_pageHolder)
{
}

QPdfiumPage &QPdfiumPage::operator=(const QPdfiumPage &other)
{
    m_pageHolder = other.m_pageHolder;
    return *this;
}

QPdfiumPage::~QPdfiumPage()
{

}

qreal QPdfiumPage::width() const
{
    if (!m_pageHolder)
        return -1;
    return FPDF_GetPageWidth(m_pageHolder.data()->m_page);
}

qreal QPdfiumPage::height() const
{
    if (!m_pageHolder)
        return -1;
    return FPDF_GetPageHeight(m_pageHolder.data()->m_page);
}


bool QPdfiumPage::isValid() const
{
    return !m_pageHolder.isNull() && !m_pageHolder->m_doc.isNull();
}

int QPdfiumPage::pageIndex() const
{
    return m_pageHolder->index;
}

QImage QPdfiumPage::image(qreal scale)
{
    if (!isValid())
        return QImage();

    //We need to hold the document while generating the image
    QSharedPointer<fpdf_document_t__> d = m_pageHolder->m_doc.toStrongRef();

    if (!d)
        return QImage();

    QImage image(width()*scale, height()*scale, QImage::Format_RGBA8888);

    if(image.isNull())
        return QImage();

    image.fill(0xFFFFFFFF);

    FPDF_BITMAP bitmap = FPDFBitmap_CreateEx(image.width(), image.height(),
                                             FPDFBitmap_BGRA,
                                             image.scanLine(0), image.bytesPerLine());
    if(bitmap == NULL) {
        return QImage();
    }

    FPDF_RenderPageBitmap(bitmap, m_pageHolder.data()->m_page,
                          0, 0, image.width(), image.height(),
                          0, 0); // no rotation, no flags
    FPDFBitmap_Destroy(bitmap);
    bitmap = NULL;

    for(int i = 0; i < image.height(); i++) {
        uchar *pixels = image.scanLine(i);
        for(int j = 0; j < image.width(); j++) {
            qSwap(pixels[0], pixels[2]);
            pixels += 4;
        }
    }

    return image;
}

int QPdfiumPage::countChars() const
{
    return FPDFText_CountChars(m_pageHolder->m_textPage);
}

QVector<QRectF> QPdfiumPage::getTextRects(int start, int count) const
{
    QVector<QRectF> result;
    int rects = FPDFText_CountRects(m_pageHolder->m_textPage, start, count);
    result.reserve(rects);
    for (int i = 0; i < rects; i++) {
        double left, top, right, bottom;
        FPDFText_GetRect(m_pageHolder->m_textPage, i, &left, &top, &right, &bottom);
        // QRectF coordinates have their origin point top left instead of bottom left for CFX_FloatRect
        result.push_back({left, height() - top, right - left, top - bottom});
    }
    return result;
}

QString QPdfiumPage::text(const QRectF& rect) const
{
    // QRectF coordinates have their origin point top left instead of bottom left for CFX_FloatRect, 
    // so here we reverse the symetry done in getTextRects.
    qreal newBottom = height() - rect.bottom();
    qreal newTop = height() - rect.top();
    double left = rect.left();
    double top = std::min(newBottom, newTop);
    double right = rect.right();
    double bottom = std::max(newBottom, newTop);
    int charCount = FPDFText_GetBoundedText(m_pageHolder->m_textPage, 
        left, top, right, bottom, NULL, 0);
    QByteArray text;
    text.resize(sizeof(wchar_t) * (charCount + 1));
    FPDFText_GetBoundedText(m_pageHolder->m_textPage, 
        left, top, right, bottom,
        reinterpret_cast<unsigned short*>(text.data()), text.size());
    return QString(reinterpret_cast<const QChar*>(text.constData()));
}

QString QPdfiumPage::text() const
{
    return text(0, countChars());
}

QString QPdfiumPage::text(int start, int maxChars) const
{
    QByteArray text;
    text.resize(sizeof(wchar_t) * (maxChars + 1));
    FPDFText_GetText(m_pageHolder->m_textPage, start, maxChars, reinterpret_cast<unsigned short*>(text.data()));
    return QString(reinterpret_cast<const QChar*>(text.constData()));
}

QT_END_NAMESPACE

