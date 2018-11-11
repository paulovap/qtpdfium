#include <QGuiApplication>
#include <QPdfium>
#include <QPdfiumPage>
#include <QQmlApplicationEngine>
#include <QQuickImageProvider>
#include <QQmlContext>
#include <QDebug>

class PdfImageProvider : public QObject, public QQuickImageProvider
{
    Q_OBJECT
    Q_PROPERTY(bool ready READ ready NOTIFY readyChanged)
public:
    QPdfium *m_pdf;
    explicit PdfImageProvider()
        : QQuickImageProvider(QQuickImageProvider::Image)
        , m_pdf(new QPdfium())
    {
    }

    virtual ~PdfImageProvider() {}

    QImage requestImage(const QString &id, QSize *size, const QSize &requestedSize) override
    {
        Q_UNUSED(requestedSize);
        if (!m_pdf || !m_pdf->isValid()) {
            qDebug() << "Unable to load pdf";
            return QImage();
        }

        int i = id.toInt();
        auto page = m_pdf->page(i);
        qreal scale = requestedSize.isValid() ?
                    requestedSize.width()/(qreal)page.width() :
                    2;
        auto image = page.image(scale);
        size->setWidth(image.width());
        size->setHeight(image.height());
        return image;
    }

    Q_INVOKABLE bool ready() {
        return m_pdf != nullptr && m_pdf->isValid();
    }

    Q_INVOKABLE int pageCount() {
        return m_pdf->pageCount();
    }

    Q_INVOKABLE void setFilename(QString filename) {
        m_pdf->loadFile(filename);
        Q_EMIT readyChanged(m_pdf->isValid());
    }

    Q_INVOKABLE QString pageText(int index) {
        return m_pdf && m_pdf->isValid() ? m_pdf->page(index).text() : "";
    }
Q_SIGNALS:
    void readyChanged(int);
};

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

#ifdef Q_OS_IOS
    //Since it's static library on IOS we need to initialize it by hand
    PdfiumGlobal global;
#endif

    QPdfium pdf;
    PdfImageProvider *provider = new PdfImageProvider();
    QQmlApplicationEngine engine;

    engine.rootContext()->setContextProperty("pdfium", provider);
    engine.addImageProvider(QLatin1String("pdf"), provider);
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}

#include "main.moc"
