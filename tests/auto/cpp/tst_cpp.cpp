#include <QtTest/QtTest>

#include <QtPdfium/QPdfium>
#include <QtPdfium/QPdfiumPage>

#include <QScopedPointer>

class CppTest: public QObject
{
    Q_OBJECT
private slots:
    void initTestCase();
    void cleanupTestCase();
    void init();
    void cleanup();
    void test_openPdf();
    void test_countPages();
    void test_getPages();
    void test_pageSize();
    void test_renderPage();
private:
    QPdfium *m_pdfium;
    QString m_filename;
};



void CppTest::initTestCase()
{
    m_filename = QString(DATA) + "/pdf.pdf";
    qDebug() << m_filename;
}

void CppTest::cleanupTestCase()
{
}

void CppTest::init() {
    m_pdfium  = new QPdfium(m_filename);
}

void CppTest::cleanup() {
    delete m_pdfium;
}

void CppTest::test_openPdf()
{
    QCOMPARE(m_pdfium->isValid(), true);
}

void CppTest::test_countPages()
{
    QCOMPARE(m_pdfium->pageCount(), 5);
}

void CppTest::test_getPages()
{
    for (int i=0;i < m_pdfium->pageCount(); i++){
        Q_ASSERT(!m_pdfium->page(i).isNull());
    }
}

void CppTest::test_pageSize()
{
    for (int i=0;i < m_pdfium->pageCount(); i++){
        QCOMPARE(m_pdfium->page(i).data()->width(), 612.f);
        QCOMPARE(m_pdfium->page(i).data()->height(), 792.f);
    }
}

void CppTest::test_renderPage()
{
    for (int i=0; i<m_pdfium->pageCount(); i++) {
        QImage image = m_pdfium->page(i).data()->image(3);
        Q_ASSERT(!image.isNull());
        image.save(QString(DATA) + QString("/test%1.jpg").arg(i), "jpg", 100);
    }
}


QTEST_MAIN(CppTest)

#include "tst_cpp.moc"
