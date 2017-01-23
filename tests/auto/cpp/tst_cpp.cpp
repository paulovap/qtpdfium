#include <QtTest/QtTest>

#include <QtPdfium/QPdfium>
#include <QtPdfium/QPdfiumPage>

#include <QScopedPointer>
#include <QtNetwork/QNetworkAccessManager>
#include <QtNetwork/QNetworkRequest>
#include <QtNetwork/QNetworkReply>
#include <QStandardPaths>

#ifdef Q_OS_IOS
    //Since it's static library on IOS we need to initialize it by hand
    PdfiumGlobal global;
#endif

class CppTest: public QObject
{
    Q_OBJECT
public:
    CppTest() {
    }
private slots:
    void initTestCase();
    void cleanupTestCase();
    void init();
    void cleanup();
    void test_extractText();
    void test_invalidPdf();
    void test_openPdf();
    void test_countPages();
    void test_getPages();
    void test_pageSize();
    void test_renderPage();
private:
    QPdfium *m_pdfium;
    QTemporaryFile m_file;
};



void CppTest::initTestCase()
{
}

void CppTest::cleanupTestCase()
{
}

void CppTest::init() {
    m_pdfium  = new QPdfium(":/data/pdf.pdf");
}

void CppTest::cleanup() {
    delete m_pdfium;
}

void CppTest::test_extractText()
{
    auto page = m_pdfium->page(0);
    auto text = page.text();
    auto text2 = page.text(0, 1);
    QVERIFY2(text.size() > 0, "Text was not extracted");
    QVERIFY2(text2.size() > 0, "Text was not extracted");
}

void CppTest::test_invalidPdf()
{
    auto status = m_pdfium->loadFile("this_file_is_not_found.pdf");
    QCOMPARE(status, QPdfium::FILE_ERROR);
}

void CppTest::test_openPdf()
{
    QCOMPARE(m_pdfium->isValid(), true);
}

void CppTest::test_countPages()
{
    QCOMPARE(m_pdfium->pageCount(), 36);
}

void CppTest::test_getPages()
{
    for (int i=0;i < m_pdfium->pageCount(); i++){
        Q_ASSERT(m_pdfium->page(i).isValid());
    }
}

void CppTest::test_pageSize()
{
    for (int i=0;i < m_pdfium->pageCount(); i++){
        QPdfiumPage p1 = m_pdfium->page(i);
        QPdfiumPage p2 = m_pdfium->page(i);
        auto p3 = p2;
        QCOMPARE(p1.width(), 612.f);
        QCOMPARE(p3.height(), 792.f);
    }
}

void CppTest::test_renderPage()
{
    QString temp = QStandardPaths::writableLocation(QStandardPaths::TempLocation);
    for (int i=0; i<m_pdfium->pageCount(); i++) {
        QImage image = m_pdfium->page(i).image(3);
        Q_ASSERT(!image.isNull());
        QString saveName(temp + QString("/test%1.jpg").arg(i));
        Q_ASSERT(image.save(saveName, "jpg", 50));
    }
}


QTEST_MAIN(CppTest)

#include "tst_cpp.moc"
