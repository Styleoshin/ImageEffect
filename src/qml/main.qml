import QtQuick 2.12
import QtQuick.Controls 2.14
import QtQuick.Layouts 1.3
import "app"

ApplicationWindow {
    id: applicationWindow
    height: 768;  width: 1027
    title: qsTr("Image Effect")
    visibility: Qt.WindowFullScreen
    visible: true

    menuBar: MyMenuBar{
        id: menuBar
        onChooseImage: rectImages.imageSource = path
        onSaveImage: rectImages.saveImage(path)
    }

    RectangleImages {
        id: rectImages

        anchors {
            top: menuBar.bottom
            topMargin: 20

            bottom: parent.bottom
            bottomMargin: 20

            right: pannelEffect.left
            rightMargin: 20

            left: parent.left
            leftMargin: 20
        }
    }

    PannelEffect {
        id :pannelEffect
        height: parent.height - 20; width: 430

        anchors {
            top: menuBar.bottom
            topMargin: 20
            right: parent.right
            rightMargin: 10
            bottom: parent.bottom
            bottomMargin: 10
        }
    }
}
