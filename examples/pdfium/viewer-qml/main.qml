import QtQuick 2.3
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
            repeater.model = pdfium.pageCount()
        }
    }

    ListView {
        id: repeater
        anchors.fill: parent
        delegate: delegate
        spacing: 10
        Component {
            id:delegate
            Image {
                smooth: true
                source: "image://pdf/" + index
            }
        }
    }
}

