import QtQuick 2.12
import QtQuick.Controls 2.5
import "src/qml"

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Image Effect")

    menuBar: MyMenuBar{
       id: menuBar
       onChooseImage: imageSource.source = path
    }

    ImageSource {
        id: imageSource
        anchors.fill: parent
    }
}
