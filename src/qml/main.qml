import QtQuick 2.12
import QtQuick.Controls 2.14
import QtQuick.Layouts 1.3
import "app"

ApplicationWindow {
    id: applicationWindow
    visible: true
    width: 1027
    height: 768
    title: qsTr("Image Effect")

    menuBar: MyMenuBar{
        id: menuBar
        onChooseImage: imageSource.source = path
    }

    /* ImageSource {
        id: imageSource
        anchors.right: pannel.left
        anchors.rightMargin: 30
        anchors.left: parent.left
        anchors.leftMargin: 30
        anchors.top: menuBar.bottom
        anchors.topMargin: 20
        //  anchors.fill: parent
    }*/

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
