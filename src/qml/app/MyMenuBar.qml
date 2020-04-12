import QtQuick 2.14
import QtQuick.Controls 2.14
import QtQuick.Dialogs 1.2
import "../Singleton"

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
        title: qsTr("&Edition")
        Menu {
            cascade: true
            title: qsTr("&Fill mode")

            Action {
                text: qsTr("&Stretch")
                onTriggered: SingletonImage.fillmode = Image.Stretch
            }
            Action {
                text: qsTr("&Preserve aspect fit")
                onTriggered: SingletonImage.fillmode = Image.PreserveAspectFit
            }
            Action {
                text: qsTr("&Preserve aspect crop")
                onTriggered: SingletonImage.fillmode = Image.PreserveAspectCrop
            }
            Action {
                text: qsTr("&Tile")
                onTriggered: SingletonImage.fillmode = Image.Tile
            }
            Action {
                text: qsTr("&Tile vertically")
                onTriggered: SingletonImage.fillmode = Image.TileVertically
            }
            Action {
                text: qsTr("&Tile horizontally")
                onTriggered: SingletonImage.fillmode = Image.TileHorizontally
            }
            Action {
                text: qsTr("&Pad")
                onTriggered: SingletonImage.fillmode = Image.Pad
            }
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
