import QtQuick.Controls 2.14
import QtQuick.Dialogs 1.2

MenuBar {
    id: menuBar

    signal chooseImage(string path)

    Menu {
        title: qsTr("&File")

        Action {
            text: qsTr("&Open file...")
            onTriggered: fileDialog.open()
        }

        Action { text: qsTr("Save &As...") }

        MenuSeparator { }

        Action {
            text: qsTr("&Quit")
            onTriggered: Qt.quit()
        }
    }
    Menu {
        title: qsTr("&Help")
        Action { text: qsTr("&About") }
    }

    FileDialog {
        id: fileDialog
        title: qsTr("Please choose an image")
        folder: shortcuts.pictures
        nameFilters: [ "Image files (*.jpg *.png)" ]

        onAccepted: {
            chooseImage(fileDialog.fileUrl.toString())
        }
    }
}
