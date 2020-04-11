import QtQuick 2.12
import QtQuick.Controls 2.14
import QtQuick.Layouts 1.3
import "app"

ApplicationWindow {
    id: applicationWindow
    visibility: Qt.WindowFullScreen // << the solution
    visible: true
    width: 1027
    height: 768
    title: qsTr("Image Effect")

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

        width: 430
        height: parent.height - 20

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
