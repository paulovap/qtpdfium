#include <QGuiApplication>
#include <QPdfium>
#include <QPdfiumPage>
#include <QQmlApplicationEngine>
#include <QQuickImageProvider>
#include <QQmlContext>
#include <QDebug>

class PdfImageProvider : public QQuickImageProvider
{
public:
    QPdfium *m_pdf;
    PdfImageProvider(QPdfium *pdf)
        : m_pdf(pdf),
          QQuickImageProvider(QQuickImageProvider::Image)
    {
    }

    QImage requestImage(const QString &id, QSize *size, const QSize &requestedSize) override
    {
        Q_UNUSED(requestedSize);

        if (!m_pdf || !m_pdf->isValid()) {
            qDebug() << "Unable to load pdf";
            return QImage();
        }

        int i = id.toInt();

        auto ref = m_pdf->page(i);
        return ref.data()->image(1);
    }
};

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

#ifdef Q_OS_IOS
    //Since it's static library on IOS we need to initialize it by hand
    PdfiumGlobal global;
#endif

    QPdfium pdf;

    QQmlApplicationEngine engine;

    engine.rootContext()->setContextProperty("pdfium", &pdf);
    engine.addImageProvider(QLatin1String("pdf"), new PdfImageProvider(&pdf));
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
