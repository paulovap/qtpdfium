#include <QtTest/QtTest>

#include <QtPdf/QPdf>
#include <QtPdf/QPdfPage>
#include <QDebug>
#include <QScopedPointer>
#include <QtNetwork/QNetworkAccessManager>
#include <QtNetwork/QNetworkRequest>
#include <QtNetwork/QNetworkReply>
#include <QStandardPaths>

#ifdef Q_OS_IOS
    //Since it's static library on IOS we need to initialize it by hand
    PdfGlobal global;
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
    void test_protectedPdf();
    void test_documentDeletion();
    void test_extractText();
    void test_invalidPdf();
    void test_openPdf();
    void test_countPages();
    void test_getPages();
    void test_pageSize();
    void test_renderPage();
private:
    QPdf *m_pdf;
    QTemporaryFile m_file;
};



void CppTest::initTestCase()
{
}

void CppTest::cleanupTestCase()
{
}

void CppTest::init() {
    m_pdf  = new QPdf(":/data/pdf.pdf");
}

void CppTest::cleanup() {
    delete m_pdf;
}

void CppTest::test_protectedPdf()
{
    // passwords can be ignored
    QCOMPARE(m_pdf->loadFile(":/data/pdf.pdf", "nopass"), QPdf::SUCCESS);
    QCOMPARE(m_pdf->loadFile(":/data/password_test.pdf"), QPdf::PASSWORD_ERROR);
    QCOMPARE(m_pdf->loadFile(":/data/password_test.pdf", "test"), QPdf::SUCCESS);
}

void CppTest::test_documentDeletion()
{
    auto pdf = new QPdf(":/data/pdf.pdf");
    auto page = pdf->page(0);
    delete pdf;
    auto image = page.image();
    auto text = page.text();

    QVERIFY2(image == QImage(), "Image should not be rendered");
    QVERIFY2(text.size() >0 , "Text should be extracted without a doc");
}

void CppTest::test_extractText()
{
    auto page = m_pdf->page(0);
    auto text = page.text();
    auto text2 = page.text(0, 1);
    QVERIFY2(text.size() > 0, "Text was not extracted");
    QVERIFY2(text2.size() > 0, "Text was not extracted");
}

void CppTest::test_invalidPdf()
{
    auto status = m_pdf->loadFile("this_file_is_not_found.pdf");
    QCOMPARE(status, QPdf::FILE_NOT_FOUND_ERROR);
}

void CppTest::test_openPdf()
{
    QCOMPARE(m_pdf->isValid(), true);
}

void CppTest::test_countPages()
{
    QCOMPARE(m_pdf->pageCount(), 36);
}

void CppTest::test_getPages()
{
    for (int i=0;i < m_pdf->pageCount(); i++){
        Q_ASSERT(m_pdf->page(i).isValid());
    }
}

void CppTest::test_pageSize()
{
    for (int i=0;i < m_pdf->pageCount(); i++){
        QPdfPage p1 = m_pdf->page(i);
        QPdfPage p2 = m_pdf->page(i);
        auto p3 = p2;
        QCOMPARE(p1.width(), 612.f);
        QCOMPARE(p3.height(), 792.f);
    }
}

void CppTest::test_renderPage()
{
    QString temp = QStandardPaths::writableLocation(QStandardPaths::TempLocation);
    for (int i=0; i<m_pdf->pageCount(); i++) {
        QImage image = m_pdf->page(i).image(3);
        Q_ASSERT(!image.isNull());
        QString saveName(temp + QString("/test%1.jpg").arg(i));
        Q_ASSERT(image.save(saveName, "jpg", 50));
    }
}


QTEST_MAIN(CppTest)

#include "tst_cpp.moc"
