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
            title: qsTr("Fill mode")

            RadioButton {
                text: qsTr("Stretch")
                onClicked : SingletonImage.fillmode = Image.Stretch
            }
            RadioButton {
                text: qsTr("Preserve aspect fit")
                checked: true
                onClicked: SingletonImage.fillmode = Image.PreserveAspectFit
            }
            RadioButton {
                text: qsTr("Preserve aspect crop")
                onClicked: SingletonImage.fillmode = Image.PreserveAspectCrop
            }
            RadioButton {
                text: qsTr("Tile")
                onClicked: SingletonImage.fillmode = Image.Tile
            }
            RadioButton {
                text: qsTr("Tile vertically")
                onClicked: SingletonImage.fillmode = Image.TileVertically
            }
            RadioButton {
                text: qsTr("Tile horizontally")
                onClicked: SingletonImage.fillmode = Image.TileHorizontally
            }
            RadioButton {
                text: qsTr("Pad")
                onClicked: SingletonImage.fillmode = Image.Pad
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
