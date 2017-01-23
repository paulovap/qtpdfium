# QtPdfium

QtPdfium is a Qt module that renders PDF files using the pdfium project by google. It render PDF pages into QImage.

### Installation
To use the library you must first install it in the same location as your Qt installation. Here is an example on Linux/Mac:

```sh
git clone --recursive https://github.com/paulovap/qtpdfium
cd qtpdfium
qmake
make
make install (might need sudo)
```
After that you are ready to use it. Remember to build for each platform you want. (Desktop, Android, iOS...)

### Usage

The API consists in only two classes: `QPdfium` and `QPdfiumPage`.

To load a PDF file, simply do:
```cpp
#include <QtPdfium/QPdfium>

QPdfium pdf("mypdf.pdf");
qDebug() << pdf.isValid(); //should return true
```

You can get the number of pages with `QPdfium::pageCount()`

You can access pages by index:

```cpp
#include <QtPdfium/QPdfium>

QPdfium pdf("mypdf.pdf");
QPdfiumPage page =  pdf.page(0);
qDebug() << page.width(); // should show something!
```

To generate the image:

```cpp
#include <QtPdfium/QPdfium>

QPdfium pdf("mypdf.pdf");
QPdfiumPage page =  pdf.page(0);
QImage image = page.image(3); //renders it 3 times bigger
```

And for extracting text:

```cpp
#include <QtPdfium/QPdfium>

QPdfium pdf("mypdf.pdf");
QPdfiumPage page =  pdf.page(0);
QString pageText = page.text();
```

Note: On iOS you need to initialize QtPdfium manually since it is statically linked. Just create a global object like this:

```cpp
#ifdef Q_OS_IOS
    //Since it's static library on IOS we need to initialize it by hand
    PdfiumGlobal global;
#endif
```

And that's it.

### Future work

 - Load pdf with encryption (passwords)
 - Text manipulation (find, extract, cursor..)
 - Partial rendering
 - Render to other devices (gl surface, so on..)

### Contributing
Feel free to help. :)

### License
BSD
