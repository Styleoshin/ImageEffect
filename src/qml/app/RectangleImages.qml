import QtQuick 2.12
import QtQuick.Controls 2.14

Rectangle {
    id: rectangle

    property string imageSource: ""

    color: "#303030"

    MyImage {
        id: imgSource
        source: imageSource

        onLoaded: btnMirror.visible = true
    }

    Effects {
        id: effects

        anchors.fill: imgSource
        imgSource: imgSource
    }

    Button {
        id: btnMirror

        width: 30
        height: 30
        text: qsTr("M")
        visible: false

        anchors {
            horizontalCenter: imgSource.horizontalCenter
            bottom: imgSource.top
        }

        onClicked: imgSource.mirror = (imgSource.mirror)? false:true
    }

    function saveImage(path) {
        effects.grabToImage(function(image) {
            image.saveToFile(path);
        });
    }
}
