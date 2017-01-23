import QtQuick 2.3
import QtQuick.Layouts 1.1
import QtQuick.Controls 1.2
import QtQuick.Dialogs 1.2

ApplicationWindow {
    width: 640
    height:480
    title: "PDF Viewer"
    visible:true

    menuBar: MenuBar{
        Menu{
            title:"File"
            MenuItem{
                text:"Open Pdf file..."
                onTriggered: fileDialog.open()
            }
            MenuItem{
                text: "Close"
                onTriggered: Qt.quit()
            }
        }
    }

    FileDialog{
        id:fileDialog
        title:"Open PDF file"
        onAccepted: {
            pdfium.setFilename(fileDialog.fileUrls[0].replace("file://", ""))
            pageSelector.model = pdfium.pageCount()
        }
    }

    Text {
        id: pageSelectorTitle
        text: "Page:"
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.margins: 10
    }

    ComboBox {
        id: pageSelector
        anchors.leftMargin: 10
        anchors.verticalCenter: pageSelectorTitle.verticalCenter
        anchors.left: pageSelectorTitle.right
        enabled: pdfium.ready
        model: 0
        onModelChanged: update()

        onCurrentIndexChanged: update()

        function update() {
            image.source = ""
            pdf_text.text = pdfium.pageText(currentIndex)
            image.source = "image://pdf/" + currentIndex
        }
    }

    SplitView {
        orientation: Qt.Horizontal
        anchors {
            top: pageSelector.bottom
            left: parent.left
            right:parent.right
            bottom: parent.bottom
        }

        Image {
            id:image
            width: parent.width/2
            height: parent.height
            smooth: true
        }

        TextArea {
            id:pdf_text
            width: parent.width/2
            height: parent.height
        }
    }
}

