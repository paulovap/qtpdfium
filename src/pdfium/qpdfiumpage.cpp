#include "qpdfiumpage.h"

#include "../3rdparty/pdfium/public/fpdfview.h"

QT_BEGIN_NAMESPACE


QPdfiumPage::~QPdfiumPage()
{
}

qreal QPdfiumPage::width() const
{
    return FPDF_GetPageWidth(m_page);
}

qreal QPdfiumPage::height() const
{
    return FPDF_GetPageHeight(m_page);
}

bool QPdfiumPage::isValid() const
{
    return m_page != NULL;
}

QImage QPdfiumPage::image(int scale)
{
    if (!m_page)
        return QImage();

    QImage image(width()*scale, height()*scale, QImage::Format_RGBA8888);
    if( image.isNull() )
        return QImage();

    image.fill(0xFFFFFFFF);

    FPDF_BITMAP bitmap = FPDFBitmap_CreateEx(image.width(), image.height(),
                                             FPDFBitmap_BGRA,
                                             image.scanLine(0), image.bytesPerLine());
    if( bitmap == NULL ) {
        return QImage();
    }

    FPDF_RenderPageBitmap(bitmap, m_page,
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

QPdfiumPage::QPdfiumPage(void *page, int index, QObject *parent)
    : QObject(parent)
    , m_page(page)
    , m_index(index)
{

}

QT_END_NAMESPACE

