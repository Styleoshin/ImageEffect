import QtQuick.Controls 2.14
import QtQuick.Dialogs 1.2

MenuBar {
    id: menuBar

    signal chooseImage(string path)
    signal saveImage(string path)

    Menu {
        title: qsTr("&File")

        Action {
            text: qsTr("&Open file...")
            onTriggered: fileDialog.open()
        }

        Action {
            text: qsTr("Save &As...")
            onTriggered: fileDialogSave.open()
        }

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

    FileDialog {
        id: fileDialogSave
        title: qsTr("Save image")
        folder: shortcuts.pictures
        nameFilters: [ "Image files (*.jpg *.png)" ]
        selectExisting: false

        onAccepted: {
            saveImage(fileDialogSave.fileUrl.toString().replace(/^(file:\/{3})/,""))
        }
    }
}
